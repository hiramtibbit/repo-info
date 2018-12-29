<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rapidoid`

-	[`rapidoid:5`](#rapidoid5)
-	[`rapidoid:5.4`](#rapidoid54)
-	[`rapidoid:5.4.6`](#rapidoid546)
-	[`rapidoid:latest`](#rapidoidlatest)

## `rapidoid:5`

```console
$ docker pull rapidoid@sha256:7cae346182fdee4836f9768d61eeb126cbd32e6dbb0855ba43920c4b6338a952
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rapidoid:5` - linux; amd64

```console
$ docker pull rapidoid@sha256:d3c9f545dad2a48cd111cc78955184b50ee5c2f2db57ac9fcc16fa39be553801
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93900141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deedd629fd809af701b4bc7beb9e883e88a8e49a802b1c5199f9e59f95c47760`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 02:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:57:43 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:57:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:57:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:59:26 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:59:26 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:59:26 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 12:24:56 GMT
MAINTAINER Nikolche Mihajlovski
# Sat, 29 Dec 2018 12:24:57 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Sat, 29 Dec 2018 12:24:57 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Sat, 29 Dec 2018 12:24:57 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Sat, 29 Dec 2018 12:24:57 GMT
WORKDIR /opt
# Sat, 29 Dec 2018 12:24:58 GMT
EXPOSE 8888
# Sat, 29 Dec 2018 12:24:58 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 12:24:58 GMT
ENV RAPIDOID_VERSION=5.4.6
# Sat, 29 Dec 2018 12:24:58 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Sat, 29 Dec 2018 12:24:59 GMT
COPY file:54eb4a0f21aca6721ebea0745a2cbfeb12c799c7a0902f588f490fc0afa8e8ea in /opt/ 
# Sat, 29 Dec 2018 12:25:13 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:25:13 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762c9dfbe1b522fbb875c7c59c8952d87108fc60057e726c938bd76ffd15e861`  
		Last Modified: Sat, 29 Dec 2018 03:22:28 GMT  
		Size: 454.8 KB (454826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a6ba080cc24eee5792a8d25298d187969f160f67ad741a32ce622ad5492565`  
		Last Modified: Sat, 29 Dec 2018 03:25:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b48b92f71dd52fdd31c31b1974db61bca4458948f9073c20bc863250d38ea61`  
		Last Modified: Sat, 29 Dec 2018 03:25:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be8f3aedfd21cfec6ac3f384ccec041abe23cc0465f6dd95298e32b055c4a15`  
		Last Modified: Sat, 29 Dec 2018 03:26:23 GMT  
		Size: 55.8 MB (55843618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ca407a90f49bc1bd81b13ea52452af68b06ab2a593533b0212e241f5bae41f`  
		Last Modified: Sat, 29 Dec 2018 12:25:26 GMT  
		Size: 367.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e639e84d6082297877645d560806a0fa1ced4c9b2ab51370383ede82493c1d77`  
		Last Modified: Sat, 29 Dec 2018 12:25:28 GMT  
		Size: 15.1 MB (15108036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rapidoid:5` - linux; arm64 variant v8

```console
$ docker pull rapidoid@sha256:9be5747c98aa344f54c8bdc9b542deff0500b7808fc68bb016436c9feaad5fad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83165519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d5cf98da3f95a65143aa5bd2de997a3c466ca5bd48f21aea1ae4fa039d3aa6`
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
# Wed, 26 Dec 2018 10:20:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 12:04:48 GMT
MAINTAINER Nikolche Mihajlovski
# Wed, 26 Dec 2018 12:04:49 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Wed, 26 Dec 2018 12:04:51 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Wed, 26 Dec 2018 12:04:52 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Wed, 26 Dec 2018 12:04:52 GMT
WORKDIR /opt
# Wed, 26 Dec 2018 12:04:53 GMT
EXPOSE 8888
# Wed, 26 Dec 2018 12:04:54 GMT
VOLUME [/data]
# Wed, 26 Dec 2018 12:04:55 GMT
ENV RAPIDOID_VERSION=5.4.6
# Wed, 26 Dec 2018 12:04:57 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Wed, 26 Dec 2018 12:04:57 GMT
COPY file:54eb4a0f21aca6721ebea0745a2cbfeb12c799c7a0902f588f490fc0afa8e8ea in /opt/ 
# Wed, 26 Dec 2018 12:05:41 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 12:05:42 GMT
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
	-	`sha256:35f2967bcbe5574f9b1bf7c1650dc52fd21f5012742cdd7db5d1d592a51b0a50`  
		Last Modified: Wed, 26 Dec 2018 10:30:29 GMT  
		Size: 48.0 MB (48015377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa84aa80c678531ba131f06cd91e8566b2f61b263b0731d74405b04e96d1ab5`  
		Last Modified: Wed, 26 Dec 2018 12:06:00 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df827a9398fde68f75c46c28e5ffa9af06b940dce786b97ac570e5e3905ef8a6`  
		Last Modified: Wed, 26 Dec 2018 12:06:05 GMT  
		Size: 14.4 MB (14377229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rapidoid:5.4`

```console
$ docker pull rapidoid@sha256:7cae346182fdee4836f9768d61eeb126cbd32e6dbb0855ba43920c4b6338a952
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rapidoid:5.4` - linux; amd64

```console
$ docker pull rapidoid@sha256:d3c9f545dad2a48cd111cc78955184b50ee5c2f2db57ac9fcc16fa39be553801
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93900141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deedd629fd809af701b4bc7beb9e883e88a8e49a802b1c5199f9e59f95c47760`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 02:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:57:43 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:57:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:57:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:59:26 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:59:26 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:59:26 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 12:24:56 GMT
MAINTAINER Nikolche Mihajlovski
# Sat, 29 Dec 2018 12:24:57 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Sat, 29 Dec 2018 12:24:57 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Sat, 29 Dec 2018 12:24:57 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Sat, 29 Dec 2018 12:24:57 GMT
WORKDIR /opt
# Sat, 29 Dec 2018 12:24:58 GMT
EXPOSE 8888
# Sat, 29 Dec 2018 12:24:58 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 12:24:58 GMT
ENV RAPIDOID_VERSION=5.4.6
# Sat, 29 Dec 2018 12:24:58 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Sat, 29 Dec 2018 12:24:59 GMT
COPY file:54eb4a0f21aca6721ebea0745a2cbfeb12c799c7a0902f588f490fc0afa8e8ea in /opt/ 
# Sat, 29 Dec 2018 12:25:13 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:25:13 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762c9dfbe1b522fbb875c7c59c8952d87108fc60057e726c938bd76ffd15e861`  
		Last Modified: Sat, 29 Dec 2018 03:22:28 GMT  
		Size: 454.8 KB (454826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a6ba080cc24eee5792a8d25298d187969f160f67ad741a32ce622ad5492565`  
		Last Modified: Sat, 29 Dec 2018 03:25:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b48b92f71dd52fdd31c31b1974db61bca4458948f9073c20bc863250d38ea61`  
		Last Modified: Sat, 29 Dec 2018 03:25:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be8f3aedfd21cfec6ac3f384ccec041abe23cc0465f6dd95298e32b055c4a15`  
		Last Modified: Sat, 29 Dec 2018 03:26:23 GMT  
		Size: 55.8 MB (55843618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ca407a90f49bc1bd81b13ea52452af68b06ab2a593533b0212e241f5bae41f`  
		Last Modified: Sat, 29 Dec 2018 12:25:26 GMT  
		Size: 367.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e639e84d6082297877645d560806a0fa1ced4c9b2ab51370383ede82493c1d77`  
		Last Modified: Sat, 29 Dec 2018 12:25:28 GMT  
		Size: 15.1 MB (15108036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rapidoid:5.4` - linux; arm64 variant v8

```console
$ docker pull rapidoid@sha256:9be5747c98aa344f54c8bdc9b542deff0500b7808fc68bb016436c9feaad5fad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83165519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d5cf98da3f95a65143aa5bd2de997a3c466ca5bd48f21aea1ae4fa039d3aa6`
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
# Wed, 26 Dec 2018 10:20:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 12:04:48 GMT
MAINTAINER Nikolche Mihajlovski
# Wed, 26 Dec 2018 12:04:49 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Wed, 26 Dec 2018 12:04:51 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Wed, 26 Dec 2018 12:04:52 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Wed, 26 Dec 2018 12:04:52 GMT
WORKDIR /opt
# Wed, 26 Dec 2018 12:04:53 GMT
EXPOSE 8888
# Wed, 26 Dec 2018 12:04:54 GMT
VOLUME [/data]
# Wed, 26 Dec 2018 12:04:55 GMT
ENV RAPIDOID_VERSION=5.4.6
# Wed, 26 Dec 2018 12:04:57 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Wed, 26 Dec 2018 12:04:57 GMT
COPY file:54eb4a0f21aca6721ebea0745a2cbfeb12c799c7a0902f588f490fc0afa8e8ea in /opt/ 
# Wed, 26 Dec 2018 12:05:41 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 12:05:42 GMT
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
	-	`sha256:35f2967bcbe5574f9b1bf7c1650dc52fd21f5012742cdd7db5d1d592a51b0a50`  
		Last Modified: Wed, 26 Dec 2018 10:30:29 GMT  
		Size: 48.0 MB (48015377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa84aa80c678531ba131f06cd91e8566b2f61b263b0731d74405b04e96d1ab5`  
		Last Modified: Wed, 26 Dec 2018 12:06:00 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df827a9398fde68f75c46c28e5ffa9af06b940dce786b97ac570e5e3905ef8a6`  
		Last Modified: Wed, 26 Dec 2018 12:06:05 GMT  
		Size: 14.4 MB (14377229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rapidoid:5.4.6`

```console
$ docker pull rapidoid@sha256:7cae346182fdee4836f9768d61eeb126cbd32e6dbb0855ba43920c4b6338a952
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rapidoid:5.4.6` - linux; amd64

```console
$ docker pull rapidoid@sha256:d3c9f545dad2a48cd111cc78955184b50ee5c2f2db57ac9fcc16fa39be553801
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93900141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deedd629fd809af701b4bc7beb9e883e88a8e49a802b1c5199f9e59f95c47760`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 02:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:57:43 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:57:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:57:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:59:26 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:59:26 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:59:26 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 12:24:56 GMT
MAINTAINER Nikolche Mihajlovski
# Sat, 29 Dec 2018 12:24:57 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Sat, 29 Dec 2018 12:24:57 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Sat, 29 Dec 2018 12:24:57 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Sat, 29 Dec 2018 12:24:57 GMT
WORKDIR /opt
# Sat, 29 Dec 2018 12:24:58 GMT
EXPOSE 8888
# Sat, 29 Dec 2018 12:24:58 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 12:24:58 GMT
ENV RAPIDOID_VERSION=5.4.6
# Sat, 29 Dec 2018 12:24:58 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Sat, 29 Dec 2018 12:24:59 GMT
COPY file:54eb4a0f21aca6721ebea0745a2cbfeb12c799c7a0902f588f490fc0afa8e8ea in /opt/ 
# Sat, 29 Dec 2018 12:25:13 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:25:13 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762c9dfbe1b522fbb875c7c59c8952d87108fc60057e726c938bd76ffd15e861`  
		Last Modified: Sat, 29 Dec 2018 03:22:28 GMT  
		Size: 454.8 KB (454826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a6ba080cc24eee5792a8d25298d187969f160f67ad741a32ce622ad5492565`  
		Last Modified: Sat, 29 Dec 2018 03:25:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b48b92f71dd52fdd31c31b1974db61bca4458948f9073c20bc863250d38ea61`  
		Last Modified: Sat, 29 Dec 2018 03:25:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be8f3aedfd21cfec6ac3f384ccec041abe23cc0465f6dd95298e32b055c4a15`  
		Last Modified: Sat, 29 Dec 2018 03:26:23 GMT  
		Size: 55.8 MB (55843618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ca407a90f49bc1bd81b13ea52452af68b06ab2a593533b0212e241f5bae41f`  
		Last Modified: Sat, 29 Dec 2018 12:25:26 GMT  
		Size: 367.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e639e84d6082297877645d560806a0fa1ced4c9b2ab51370383ede82493c1d77`  
		Last Modified: Sat, 29 Dec 2018 12:25:28 GMT  
		Size: 15.1 MB (15108036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rapidoid:5.4.6` - linux; arm64 variant v8

```console
$ docker pull rapidoid@sha256:9be5747c98aa344f54c8bdc9b542deff0500b7808fc68bb016436c9feaad5fad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83165519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d5cf98da3f95a65143aa5bd2de997a3c466ca5bd48f21aea1ae4fa039d3aa6`
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
# Wed, 26 Dec 2018 10:20:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 12:04:48 GMT
MAINTAINER Nikolche Mihajlovski
# Wed, 26 Dec 2018 12:04:49 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Wed, 26 Dec 2018 12:04:51 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Wed, 26 Dec 2018 12:04:52 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Wed, 26 Dec 2018 12:04:52 GMT
WORKDIR /opt
# Wed, 26 Dec 2018 12:04:53 GMT
EXPOSE 8888
# Wed, 26 Dec 2018 12:04:54 GMT
VOLUME [/data]
# Wed, 26 Dec 2018 12:04:55 GMT
ENV RAPIDOID_VERSION=5.4.6
# Wed, 26 Dec 2018 12:04:57 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Wed, 26 Dec 2018 12:04:57 GMT
COPY file:54eb4a0f21aca6721ebea0745a2cbfeb12c799c7a0902f588f490fc0afa8e8ea in /opt/ 
# Wed, 26 Dec 2018 12:05:41 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 12:05:42 GMT
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
	-	`sha256:35f2967bcbe5574f9b1bf7c1650dc52fd21f5012742cdd7db5d1d592a51b0a50`  
		Last Modified: Wed, 26 Dec 2018 10:30:29 GMT  
		Size: 48.0 MB (48015377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa84aa80c678531ba131f06cd91e8566b2f61b263b0731d74405b04e96d1ab5`  
		Last Modified: Wed, 26 Dec 2018 12:06:00 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df827a9398fde68f75c46c28e5ffa9af06b940dce786b97ac570e5e3905ef8a6`  
		Last Modified: Wed, 26 Dec 2018 12:06:05 GMT  
		Size: 14.4 MB (14377229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rapidoid:latest`

```console
$ docker pull rapidoid@sha256:7cae346182fdee4836f9768d61eeb126cbd32e6dbb0855ba43920c4b6338a952
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rapidoid:latest` - linux; amd64

```console
$ docker pull rapidoid@sha256:d3c9f545dad2a48cd111cc78955184b50ee5c2f2db57ac9fcc16fa39be553801
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93900141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deedd629fd809af701b4bc7beb9e883e88a8e49a802b1c5199f9e59f95c47760`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 02:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:57:43 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:57:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:57:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:59:26 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:59:26 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:59:26 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 12:24:56 GMT
MAINTAINER Nikolche Mihajlovski
# Sat, 29 Dec 2018 12:24:57 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Sat, 29 Dec 2018 12:24:57 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Sat, 29 Dec 2018 12:24:57 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Sat, 29 Dec 2018 12:24:57 GMT
WORKDIR /opt
# Sat, 29 Dec 2018 12:24:58 GMT
EXPOSE 8888
# Sat, 29 Dec 2018 12:24:58 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 12:24:58 GMT
ENV RAPIDOID_VERSION=5.4.6
# Sat, 29 Dec 2018 12:24:58 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Sat, 29 Dec 2018 12:24:59 GMT
COPY file:54eb4a0f21aca6721ebea0745a2cbfeb12c799c7a0902f588f490fc0afa8e8ea in /opt/ 
# Sat, 29 Dec 2018 12:25:13 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:25:13 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762c9dfbe1b522fbb875c7c59c8952d87108fc60057e726c938bd76ffd15e861`  
		Last Modified: Sat, 29 Dec 2018 03:22:28 GMT  
		Size: 454.8 KB (454826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a6ba080cc24eee5792a8d25298d187969f160f67ad741a32ce622ad5492565`  
		Last Modified: Sat, 29 Dec 2018 03:25:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b48b92f71dd52fdd31c31b1974db61bca4458948f9073c20bc863250d38ea61`  
		Last Modified: Sat, 29 Dec 2018 03:25:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be8f3aedfd21cfec6ac3f384ccec041abe23cc0465f6dd95298e32b055c4a15`  
		Last Modified: Sat, 29 Dec 2018 03:26:23 GMT  
		Size: 55.8 MB (55843618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ca407a90f49bc1bd81b13ea52452af68b06ab2a593533b0212e241f5bae41f`  
		Last Modified: Sat, 29 Dec 2018 12:25:26 GMT  
		Size: 367.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e639e84d6082297877645d560806a0fa1ced4c9b2ab51370383ede82493c1d77`  
		Last Modified: Sat, 29 Dec 2018 12:25:28 GMT  
		Size: 15.1 MB (15108036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rapidoid:latest` - linux; arm64 variant v8

```console
$ docker pull rapidoid@sha256:9be5747c98aa344f54c8bdc9b542deff0500b7808fc68bb016436c9feaad5fad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83165519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d5cf98da3f95a65143aa5bd2de997a3c466ca5bd48f21aea1ae4fa039d3aa6`
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
# Wed, 26 Dec 2018 10:20:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 12:04:48 GMT
MAINTAINER Nikolche Mihajlovski
# Wed, 26 Dec 2018 12:04:49 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Wed, 26 Dec 2018 12:04:51 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Wed, 26 Dec 2018 12:04:52 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Wed, 26 Dec 2018 12:04:52 GMT
WORKDIR /opt
# Wed, 26 Dec 2018 12:04:53 GMT
EXPOSE 8888
# Wed, 26 Dec 2018 12:04:54 GMT
VOLUME [/data]
# Wed, 26 Dec 2018 12:04:55 GMT
ENV RAPIDOID_VERSION=5.4.6
# Wed, 26 Dec 2018 12:04:57 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Wed, 26 Dec 2018 12:04:57 GMT
COPY file:54eb4a0f21aca6721ebea0745a2cbfeb12c799c7a0902f588f490fc0afa8e8ea in /opt/ 
# Wed, 26 Dec 2018 12:05:41 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 12:05:42 GMT
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
	-	`sha256:35f2967bcbe5574f9b1bf7c1650dc52fd21f5012742cdd7db5d1d592a51b0a50`  
		Last Modified: Wed, 26 Dec 2018 10:30:29 GMT  
		Size: 48.0 MB (48015377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa84aa80c678531ba131f06cd91e8566b2f61b263b0731d74405b04e96d1ab5`  
		Last Modified: Wed, 26 Dec 2018 12:06:00 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df827a9398fde68f75c46c28e5ffa9af06b940dce786b97ac570e5e3905ef8a6`  
		Last Modified: Wed, 26 Dec 2018 12:06:05 GMT  
		Size: 14.4 MB (14377229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

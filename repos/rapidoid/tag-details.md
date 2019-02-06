<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rapidoid`

-	[`rapidoid:5`](#rapidoid5)
-	[`rapidoid:5.4`](#rapidoid54)
-	[`rapidoid:5.4.6`](#rapidoid546)
-	[`rapidoid:latest`](#rapidoidlatest)

## `rapidoid:5`

```console
$ docker pull rapidoid@sha256:715124fb3e4f61edd5fecfe3b8b4c532d5db45ae5dc5e9b8dbbe7ded97ae05ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rapidoid:5` - linux; amd64

```console
$ docker pull rapidoid@sha256:62614f246afa8604e6239f21e1f6f405f30c9d1d8f8dad651c37242f834a1924
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93908197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb04c861776790d8184015e57ae5173981789dab2bed9c6c4d053b9e0fe6ee48`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:25:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:29:13 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:29:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:29:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:30:47 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 08:30:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:30:47 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:31:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 15:47:54 GMT
MAINTAINER Nikolche Mihajlovski
# Wed, 06 Feb 2019 15:47:55 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Wed, 06 Feb 2019 15:47:55 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Wed, 06 Feb 2019 15:47:55 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Wed, 06 Feb 2019 15:47:56 GMT
WORKDIR /opt
# Wed, 06 Feb 2019 15:47:56 GMT
EXPOSE 8888
# Wed, 06 Feb 2019 15:47:56 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 15:47:57 GMT
ENV RAPIDOID_VERSION=5.4.6
# Wed, 06 Feb 2019 15:47:57 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Wed, 06 Feb 2019 15:47:57 GMT
COPY file:54eb4a0f21aca6721ebea0745a2cbfeb12c799c7a0902f588f490fc0afa8e8ea in /opt/ 
# Wed, 06 Feb 2019 15:48:14 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:48:14 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187061ad2a2978b8c52f307ede3a915e9134a3bb8f6ea795e67ad31524381cdd`  
		Last Modified: Wed, 06 Feb 2019 08:51:41 GMT  
		Size: 454.9 KB (454874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f37e25a28fcc612aa4d7f14effcc97964c720244c1df67570f6834c8e80fdb7`  
		Last Modified: Wed, 06 Feb 2019 08:53:55 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211d5433339d39c37cc2fe7f8cfa195ac8d9f0072c3be0e49b33dca261a56733`  
		Last Modified: Wed, 06 Feb 2019 08:53:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b60727ce1471afc3de3bc0c8f518e1f79bc5714bc6b80e322f64ff9d75dbf30b`  
		Last Modified: Wed, 06 Feb 2019 08:55:09 GMT  
		Size: 55.8 MB (55844124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365a78faff12ee566997efe270fa08a251cdc910f7a3cbbff739ea3b395c9f3c`  
		Last Modified: Wed, 06 Feb 2019 15:48:25 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d302e205b02df75c11eddb8117ed4c5369d157ca1fc7e5d241df716f81ab1a`  
		Last Modified: Wed, 06 Feb 2019 15:48:28 GMT  
		Size: 15.1 MB (15108168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rapidoid:5` - linux; arm64 variant v8

```console
$ docker pull rapidoid@sha256:39546929faedd18053409584bb8d473ee5dcc35907d328b23758bd3e88316280
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83184961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60c69a9c1b6c40362f18f10b4b0cf8d078fac9d350c12a0593dbe73af14179c6`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 02:40:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 02:52:52 GMT
ENV LANG=C.UTF-8
# Fri, 25 Jan 2019 02:53:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 25 Jan 2019 02:53:30 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 25 Jan 2019 03:00:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 25 Jan 2019 03:00:02 GMT
ENV JAVA_VERSION=8u181
# Fri, 25 Jan 2019 03:00:05 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 25 Jan 2019 03:02:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 25 Jan 2019 10:55:04 GMT
MAINTAINER Nikolche Mihajlovski
# Fri, 25 Jan 2019 10:55:05 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Fri, 25 Jan 2019 10:55:05 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Fri, 25 Jan 2019 10:55:06 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Fri, 25 Jan 2019 10:55:07 GMT
WORKDIR /opt
# Fri, 25 Jan 2019 10:55:08 GMT
EXPOSE 8888
# Fri, 25 Jan 2019 10:55:09 GMT
VOLUME [/data]
# Fri, 25 Jan 2019 10:55:10 GMT
ENV RAPIDOID_VERSION=5.4.6
# Fri, 25 Jan 2019 10:55:11 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Fri, 25 Jan 2019 10:55:11 GMT
COPY file:54eb4a0f21aca6721ebea0745a2cbfeb12c799c7a0902f588f490fc0afa8e8ea in /opt/ 
# Fri, 25 Jan 2019 10:55:43 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 10:55:44 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
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
	-	`sha256:3a0adf5053934b0aa34d6687db0aee4b5208f6a3d542719c88738de21a835b00`  
		Last Modified: Fri, 25 Jan 2019 03:11:58 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f07c907cb5f9ae9cc0f66f6904b0389d215f461d9193899965c115ed69562de`  
		Last Modified: Fri, 25 Jan 2019 03:11:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac41d148dc390cdccea7129c687a297406c4957848d592c743903d151b5bb63`  
		Last Modified: Fri, 25 Jan 2019 03:13:00 GMT  
		Size: 48.0 MB (48015594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19b06fca2c1dc0289ffa283c5d81323949713b2921dc9ece695c63ee808a8fc`  
		Last Modified: Fri, 25 Jan 2019 10:55:55 GMT  
		Size: 367.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b23d3c67dc564bac145fbd51d99e3fffe3a7371a3cead0ec6c062714efb06b`  
		Last Modified: Fri, 25 Jan 2019 10:55:58 GMT  
		Size: 14.4 MB (14377533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rapidoid:5.4`

```console
$ docker pull rapidoid@sha256:715124fb3e4f61edd5fecfe3b8b4c532d5db45ae5dc5e9b8dbbe7ded97ae05ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rapidoid:5.4` - linux; amd64

```console
$ docker pull rapidoid@sha256:62614f246afa8604e6239f21e1f6f405f30c9d1d8f8dad651c37242f834a1924
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93908197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb04c861776790d8184015e57ae5173981789dab2bed9c6c4d053b9e0fe6ee48`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:25:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:29:13 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:29:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:29:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:30:47 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 08:30:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:30:47 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:31:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 15:47:54 GMT
MAINTAINER Nikolche Mihajlovski
# Wed, 06 Feb 2019 15:47:55 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Wed, 06 Feb 2019 15:47:55 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Wed, 06 Feb 2019 15:47:55 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Wed, 06 Feb 2019 15:47:56 GMT
WORKDIR /opt
# Wed, 06 Feb 2019 15:47:56 GMT
EXPOSE 8888
# Wed, 06 Feb 2019 15:47:56 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 15:47:57 GMT
ENV RAPIDOID_VERSION=5.4.6
# Wed, 06 Feb 2019 15:47:57 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Wed, 06 Feb 2019 15:47:57 GMT
COPY file:54eb4a0f21aca6721ebea0745a2cbfeb12c799c7a0902f588f490fc0afa8e8ea in /opt/ 
# Wed, 06 Feb 2019 15:48:14 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:48:14 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187061ad2a2978b8c52f307ede3a915e9134a3bb8f6ea795e67ad31524381cdd`  
		Last Modified: Wed, 06 Feb 2019 08:51:41 GMT  
		Size: 454.9 KB (454874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f37e25a28fcc612aa4d7f14effcc97964c720244c1df67570f6834c8e80fdb7`  
		Last Modified: Wed, 06 Feb 2019 08:53:55 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211d5433339d39c37cc2fe7f8cfa195ac8d9f0072c3be0e49b33dca261a56733`  
		Last Modified: Wed, 06 Feb 2019 08:53:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b60727ce1471afc3de3bc0c8f518e1f79bc5714bc6b80e322f64ff9d75dbf30b`  
		Last Modified: Wed, 06 Feb 2019 08:55:09 GMT  
		Size: 55.8 MB (55844124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365a78faff12ee566997efe270fa08a251cdc910f7a3cbbff739ea3b395c9f3c`  
		Last Modified: Wed, 06 Feb 2019 15:48:25 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d302e205b02df75c11eddb8117ed4c5369d157ca1fc7e5d241df716f81ab1a`  
		Last Modified: Wed, 06 Feb 2019 15:48:28 GMT  
		Size: 15.1 MB (15108168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rapidoid:5.4` - linux; arm64 variant v8

```console
$ docker pull rapidoid@sha256:39546929faedd18053409584bb8d473ee5dcc35907d328b23758bd3e88316280
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83184961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60c69a9c1b6c40362f18f10b4b0cf8d078fac9d350c12a0593dbe73af14179c6`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 02:40:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 02:52:52 GMT
ENV LANG=C.UTF-8
# Fri, 25 Jan 2019 02:53:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 25 Jan 2019 02:53:30 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 25 Jan 2019 03:00:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 25 Jan 2019 03:00:02 GMT
ENV JAVA_VERSION=8u181
# Fri, 25 Jan 2019 03:00:05 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 25 Jan 2019 03:02:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 25 Jan 2019 10:55:04 GMT
MAINTAINER Nikolche Mihajlovski
# Fri, 25 Jan 2019 10:55:05 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Fri, 25 Jan 2019 10:55:05 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Fri, 25 Jan 2019 10:55:06 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Fri, 25 Jan 2019 10:55:07 GMT
WORKDIR /opt
# Fri, 25 Jan 2019 10:55:08 GMT
EXPOSE 8888
# Fri, 25 Jan 2019 10:55:09 GMT
VOLUME [/data]
# Fri, 25 Jan 2019 10:55:10 GMT
ENV RAPIDOID_VERSION=5.4.6
# Fri, 25 Jan 2019 10:55:11 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Fri, 25 Jan 2019 10:55:11 GMT
COPY file:54eb4a0f21aca6721ebea0745a2cbfeb12c799c7a0902f588f490fc0afa8e8ea in /opt/ 
# Fri, 25 Jan 2019 10:55:43 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 10:55:44 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
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
	-	`sha256:3a0adf5053934b0aa34d6687db0aee4b5208f6a3d542719c88738de21a835b00`  
		Last Modified: Fri, 25 Jan 2019 03:11:58 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f07c907cb5f9ae9cc0f66f6904b0389d215f461d9193899965c115ed69562de`  
		Last Modified: Fri, 25 Jan 2019 03:11:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac41d148dc390cdccea7129c687a297406c4957848d592c743903d151b5bb63`  
		Last Modified: Fri, 25 Jan 2019 03:13:00 GMT  
		Size: 48.0 MB (48015594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19b06fca2c1dc0289ffa283c5d81323949713b2921dc9ece695c63ee808a8fc`  
		Last Modified: Fri, 25 Jan 2019 10:55:55 GMT  
		Size: 367.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b23d3c67dc564bac145fbd51d99e3fffe3a7371a3cead0ec6c062714efb06b`  
		Last Modified: Fri, 25 Jan 2019 10:55:58 GMT  
		Size: 14.4 MB (14377533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rapidoid:5.4.6`

```console
$ docker pull rapidoid@sha256:715124fb3e4f61edd5fecfe3b8b4c532d5db45ae5dc5e9b8dbbe7ded97ae05ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rapidoid:5.4.6` - linux; amd64

```console
$ docker pull rapidoid@sha256:62614f246afa8604e6239f21e1f6f405f30c9d1d8f8dad651c37242f834a1924
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93908197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb04c861776790d8184015e57ae5173981789dab2bed9c6c4d053b9e0fe6ee48`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:25:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:29:13 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:29:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:29:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:30:47 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 08:30:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:30:47 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:31:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 15:47:54 GMT
MAINTAINER Nikolche Mihajlovski
# Wed, 06 Feb 2019 15:47:55 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Wed, 06 Feb 2019 15:47:55 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Wed, 06 Feb 2019 15:47:55 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Wed, 06 Feb 2019 15:47:56 GMT
WORKDIR /opt
# Wed, 06 Feb 2019 15:47:56 GMT
EXPOSE 8888
# Wed, 06 Feb 2019 15:47:56 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 15:47:57 GMT
ENV RAPIDOID_VERSION=5.4.6
# Wed, 06 Feb 2019 15:47:57 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Wed, 06 Feb 2019 15:47:57 GMT
COPY file:54eb4a0f21aca6721ebea0745a2cbfeb12c799c7a0902f588f490fc0afa8e8ea in /opt/ 
# Wed, 06 Feb 2019 15:48:14 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:48:14 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187061ad2a2978b8c52f307ede3a915e9134a3bb8f6ea795e67ad31524381cdd`  
		Last Modified: Wed, 06 Feb 2019 08:51:41 GMT  
		Size: 454.9 KB (454874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f37e25a28fcc612aa4d7f14effcc97964c720244c1df67570f6834c8e80fdb7`  
		Last Modified: Wed, 06 Feb 2019 08:53:55 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211d5433339d39c37cc2fe7f8cfa195ac8d9f0072c3be0e49b33dca261a56733`  
		Last Modified: Wed, 06 Feb 2019 08:53:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b60727ce1471afc3de3bc0c8f518e1f79bc5714bc6b80e322f64ff9d75dbf30b`  
		Last Modified: Wed, 06 Feb 2019 08:55:09 GMT  
		Size: 55.8 MB (55844124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365a78faff12ee566997efe270fa08a251cdc910f7a3cbbff739ea3b395c9f3c`  
		Last Modified: Wed, 06 Feb 2019 15:48:25 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d302e205b02df75c11eddb8117ed4c5369d157ca1fc7e5d241df716f81ab1a`  
		Last Modified: Wed, 06 Feb 2019 15:48:28 GMT  
		Size: 15.1 MB (15108168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rapidoid:5.4.6` - linux; arm64 variant v8

```console
$ docker pull rapidoid@sha256:39546929faedd18053409584bb8d473ee5dcc35907d328b23758bd3e88316280
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83184961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60c69a9c1b6c40362f18f10b4b0cf8d078fac9d350c12a0593dbe73af14179c6`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 02:40:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 02:52:52 GMT
ENV LANG=C.UTF-8
# Fri, 25 Jan 2019 02:53:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 25 Jan 2019 02:53:30 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 25 Jan 2019 03:00:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 25 Jan 2019 03:00:02 GMT
ENV JAVA_VERSION=8u181
# Fri, 25 Jan 2019 03:00:05 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 25 Jan 2019 03:02:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 25 Jan 2019 10:55:04 GMT
MAINTAINER Nikolche Mihajlovski
# Fri, 25 Jan 2019 10:55:05 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Fri, 25 Jan 2019 10:55:05 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Fri, 25 Jan 2019 10:55:06 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Fri, 25 Jan 2019 10:55:07 GMT
WORKDIR /opt
# Fri, 25 Jan 2019 10:55:08 GMT
EXPOSE 8888
# Fri, 25 Jan 2019 10:55:09 GMT
VOLUME [/data]
# Fri, 25 Jan 2019 10:55:10 GMT
ENV RAPIDOID_VERSION=5.4.6
# Fri, 25 Jan 2019 10:55:11 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Fri, 25 Jan 2019 10:55:11 GMT
COPY file:54eb4a0f21aca6721ebea0745a2cbfeb12c799c7a0902f588f490fc0afa8e8ea in /opt/ 
# Fri, 25 Jan 2019 10:55:43 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 10:55:44 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
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
	-	`sha256:3a0adf5053934b0aa34d6687db0aee4b5208f6a3d542719c88738de21a835b00`  
		Last Modified: Fri, 25 Jan 2019 03:11:58 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f07c907cb5f9ae9cc0f66f6904b0389d215f461d9193899965c115ed69562de`  
		Last Modified: Fri, 25 Jan 2019 03:11:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac41d148dc390cdccea7129c687a297406c4957848d592c743903d151b5bb63`  
		Last Modified: Fri, 25 Jan 2019 03:13:00 GMT  
		Size: 48.0 MB (48015594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19b06fca2c1dc0289ffa283c5d81323949713b2921dc9ece695c63ee808a8fc`  
		Last Modified: Fri, 25 Jan 2019 10:55:55 GMT  
		Size: 367.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b23d3c67dc564bac145fbd51d99e3fffe3a7371a3cead0ec6c062714efb06b`  
		Last Modified: Fri, 25 Jan 2019 10:55:58 GMT  
		Size: 14.4 MB (14377533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rapidoid:latest`

```console
$ docker pull rapidoid@sha256:715124fb3e4f61edd5fecfe3b8b4c532d5db45ae5dc5e9b8dbbe7ded97ae05ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rapidoid:latest` - linux; amd64

```console
$ docker pull rapidoid@sha256:62614f246afa8604e6239f21e1f6f405f30c9d1d8f8dad651c37242f834a1924
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93908197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb04c861776790d8184015e57ae5173981789dab2bed9c6c4d053b9e0fe6ee48`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:25:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:29:13 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:29:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:29:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:30:47 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 08:30:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:30:47 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:31:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 15:47:54 GMT
MAINTAINER Nikolche Mihajlovski
# Wed, 06 Feb 2019 15:47:55 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Wed, 06 Feb 2019 15:47:55 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Wed, 06 Feb 2019 15:47:55 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Wed, 06 Feb 2019 15:47:56 GMT
WORKDIR /opt
# Wed, 06 Feb 2019 15:47:56 GMT
EXPOSE 8888
# Wed, 06 Feb 2019 15:47:56 GMT
VOLUME [/data]
# Wed, 06 Feb 2019 15:47:57 GMT
ENV RAPIDOID_VERSION=5.4.6
# Wed, 06 Feb 2019 15:47:57 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Wed, 06 Feb 2019 15:47:57 GMT
COPY file:54eb4a0f21aca6721ebea0745a2cbfeb12c799c7a0902f588f490fc0afa8e8ea in /opt/ 
# Wed, 06 Feb 2019 15:48:14 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:48:14 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187061ad2a2978b8c52f307ede3a915e9134a3bb8f6ea795e67ad31524381cdd`  
		Last Modified: Wed, 06 Feb 2019 08:51:41 GMT  
		Size: 454.9 KB (454874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f37e25a28fcc612aa4d7f14effcc97964c720244c1df67570f6834c8e80fdb7`  
		Last Modified: Wed, 06 Feb 2019 08:53:55 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211d5433339d39c37cc2fe7f8cfa195ac8d9f0072c3be0e49b33dca261a56733`  
		Last Modified: Wed, 06 Feb 2019 08:53:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b60727ce1471afc3de3bc0c8f518e1f79bc5714bc6b80e322f64ff9d75dbf30b`  
		Last Modified: Wed, 06 Feb 2019 08:55:09 GMT  
		Size: 55.8 MB (55844124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365a78faff12ee566997efe270fa08a251cdc910f7a3cbbff739ea3b395c9f3c`  
		Last Modified: Wed, 06 Feb 2019 15:48:25 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d302e205b02df75c11eddb8117ed4c5369d157ca1fc7e5d241df716f81ab1a`  
		Last Modified: Wed, 06 Feb 2019 15:48:28 GMT  
		Size: 15.1 MB (15108168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rapidoid:latest` - linux; arm64 variant v8

```console
$ docker pull rapidoid@sha256:39546929faedd18053409584bb8d473ee5dcc35907d328b23758bd3e88316280
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83184961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60c69a9c1b6c40362f18f10b4b0cf8d078fac9d350c12a0593dbe73af14179c6`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 02:40:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 02:52:52 GMT
ENV LANG=C.UTF-8
# Fri, 25 Jan 2019 02:53:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 25 Jan 2019 02:53:30 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 25 Jan 2019 03:00:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 25 Jan 2019 03:00:02 GMT
ENV JAVA_VERSION=8u181
# Fri, 25 Jan 2019 03:00:05 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 25 Jan 2019 03:02:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 25 Jan 2019 10:55:04 GMT
MAINTAINER Nikolche Mihajlovski
# Fri, 25 Jan 2019 10:55:05 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Fri, 25 Jan 2019 10:55:05 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Fri, 25 Jan 2019 10:55:06 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Fri, 25 Jan 2019 10:55:07 GMT
WORKDIR /opt
# Fri, 25 Jan 2019 10:55:08 GMT
EXPOSE 8888
# Fri, 25 Jan 2019 10:55:09 GMT
VOLUME [/data]
# Fri, 25 Jan 2019 10:55:10 GMT
ENV RAPIDOID_VERSION=5.4.6
# Fri, 25 Jan 2019 10:55:11 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Fri, 25 Jan 2019 10:55:11 GMT
COPY file:54eb4a0f21aca6721ebea0745a2cbfeb12c799c7a0902f588f490fc0afa8e8ea in /opt/ 
# Fri, 25 Jan 2019 10:55:43 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 10:55:44 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
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
	-	`sha256:3a0adf5053934b0aa34d6687db0aee4b5208f6a3d542719c88738de21a835b00`  
		Last Modified: Fri, 25 Jan 2019 03:11:58 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f07c907cb5f9ae9cc0f66f6904b0389d215f461d9193899965c115ed69562de`  
		Last Modified: Fri, 25 Jan 2019 03:11:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac41d148dc390cdccea7129c687a297406c4957848d592c743903d151b5bb63`  
		Last Modified: Fri, 25 Jan 2019 03:13:00 GMT  
		Size: 48.0 MB (48015594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19b06fca2c1dc0289ffa283c5d81323949713b2921dc9ece695c63ee808a8fc`  
		Last Modified: Fri, 25 Jan 2019 10:55:55 GMT  
		Size: 367.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b23d3c67dc564bac145fbd51d99e3fffe3a7371a3cead0ec6c062714efb06b`  
		Last Modified: Fri, 25 Jan 2019 10:55:58 GMT  
		Size: 14.4 MB (14377533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

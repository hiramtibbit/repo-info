<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rapidoid`

-	[`rapidoid:5`](#rapidoid5)
-	[`rapidoid:5.4`](#rapidoid54)
-	[`rapidoid:5.4.6`](#rapidoid546)
-	[`rapidoid:latest`](#rapidoidlatest)

## `rapidoid:5`

```console
$ docker pull rapidoid@sha256:c963541fb50dae3e03cbbcd64a998b1a3fa8192e87e6be2f395a43aee3878d7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rapidoid:5` - linux; amd64

```console
$ docker pull rapidoid@sha256:0b9d4e50f7f46ab166d4baeed1edf4f1eba4688ee04b88ba7d4d200b62bb2046
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94175787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b72d8b939db91ccea0750087ed7cf7d204f0660a4d7918177be59f0eebe126a5`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 01:54:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:54:56 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:54:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:54:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 01:54:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 01:54:59 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 01:54:59 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 01:54:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 01:55:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 01:55:36 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 04:11:19 GMT
MAINTAINER Nikolche Mihajlovski
# Wed, 06 Jun 2018 04:11:19 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Wed, 06 Jun 2018 04:11:19 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Wed, 06 Jun 2018 04:11:19 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Wed, 06 Jun 2018 04:11:20 GMT
WORKDIR /opt
# Wed, 06 Jun 2018 04:11:20 GMT
EXPOSE 8888/tcp
# Wed, 06 Jun 2018 04:11:20 GMT
VOLUME [/data]
# Wed, 06 Jun 2018 04:11:20 GMT
ENV RAPIDOID_VERSION=5.4.6
# Wed, 06 Jun 2018 04:11:21 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Wed, 06 Jun 2018 04:11:21 GMT
COPY file:604b8053d63179f0e45204cfaceba95b6ea008beaf1c685b80fa09ca1e982e4c in /opt/ 
# Wed, 06 Jun 2018 04:11:35 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 04:11:35 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44ea3e7c4ff00a9a43f29069ca7249f6a31ef8a7365ed89b7f22f8d436ec0a5`  
		Last Modified: Wed, 06 Jun 2018 02:14:43 GMT  
		Size: 454.9 KB (454851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffd93428115226c4bae15842cfda8645782d5d26ddd3193688abf73a3a7daf9`  
		Last Modified: Wed, 06 Jun 2018 02:14:42 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd00e3c2b114a3541c50a56a3f9391a30b3f2948cf59347f3ce0e416e4e609fb`  
		Last Modified: Wed, 06 Jun 2018 02:14:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342f54931737941d8bbf16988aa25c00661d4947cf0d256dae6200ca05d80175`  
		Last Modified: Wed, 06 Jun 2018 02:15:01 GMT  
		Size: 55.9 MB (55851012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee0b21f15e0e168f9176a8ecf70aebd0ae059cdf8805b049599663bb38aaf89`  
		Last Modified: Wed, 06 Jun 2018 02:14:43 GMT  
		Size: 272.1 KB (272128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc980b588d7bcaf0620a87890b0afd567d87fa44f3ff08aa74f819fb49d27222`  
		Last Modified: Wed, 06 Jun 2018 04:11:48 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea6c46d4942f9b54eb2307ee921782b59de3d0509994b130fbdaf944e9d81f2`  
		Last Modified: Wed, 06 Jun 2018 04:11:50 GMT  
		Size: 15.1 MB (15101019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rapidoid:5.4`

```console
$ docker pull rapidoid@sha256:c963541fb50dae3e03cbbcd64a998b1a3fa8192e87e6be2f395a43aee3878d7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rapidoid:5.4` - linux; amd64

```console
$ docker pull rapidoid@sha256:0b9d4e50f7f46ab166d4baeed1edf4f1eba4688ee04b88ba7d4d200b62bb2046
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94175787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b72d8b939db91ccea0750087ed7cf7d204f0660a4d7918177be59f0eebe126a5`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 01:54:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:54:56 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:54:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:54:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 01:54:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 01:54:59 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 01:54:59 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 01:54:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 01:55:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 01:55:36 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 04:11:19 GMT
MAINTAINER Nikolche Mihajlovski
# Wed, 06 Jun 2018 04:11:19 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Wed, 06 Jun 2018 04:11:19 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Wed, 06 Jun 2018 04:11:19 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Wed, 06 Jun 2018 04:11:20 GMT
WORKDIR /opt
# Wed, 06 Jun 2018 04:11:20 GMT
EXPOSE 8888/tcp
# Wed, 06 Jun 2018 04:11:20 GMT
VOLUME [/data]
# Wed, 06 Jun 2018 04:11:20 GMT
ENV RAPIDOID_VERSION=5.4.6
# Wed, 06 Jun 2018 04:11:21 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Wed, 06 Jun 2018 04:11:21 GMT
COPY file:604b8053d63179f0e45204cfaceba95b6ea008beaf1c685b80fa09ca1e982e4c in /opt/ 
# Wed, 06 Jun 2018 04:11:35 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 04:11:35 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44ea3e7c4ff00a9a43f29069ca7249f6a31ef8a7365ed89b7f22f8d436ec0a5`  
		Last Modified: Wed, 06 Jun 2018 02:14:43 GMT  
		Size: 454.9 KB (454851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffd93428115226c4bae15842cfda8645782d5d26ddd3193688abf73a3a7daf9`  
		Last Modified: Wed, 06 Jun 2018 02:14:42 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd00e3c2b114a3541c50a56a3f9391a30b3f2948cf59347f3ce0e416e4e609fb`  
		Last Modified: Wed, 06 Jun 2018 02:14:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342f54931737941d8bbf16988aa25c00661d4947cf0d256dae6200ca05d80175`  
		Last Modified: Wed, 06 Jun 2018 02:15:01 GMT  
		Size: 55.9 MB (55851012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee0b21f15e0e168f9176a8ecf70aebd0ae059cdf8805b049599663bb38aaf89`  
		Last Modified: Wed, 06 Jun 2018 02:14:43 GMT  
		Size: 272.1 KB (272128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc980b588d7bcaf0620a87890b0afd567d87fa44f3ff08aa74f819fb49d27222`  
		Last Modified: Wed, 06 Jun 2018 04:11:48 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea6c46d4942f9b54eb2307ee921782b59de3d0509994b130fbdaf944e9d81f2`  
		Last Modified: Wed, 06 Jun 2018 04:11:50 GMT  
		Size: 15.1 MB (15101019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rapidoid:5.4.6`

```console
$ docker pull rapidoid@sha256:c963541fb50dae3e03cbbcd64a998b1a3fa8192e87e6be2f395a43aee3878d7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rapidoid:5.4.6` - linux; amd64

```console
$ docker pull rapidoid@sha256:0b9d4e50f7f46ab166d4baeed1edf4f1eba4688ee04b88ba7d4d200b62bb2046
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94175787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b72d8b939db91ccea0750087ed7cf7d204f0660a4d7918177be59f0eebe126a5`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 01:54:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:54:56 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:54:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:54:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 01:54:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 01:54:59 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 01:54:59 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 01:54:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 01:55:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 01:55:36 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 04:11:19 GMT
MAINTAINER Nikolche Mihajlovski
# Wed, 06 Jun 2018 04:11:19 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Wed, 06 Jun 2018 04:11:19 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Wed, 06 Jun 2018 04:11:19 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Wed, 06 Jun 2018 04:11:20 GMT
WORKDIR /opt
# Wed, 06 Jun 2018 04:11:20 GMT
EXPOSE 8888/tcp
# Wed, 06 Jun 2018 04:11:20 GMT
VOLUME [/data]
# Wed, 06 Jun 2018 04:11:20 GMT
ENV RAPIDOID_VERSION=5.4.6
# Wed, 06 Jun 2018 04:11:21 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Wed, 06 Jun 2018 04:11:21 GMT
COPY file:604b8053d63179f0e45204cfaceba95b6ea008beaf1c685b80fa09ca1e982e4c in /opt/ 
# Wed, 06 Jun 2018 04:11:35 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 04:11:35 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44ea3e7c4ff00a9a43f29069ca7249f6a31ef8a7365ed89b7f22f8d436ec0a5`  
		Last Modified: Wed, 06 Jun 2018 02:14:43 GMT  
		Size: 454.9 KB (454851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffd93428115226c4bae15842cfda8645782d5d26ddd3193688abf73a3a7daf9`  
		Last Modified: Wed, 06 Jun 2018 02:14:42 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd00e3c2b114a3541c50a56a3f9391a30b3f2948cf59347f3ce0e416e4e609fb`  
		Last Modified: Wed, 06 Jun 2018 02:14:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342f54931737941d8bbf16988aa25c00661d4947cf0d256dae6200ca05d80175`  
		Last Modified: Wed, 06 Jun 2018 02:15:01 GMT  
		Size: 55.9 MB (55851012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee0b21f15e0e168f9176a8ecf70aebd0ae059cdf8805b049599663bb38aaf89`  
		Last Modified: Wed, 06 Jun 2018 02:14:43 GMT  
		Size: 272.1 KB (272128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc980b588d7bcaf0620a87890b0afd567d87fa44f3ff08aa74f819fb49d27222`  
		Last Modified: Wed, 06 Jun 2018 04:11:48 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea6c46d4942f9b54eb2307ee921782b59de3d0509994b130fbdaf944e9d81f2`  
		Last Modified: Wed, 06 Jun 2018 04:11:50 GMT  
		Size: 15.1 MB (15101019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rapidoid:latest`

```console
$ docker pull rapidoid@sha256:1cd8951cd18382430c6d841584bf5f7c9db281614362c6b02622ce4e5a2367cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rapidoid:latest` - linux; amd64

```console
$ docker pull rapidoid@sha256:748328f84e0195adeb7c1ff2202db5f3431c1d71cce2aa957d7ae172a4940386
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94175210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa981900adf7980bab64f263ab8d9999afc6df6cbfe9286340173142ce0f89b5`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Fri, 04 May 2018 23:52:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 23:52:54 GMT
ENV LANG=C.UTF-8
# Fri, 04 May 2018 23:52:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 04 May 2018 23:52:56 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 04 May 2018 23:52:56 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 04 May 2018 23:52:56 GMT
ENV JAVA_VERSION=8u171
# Fri, 04 May 2018 23:52:56 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Fri, 04 May 2018 23:52:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 14 May 2018 22:45:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 14 May 2018 22:45:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 02:46:28 GMT
MAINTAINER Nikolche Mihajlovski
# Tue, 15 May 2018 02:46:28 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Tue, 15 May 2018 02:46:28 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Tue, 15 May 2018 02:46:29 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Tue, 15 May 2018 02:46:29 GMT
WORKDIR /opt
# Tue, 15 May 2018 02:46:29 GMT
EXPOSE 8888/tcp
# Tue, 15 May 2018 02:46:29 GMT
VOLUME [/data]
# Tue, 15 May 2018 02:46:29 GMT
ENV RAPIDOID_VERSION=5.4.6
# Tue, 15 May 2018 02:46:30 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Tue, 15 May 2018 02:46:30 GMT
COPY file:604b8053d63179f0e45204cfaceba95b6ea008beaf1c685b80fa09ca1e982e4c in /opt/ 
# Tue, 15 May 2018 02:46:43 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 02:46:43 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a87c8cc1b7facfc2236149f7019c9c221c9a97a6916c08e3f9317fd669ebd85`  
		Last Modified: Sat, 05 May 2018 00:09:26 GMT  
		Size: 454.9 KB (454866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa430945d0642ea0e7898d8ddaffe0fe727048fc181fbca36c77d6640be75eac`  
		Last Modified: Sat, 05 May 2018 00:09:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5770e349ac1c8cb7f950b668c89b252822713160142d235bf95e1796e5b49f1`  
		Last Modified: Sat, 05 May 2018 00:09:26 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79add3c430419f19303780eedfcbfbeb39f437589f21350c8e1d116836efd9`  
		Last Modified: Mon, 14 May 2018 23:19:47 GMT  
		Size: 55.9 MB (55850506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea817b5afdd08568d1fb142174a3186fbd5aa4a323c2f5a5fd7e24abd6646da`  
		Last Modified: Mon, 14 May 2018 23:19:35 GMT  
		Size: 272.1 KB (272096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff82f58f34389fef67cc0472ae8c66150dd5601a71852b83a6d29ec48d6bba3`  
		Last Modified: Tue, 15 May 2018 02:46:55 GMT  
		Size: 367.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884e43c1717bdc67dd6fb49e91d5cacc23b986940bff9cfdd1b577afa1efb4bc`  
		Last Modified: Tue, 15 May 2018 02:46:58 GMT  
		Size: 15.1 MB (15100968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

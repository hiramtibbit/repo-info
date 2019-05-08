## `openjdk:11-slim-stretch`

```console
$ docker pull openjdk@sha256:825d62260af63427cd01485a0a8bcb54f45f600ae14f0cf18e3167513124962a
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

### `openjdk:11-slim-stretch` - linux; amd64

```console
$ docker pull openjdk@sha256:bba72a99bfd56f66c509b6c4158c3e6207d10209be2e4a15bcb520ec9a92fbe1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.9 MB (287908208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b753a509e68bac224aa0c0a0350336e85efe0aabd5371b82f8ceab5e98b35281`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:04:24 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 05:04:25 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:04:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:04:27 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:04:27 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 05:04:27 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 05:04:27 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 05:05:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 05:05:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a54a21b0f2624aed91e64b1c74960532e22ad1d53c1f4d1fc57edee13a1fe0`  
		Last Modified: Wed, 08 May 2019 05:27:26 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d1bc98b28734307692403b69c0cab99f586567bcf8a1c6e393b5060cbecf0e`  
		Last Modified: Wed, 08 May 2019 05:27:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99e982badffd77dec4601d66c7dab2af440c58cd6d5e05cb5f9769e4fd69442`  
		Last Modified: Wed, 08 May 2019 05:27:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1f0eacb0238e0380bbce0ec00ce25f937b8109e044678b0116243edd700bf3`  
		Last Modified: Wed, 08 May 2019 05:27:50 GMT  
		Size: 265.0 MB (264963200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-slim-stretch` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:0808da82cd4e7c2455c3db228167ec955b269a258a8beab122b8b46b4c5218fb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.0 MB (214048809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb1d1932477d1df677c47fb279cdf805cd4eefda9bf40cdcaaf19a11b8f59d6`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:26:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:26:37 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 11:26:38 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 11:26:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 11:26:40 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 11:26:40 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 11:26:41 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 11:26:41 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 11:29:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 11:29:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a153ac62bf0a68e25aa314f9d9d8d55c61e86ae10aac14bedc6c64c37e21a68`  
		Last Modified: Wed, 08 May 2019 11:49:23 GMT  
		Size: 447.8 KB (447828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6202081ec9437f9d58f6a17ab3f797fff5bee8164f6ecf096e1095a80e302b35`  
		Last Modified: Wed, 08 May 2019 11:49:23 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00638137c1d83617c6d964134317e85c11255c53b3017e2e2deadecf85757c56`  
		Last Modified: Wed, 08 May 2019 11:49:23 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1227fbf1f3662c72a7b8df3ee46c4e2c5b59755cd433401e605edf2f133a442`  
		Last Modified: Wed, 08 May 2019 11:49:23 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef407d4bf2ba55bbbb1661999747cdb2b285291787dc344e0d641912686d54f`  
		Last Modified: Wed, 08 May 2019 11:49:56 GMT  
		Size: 192.4 MB (192444515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-slim-stretch` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:1e037bfd85ecde0fb7360ff12bb046c4b1d0e93dad3eccb76089ecc311a4a822
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.5 MB (243531861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5d900e2af31228de35de0dca3e22372ea39791ec92ab157669be5ba38a8cfdb`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:08:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:08:39 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 14:08:40 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 14:08:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 14:08:43 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 14:08:44 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 14:08:44 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 14:08:45 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 14:09:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 14:09:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e4b3bd395a6982a3d52e8e2c57651fb045081876d3ca9e21f248e1d6bc74cb`  
		Last Modified: Wed, 08 May 2019 14:30:10 GMT  
		Size: 430.7 KB (430721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea8b476c9632d40bd7ff2d3a0de36e86ab7e5881c8bc03d2c7350c40d35e100`  
		Last Modified: Wed, 08 May 2019 14:30:10 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac31ca1b6e9c765ee62cbc4f79d70e59f2e76c145720c49edbef30262bc46023`  
		Last Modified: Wed, 08 May 2019 14:30:10 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2deb81c0363f41df04b6118ec76c8d3882d36450a5101fffbbb9320df685ac91`  
		Last Modified: Wed, 08 May 2019 14:30:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d79efe8f921c18ca92374b613fcc697cbe0001ab0bc39e72c557397386b673d`  
		Last Modified: Wed, 08 May 2019 14:30:50 GMT  
		Size: 223.8 MB (223824324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-slim-stretch` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:56e407efccdc6147a2aa3b4b292206c44346da82cd8b8d98b4484d82cadb6c67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.3 MB (264252393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33140c5eb2b903f6e59a948a96f431a673e82e64b175b0a0bedded68b37a181c`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:04:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:04:10 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 16:04:11 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:04:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:04:16 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:04:17 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 16:04:17 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 16:04:18 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 16:06:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 16:06:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bfd664c569930f085abf67c386714eb2ecc7caafeae538465f7b490eb310c2`  
		Last Modified: Wed, 08 May 2019 16:30:16 GMT  
		Size: 441.0 KB (441006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52c134529f3a4a70d1bdb99d2a0e1ea084793528c8dacf14d2de1609eb37503`  
		Last Modified: Wed, 08 May 2019 16:30:15 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885d6201931a69fdeb1ffcd0c3e825f873489430282879fdd55677ce01ada31f`  
		Last Modified: Wed, 08 May 2019 16:30:15 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f470a0d66b993778003c92e7a4283824af2521190ce28f7438903c91f19d42da`  
		Last Modified: Wed, 08 May 2019 16:30:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31ad676c4796c848de9b5c5c8fc84c316f5b76b97c8ccc79835835bbed461ca`  
		Last Modified: Wed, 08 May 2019 16:30:59 GMT  
		Size: 243.5 MB (243476970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-slim-stretch` - linux; 386

```console
$ docker pull openjdk@sha256:b9c0ded89fb063d35bcc830bc185f65e2359ee99a94a19371b66225742390533
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.5 MB (346452138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc174889a4ade9dfd569e05f735ace3eb8131dafef4dd2cd3a8df7ec5d551fa1`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 17:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:53:36 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 17:53:36 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 17:53:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 17:53:37 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 17:53:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 Apr 2019 10:50:00 GMT
ENV JAVA_VERSION=11.0.3
# Fri, 05 Apr 2019 10:50:00 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Fri, 05 Apr 2019 10:50:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Apr 2019 10:50:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3d7f9eb531082cde488d0aa03b101f3e89fbf5c5a1258cd81277fc760913c1`  
		Last Modified: Wed, 27 Mar 2019 18:29:13 GMT  
		Size: 463.5 KB (463546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84397945a3d0c25bcccd7ab1d3c7320834d353502f3fdaaebd58bf1c9bc428a`  
		Last Modified: Wed, 27 Mar 2019 18:29:13 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ab93bd8c7dab019374a7c07aa8698315ccb7032b45d41afc48c5288e946d66`  
		Last Modified: Wed, 27 Mar 2019 18:29:13 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6530ef488aac5e7d903ce6a46a482601846e8fea4c6952f2ccde4bf11a733af9`  
		Last Modified: Wed, 27 Mar 2019 18:29:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c42e9401c08c31fbf098927934d51cd8db11316e32bd0f27f754451734b7259`  
		Last Modified: Fri, 05 Apr 2019 10:54:50 GMT  
		Size: 322.9 MB (322862248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-slim-stretch` - linux; ppc64le

```console
$ docker pull openjdk@sha256:c629f6660e1c9938064b0bfb15aab9e20969a1aa7bd4c51271418b12542c697b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.3 MB (256322739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19c73224182389b5e8123ffe9e8b931ba30342ae29069e596df834ab0ff7a4fa`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:35:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:35:49 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 12:35:53 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 12:35:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 12:36:05 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 12:36:11 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 12:36:14 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 12:36:21 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 12:38:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 12:38:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27796501cbfb0b554b085595b018957af7f888b3aa25d40b1d53092de0b8a3ad`  
		Last Modified: Wed, 08 May 2019 13:12:44 GMT  
		Size: 449.8 KB (449837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e293eb47e74983afb6d375513317ca9c26848b11e9fe21d2bd632a6b34d523e2`  
		Last Modified: Wed, 08 May 2019 13:12:44 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6464c37ac669241da5e439f1caff0270c00249fe1c8c0f7e874b21a72727ac5`  
		Last Modified: Wed, 08 May 2019 13:12:44 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45d467433fbe52b95ca15b50bb14e87a617e4d3361740746fe041180c3ad14a`  
		Last Modified: Wed, 08 May 2019 13:12:44 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee5a039f004b452c33a7cf03ee5b7902a7d475e4fc49e96b187488a7e2ecff2`  
		Last Modified: Wed, 08 May 2019 13:13:32 GMT  
		Size: 233.1 MB (233127384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-slim-stretch` - linux; s390x

```console
$ docker pull openjdk@sha256:82c7774db69fd2518aeb43abc0059d1789cd4c058ad406386ada2250022d21d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255766311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8adb66731c58dcdda5ac726b6285431f8be7aae308f83b942c30401048bca2e`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:38:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:38:47 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 14:38:49 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 14:38:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 14:38:54 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 14:38:55 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 14:38:55 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 14:38:56 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 14:41:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 14:41:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da4f342733acaa433c0f8a0ecb46e0f96b997768a1b55dc50a53550479a096b`  
		Last Modified: Wed, 08 May 2019 15:00:07 GMT  
		Size: 466.0 KB (465966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0faee3b885183f67de60206654a9c49f21aac81d0fde0be3dec544008461b28b`  
		Last Modified: Wed, 08 May 2019 15:00:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d62347989fcd47c0daa5681088ced274ff8bb446c4a9eb8122634c98da9d75e`  
		Last Modified: Wed, 08 May 2019 15:00:07 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97261faa7630965104d6a4a25b5784ff272a487d69c4a73b43d20025982f588`  
		Last Modified: Wed, 08 May 2019 15:00:07 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273f2f3c2c19b889f25097d8218476968a5fe01a5397b29480b47f3ee38725c3`  
		Last Modified: Wed, 08 May 2019 15:01:02 GMT  
		Size: 233.0 MB (232960870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7-jessie`

```console
$ docker pull openjdk@sha256:1040e1747add1e5571f14579ad3a6c867efe63a4eec4a1f67b8ca2c524e68642
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:a5bb86871038d5fd1b0dc7f106e5d9bb19a698fab3e1d49b05d4fe623d5d1dfb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.0 MB (213963019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c5c305c76e800296fda42f95c320bae171ac15993fd54698e596f60f0c9ad14`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:20:17 GMT
ADD file:e044496893d9e2cbf5a4b69ccfbb7d2997209962a78a52b6fc091c5b004cc33f in / 
# Mon, 04 Mar 2019 23:20:18 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:26:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:26:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:28:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:07:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:07:45 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:07:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:07:46 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:07:47 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 04:07:47 GMT
ENV JAVA_VERSION=7u181
# Tue, 05 Mar 2019 04:07:47 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Tue, 05 Mar 2019 04:10:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:85199fa09ec1510ee053da666286c385d07b8fab9fa61ae73a5b8c454e1b3397`  
		Last Modified: Mon, 04 Mar 2019 23:24:27 GMT  
		Size: 54.4 MB (54381658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aca5925aec20fece01837f6f93c55c62c38dfba443d19404e7be3a37f3bdf85`  
		Last Modified: Tue, 05 Mar 2019 02:41:52 GMT  
		Size: 17.5 MB (17539744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0b82b0156327d5318df3a19b56d0dbeb835ac75acb437341c939038d14fef0`  
		Last Modified: Tue, 05 Mar 2019 02:42:07 GMT  
		Size: 43.3 MB (43308912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cdd671d71cf9581c12184fffd2982e445f1bbf40b4c00797ad85f591a9794e9`  
		Last Modified: Tue, 05 Mar 2019 04:28:18 GMT  
		Size: 828.3 KB (828321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a467d97077759bdf8ff1bde809459b8b30a74764a766bb967d93aa82f70db6e8`  
		Last Modified: Tue, 05 Mar 2019 04:28:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d777ba1c40092dd313f4063a44d8c0d4358ece8db6b87af3d074a9d36b2a5280`  
		Last Modified: Tue, 05 Mar 2019 04:28:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484fe77db0b721f6e26bd2141d2043b8429754e15ae629f4d83405749016e268`  
		Last Modified: Tue, 05 Mar 2019 04:28:33 GMT  
		Size: 97.9 MB (97904005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:ef580d5190ccc8ac1d98067d0041807e4bd5b03b642ca48ed1b3ef17a1a3cabd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.5 MB (196540447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3950fb7b14823758f78cc654d6ec35647f6ef28890914e20ba6493f380ff97af`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:50:03 GMT
ADD file:66cba1ce0f57ac1885e087b1deba2b541e37c4eaf6eacf3f6677cb41af388c87 in / 
# Tue, 05 Mar 2019 09:50:05 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:24:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:24:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 10:26:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:26:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:26:55 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 11:26:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 11:26:57 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 11:26:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 11:26:58 GMT
ENV JAVA_VERSION=7u181
# Tue, 05 Mar 2019 11:26:58 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Tue, 05 Mar 2019 11:28:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:b7c40827a2a74bdfea27defa43e5568bacb59e6f9773735453da8b888b31d953`  
		Last Modified: Tue, 05 Mar 2019 09:59:19 GMT  
		Size: 52.6 MB (52568284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf75e00cc6a814dff9dda90a02a717aaff0d1ff8982516e907a703574296a1e`  
		Last Modified: Tue, 05 Mar 2019 10:40:38 GMT  
		Size: 17.0 MB (17030963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33492dd1bc96627981766a377034926a2e5b7c333ab2a7091ff44a1eb8f7700`  
		Last Modified: Tue, 05 Mar 2019 10:41:01 GMT  
		Size: 41.1 MB (41147734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3888718c8d020b574dc8c23cb932c194e7863b2a74d6c394c23bfa9cb0a2f01`  
		Last Modified: Tue, 05 Mar 2019 11:43:03 GMT  
		Size: 821.6 KB (821618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2896f2482f13d9c6b139b2f367d8a4ab0fa0282b0903a51b37670f26eb178bfc`  
		Last Modified: Tue, 05 Mar 2019 11:43:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a509e12ef22251878908ae7b2692fca7b4eca46196b33146100044f3ce997c3`  
		Last Modified: Tue, 05 Mar 2019 11:43:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093513cfc7ba54d571a8e18e39c3c35766fa6e03f5dfbb2a970ce6ec388b4fa5`  
		Last Modified: Tue, 05 Mar 2019 11:43:19 GMT  
		Size: 85.0 MB (84971469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jessie` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:c1cba8794ae2dfff0ed9b25ee5e9207312233273d907c08dab3ae000f3ffc926
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.2 MB (191181318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bdb5ab70a1f03dadb426539caea32ccee19dd4f258c51e47188ea4d09b6d7e4`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 12:59:04 GMT
ADD file:e2ec14698f9dbf6f9e69be1417badea55f51ce760c6134600720d78041923242 in / 
# Thu, 07 Feb 2019 12:59:05 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:30:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:30:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 15:31:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 16:30:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 16:30:51 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 16:30:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 16:30:54 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 16:30:54 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 07 Feb 2019 16:30:55 GMT
ENV JAVA_VERSION=7u181
# Thu, 07 Feb 2019 16:30:55 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Thu, 07 Feb 2019 16:32:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:9800246268d2ef744bda6da9d267fc24b9e904492c8abae95a2ea4e9a64a93ae`  
		Last Modified: Thu, 07 Feb 2019 01:20:17 GMT  
		Size: 50.3 MB (50291667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a417a1381c3b2efadb424349e0ed96d849692fb1454d122112ddb3f26f93e59a`  
		Last Modified: Thu, 07 Feb 2019 15:49:32 GMT  
		Size: 16.7 MB (16714301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d35a0ed8f4b6777b40114da3de56b7c3c08f277d4a083ba840615b17e991a39`  
		Last Modified: Thu, 07 Feb 2019 15:49:55 GMT  
		Size: 39.8 MB (39761792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf193f7538d25bd11fccce35a5f2427838cc401f9a8393c9fa5e6d7f10ecd82`  
		Last Modified: Thu, 07 Feb 2019 16:35:04 GMT  
		Size: 795.5 KB (795492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4929962bec29e1384839d0d3897bbf6b79a794bf684a2a1f968410d306d3731a`  
		Last Modified: Thu, 07 Feb 2019 16:35:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4867adf44d94ff4394a527784f609025eebd507aecc813723df80c232bcdd0f7`  
		Last Modified: Thu, 07 Feb 2019 16:35:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8e21a4f391057bc8e77f4e14fc060f4c5b85ccedec980bbafb808cceda19cc`  
		Last Modified: Thu, 07 Feb 2019 16:35:20 GMT  
		Size: 83.6 MB (83617687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:ddd1a346ed0e5a8bda14097ceac764c5175f4ba85ba1ef77c42dbaa36687e864
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.8 MB (226815652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8014532576e81ac19b19b47bc1ca08752bdcca0f262a358cbb98a0292fecb81b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 11:58:36 GMT
ADD file:7ee301fb17cb469725296eb34fd4c88b06658dab08befc626157c94e1b1264ae in / 
# Wed, 06 Feb 2019 11:58:37 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:37:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:37:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 01:41:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 06:27:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 06:27:29 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 06:27:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 06:27:30 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 06:27:30 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 07 Feb 2019 06:27:30 GMT
ENV JAVA_VERSION=7u181
# Thu, 07 Feb 2019 06:27:30 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Thu, 07 Feb 2019 06:31:18 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:0d2c60a99fbfd5389008365663b1914f58c65ad5174908669d2fd547813d4df9`  
		Last Modified: Wed, 06 Feb 2019 12:04:25 GMT  
		Size: 54.6 MB (54599595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f8a1642cca50fb512e186f15c61d2abd8bcf91ea3f8de5b6f58faa9de847ac`  
		Last Modified: Thu, 07 Feb 2019 02:00:51 GMT  
		Size: 19.8 MB (19846893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5080d1b2ea8bf5eca40266f2495503d0e2f3c12389fed01088be0cef360df689`  
		Last Modified: Thu, 07 Feb 2019 02:01:08 GMT  
		Size: 44.0 MB (43951959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13d16ed33206e617ddcb7d1c0b84bfaa75ae3993e0fecd47912147a96581a41a`  
		Last Modified: Thu, 07 Feb 2019 06:41:34 GMT  
		Size: 831.3 KB (831254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9f2bdf34642abbf2d3cda742d03165f3672ef051e1c4425b03bbe8789e92f1`  
		Last Modified: Thu, 07 Feb 2019 06:41:34 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdbe2ae1b3a29e475eb762c7df4687e8282ca87f7b2db25792ceeab0be846903`  
		Last Modified: Thu, 07 Feb 2019 06:41:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab50f82714118f796b975307fb5247910208e6eb665c07a6c7d3a90fc55409a0`  
		Last Modified: Thu, 07 Feb 2019 06:41:49 GMT  
		Size: 107.6 MB (107585574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

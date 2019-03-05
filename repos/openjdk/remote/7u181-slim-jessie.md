## `openjdk:7u181-slim-jessie`

```console
$ docker pull openjdk@sha256:a03b73401c8dcd3dd2321b2f2b9ea204c8a4175024d0bbc3ce92dbd2c8e025d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7u181-slim-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:e706569602e1b589c3d2bb6c5ad77d28b8764b7038b73e03c463b99edb9eb39e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115855794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b38e705f365759b10688a1f098de51c22adcbe14103715a68fe7ef29ee8c802c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:20:30 GMT
ADD file:9c83a686342b9918902182a223021336d3fba9b5e540dcdb130ad47a22033781 in / 
# Mon, 04 Mar 2019 23:20:30 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 04:12:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:12:18 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:12:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:12:20 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:12:20 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 04:12:20 GMT
ENV JAVA_VERSION=7u181
# Tue, 05 Mar 2019 04:12:20 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Tue, 05 Mar 2019 04:15:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:9fa17f107b7e9d91511082fc06c45340c4ab2b0820dc0974a963b137b3434e01`  
		Last Modified: Mon, 04 Mar 2019 23:24:38 GMT  
		Size: 30.2 MB (30154842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e03cc13d53e67cd32859c80aa13456c09174aac6c1036ceb2711361d91c9869`  
		Last Modified: Tue, 05 Mar 2019 04:28:40 GMT  
		Size: 463.8 KB (463794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f603d400bf0e5500d9d3262c23ed2f9ebd2d62bcf8e81e5501626a2ff751a14`  
		Last Modified: Tue, 05 Mar 2019 04:28:39 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9086ba7d053d8720b00c7eba6f31dc09605697d5fa722ab5cd4523947fceeb76`  
		Last Modified: Tue, 05 Mar 2019 04:28:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8befffb731cba94a32c6b6035af6831c6f5e80ee880824867f21d0a7f7d911e`  
		Last Modified: Tue, 05 Mar 2019 04:28:50 GMT  
		Size: 85.2 MB (85236780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-slim-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:e3fbd6b2f33c851b665b6ff998852a7619bdc3ef1ea81c30b1ac61efd5ecb869
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101128509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:231b54a49f3b164662ab9cf18973a6d791d09c71f2c014aefe2e8172aa3c257e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:50:33 GMT
ADD file:f954baa11d5f1e9a42892d7ea994114d4b62514a2135cae4fe9fd74a0f794907 in / 
# Tue, 05 Mar 2019 09:50:34 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:29:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:29:55 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 11:29:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 11:29:57 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 11:29:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 11:29:58 GMT
ENV JAVA_VERSION=7u181
# Tue, 05 Mar 2019 11:29:59 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Tue, 05 Mar 2019 11:31:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:454ce3a712ed980fb3326cc66c5a7d5f5f298963748dc88ea47b9c0f3445fe2c`  
		Last Modified: Tue, 05 Mar 2019 09:59:40 GMT  
		Size: 28.5 MB (28458756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9deb5fdd9889142ac177a8dec3442890f421019958d572ca6d010beeb5105a`  
		Last Modified: Tue, 05 Mar 2019 11:43:28 GMT  
		Size: 456.5 KB (456512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee6e5de3bf5dcaf48bb24ce4be3c57a76cc3252ca1223113c1ac055c159c1c3`  
		Last Modified: Tue, 05 Mar 2019 11:43:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28dea9bec9614b5f44e2b3b7cca32e81a49f49c551a6dd90d41a101fc2a4766e`  
		Last Modified: Tue, 05 Mar 2019 11:43:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27582ec3524ba6d010ce2650506ae5941f08e9eb8895024d069cabd1068b673`  
		Last Modified: Tue, 05 Mar 2019 11:43:43 GMT  
		Size: 72.2 MB (72212862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-slim-jessie` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:f49571f2a1078ae7fa294d8861ada9ab00960c5218c1cae0d49ee733b99b6872
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97286275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40d38d3aed591dce7b9786cf776805431131dd253c847c2567a1eef7b9df1b61`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 12:59:27 GMT
ADD file:db8f660d9cf9ce7f20a1c04249f01bbe33e00ee01204fdf4bab78eb9bddfa112 in / 
# Thu, 07 Feb 2019 12:59:27 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 13:31:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 13:31:26 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 13:31:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 13:31:28 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 13:31:29 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 07 Feb 2019 13:31:29 GMT
ENV JAVA_VERSION=7u181
# Thu, 07 Feb 2019 13:31:29 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Thu, 07 Feb 2019 13:33:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:06c740e232edb3bc22e51dfa51683e3cb5c62397ba3f08b08c24052eb63bc3c7`  
		Last Modified: Thu, 07 Feb 2019 01:20:36 GMT  
		Size: 26.3 MB (26304733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb9731f160ae8dce93d22819647d4044d497cc1f4ca920d722764fdca350b31`  
		Last Modified: Thu, 07 Feb 2019 13:36:02 GMT  
		Size: 432.4 KB (432407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:373de463300fcb8d44186d882e0ccafc1fb5cf7c3ffb484a507e074179b308f8`  
		Last Modified: Thu, 07 Feb 2019 13:36:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2a6fbbfd32a5ba3c023bbe0b87778024866e2d9a61ae50864d18d8f3662591`  
		Last Modified: Thu, 07 Feb 2019 13:36:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa406b248ae8d4c372c77a295d51ab3019e9847253eab2a58db3e7f064e051a`  
		Last Modified: Thu, 07 Feb 2019 13:36:16 GMT  
		Size: 70.5 MB (70548757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-slim-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:87838c783d2d5cf43866c7914eef4faa3e190d807df81514851f953d6dac488d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.9 MB (127937369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc3f9998a7f300d3fcbdc2faef8b708d66bad42a4d53e3c1d6ad02ebfdbcf818`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 11:58:59 GMT
ADD file:0f5ce19a631296a55839476a8427a6bb92538d0d63d89f0dfbeb8a1c8b0df1ff in / 
# Wed, 06 Feb 2019 11:59:00 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 13:25:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 13:25:33 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:25:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:25:36 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 13:25:36 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 13:25:36 GMT
ENV JAVA_VERSION=7u181
# Wed, 06 Feb 2019 13:25:37 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 06 Feb 2019 13:30:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:c4ddbb4ee60739923db706a335f6f79e8a70a6a62aa8917fc9cc3b04b936afe5`  
		Last Modified: Wed, 06 Feb 2019 12:04:43 GMT  
		Size: 30.3 MB (30293283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167fb262e1b77a67750951db06cba6d1738b78aaf0349ef231f300f3d2b768f6`  
		Last Modified: Wed, 06 Feb 2019 13:44:09 GMT  
		Size: 466.4 KB (466371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faaf1ec93dca6775b42538337c6c4b4e4a75cc666eb1af82fdb84dbc10e7ecb5`  
		Last Modified: Wed, 06 Feb 2019 13:44:09 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2bebe5be5ab3fe3c8c1503c64732af87d08645bd315bfcf03ea03b8563dc042`  
		Last Modified: Wed, 06 Feb 2019 13:44:09 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a625c488bbce97953902d1d72ece759ac2c9d458115435235aa7cf77373092`  
		Last Modified: Wed, 06 Feb 2019 13:44:40 GMT  
		Size: 97.2 MB (97177337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

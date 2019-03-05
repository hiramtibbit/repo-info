## `openjdk:11-stretch`

```console
$ docker pull openjdk@sha256:023f961d38f51abf114b1e60eef5f4d778c9af6d2a49156cf7c3884e49983665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:11-stretch` - linux; amd64

```console
$ docker pull openjdk@sha256:08620da8ca7a66f433de9bf14bdcdd390292436f049a7a407a49eabad67d0827
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.5 MB (436471189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9403e6db6375e551647765c8818a4570fa9dd40312a0a4957ea244b1abee4c3`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:59:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:59:31 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Tue, 05 Mar 2019 03:59:31 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 03:59:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 03:59:33 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 03:59:33 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 03:59:33 GMT
ENV JAVA_VERSION=11.0.2
# Tue, 05 Mar 2019 03:59:33 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Tue, 05 Mar 2019 04:00:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 04:00:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d327b352258a8208acc249d97d70cac3c5cda0cea4a08de4de3cb406d8e5`  
		Last Modified: Tue, 05 Mar 2019 02:43:57 GMT  
		Size: 50.1 MB (50065610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddb9bb0d37c8247e709a0deea556c410b2c8f5f481eb3f70ee7624d41334fbf`  
		Last Modified: Tue, 05 Mar 2019 04:23:59 GMT  
		Size: 892.4 KB (892426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3706204aff365f882a1b3bb199e9b7fa949778c9c6f68e33b4a714a58857f969`  
		Last Modified: Tue, 05 Mar 2019 04:23:59 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb34ace78c8a5d365ac49a32b4d85ab88d1fe70610763ce3b86949149defdef`  
		Last Modified: Tue, 05 Mar 2019 04:24:00 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1380b59fa38e2ff4ecf31195f8af5ac62b1b4f4591cd643ae10de44d69c929`  
		Last Modified: Tue, 05 Mar 2019 04:23:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b769b089ccc962da4eb340341cf6c1336cb0a42c47ce5754452bf43ba0efd501`  
		Last Modified: Tue, 05 Mar 2019 04:24:31 GMT  
		Size: 325.0 MB (325047918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-stretch` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:c5830875c4e5341dbc70996f33a58f7eed38f9d68d084c2ca183326fd14d14a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.8 MB (369771256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae097c632fbe620b26d0df6fd32a831d98e90666f3a88feb69ba8011cd235928`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 05 Mar 2019 09:54:45 GMT
ADD file:0d24c375e856f1e75f5cb0a6766b22665902b1a6940a87d2c7fc0e61f658e944 in / 
# Tue, 05 Mar 2019 09:54:46 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:33:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:33:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 10:34:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:10:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:10:29 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Tue, 05 Mar 2019 11:10:30 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 11:10:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 11:10:34 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 11:10:35 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 11:10:35 GMT
ENV JAVA_VERSION=11.0.2
# Tue, 05 Mar 2019 11:10:36 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Tue, 05 Mar 2019 11:13:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 11:13:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:35963a726ee5d52a496a31b3c1f6accaf90ad61bf0e1e0bd8aad2cf66ab8cdb3`  
		Last Modified: Tue, 05 Mar 2019 10:02:26 GMT  
		Size: 44.0 MB (44029811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:088a52eee835f09abb5e08bfd27b8cf0960dbcd0d3f28aa0e602654df58ce922`  
		Last Modified: Tue, 05 Mar 2019 10:43:14 GMT  
		Size: 9.9 MB (9851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2616673f78baa6ea1b22951cb4a50ea0c9db5f109d098f00b5bf86b3e29a7b51`  
		Last Modified: Tue, 05 Mar 2019 10:43:12 GMT  
		Size: 4.2 MB (4158962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfcd96519f1236f55ebede2d5e7c4a5528e65d425ee4879ee1df0362f278905b`  
		Last Modified: Tue, 05 Mar 2019 10:43:36 GMT  
		Size: 48.3 MB (48281217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370c5d698f5a26a0589ea3da3cc0f488bd55309e98f1df3b9c78f568979ef7d4`  
		Last Modified: Tue, 05 Mar 2019 11:37:17 GMT  
		Size: 884.6 KB (884617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34e69b87df73a0c8abb6de423c3cdc0dc02ba7c2cc28961bf539854dd00d9dc`  
		Last Modified: Tue, 05 Mar 2019 11:37:17 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417edf9dd1bb7948a347c101e4551a964074b78d803e899a467c5a9f5c9697bd`  
		Last Modified: Tue, 05 Mar 2019 11:37:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c7b513db9545af28ea6f31111d72dd7343e08f79543e517db2338a92b78d850`  
		Last Modified: Tue, 05 Mar 2019 11:37:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87d536b8460705913623779294d2f9ded2dbd45508d620fe3d7e28f44b0138f`  
		Last Modified: Tue, 05 Mar 2019 11:38:05 GMT  
		Size: 262.6 MB (262564088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-stretch` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:79a149aef2e344ad38924e0999442a62ed93f8cab9eb35c39ae4414899bfccd9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.7 MB (407699546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d119f2b32c39385430b769f7e2c6f7e534efe101951b77a5c3309f09bdbb002e`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:31:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:32:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 11:33:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:09:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:09:56 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Tue, 05 Mar 2019 12:10:00 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:10:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 12:10:16 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 12:10:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 12:10:22 GMT
ENV JAVA_VERSION=11.0.2
# Tue, 05 Mar 2019 12:10:26 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Tue, 05 Mar 2019 12:14:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 12:14:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a498920bfeb2353594e13055200f3227c4992da6fb9617197ee55ebd4a723c`  
		Last Modified: Tue, 05 Mar 2019 11:46:32 GMT  
		Size: 9.7 MB (9730480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb8191548b27dfce511beab0eb0f4a401e160544b2f893ba98c3dc794636c53`  
		Last Modified: Tue, 05 Mar 2019 11:46:30 GMT  
		Size: 4.1 MB (4094079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fe741ca3c91de7331744358ee1d4543b1be55d55bdde318da27773bc8522fd`  
		Last Modified: Tue, 05 Mar 2019 11:47:01 GMT  
		Size: 48.0 MB (48007524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5dc26bf4ffb69ecf6efe772ab6577745218f6748ee6071b4685fce7be5572a`  
		Last Modified: Tue, 05 Mar 2019 12:34:00 GMT  
		Size: 877.6 KB (877625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc20ef142df0850790932d6cef2b86b8ade0e2cc9b2bee822612c6b29713bfe`  
		Last Modified: Tue, 05 Mar 2019 12:33:59 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b7c898e3873cb92b453c9bb91dccb844fa390d12502c3bf8f4141d2221b7e8`  
		Last Modified: Tue, 05 Mar 2019 12:34:00 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745bf90d792931b575a7f8c2029b4524a9a869efc8740cfea82346569ce0dc61`  
		Last Modified: Tue, 05 Mar 2019 12:33:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eca56578e9682247e27a55aa78c0a2f7c305ecd971de94a747bd00a0f050fe`  
		Last Modified: Tue, 05 Mar 2019 12:35:03 GMT  
		Size: 301.9 MB (301857377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-stretch` - linux; 386

```console
$ docker pull openjdk@sha256:ce84f93af465617a98c4df4736fe1e775856ba754a24bd684aa6165a36034344
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **501.9 MB (501941651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24a972405ead3c14d19bf8d2c9a52fb36bd20d7d94c0c9beb8be4cdd5eb6e5c6`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:07 GMT
ADD file:70c26933810136bdb5c394bab98ac1119dd6ab650db410d21a0a16098b8a6ae2 in / 
# Wed, 06 Feb 2019 12:01:08 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:49:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:49:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 01:50:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 06:20:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 06:20:03 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Thu, 07 Feb 2019 06:20:03 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 06:20:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 06:20:04 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 06:20:05 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 07 Feb 2019 06:20:05 GMT
ENV JAVA_VERSION=11.0.2
# Thu, 07 Feb 2019 06:20:05 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Thu, 07 Feb 2019 06:21:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 06:21:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:56c1dc1a93dfeb7eb66abd8197c3fdfe7d7393c9757be0a44ca2f624b6e5c684`  
		Last Modified: Wed, 06 Feb 2019 12:07:42 GMT  
		Size: 46.1 MB (46069815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d401cb48eb9dd4b814e64479a4a5e9150a56d439c01778f0b95ff0689f82cd17`  
		Last Modified: Thu, 07 Feb 2019 02:03:03 GMT  
		Size: 10.8 MB (10799008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c068a67acc556d25d2fd2dc13d5929a34ee0395cd208b418f73bf15fc17e0955`  
		Last Modified: Thu, 07 Feb 2019 02:03:02 GMT  
		Size: 4.6 MB (4560874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a009f6fe22ae181ab29d9455c5e577e663191ee6f4a9a0483ab44d91e775d853`  
		Last Modified: Thu, 07 Feb 2019 02:03:23 GMT  
		Size: 51.6 MB (51593479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbab22e197060bebd348807811ba262b7984ac7ad029fa6a70eb28d982bb9b8`  
		Last Modified: Thu, 07 Feb 2019 06:38:54 GMT  
		Size: 900.0 KB (899974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425bcc58c4619e066db1705dfe7feafb1b1f48e5e51255d0c0d3a9b80257b265`  
		Last Modified: Thu, 07 Feb 2019 06:38:54 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c4ffe53018e7d1efd7eb36e3412014b10350b19c230afd3113bf89d0492892`  
		Last Modified: Thu, 07 Feb 2019 06:38:54 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccf9c2eea3ce51598d7e8446fa8c1e9cef824efc1e5f3544724622e4e738566`  
		Last Modified: Thu, 07 Feb 2019 06:38:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5595704f1843a8a29732868cb2d8a24f3c961589ba865b85d194223766f2fc`  
		Last Modified: Thu, 07 Feb 2019 06:39:37 GMT  
		Size: 388.0 MB (388017899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-stretch` - linux; ppc64le

```console
$ docker pull openjdk@sha256:5580e424cff8580057a17f091060e936610baf66306f808206662df8aed20abe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.9 MB (403864691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58fb12d644521308c4703aa497bf4157ec5c21eb860b25da184faa142b6f2812`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:33 GMT
ADD file:dbc825fea111271dd16d8443e8df30f00e4bfb82365f49430e4b697866955e25 in / 
# Wed, 06 Feb 2019 09:26:35 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 19:08:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:08:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 19:10:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:16:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:16:11 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 06 Feb 2019 20:16:13 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 20:16:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 20:16:24 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 20:16:26 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 20:16:28 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 06 Feb 2019 20:16:32 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 06 Feb 2019 20:21:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 20:21:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3c6e73e1f3f727588bd1de44f5524879a3591bba13b256a67f0a03adbb788322`  
		Last Modified: Wed, 06 Feb 2019 09:30:55 GMT  
		Size: 45.6 MB (45616945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31cd7008a155452b9ece7c7dab0d6e7567ef8c55f2df5ff999e45c309031982`  
		Last Modified: Wed, 06 Feb 2019 19:28:30 GMT  
		Size: 10.0 MB (9986460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f96c2690a341be01eb7e79a7624948d65549f3a26a1adc1b9a5a669523505ea`  
		Last Modified: Wed, 06 Feb 2019 19:28:28 GMT  
		Size: 4.3 MB (4295659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809222cf915d3e4f6467ca885b8fd6119aac0d5b2dfc37e9ea338ee407314063`  
		Last Modified: Wed, 06 Feb 2019 19:29:02 GMT  
		Size: 50.1 MB (50065346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3ad83917132c544d75d731b070adbbcbeb03528e5e840ab3681daac49a753d`  
		Last Modified: Wed, 06 Feb 2019 20:38:05 GMT  
		Size: 886.0 KB (886000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b94c3478479378a42a5ae0f8215d2d5dc2211ab2149d802dcd8317d1d0e12aa`  
		Last Modified: Wed, 06 Feb 2019 20:38:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415a8fbf9824a8db87761fa3b3bc23ac72569b6bbf372e54cc3f469213654b6c`  
		Last Modified: Wed, 06 Feb 2019 20:38:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9d478ba21b913c87c3de4ba4688eb34dbb73ffacfad1b98eebae5d52dacfe3`  
		Last Modified: Wed, 06 Feb 2019 20:38:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4ee0a4ce6aaf988e07bf86c4deaa2979828aba64a1a7633542d6b2eee7c99b`  
		Last Modified: Wed, 06 Feb 2019 20:38:39 GMT  
		Size: 293.0 MB (293013676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-stretch` - linux; s390x

```console
$ docker pull openjdk@sha256:996ddce81a70ed1f8071dce7f6930d767f4fc6705e40f565977f926f91ecbced
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.7 MB (404703857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa35752318778f008a290cd9afe4339ee2fe6714039d4fc273a4a769b3f4a17`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:08 GMT
ADD file:8c452240b3657ec4cc6568239a4d933bc75fd958464a3950f67912097968fff8 in / 
# Wed, 06 Feb 2019 12:43:08 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 15:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:27:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 15:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 17:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 17:54:08 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 06 Feb 2019 17:54:09 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 17:54:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 17:54:10 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 17:54:10 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 17:54:10 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 06 Feb 2019 17:54:10 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 06 Feb 2019 17:55:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 17:55:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6786603fdb9e4ea361b73be3870f1118d3882c1619dfbbf9dec4d483fa32e76`  
		Last Modified: Wed, 06 Feb 2019 12:46:43 GMT  
		Size: 45.2 MB (45214898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac487c4bc63f07da92ff3259ca4d0fb30f86c5647f775010d11e6d51131b848`  
		Last Modified: Wed, 06 Feb 2019 15:34:22 GMT  
		Size: 10.3 MB (10312678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e9925f73763aaae5f9ccd2b0c87ae90efbee12ee8698074a1056e25c2e6360`  
		Last Modified: Wed, 06 Feb 2019 15:34:21 GMT  
		Size: 4.4 MB (4371900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf6b44fbf659d16c99bbf57d1ee87ae0e6827f8aaa82012f87f1f031f655da5`  
		Last Modified: Wed, 06 Feb 2019 15:34:38 GMT  
		Size: 50.5 MB (50487526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64c2dc7f2b1cf6a4164c2a26840d7168df78eaeb8fea4357fc52a75ac1f917b`  
		Last Modified: Wed, 06 Feb 2019 17:58:31 GMT  
		Size: 903.4 KB (903393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76b02fdffa948ba8f75670ed5ae374bce7807b88c15c89d62931289f070d42d`  
		Last Modified: Wed, 06 Feb 2019 17:58:31 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2e52b005747c5340464efd3bbf82747d4117e476f263baa0af70477db94fe2`  
		Last Modified: Wed, 06 Feb 2019 17:58:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c40c9aca8bf1a8be4a5b207f1154296934321be36055cfe6e21456a2c87e60`  
		Last Modified: Wed, 06 Feb 2019 17:58:31 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11e1b532de2111c6aeb9bb2183ed25338957cadd858a4872899a1a62862fcb2`  
		Last Modified: Wed, 06 Feb 2019 17:58:56 GMT  
		Size: 293.4 MB (293412861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

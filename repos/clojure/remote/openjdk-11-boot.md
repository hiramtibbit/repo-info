## `clojure:openjdk-11-boot`

```console
$ docker pull clojure@sha256:2dcb0572ced6db26419808611d2abeff3cd6c64aa2405c97c15c19819ec9a0ee
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

### `clojure:openjdk-11-boot` - linux; amd64

```console
$ docker pull clojure@sha256:041b0a189b12895945a087c93371031eacabe35bf765291f2994b47679cb7435
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **469.7 MB (469664025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b628213b354b6751df6323a0b3a6e44b73507c456ec705eeeacd2b5d6265698b`
-	Default Command: `["boot","repl"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:02:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:02:38 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 05:02:38 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:02:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:02:40 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:02:40 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 05:02:40 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 05:02:40 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 05:04:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 05:04:10 GMT
CMD ["jshell"]
# Wed, 08 May 2019 11:18:27 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Wed, 08 May 2019 11:18:28 GMT
ENV BOOT_VERSION=2.8.2
# Wed, 08 May 2019 11:18:28 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Wed, 08 May 2019 11:18:28 GMT
WORKDIR /tmp
# Wed, 08 May 2019 11:18:30 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Wed, 08 May 2019 11:18:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 08 May 2019 11:18:30 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 08 May 2019 11:19:23 GMT
RUN boot
# Wed, 08 May 2019 11:19:23 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eadaf4c0dff038c7597047e84133eb098bc3c6e6eabae1dea15d225a39d28e3`  
		Last Modified: Wed, 08 May 2019 05:26:41 GMT  
		Size: 892.7 KB (892652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3541530b87264c3535fa37f39f2714cace1af5ee3f7ec596f67be98d5485b47c`  
		Last Modified: Wed, 08 May 2019 05:26:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e4c938e30afa7a1ee6d776f97c29c125be77332bdd08c34608938c9819a915`  
		Last Modified: Wed, 08 May 2019 05:26:41 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a116edcafe050593a87a767abf70c45d4de3d95e2372ce40ecc7d124df1bf855`  
		Last Modified: Wed, 08 May 2019 05:26:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf32feffaff9ffea298a90419e7ee7d793ff71023075e4436726a6f61c5f226`  
		Last Modified: Wed, 08 May 2019 05:27:16 GMT  
		Size: 318.9 MB (318888934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5717764254f97b8875c13861484f882f0c8898d339c61fc58a93d25b48bbbec`  
		Last Modified: Wed, 08 May 2019 11:21:26 GMT  
		Size: 6.9 KB (6899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae549578ed0b547310f88789808c23aaa87365bcba549cf7b57f97a419265c21`  
		Last Modified: Wed, 08 May 2019 11:21:30 GMT  
		Size: 39.3 MB (39344271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-boot` - linux; arm variant v5

```console
$ docker pull clojure@sha256:2e5f92287dcaa19fa52e684c8e0476f5f7a7106ab06b0baf8119b991baa544a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.4 MB (392396184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:150b35467813759a82f63aa8c94e485214987f4ddc9915ec758c38f75680e4a2`
-	Default Command: `["boot","repl"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:37 GMT
ADD file:55757b58d47ad1bd75530ef5bfd90c3354b7da7cbb3519f8bedc170b9e2a5d9c in / 
# Wed, 27 Mar 2019 08:53:38 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:54:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:54:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:57:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 11:48:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 11:48:30 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 11:48:30 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 11:48:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 11:48:33 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 11:48:33 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 Apr 2019 08:48:30 GMT
ENV JAVA_VERSION=11.0.3
# Fri, 05 Apr 2019 08:48:31 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Fri, 05 Apr 2019 08:51:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Apr 2019 08:51:40 GMT
CMD ["jshell"]
# Fri, 05 Apr 2019 09:20:06 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Fri, 05 Apr 2019 09:20:06 GMT
ENV BOOT_VERSION=2.8.2
# Fri, 05 Apr 2019 09:20:07 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Fri, 05 Apr 2019 09:20:07 GMT
WORKDIR /tmp
# Fri, 05 Apr 2019 09:20:09 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Fri, 05 Apr 2019 09:20:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 05 Apr 2019 09:20:09 GMT
ENV BOOT_AS_ROOT=yes
# Fri, 05 Apr 2019 09:25:29 GMT
RUN boot
# Fri, 05 Apr 2019 09:25:30 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:f924f7b5a6a0a527f783d52778b09ae800121ce3fdd0812c44366174092a5573`  
		Last Modified: Wed, 27 Mar 2019 08:59:18 GMT  
		Size: 44.0 MB (44029721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9493ad08ec9883c81689003b68a06292c9e69f0d1227c28f63a7ec4ed0c17739`  
		Last Modified: Wed, 27 Mar 2019 10:09:42 GMT  
		Size: 9.9 MB (9851920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63792336dd728e502aed649c428b2e9514dce0e6c6b3f7d19491d103567bbdb1`  
		Last Modified: Wed, 27 Mar 2019 10:09:40 GMT  
		Size: 4.2 MB (4158987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2759e657580c6867634b69896d1a8a90b82a2871c7b9d333f4e4b541b64722e`  
		Last Modified: Wed, 27 Mar 2019 10:10:06 GMT  
		Size: 48.3 MB (48281903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1d771a516cf91efecf5c423dcec6da660891e73ee29f73b503cbb79f80ec1f`  
		Last Modified: Wed, 27 Mar 2019 12:19:37 GMT  
		Size: 884.7 KB (884709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174244afdd5177bdbf204b5fc4b2f4b416f69505ad7a14179342d01c8ab88479`  
		Last Modified: Wed, 27 Mar 2019 12:19:37 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127e35b656dade04d7fbb9322fda9b207490253bdec2ec4e4eb2a90f4ab6c004`  
		Last Modified: Wed, 27 Mar 2019 12:19:37 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0c346f5515889ae75eae2ea9bcbc1aee13981504da29e78faaa2e2ff20e7a0`  
		Last Modified: Wed, 27 Mar 2019 12:19:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ee3dc6bacbb4ed65db3044b4f32bcb42912377ac2d186c02ff3c81d6070a14`  
		Last Modified: Fri, 05 Apr 2019 09:00:10 GMT  
		Size: 245.8 MB (245836480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bed0336b05801fe77c9de0f1d23a47680f5fcb4d7cd31de6234920812e043a`  
		Last Modified: Fri, 05 Apr 2019 09:27:51 GMT  
		Size: 6.9 KB (6897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b3f8a329fed666082b0e35d263fb69bbd64a3099e0d21b509572843611582f`  
		Last Modified: Fri, 05 Apr 2019 09:27:57 GMT  
		Size: 39.3 MB (39344966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-boot` - linux; arm variant v7

```console
$ docker pull clojure@sha256:bffaa10d0968e25a51cec765c19f9c752c2e3fccb426f2ddad7fb21abf6d0a15
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.7 MB (418667003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56d3c2f97a2f6de82e2176931b65cc33df2b7c28f63f76e71a1dee64285734f`
-	Default Command: `["boot","repl"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:23 GMT
ADD file:bb82b6b8aa709ab4455c13e7e19562bc1ddbd415015cd576612b0fc51c4e7007 in / 
# Wed, 27 Mar 2019 12:07:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:12:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:13:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:13:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 14:54:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Apr 2019 12:18:05 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Tue, 16 Apr 2019 12:18:06 GMT
ENV LANG=C.UTF-8
# Tue, 16 Apr 2019 12:18:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Apr 2019 12:18:10 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Apr 2019 12:18:10 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Apr 2019 12:18:11 GMT
ENV JAVA_VERSION=11.0.3
# Tue, 16 Apr 2019 12:18:11 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Tue, 30 Apr 2019 12:02:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Apr 2019 12:02:30 GMT
CMD ["jshell"]
# Tue, 30 Apr 2019 12:40:44 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Tue, 30 Apr 2019 12:40:44 GMT
ENV BOOT_VERSION=2.8.2
# Tue, 30 Apr 2019 12:40:45 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 30 Apr 2019 12:40:45 GMT
WORKDIR /tmp
# Tue, 30 Apr 2019 12:40:47 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 30 Apr 2019 12:40:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 30 Apr 2019 12:40:47 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 30 Apr 2019 12:42:16 GMT
RUN boot
# Tue, 30 Apr 2019 12:42:16 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:f6e94265067157e7d769560dc94116366784ddea686f6d20c9f3e67ba72940f9`  
		Last Modified: Wed, 27 Mar 2019 12:12:58 GMT  
		Size: 42.1 MB (42075164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2fbc1f843984fcee8822e171c70d7b2ddf5233beeaf7eb422dca14e8ca0826`  
		Last Modified: Wed, 27 Mar 2019 13:22:14 GMT  
		Size: 9.5 MB (9483453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcb1afece058cd63eccf185f2a039fa824964013c16f587cbf4f36552f1019a`  
		Last Modified: Wed, 27 Mar 2019 13:22:13 GMT  
		Size: 3.9 MB (3918606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd852cf67320cb264474e6a781be61143a1db5e666692fb408b7228a2d51658`  
		Last Modified: Wed, 27 Mar 2019 13:22:38 GMT  
		Size: 46.4 MB (46389513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7f97cb5b86b1489bdf938cff6c3eabccf6c24c2210d653dc006e194ce7513a`  
		Last Modified: Thu, 28 Mar 2019 12:17:13 GMT  
		Size: 867.9 KB (867883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce18f28c89fc22d265a54a6c181c37f99c62fd1b2d3225db9336d408776f7ff`  
		Last Modified: Tue, 30 Apr 2019 12:07:26 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f725414ad033ce6b539da33e71fad64868fd623840791f21e639db6f06a52501`  
		Last Modified: Tue, 30 Apr 2019 12:07:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ac6270f68ca88f0a2f5a91c7764ee59faa787f4a680d4c8824cdf9bb5a2e94`  
		Last Modified: Tue, 30 Apr 2019 12:07:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ce67287a72ceb3b2aa1f2ae2dcb62b9b581a86a235340acac6d4d6053c5609`  
		Last Modified: Tue, 30 Apr 2019 12:08:16 GMT  
		Size: 276.6 MB (276580355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fde96d155d11cec9c62ed64b0899044a5fee756707a09af324507291860e8ae`  
		Last Modified: Tue, 30 Apr 2019 12:43:25 GMT  
		Size: 6.9 KB (6899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1139d92d9e11f20903e8d682620970c6018fa1c88ea0194c450df4b9beb5f1ab`  
		Last Modified: Tue, 30 Apr 2019 12:43:31 GMT  
		Size: 39.3 MB (39344524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-boot` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a704b9e01eb35f43976aef713f740069ae1ef99c8b1861851dee8a76da031b20
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.7 MB (441718740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2a7acf08f867ae9ffd49906cfbd1e340e9552a1bd858b958d32b085d6a16dc1`
-	Default Command: `["boot","repl"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 10:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:20:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:20:24 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 19:20:25 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 19:20:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 19:20:30 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 19:20:31 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 Apr 2019 09:01:21 GMT
ENV JAVA_VERSION=11.0.3
# Fri, 05 Apr 2019 09:01:22 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Fri, 05 Apr 2019 09:08:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Apr 2019 09:08:30 GMT
CMD ["jshell"]
# Fri, 05 Apr 2019 09:44:04 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Fri, 05 Apr 2019 09:44:05 GMT
ENV BOOT_VERSION=2.8.2
# Fri, 05 Apr 2019 09:44:05 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Fri, 05 Apr 2019 09:44:06 GMT
WORKDIR /tmp
# Fri, 05 Apr 2019 09:44:08 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Fri, 05 Apr 2019 09:44:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 05 Apr 2019 09:44:10 GMT
ENV BOOT_AS_ROOT=yes
# Fri, 05 Apr 2019 09:45:27 GMT
RUN boot
# Fri, 05 Apr 2019 09:45:28 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95e88827e80fd1e7c7d0a78bc734615833dd6ac19b07c1ad3b8b1c837bb4ece`  
		Last Modified: Wed, 27 Mar 2019 10:36:43 GMT  
		Size: 48.0 MB (48007546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b918968c658e5fccf315dfefd0fa9aa78bcd41675036298167da2bec4b1406dd`  
		Last Modified: Wed, 27 Mar 2019 19:40:19 GMT  
		Size: 877.6 KB (877635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97cc37ba01632d37959a7e25eebbdfe5197bf64ca8acc15024f206da5279532`  
		Last Modified: Wed, 27 Mar 2019 19:40:19 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0708dcd7a8392d5757aaa0e78df5dc4e065be9267862f497b3121ccfd52183`  
		Last Modified: Wed, 27 Mar 2019 19:40:18 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1429ad4df1b7d82c847322c9f6bdab347c2701b909c3ca10ff17f766560743`  
		Last Modified: Wed, 27 Mar 2019 19:40:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc32a56f0121da893eba0768be7d26b89898e0b531f82b7acc359ce84fb25df`  
		Last Modified: Fri, 05 Apr 2019 09:19:32 GMT  
		Size: 296.5 MB (296525095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053f8174f51c930784102c3ab88d70f1e293383850959f6ddc1c5e1153062259`  
		Last Modified: Fri, 05 Apr 2019 09:46:44 GMT  
		Size: 6.9 KB (6900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e60591d956329bdefd90d1ca9fc67058cac3b951243c87be2642a62d3bb5802`  
		Last Modified: Fri, 05 Apr 2019 09:46:51 GMT  
		Size: 39.3 MB (39344426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-boot` - linux; 386

```console
$ docker pull clojure@sha256:d1742548ced281238c293325b4f3895984662bc1647acf1e1f9d7d2501e9a318
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **530.7 MB (530749580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:946817b3b998c07e0add9fa4807d6a0fc37ecde32f8bd2d9bd14966c675d22de`
-	Default Command: `["boot","repl"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:24 GMT
ADD file:62e6f951f41a7a3973289c673aaf3b36d711e5339dd5bc50d15714d4bdf50917 in / 
# Wed, 27 Mar 2019 10:43:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:55:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:55:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:56:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:50:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:50:55 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 17:50:56 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 17:50:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 17:50:57 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 17:50:57 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 Apr 2019 10:48:32 GMT
ENV JAVA_VERSION=11.0.3
# Fri, 05 Apr 2019 10:48:32 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Fri, 05 Apr 2019 10:49:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Apr 2019 10:49:52 GMT
CMD ["jshell"]
# Fri, 05 Apr 2019 11:11:45 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Fri, 05 Apr 2019 11:11:45 GMT
ENV BOOT_VERSION=2.8.2
# Fri, 05 Apr 2019 11:11:45 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Fri, 05 Apr 2019 11:11:46 GMT
WORKDIR /tmp
# Fri, 05 Apr 2019 11:11:46 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Fri, 05 Apr 2019 11:11:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 05 Apr 2019 11:11:47 GMT
ENV BOOT_AS_ROOT=yes
# Fri, 05 Apr 2019 11:12:53 GMT
RUN boot
# Fri, 05 Apr 2019 11:12:53 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:3cf1c3e5c1c3ebb2ee78121e945d60be8e21bba1586daa95c7513d49ce96e5d1`  
		Last Modified: Wed, 27 Mar 2019 10:49:04 GMT  
		Size: 46.1 MB (46064366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8239c0fc9be5a7da27a34e4d748ce7625429bdca8bc859f883ab0d52b1135834`  
		Last Modified: Wed, 27 Mar 2019 14:09:50 GMT  
		Size: 10.8 MB (10800039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330984995c009366005f495b95e3230ee73b6f16514f0e526f218ba00c0102cc`  
		Last Modified: Wed, 27 Mar 2019 14:09:49 GMT  
		Size: 4.6 MB (4561399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40195820b264e9ba8f831313176a937879829fb669daa81d1b513cb15123704`  
		Last Modified: Wed, 27 Mar 2019 14:10:10 GMT  
		Size: 51.6 MB (51587502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce73586e8439b4de724327a1eee39ded998089032ddd044195b2f93ab369b89`  
		Last Modified: Wed, 27 Mar 2019 18:28:19 GMT  
		Size: 900.0 KB (899966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096d2fb06b2d4e69e7068be90b7cc56453f5d0ad83b1f569405119dfa38eec2b`  
		Last Modified: Wed, 27 Mar 2019 18:28:19 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b7ae642cfff67a7720d6430d2d0d637437c5a412fe22a02f3e6f3159b2ada8`  
		Last Modified: Wed, 27 Mar 2019 18:28:19 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37af7669130211fc83ee00d0cc938108debdf6178224f0a1f00c4927f07f7a1f`  
		Last Modified: Wed, 27 Mar 2019 18:28:19 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27107c5cf89a3bf581442ddc0d0d289204c2f6f7532470409a1b04945151b655`  
		Last Modified: Fri, 05 Apr 2019 10:54:10 GMT  
		Size: 377.5 MB (377484516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97bbce70348e1d1242ca39a5d0f042111103ca0c2a896be7898a285c9770c82b`  
		Last Modified: Fri, 05 Apr 2019 11:13:32 GMT  
		Size: 6.9 KB (6901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a99600a780413c63b30288f70e481e0f2720c5c508d5d031186f470e1808d57`  
		Last Modified: Fri, 05 Apr 2019 11:13:36 GMT  
		Size: 39.3 MB (39344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-boot` - linux; ppc64le

```console
$ docker pull clojure@sha256:bd0d9f6e0ab4f24ecc92b614ccade85672180cb16bed7a523e17561b92779c9c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.3 MB (437267313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6d8ade9137da58963ab115d4b8ca0391b0d1fa37f785a0bb4d1f492fd55f7ff`
-	Default Command: `["boot","repl"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:33:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:33:13 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 12:33:15 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:33:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:33:25 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:33:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 Apr 2019 08:35:56 GMT
ENV JAVA_VERSION=11.0.3
# Fri, 05 Apr 2019 08:35:58 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Fri, 05 Apr 2019 08:39:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Apr 2019 08:39:54 GMT
CMD ["jshell"]
# Fri, 05 Apr 2019 09:49:35 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Fri, 05 Apr 2019 09:49:39 GMT
ENV BOOT_VERSION=2.8.2
# Fri, 05 Apr 2019 09:49:42 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Fri, 05 Apr 2019 09:49:45 GMT
WORKDIR /tmp
# Fri, 05 Apr 2019 09:49:51 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Fri, 05 Apr 2019 09:49:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 05 Apr 2019 09:49:57 GMT
ENV BOOT_AS_ROOT=yes
# Fri, 05 Apr 2019 09:52:26 GMT
RUN boot
# Fri, 05 Apr 2019 09:52:32 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96fc7258158f286e94ac66432d2ac9809176fc30ce88127ebc7ef34c919357bc`  
		Last Modified: Wed, 27 Mar 2019 12:53:05 GMT  
		Size: 886.0 KB (886044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ea5606b0ab0f9785b09523fbab1bc61ea4c3be532697e46b335a41b14ef13d`  
		Last Modified: Wed, 27 Mar 2019 12:53:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6140218cafdbc0a0a55e39346362a87008296ac3b0a734f7e7f74c3fa79918f8`  
		Last Modified: Wed, 27 Mar 2019 12:53:04 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25aa2cc4e25215380c3203c2681cd0afde017e041cedcc531cb4212666f9e432`  
		Last Modified: Wed, 27 Mar 2019 12:53:04 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009604cad15a8194612537bcf7d16ed3dcbb74c190ee8803ca210d561a12792`  
		Last Modified: Fri, 05 Apr 2019 08:49:58 GMT  
		Size: 287.1 MB (287061510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e5553a167b137185600874e3ac96e1c5efe0a1c454179d216925a593c98043`  
		Last Modified: Fri, 05 Apr 2019 09:54:09 GMT  
		Size: 6.9 KB (6900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b3b33858d386c32c9fd4c67f7fcc54a242126179803a2bc09e80977cdfae36`  
		Last Modified: Fri, 05 Apr 2019 09:54:14 GMT  
		Size: 39.3 MB (39344598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-boot` - linux; s390x

```console
$ docker pull clojure@sha256:6a0a04d1170ea78d00a52a5d2effc71abb4307c712f2dd85cc16d14cd31d4b84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.7 MB (437728604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca3e29a7209d0f071db8e020dc50b16efcc94d09f09fb1fc165428578f211d4`
-	Default Command: `["boot","repl"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:28 GMT
ADD file:7110876caa1efff30ec13a260b6ecdc3169bb586a858211431cf38aa2eaf6b40 in / 
# Wed, 27 Mar 2019 11:43:29 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:43:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:43:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:44:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:21:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:21:32 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 15:21:32 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 15:21:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 15:21:34 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 15:21:34 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 Apr 2019 11:46:12 GMT
ENV JAVA_VERSION=11.0.3
# Fri, 05 Apr 2019 11:46:12 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Fri, 05 Apr 2019 11:47:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Apr 2019 11:47:31 GMT
CMD ["jshell"]
# Fri, 05 Apr 2019 12:15:49 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Fri, 05 Apr 2019 12:15:49 GMT
ENV BOOT_VERSION=2.8.2
# Fri, 05 Apr 2019 12:15:50 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Fri, 05 Apr 2019 12:15:50 GMT
WORKDIR /tmp
# Fri, 05 Apr 2019 12:15:51 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Fri, 05 Apr 2019 12:15:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 05 Apr 2019 12:15:52 GMT
ENV BOOT_AS_ROOT=yes
# Fri, 05 Apr 2019 12:16:51 GMT
RUN boot
# Fri, 05 Apr 2019 12:16:51 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:d2a11bbe31e5b32e46b5e6bae2c7bab6594a74680c9c80903b5790853e800a1e`  
		Last Modified: Wed, 27 Mar 2019 11:46:35 GMT  
		Size: 45.2 MB (45199333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d50ce7d399845400d5a183933ebc5c6cb7095927c6fe7b71f3546b52c20916`  
		Last Modified: Wed, 27 Mar 2019 12:53:49 GMT  
		Size: 10.3 MB (10314977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb29f88d766eb640800085e76903c14e35253dd5d563451d0fc44981c807de0`  
		Last Modified: Wed, 27 Mar 2019 12:53:47 GMT  
		Size: 4.4 MB (4372243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1250363d323e44a672cd18e9371763e0dd3a088fcfd972364b5be924948e988`  
		Last Modified: Wed, 27 Mar 2019 12:54:06 GMT  
		Size: 50.5 MB (50489833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f50fa64721b4d7472d239522c3d09135e05c18192031e6ad31c69195394f7`  
		Last Modified: Wed, 27 Mar 2019 15:29:52 GMT  
		Size: 903.5 KB (903472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9fb3ead36893f3333087fffc58282627cb9b97942c96775a2f3e6b85d0b0c4`  
		Last Modified: Wed, 27 Mar 2019 15:29:51 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec42bc82fc17d6db688e99112f3aa7309d545795500f1a7b4becf31c4ab3bb3c`  
		Last Modified: Wed, 27 Mar 2019 15:29:52 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdceb599da730616ec033e04eddf3b1bfbb9e4185d6d62db4e29208d7678e7cb`  
		Last Modified: Wed, 27 Mar 2019 15:29:52 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62098470d5d03b8778a45f94b00852ef27163816a2f7898ff193f8ba62776d2a`  
		Last Modified: Fri, 05 Apr 2019 11:52:46 GMT  
		Size: 287.1 MB (287096924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e19980ac108580b9a766c5629bfd9b8db9c291927f173ceb06297e37f382a6`  
		Last Modified: Fri, 05 Apr 2019 12:17:53 GMT  
		Size: 6.9 KB (6900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b60f5dac227f23ffb445b058bf3e6098ddff48458ef6dc5484faf623352bddd`  
		Last Modified: Fri, 05 Apr 2019 12:17:56 GMT  
		Size: 39.3 MB (39344320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

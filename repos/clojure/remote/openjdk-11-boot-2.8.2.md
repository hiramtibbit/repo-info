## `clojure:openjdk-11-boot-2.8.2`

```console
$ docker pull clojure@sha256:3a85336fe1f0b52fb1699cf1f0cd019a2fa0f5b33a150702fbef39c665f790a1
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

### `clojure:openjdk-11-boot-2.8.2` - linux; amd64

```console
$ docker pull clojure@sha256:5b2f6f3a04eb34258b27633167a6fb70c6194da41ef44152028bdad7dfa7196a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **476.2 MB (476184168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5ac0fc2558143d305cf5a9d37283019e4137833d949aeea83d2b82aa8a1c53`
-	Default Command: `["boot","repl"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 08:29:37 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 08:29:38 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 08:29:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 08:29:39 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 08:29:39 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 08:29:39 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 08:29:40 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Fri, 28 Dec 2018 00:21:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 28 Dec 2018 00:21:25 GMT
CMD ["jshell"]
# Fri, 28 Dec 2018 00:48:46 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Fri, 28 Dec 2018 00:48:46 GMT
ENV BOOT_VERSION=2.8.2
# Fri, 28 Dec 2018 00:48:46 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Fri, 28 Dec 2018 00:48:46 GMT
WORKDIR /tmp
# Fri, 28 Dec 2018 00:48:47 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Fri, 28 Dec 2018 00:48:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 28 Dec 2018 00:48:48 GMT
ENV BOOT_AS_ROOT=yes
# Fri, 28 Dec 2018 00:49:45 GMT
RUN boot
# Fri, 28 Dec 2018 00:49:45 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6b28682cfe6db721c143309125728417dca93643b3d8d4c22ae7fbb4eb940`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 892.4 KB (892364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a84aafc5010d7c2aef2f8e9422fd37c8136fe5aad75ac4e51b875aba6a43b4`  
		Last Modified: Wed, 26 Dec 2018 08:37:35 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274ee31220a890006169c081d33a7a1e2f8cfa3d967d6c819e5d0b231ffd6f30`  
		Last Modified: Wed, 26 Dec 2018 08:37:35 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d567c51dd7aa2102f286187f8f9587531f5fd043cf0beba562ce323fcafa16aa`  
		Last Modified: Wed, 26 Dec 2018 08:37:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e0585fb03353a6b30f72906432c681091d04aba578d5f965b4515e09baf20a`  
		Last Modified: Fri, 28 Dec 2018 00:27:11 GMT  
		Size: 325.5 MB (325476176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5850c00731a5d7f9d1c5bb92e294cd874b9a1cefb77a7fb4031f2f7f3cc3a0f1`  
		Last Modified: Fri, 28 Dec 2018 00:50:36 GMT  
		Size: 6.9 KB (6901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4682f5e9da5c38d290d8a499b4bbf443679e9988305d7e445111a7ccc812de`  
		Last Modified: Fri, 28 Dec 2018 00:50:39 GMT  
		Size: 39.3 MB (39344367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-boot-2.8.2` - linux; arm variant v5

```console
$ docker pull clojure@sha256:afb7b433b924faf5ad19ccbb03f7a9c63c5cf6cb139f0c81290e21c785c28999
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.0 MB (408961580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd7d53b30ea001ba0ef27880dfb3f527ea7fd3ecfc92fd21c03bc9f8253de75e`
-	Default Command: `["boot","repl"]`

```dockerfile
# Fri, 16 Nov 2018 09:57:44 GMT
ADD file:f9237d2b6971cee3b5e97a3eee00a9f5ee788a30971f8ed1770d2cb47fbb3111 in / 
# Fri, 16 Nov 2018 09:57:45 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:37:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:37:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:38:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Nov 2018 10:23:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:49:35 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 09:49:36 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 09:49:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 09:49:39 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 09:49:39 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 09:49:39 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 09:49:40 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Fri, 28 Dec 2018 09:51:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 28 Dec 2018 09:51:41 GMT
CMD ["jshell"]
# Fri, 28 Dec 2018 10:33:39 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Fri, 28 Dec 2018 10:33:40 GMT
ENV BOOT_VERSION=2.8.2
# Fri, 28 Dec 2018 10:33:40 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Fri, 28 Dec 2018 10:33:41 GMT
WORKDIR /tmp
# Fri, 28 Dec 2018 10:33:42 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Fri, 28 Dec 2018 10:33:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 28 Dec 2018 10:33:43 GMT
ENV BOOT_AS_ROOT=yes
# Fri, 28 Dec 2018 10:39:30 GMT
RUN boot
# Fri, 28 Dec 2018 10:39:30 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:15c0977ad57b8c1e459a84e9660baad60a59f519993211bd2bcfafa129c57b26`  
		Last Modified: Fri, 16 Nov 2018 10:12:16 GMT  
		Size: 44.0 MB (44031335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad5842ea5c57b54a3234d4466d9ce27f85b88e78d462439d74bec92845106b1`  
		Last Modified: Fri, 16 Nov 2018 18:51:10 GMT  
		Size: 9.8 MB (9810920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8779ae1b142cf8073085a020a4a857f81411f8267cb771b9888c23164cebfad1`  
		Last Modified: Fri, 16 Nov 2018 18:51:08 GMT  
		Size: 4.2 MB (4158685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36df4c9303ec5ed090e9c746045a71d4285056f215f04828647a3a7c4111bd5`  
		Last Modified: Fri, 16 Nov 2018 18:52:03 GMT  
		Size: 48.3 MB (48272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d36f3d062340ef2287f87ad3b2e9e6e2709004adc5c2f1f9167f479015e195`  
		Last Modified: Wed, 21 Nov 2018 10:33:56 GMT  
		Size: 884.7 KB (884721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52357cf5f826f41efddf2db9b309ed12831ef4b6aa36f2d1c6f518185fa84c91`  
		Last Modified: Wed, 26 Dec 2018 10:02:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48be9319cc176195ea3faf7dd1dbd5a5af73e19c17f69da364a571cc05a2323c`  
		Last Modified: Wed, 26 Dec 2018 10:02:43 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86a042a81120b935e918c94aa0c4012ac8005b67d27af566ac172545d5009de`  
		Last Modified: Wed, 26 Dec 2018 10:02:43 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda6e95f7612249b7367cc43ab8aa3071bd739129e435fe2af5ec01943b3ddd6`  
		Last Modified: Fri, 28 Dec 2018 10:00:10 GMT  
		Size: 262.5 MB (262451233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a927474a71193650f833e1f3fa7e582e508f25fe5024ede2dec19e4133ccdcdf`  
		Last Modified: Fri, 28 Dec 2018 10:41:55 GMT  
		Size: 6.9 KB (6899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286bd83efcdf80c582a7bba1f964b034f10d3f6b99a17455aaeb7d7fdceac29a`  
		Last Modified: Fri, 28 Dec 2018 10:42:01 GMT  
		Size: 39.3 MB (39345060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-boot-2.8.2` - linux; arm variant v7

```console
$ docker pull clojure@sha256:8634c8b3ba8cc58862a63dadba4eecaca097a03213430e49d786653a41f3a147
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **489.7 MB (489676407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091bcb4c003816abaf8b62272a8a32d9b801ff85449e01cce84f3a0166030988`
-	Default Command: `["boot","repl"]`

```dockerfile
# Fri, 16 Nov 2018 13:06:12 GMT
ADD file:4182d54a140ffdace3af2db1d2632f4271c1b1754fbc78075c0813d49212e466 in / 
# Fri, 16 Nov 2018 13:06:14 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:14:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:14:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:15:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:11:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:11:18 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 19:11:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 19:11:28 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 19:11:28 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 19:11:29 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 05 Dec 2018 12:58:25 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Wed, 05 Dec 2018 13:00:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 13:00:38 GMT
CMD ["jshell"]
# Wed, 05 Dec 2018 13:39:22 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Thu, 20 Dec 2018 12:59:41 GMT
ENV BOOT_VERSION=2.8.2
# Thu, 20 Dec 2018 12:59:41 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Thu, 20 Dec 2018 12:59:41 GMT
WORKDIR /tmp
# Thu, 20 Dec 2018 12:59:43 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Thu, 20 Dec 2018 12:59:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Dec 2018 12:59:44 GMT
ENV BOOT_AS_ROOT=yes
# Thu, 20 Dec 2018 13:00:36 GMT
RUN boot
# Thu, 20 Dec 2018 13:00:37 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:fdd94773a9e48362892e21476e28eead609d35afebea9220515e313cc45e9b67`  
		Last Modified: Fri, 16 Nov 2018 13:19:04 GMT  
		Size: 44.8 MB (44797919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170ebfdb451da69aec8b40173375cf38f87f1e39085d2072e246796c09c6738c`  
		Last Modified: Fri, 16 Nov 2018 18:29:31 GMT  
		Size: 6.7 MB (6703425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e9929c695e5dc9cd495d9b50731f7cabfba0a93fbe0c8c039f86c25531c0dd`  
		Last Modified: Fri, 16 Nov 2018 18:29:31 GMT  
		Size: 9.1 MB (9148032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6bcaac2bb74a1cabcea380f40f9d6285cf5ab611d8855dd0abf607d4bb1719`  
		Last Modified: Fri, 16 Nov 2018 18:30:05 GMT  
		Size: 46.2 MB (46230479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d555960358f8902e3c4fa164f2eaff997c9f834ca273af0f9a3bf23d922baa`  
		Last Modified: Fri, 16 Nov 2018 19:45:34 GMT  
		Size: 859.3 KB (859307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f784dc9e6ae4b50a8aea506e338b09e1a52e7cf10ee66b99df88f226079e486e`  
		Last Modified: Fri, 16 Nov 2018 19:45:34 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa51ea68c3042fb1fffdebdbd6606a6e115f2b19752cfc1a87270870020fcf3`  
		Last Modified: Fri, 16 Nov 2018 19:45:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760158d2b55f38a0733f8286094da5de8ab0befe337376c03b41a57a32b95784`  
		Last Modified: Wed, 05 Dec 2018 13:15:10 GMT  
		Size: 342.6 MB (342585614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b1a2a59b453e930116e6899bf14300a7ebaa862473b727372ebca859c08b83`  
		Last Modified: Thu, 20 Dec 2018 13:02:25 GMT  
		Size: 6.9 KB (6890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64999336cd4e4922655cc6f6dece7cd0606acfe2ffceb87e09fee7bcd004c346`  
		Last Modified: Thu, 20 Dec 2018 13:02:32 GMT  
		Size: 39.3 MB (39344373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-boot-2.8.2` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6103220c1372dd98c3ae8c680ae7d17dc70066ec438e5d00d11c166d134c6566
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **530.5 MB (530480246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d48b1ec358cf8f5784cf06a9d7db3bfb5404e648969b1995754cbc07a41c69`
-	Default Command: `["boot","repl"]`

```dockerfile
# Fri, 16 Nov 2018 10:10:09 GMT
ADD file:832a9af57620f627dd172e1887e8dd24971e52fd5eee7d5f5d2a43532d6be776 in / 
# Fri, 16 Nov 2018 10:10:17 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:17:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:17:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 02:19:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:17:49 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:17:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 04:17:53 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 04:17:53 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 04:17:54 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 05 Dec 2018 10:07:30 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Wed, 05 Dec 2018 10:13:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 10:13:10 GMT
CMD ["jshell"]
# Wed, 05 Dec 2018 10:53:30 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Thu, 20 Dec 2018 09:43:52 GMT
ENV BOOT_VERSION=2.8.2
# Thu, 20 Dec 2018 09:43:52 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Thu, 20 Dec 2018 09:43:53 GMT
WORKDIR /tmp
# Thu, 20 Dec 2018 09:43:57 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Thu, 20 Dec 2018 09:43:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Dec 2018 09:43:59 GMT
ENV BOOT_AS_ROOT=yes
# Thu, 20 Dec 2018 09:45:34 GMT
RUN boot
# Thu, 20 Dec 2018 09:45:35 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:3da09231e583a9a3b7103f6be2d0679bc461005f2d2ff624366b0eb98f3dbfd5`  
		Last Modified: Thu, 15 Nov 2018 01:31:37 GMT  
		Size: 47.6 MB (47624414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9075e353d5a562472189e3052838c7ae3ae6d1010aaaa24fdee045e71c553ecb`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 7.3 MB (7251197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645fc9dd9541251810eb8e2a2465a257a66a4c0e930c37f2b9233063083fffdf`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 9.8 MB (9760021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba26c567a7328f84137444d24147d0c92aca12ec9230cd0e0731cc8dbcf885dc`  
		Last Modified: Sat, 17 Nov 2018 02:48:12 GMT  
		Size: 50.9 MB (50925446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dfa4caa5a3bd9a21554d2a4be311cc0111fc65fc6e2c03adaff6ae90983a595`  
		Last Modified: Sat, 17 Nov 2018 05:12:36 GMT  
		Size: 871.3 KB (871311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06166062b74c5a700b88560ca3177645e55a9dfa59f2c180e3e8c0e20a6e448`  
		Last Modified: Sat, 17 Nov 2018 05:12:35 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ac93f1a8c306a07ee202476606cf0dfcbd2dc2a7b29f82afd5535bbc32328e6`  
		Last Modified: Sat, 17 Nov 2018 05:12:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc9c8152e3a0ec1e40302a04d9b5a3ff4e071ac4d9f1caf98a174fe0c8488db`  
		Last Modified: Wed, 05 Dec 2018 10:26:31 GMT  
		Size: 374.7 MB (374696110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197974292d13e51d7aa0d00bac76afbec98a3b8dbc88eb668e25177bd3b39857`  
		Last Modified: Thu, 20 Dec 2018 09:48:32 GMT  
		Size: 6.9 KB (6891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac9746583bcba96c6834d518d6af486f0866ce6194182981e62fa3348c1d7d8`  
		Last Modified: Thu, 20 Dec 2018 09:48:39 GMT  
		Size: 39.3 MB (39344488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-boot-2.8.2` - linux; 386

```console
$ docker pull clojure@sha256:6c9f6da414009bd115b10820e00cfaead3dad1a5fdfaf996761a6ce8a743bd6b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **635.6 MB (635592381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aba4bc087f1120c51e1bf23117b16b222fb5c43f9aa6cd1a355a11d0e23f06b`
-	Default Command: `["boot","repl"]`

```dockerfile
# Fri, 16 Nov 2018 12:32:10 GMT
ADD file:35a7a6d82265a9aaaa338d026c69123fcf5a876f04c62aa8b8576e728eb2d703 in / 
# Fri, 16 Nov 2018 12:32:10 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:20:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:20:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 11:21:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 13:43:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 13:43:54 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 13:43:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 13:43:56 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 13:43:57 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 13:43:57 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 05 Dec 2018 11:47:30 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Wed, 05 Dec 2018 11:49:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 11:49:08 GMT
CMD ["jshell"]
# Wed, 05 Dec 2018 12:25:04 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Thu, 20 Dec 2018 11:42:28 GMT
ENV BOOT_VERSION=2.8.2
# Thu, 20 Dec 2018 11:42:28 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Thu, 20 Dec 2018 11:42:28 GMT
WORKDIR /tmp
# Thu, 20 Dec 2018 11:42:29 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Thu, 20 Dec 2018 11:42:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Dec 2018 11:42:29 GMT
ENV BOOT_AS_ROOT=yes
# Thu, 20 Dec 2018 11:43:13 GMT
RUN boot
# Thu, 20 Dec 2018 11:43:13 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:aa30602b1807a2d186d63c50f118d4f15cb29b1b571140414c0bfc373476f654`  
		Last Modified: Thu, 15 Nov 2018 01:33:39 GMT  
		Size: 49.9 MB (49936516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ad8c93fe5a088ae5005cfe50a1ef475d4f0e1a97371d56db68fc08705a03df`  
		Last Modified: Sat, 17 Nov 2018 11:45:39 GMT  
		Size: 7.5 MB (7524919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ece88fa739651725b15edad9d926c3b46176bc8e5ea97bfbb390ed5a132223d`  
		Last Modified: Sat, 17 Nov 2018 11:45:39 GMT  
		Size: 10.1 MB (10109366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaede97eaff6a5c97ae494a535eff0f48e64e7b4e03b957fd570580ffb158172`  
		Last Modified: Sat, 17 Nov 2018 11:46:40 GMT  
		Size: 52.2 MB (52175725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5a4aabc6a7d0a15df4dcafb791e439aa59c61e865314f8e32868e6bd779d3c`  
		Last Modified: Sat, 17 Nov 2018 14:20:27 GMT  
		Size: 892.7 KB (892732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9037135d90687ee4334bc62f83f6515195022efb0c8f6be241e1a2b6f6cba73a`  
		Last Modified: Sat, 17 Nov 2018 14:20:26 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14fa8268c85d5849886f51ae651d986fcdf0a426e247b9b0661ec6e45ff011c`  
		Last Modified: Sat, 17 Nov 2018 14:20:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a42114712231f81d54577c3d95c6fc356e95a3d029da575f09f0ae745b11b611`  
		Last Modified: Wed, 05 Dec 2018 11:54:50 GMT  
		Size: 475.6 MB (475601603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b715e8b43caf74d129e48483ab4c8e903bf003f21eb04d245993f7fdf9d9b2`  
		Last Modified: Thu, 20 Dec 2018 11:44:26 GMT  
		Size: 6.9 KB (6888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce7a2941a9c19163407b213871ae7514ea2e07aa4541913fc9e4039ea5baf4d`  
		Last Modified: Thu, 20 Dec 2018 11:44:30 GMT  
		Size: 39.3 MB (39344263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-boot-2.8.2` - linux; ppc64le

```console
$ docker pull clojure@sha256:551f3c45a311094710c03df577eec1a869b58ab5ede7af85a8f4ed6bb97b3c0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.0 MB (442993896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab66c8ac69c7142b62deb9f9efd4cbaebf2d0ceca378654f66e7effe9856057`
-	Default Command: `["boot","repl"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:27:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:27:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:29:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:07:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:40:34 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 09:40:36 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 09:40:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 09:40:43 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 09:40:45 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 09:40:47 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 09:40:48 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Fri, 28 Dec 2018 09:20:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 28 Dec 2018 09:20:56 GMT
CMD ["jshell"]
# Fri, 28 Dec 2018 10:03:28 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Fri, 28 Dec 2018 10:03:30 GMT
ENV BOOT_VERSION=2.8.2
# Fri, 28 Dec 2018 10:03:31 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Fri, 28 Dec 2018 10:03:33 GMT
WORKDIR /tmp
# Fri, 28 Dec 2018 10:03:37 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Fri, 28 Dec 2018 10:03:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 28 Dec 2018 10:03:39 GMT
ENV BOOT_AS_ROOT=yes
# Fri, 28 Dec 2018 10:06:31 GMT
RUN boot
# Fri, 28 Dec 2018 10:06:36 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5bebfbb4940b6d3d8df18b51cbbd90a08385846bf9add13616d9ed867f08e7`  
		Last Modified: Fri, 16 Nov 2018 19:47:07 GMT  
		Size: 9.9 MB (9943735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b2a4eda93227739d4c204a11b693cc3494e9e6153e1ae2dd57a0e46a7f5873`  
		Last Modified: Fri, 16 Nov 2018 19:47:05 GMT  
		Size: 4.3 MB (4295770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1016a8823510eb6145ea613b3d780bb9dcd39aa654ebca99ddc07cb139702012`  
		Last Modified: Fri, 16 Nov 2018 19:48:13 GMT  
		Size: 50.1 MB (50070922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e469fb5581abe67c9afdec146613c3f9b83ea5dac1585f9cd125c54a079d792d`  
		Last Modified: Fri, 16 Nov 2018 22:47:26 GMT  
		Size: 886.1 KB (886141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36cfb2ad97146d6ee1c657c3acd4c671949426bb1f7ef60e2be1e01a0977a7e8`  
		Last Modified: Wed, 26 Dec 2018 10:05:16 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56b67f49feb0b4e754ffdcdb06ca1bb41c35718265c5d684353edf2678b3116`  
		Last Modified: Wed, 26 Dec 2018 10:05:16 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2063807139fd21daa1968be6996438e6f23fb7bdf89636d427ca794ba366c0e0`  
		Last Modified: Wed, 26 Dec 2018 10:05:17 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4545eb94412624fbdc6b0373e5863572decc16f1226c336f6085ae6fb1773189`  
		Last Modified: Fri, 28 Dec 2018 09:30:22 GMT  
		Size: 292.8 MB (292838927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b535c408d07608a55d219fbf93afccf91f8c5d466081d7587bdc6a1dab9318f`  
		Last Modified: Fri, 28 Dec 2018 10:08:15 GMT  
		Size: 6.9 KB (6900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416f65c66a17b2836107b4c9f8f02c0607d98424f218f190e5fa64208a45581d`  
		Last Modified: Fri, 28 Dec 2018 10:08:20 GMT  
		Size: 39.3 MB (39344814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-boot-2.8.2` - linux; s390x

```console
$ docker pull clojure@sha256:3dc2ac2f0f1370cc44d0b969f2c76099866d2b24e66f1d45995a41e5477665f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.6 MB (485623709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2eb905b8e03f55a9473b1430a1664227bc0200ac668a1eebe05781613a4862c`
-	Default Command: `["boot","repl"]`

```dockerfile
# Fri, 16 Nov 2018 12:42:33 GMT
ADD file:77fbcf3a7fd8e7c1d35c9b0144f5dcef5228f477c512b3de313b5f9f8106c20b in / 
# Fri, 16 Nov 2018 12:42:34 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:14:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:14:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 20:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:43:44 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 20:43:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 20:43:45 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 20:43:46 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 20:43:46 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 05 Dec 2018 13:07:25 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Wed, 05 Dec 2018 13:09:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 13:09:42 GMT
CMD ["jshell"]
# Wed, 05 Dec 2018 13:41:18 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Thu, 20 Dec 2018 12:45:26 GMT
ENV BOOT_VERSION=2.8.2
# Thu, 20 Dec 2018 12:45:27 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Thu, 20 Dec 2018 12:45:27 GMT
WORKDIR /tmp
# Thu, 20 Dec 2018 12:45:28 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Thu, 20 Dec 2018 12:45:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Dec 2018 12:45:28 GMT
ENV BOOT_AS_ROOT=yes
# Thu, 20 Dec 2018 12:46:08 GMT
RUN boot
# Thu, 20 Dec 2018 12:46:09 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:b5f718c394fe29f847c837a4abaeea5358350a23da072857d9a17d7b3f835ba6`  
		Last Modified: Thu, 15 Nov 2018 01:49:01 GMT  
		Size: 47.9 MB (47868485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41806c8eb45b71025055bb1e6fd1976203b50f81a43cd4d17ecd2e08bf1ca416`  
		Last Modified: Fri, 16 Nov 2018 20:22:12 GMT  
		Size: 7.0 MB (7044644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311646161ff8988e1dbd14a16907d30a4e22f1b324c178e21580877b40c200d0`  
		Last Modified: Fri, 16 Nov 2018 20:22:12 GMT  
		Size: 9.7 MB (9670979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c6030aaf58f5a38dd0870a3bfedbe1405f3e0f69b97a75b92f033a4b4e8188`  
		Last Modified: Fri, 16 Nov 2018 20:22:37 GMT  
		Size: 50.1 MB (50126030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd13e0dfcf1b0c7040fcfed05b4331b230c8b9161b8c8bad6ddbb0d18ff72ddb`  
		Last Modified: Fri, 16 Nov 2018 20:57:29 GMT  
		Size: 892.7 KB (892722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb5a00ecec2eade209879061cbc4d4d9fcae46be4b01df1b03f74586b0c992b`  
		Last Modified: Fri, 16 Nov 2018 20:57:29 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70999fda9f2f1104fabf9d2b99819a17c78c456a2352bc27ff7710ef3e594e9e`  
		Last Modified: Fri, 16 Nov 2018 20:57:29 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba23daa741fcdd64622fb31c7e22d681b975e33560e1413bf3e01afc5cf08e6e`  
		Last Modified: Wed, 05 Dec 2018 13:13:55 GMT  
		Size: 330.7 MB (330669305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f05b6e018fdd023f830cea97912b52905ff4c8a876cddefc5fcd6922fc692b`  
		Last Modified: Thu, 20 Dec 2018 12:47:40 GMT  
		Size: 6.9 KB (6891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f72fbfaa2521141eb19ab7ee057703d0158ed5d3805fd2392f58a33dcbf282`  
		Last Modified: Thu, 20 Dec 2018 12:47:43 GMT  
		Size: 39.3 MB (39344284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

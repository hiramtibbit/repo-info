## `clojure:openjdk-11-tools-deps`

```console
$ docker pull clojure@sha256:5ac3f51c043ee7c6bb00f2e69f8abb284e9fd965a1d9a3ee84c13c48b571738f
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

### `clojure:openjdk-11-tools-deps` - linux; amd64

```console
$ docker pull clojure@sha256:d2e79f71ab3cd94868208a0786e48590f5d164ddde29798870f16ca7c6f9532a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.5 MB (474544512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c40a0f12ae11f40561670d9fa170a338969b33f00ceb89e246c8b0a0d6ca0ad0`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

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
# Fri, 28 Dec 2018 00:49:48 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Fri, 28 Dec 2018 00:49:48 GMT
ENV CLOJURE_VERSION=1.10.0.403
# Fri, 28 Dec 2018 00:49:49 GMT
WORKDIR /tmp
# Fri, 28 Dec 2018 00:49:53 GMT
RUN apt-get update && apt-get install -y rlwrap
# Fri, 28 Dec 2018 00:49:56 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Fri, 28 Dec 2018 00:50:05 GMT
RUN clojure -e "(clojure-version)"
# Fri, 28 Dec 2018 00:50:05 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:b4a4a3df3c94858e71cec910496b986fcf8eb5c108eeb6293e7727e1e9c35933`  
		Last Modified: Fri, 28 Dec 2018 00:50:45 GMT  
		Size: 13.8 MB (13847513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:526a0ccf07e94fef55a4d0d46e47bfa7d5625466ef347dd554d11f8042455cde`  
		Last Modified: Fri, 28 Dec 2018 00:50:45 GMT  
		Size: 19.8 MB (19761381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83bf7410cb5e6cc835194b0edb3f450e0c897c189cde25a34d1a6cb203737f22`  
		Last Modified: Fri, 28 Dec 2018 00:50:43 GMT  
		Size: 4.1 MB (4102718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps` - linux; arm variant v5

```console
$ docker pull clojure@sha256:264c27cbe68354340c27d8fe5d4e86b9e06a017cd90121a3b820896689ad4cd3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **477.4 MB (477435942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95bf2b2d07593d7a77759a6b3157d31baa03f5ce895e35d86a3bfb958ad7304f`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Fri, 16 Nov 2018 09:55:05 GMT
ADD file:8beac90fab79047a99139951c1eb0b26598cb16b3de6be3a6768d30f41e470da in / 
# Fri, 16 Nov 2018 09:55:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:33:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:33:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:34:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 01:42:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 01:42:03 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 01:42:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 01:42:05 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 01:42:06 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 01:42:06 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 05 Dec 2018 09:48:39 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Wed, 05 Dec 2018 09:50:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 09:50:57 GMT
CMD ["jshell"]
# Wed, 05 Dec 2018 10:29:24 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Thu, 20 Dec 2018 09:59:59 GMT
ENV CLOJURE_VERSION=1.10.0.403
# Thu, 20 Dec 2018 09:59:59 GMT
WORKDIR /tmp
# Thu, 20 Dec 2018 10:00:29 GMT
RUN apt-get update && apt-get install -y rlwrap
# Thu, 20 Dec 2018 10:00:32 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Thu, 20 Dec 2018 10:01:46 GMT
RUN clojure -e "(clojure-version)"
# Thu, 20 Dec 2018 10:01:46 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:47c89bded53655a08a5ade4bcec2735b8f5ed461132add6b56c91d99d2d43e82`  
		Last Modified: Fri, 16 Nov 2018 10:09:57 GMT  
		Size: 46.9 MB (46931174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c40e735ea786d7012557eb1a19713d212a9eb65c662a0e17496c671826df7e8`  
		Last Modified: Fri, 16 Nov 2018 18:48:44 GMT  
		Size: 6.9 MB (6936827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e84d4e46d444d64c8c7b8bc36fc4bba762c6ab773eb80c2e8a53fea1ef65f0`  
		Last Modified: Fri, 16 Nov 2018 18:48:45 GMT  
		Size: 9.5 MB (9481899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1b7b406c5a68f251b1791ff0a2eaf1cc337291dfee3aa145f354e9f7e544e7`  
		Last Modified: Fri, 16 Nov 2018 18:49:32 GMT  
		Size: 48.4 MB (48387442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a13e885d8aac00d63b54709b5dfafe149fda6c5d2eb1d9b3b0b1d3cce755952`  
		Last Modified: Wed, 21 Nov 2018 10:27:26 GMT  
		Size: 875.8 KB (875819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a1d5f778a88898d1420f8bd5d2bf9e1aa776a2042078ae871bcfe673188271`  
		Last Modified: Wed, 21 Nov 2018 10:27:26 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2191ddd678ed0cdb135290c73f3ae0e6e8035348e9046390ad2bfcdf6aa40a7f`  
		Last Modified: Wed, 21 Nov 2018 10:27:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664abd9cfb3c6806277ee4fade4fe822e4bfcc23f02473e7062e6bfaf0971238`  
		Last Modified: Wed, 05 Dec 2018 09:59:14 GMT  
		Size: 318.4 MB (318408267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5315dcbd6f70dea8702e3fd2f554e049483c5be87c4755b8114f0ef3a5cc60`  
		Last Modified: Thu, 20 Dec 2018 10:03:09 GMT  
		Size: 22.5 MB (22549904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02598e062455a4bd9d81c54a0022bcd54443f45a7a7b2c3b41ddb2be636100d1`  
		Last Modified: Thu, 20 Dec 2018 10:03:06 GMT  
		Size: 19.8 MB (19761427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08311f82b564e99f6e27de83937309996e27728390ee6d7921ddb44f65926254`  
		Last Modified: Thu, 20 Dec 2018 10:03:04 GMT  
		Size: 4.1 MB (4102814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps` - linux; arm variant v7

```console
$ docker pull clojure@sha256:045d303301ca5a0d73fe602c89b26191822b97b66da46348e27f8e689c5fd232
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.6 MB (496572881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f2e13fe1e413c19893c8a168e40841c1c941d1bd2d6fab85b155ac4d3b73ce`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

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
# Wed, 05 Dec 2018 13:41:28 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Thu, 20 Dec 2018 13:00:44 GMT
ENV CLOJURE_VERSION=1.10.0.403
# Thu, 20 Dec 2018 13:00:44 GMT
WORKDIR /tmp
# Thu, 20 Dec 2018 13:01:00 GMT
RUN apt-get update && apt-get install -y rlwrap
# Thu, 20 Dec 2018 13:01:03 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Thu, 20 Dec 2018 13:01:13 GMT
RUN clojure -e "(clojure-version)"
# Thu, 20 Dec 2018 13:01:14 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:d2d9b254d51fce721832e3f83aefc74e4ffdaedf2242cf18a91a97eed6c7eb8b`  
		Last Modified: Thu, 20 Dec 2018 13:02:46 GMT  
		Size: 22.4 MB (22383494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d6239ad7f496f4792a0ffeb4ed4d5bd512b04e70e0f446c8fa6642e0a0e8cd`  
		Last Modified: Thu, 20 Dec 2018 13:02:43 GMT  
		Size: 19.8 MB (19761439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861bc93b5bcb8768a27c7724579fa93775bf7e7ba115eb5d69a382b3df20f3fb`  
		Last Modified: Thu, 20 Dec 2018 13:02:40 GMT  
		Size: 4.1 MB (4102804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:be506a19dde7514ae9c8ba76b54e479547a8c2308681cf3126cb7c1f82226cdb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.1 MB (537066730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71ea659b2d572cb5df5cad42c5a3977edabd4146d8f0028823cdbde8492c238b`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

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
# Wed, 05 Dec 2018 10:55:20 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Thu, 20 Dec 2018 09:45:51 GMT
ENV CLOJURE_VERSION=1.10.0.403
# Thu, 20 Dec 2018 09:45:51 GMT
WORKDIR /tmp
# Thu, 20 Dec 2018 09:46:29 GMT
RUN apt-get update && apt-get install -y rlwrap
# Thu, 20 Dec 2018 09:46:36 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Thu, 20 Dec 2018 09:46:55 GMT
RUN clojure -e "(clojure-version)"
# Thu, 20 Dec 2018 09:46:56 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:00f6f1d63261cc72c767a24d281d225b1e2ec1f606914d0cdd8b031e924e66c1`  
		Last Modified: Thu, 20 Dec 2018 09:48:54 GMT  
		Size: 22.1 MB (22073790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b091b99abdecdcd09bad86cb748aba0de8e637f1016277ff582ef9ff789540d`  
		Last Modified: Thu, 20 Dec 2018 09:48:51 GMT  
		Size: 19.8 MB (19761315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a070b3a11414f3fdc2c72a807d772acc61aa5770fc94ec32623fbc3e4804a845`  
		Last Modified: Thu, 20 Dec 2018 09:48:48 GMT  
		Size: 4.1 MB (4102758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps` - linux; 386

```console
$ docker pull clojure@sha256:339064bb944e2753a19e96f55e185cc8134b3414bd584b65c257256fc30e490f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **643.5 MB (643474586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84c92deb36eda003882a8d85f88317796bcd1ca873531249ade630f070a67b8c`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

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
# Wed, 05 Dec 2018 12:26:21 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Thu, 20 Dec 2018 11:43:20 GMT
ENV CLOJURE_VERSION=1.10.0.403
# Thu, 20 Dec 2018 11:43:20 GMT
WORKDIR /tmp
# Thu, 20 Dec 2018 11:43:31 GMT
RUN apt-get update && apt-get install -y rlwrap
# Thu, 20 Dec 2018 11:43:33 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Thu, 20 Dec 2018 11:43:39 GMT
RUN clojure -e "(clojure-version)"
# Thu, 20 Dec 2018 11:43:39 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:0a6c5d5851a596d2fb6114cc669502f0b30c3233ca9f269125dfa0679899f304`  
		Last Modified: Thu, 20 Dec 2018 11:44:38 GMT  
		Size: 23.4 MB (23369288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f604ba3e1675e6cc9e8580b51eca4313a57a058583369da0f8b92eb4cac95ca`  
		Last Modified: Thu, 20 Dec 2018 11:44:36 GMT  
		Size: 19.8 MB (19761329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcc4c66706b6fdafef926488024acb2e55e18b8d1542f3d7b30a62dbfdba19f`  
		Last Modified: Thu, 20 Dec 2018 11:44:34 GMT  
		Size: 4.1 MB (4102739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps` - linux; ppc64le

```console
$ docker pull clojure@sha256:83a4607a1dd68c12cff895b1aed9f5e98c9832c9215c7acea8589db2238bfd57
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **543.5 MB (543470026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69ba696bcfb5ec109975af5842239b62cd3aa7bff633c7a0466a1e39ee99c5df`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Fri, 16 Nov 2018 09:29:11 GMT
ADD file:21c19a0a0b72cf3f388f00fe01c1519967fda820c517637abea940bde9dcbdcb in / 
# Fri, 16 Nov 2018 09:29:13 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:15:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:16:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:41:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:41:32 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 21:41:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 21:41:36 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 21:41:37 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 21:41:38 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 05 Dec 2018 09:27:02 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Wed, 05 Dec 2018 09:33:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 09:34:07 GMT
CMD ["jshell"]
# Wed, 05 Dec 2018 10:47:33 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Thu, 20 Dec 2018 09:25:20 GMT
ENV CLOJURE_VERSION=1.10.0.403
# Thu, 20 Dec 2018 09:25:22 GMT
WORKDIR /tmp
# Thu, 20 Dec 2018 09:26:09 GMT
RUN apt-get update && apt-get install -y rlwrap
# Thu, 20 Dec 2018 09:26:19 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Thu, 20 Dec 2018 09:26:33 GMT
RUN clojure -e "(clojure-version)"
# Thu, 20 Dec 2018 09:26:36 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:e57b32151bc02904963bd565e696f960ec0fcf7e61de7736cf428f181f77a638`  
		Last Modified: Fri, 16 Nov 2018 09:37:27 GMT  
		Size: 52.4 MB (52388297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab0f66852fcb84f2cd9e128298c12a55a73df334109fd2d39ccada2d5813aa5`  
		Last Modified: Fri, 16 Nov 2018 19:43:21 GMT  
		Size: 7.8 MB (7805704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28eae639cdf9e8ca8ce95408b8ae6bbcbde8367a9ad6d7c204571ff3c434eb01`  
		Last Modified: Fri, 16 Nov 2018 19:43:22 GMT  
		Size: 10.5 MB (10523243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f4bae92772f353dfc8916ff4bfa43c29ef572bbaa7095b863bfd2ef31d7bef`  
		Last Modified: Fri, 16 Nov 2018 19:44:20 GMT  
		Size: 56.4 MB (56381166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ff30587ed969d75d99ffce534f79923cef7304ff1dd798d7d9668b93661ac1`  
		Last Modified: Fri, 16 Nov 2018 22:20:15 GMT  
		Size: 882.0 KB (881998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aad39f0d719f564dd781d71db6e58ce57d0326d9360dfe2e1047a3d20d8d5af`  
		Last Modified: Fri, 16 Nov 2018 22:20:14 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274b868ca6e7fa1251abc204716d9afcdc7658f1c2e63f3344fb1334efe35258`  
		Last Modified: Fri, 16 Nov 2018 22:20:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c69eba62bab9ae4f958ee5ae841c57ea891385211526c31e1ed92fdc9382f1`  
		Last Modified: Wed, 05 Dec 2018 09:55:53 GMT  
		Size: 368.5 MB (368530475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c76638e20daf123308c4b896677fc9b29144edc1674e6eb020aaeabdeda42ff`  
		Last Modified: Thu, 20 Dec 2018 09:28:18 GMT  
		Size: 23.1 MB (23094545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00eb1d985b614c38e3d933b3a653e13286cbb61f24f91627f3a3115b20b77ab0`  
		Last Modified: Thu, 20 Dec 2018 09:28:16 GMT  
		Size: 19.8 MB (19761438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ff018fbbb0a4fa6c64f857d6cc11c5bed70d6ab1dd50b926df1e24341939b9`  
		Last Modified: Thu, 20 Dec 2018 09:28:14 GMT  
		Size: 4.1 MB (4102788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps` - linux; s390x

```console
$ docker pull clojure@sha256:ac497810ce5cde039e243d659b98e42a8f010e670ec29b4c29992a2529fba1ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.7 MB (498673769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b6bd891063c6d9c6ba95e0906e29263828cf3bf1d5348fec673715acf05f9d0`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

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
# Wed, 05 Dec 2018 13:42:26 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Thu, 20 Dec 2018 12:46:16 GMT
ENV CLOJURE_VERSION=1.10.0.403
# Thu, 20 Dec 2018 12:46:16 GMT
WORKDIR /tmp
# Thu, 20 Dec 2018 12:46:30 GMT
RUN apt-get update && apt-get install -y rlwrap
# Thu, 20 Dec 2018 12:46:32 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Thu, 20 Dec 2018 12:46:38 GMT
RUN clojure -e "(clojure-version)"
# Thu, 20 Dec 2018 12:46:38 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:7c0bb30f40feb5b74ee3aa98074e0623432888e3988e25600e379a12c83ff0d3`  
		Last Modified: Thu, 20 Dec 2018 12:47:57 GMT  
		Size: 28.5 MB (28537236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2790a690703b0737992e0f918065679515ab04ca61aa12660dae6ebe1e18e34d`  
		Last Modified: Thu, 20 Dec 2018 12:47:54 GMT  
		Size: 19.8 MB (19761312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abe76d36b648ff57314018bc2723bde1407d8bbf3a7d283a99d2f9bfd213a89`  
		Last Modified: Thu, 20 Dec 2018 12:47:53 GMT  
		Size: 4.1 MB (4102687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:openjdk-11-lein-2.8.3`

```console
$ docker pull clojure@sha256:6b323180eb7a02c56eccd4fa8a6cfbf2dc5e0dba9c89fae021eacdeaaa36b4f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `clojure:openjdk-11-lein-2.8.3` - linux; amd64

```console
$ docker pull clojure@sha256:96eeef0625b0b47813bff65ce953a8465488cce00b4e32dfc14e135f455d4d64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.2 MB (453190074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de64ea62e841301333d45abc541b11eef07efb0233eb11b31685219a0766b820`
-	Default Command: `["lein","repl"]`

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
# Fri, 28 Dec 2018 00:48:28 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Fri, 28 Dec 2018 00:48:28 GMT
ENV LEIN_VERSION=2.8.3
# Fri, 28 Dec 2018 00:48:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 28 Dec 2018 00:48:28 GMT
WORKDIR /tmp
# Fri, 28 Dec 2018 00:48:35 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "67b7fa41e94e621f29625cb621ac8f7ccc77dd49 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Fri, 28 Dec 2018 00:48:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 28 Dec 2018 00:48:36 GMT
ENV LEIN_ROOT=1
# Fri, 28 Dec 2018 00:48:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Fri, 28 Dec 2018 00:48:42 GMT
CMD ["lein" "repl"]
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
	-	`sha256:39aae2a0a66799b0d154aec0828b3940884903c1392e1e2fe41bdeddf7455673`  
		Last Modified: Fri, 28 Dec 2018 00:50:30 GMT  
		Size: 12.2 MB (12197135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31405b16cb368f0b8c3caaf087308f61a58f4142f0a1026c8d70d23c5248737c`  
		Last Modified: Fri, 28 Dec 2018 00:50:26 GMT  
		Size: 4.2 MB (4160039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-lein-2.8.3` - linux; arm variant v7

```console
$ docker pull clojure@sha256:49c7706b22d59d4f28fe4d420acc84d7406127d20332d3d477226656f2f771f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.7 MB (466682443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f6dd7b001898fe2f7cc672403f30de61c0eb0273702485b5b1c730f2d34a2b1`
-	Default Command: `["lein","repl"]`

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
# Wed, 05 Dec 2018 13:38:37 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Thu, 20 Dec 2018 12:59:23 GMT
ENV LEIN_VERSION=2.8.3
# Thu, 20 Dec 2018 12:59:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Dec 2018 12:59:24 GMT
WORKDIR /tmp
# Thu, 20 Dec 2018 12:59:27 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "67b7fa41e94e621f29625cb621ac8f7ccc77dd49 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 20 Dec 2018 12:59:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Dec 2018 12:59:28 GMT
ENV LEIN_ROOT=1
# Thu, 20 Dec 2018 12:59:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 20 Dec 2018 12:59:35 GMT
CMD ["lein" "repl"]
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
	-	`sha256:ee7d0ec50be2135e1b02ecf85127afefdc849eda8de25b7308f03de9eba09ec4`  
		Last Modified: Thu, 20 Dec 2018 13:02:20 GMT  
		Size: 12.2 MB (12197205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d3c6f993af602466c20b81dc6401e58d4211f6c46fef914d83a6cb4b503b10`  
		Last Modified: Thu, 20 Dec 2018 13:02:19 GMT  
		Size: 4.2 MB (4160094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-lein-2.8.3` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:07d1b7c45382b8b8ad3e495489a84a3bc7f6c7adbd41868742ed508b667aebd8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **507.5 MB (507486075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:937232087394446f90d5aaa4cadfe03f5b51282b891e51d6135eac265bd23a02`
-	Default Command: `["lein","repl"]`

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
# Wed, 05 Dec 2018 10:53:00 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Thu, 20 Dec 2018 09:43:14 GMT
ENV LEIN_VERSION=2.8.3
# Thu, 20 Dec 2018 09:43:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Dec 2018 09:43:16 GMT
WORKDIR /tmp
# Thu, 20 Dec 2018 09:43:29 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "67b7fa41e94e621f29625cb621ac8f7ccc77dd49 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 20 Dec 2018 09:43:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Dec 2018 09:43:30 GMT
ENV LEIN_ROOT=1
# Thu, 20 Dec 2018 09:43:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 20 Dec 2018 09:43:45 GMT
CMD ["lein" "repl"]
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
	-	`sha256:d140391643eb0b6a4eea3b819f4ba0c6f4c8c082e45ef66823efdc6b377b4072`  
		Last Modified: Thu, 20 Dec 2018 09:48:21 GMT  
		Size: 12.2 MB (12197191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5971ba1ff354bdc5b6299e798ce5f62aa80cde2ef289b6e66864af8d750e9582`  
		Last Modified: Thu, 20 Dec 2018 09:48:19 GMT  
		Size: 4.2 MB (4160017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-lein-2.8.3` - linux; 386

```console
$ docker pull clojure@sha256:ab162a4b3d925031cc367443aae63af4158443762fc13fa00a63c66ec2aa1154
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **612.6 MB (612598427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e6959ccdf29337a3112f77b7ae2fa8e4e8d3487fa5d54276c9fe0636206e212`
-	Default Command: `["lein","repl"]`

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
# Wed, 05 Dec 2018 12:24:41 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Thu, 20 Dec 2018 11:42:17 GMT
ENV LEIN_VERSION=2.8.3
# Thu, 20 Dec 2018 11:42:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Dec 2018 11:42:17 GMT
WORKDIR /tmp
# Thu, 20 Dec 2018 11:42:19 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "67b7fa41e94e621f29625cb621ac8f7ccc77dd49 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 20 Dec 2018 11:42:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Dec 2018 11:42:20 GMT
ENV LEIN_ROOT=1
# Thu, 20 Dec 2018 11:42:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 20 Dec 2018 11:42:25 GMT
CMD ["lein" "repl"]
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
	-	`sha256:fcf516e228e2ff5c52f99bd9570d3758588f826d68397f3c442d2d7ad1526805`  
		Last Modified: Thu, 20 Dec 2018 11:44:18 GMT  
		Size: 12.2 MB (12197183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6535fb3d68bcfa83c9c7fd8a4e4b66f616bc614cdac5e5e7307a6f54c26db0`  
		Last Modified: Thu, 20 Dec 2018 11:44:17 GMT  
		Size: 4.2 MB (4160014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-lein-2.8.3` - linux; ppc64le

```console
$ docker pull clojure@sha256:4cf3e34b8d0e71f9379ac905bb03f27218244609603e6ff268413f7a62559d3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.0 MB (419999482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4dcd88bb7524cafe1935597a1cd152bbcf1fa0b3c09ec91e2e714e98d6ffa86`
-	Default Command: `["lein","repl"]`

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
# Fri, 28 Dec 2018 10:02:32 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Fri, 28 Dec 2018 10:02:35 GMT
ENV LEIN_VERSION=2.8.3
# Fri, 28 Dec 2018 10:02:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 28 Dec 2018 10:02:38 GMT
WORKDIR /tmp
# Fri, 28 Dec 2018 10:03:02 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "67b7fa41e94e621f29625cb621ac8f7ccc77dd49 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Fri, 28 Dec 2018 10:03:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 28 Dec 2018 10:03:06 GMT
ENV LEIN_ROOT=1
# Fri, 28 Dec 2018 10:03:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Fri, 28 Dec 2018 10:03:24 GMT
CMD ["lein" "repl"]
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
	-	`sha256:3105e09fc91039ab162b6bdb9717eb100d30913187d7978dc9bf5944f7495c26`  
		Last Modified: Fri, 28 Dec 2018 10:08:04 GMT  
		Size: 12.2 MB (12197183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe8e625a78901bed70974479b078c244bfac47f3d2f4f7d2eaa408982dff2cc`  
		Last Modified: Fri, 28 Dec 2018 10:08:04 GMT  
		Size: 4.2 MB (4160117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-lein-2.8.3` - linux; s390x

```console
$ docker pull clojure@sha256:2781210860569c1f94fb45ebca9d59767318e7710a7f88762647617465c1430a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **462.6 MB (462629688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45fec4995d75e4361d98205c4227672980fc587a0e66018edd9e037ac4c6b84a`
-	Default Command: `["lein","repl"]`

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
# Wed, 05 Dec 2018 13:41:03 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Thu, 20 Dec 2018 12:45:14 GMT
ENV LEIN_VERSION=2.8.3
# Thu, 20 Dec 2018 12:45:14 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Dec 2018 12:45:14 GMT
WORKDIR /tmp
# Thu, 20 Dec 2018 12:45:19 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "67b7fa41e94e621f29625cb621ac8f7ccc77dd49 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 20 Dec 2018 12:45:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Dec 2018 12:45:19 GMT
ENV LEIN_ROOT=1
# Thu, 20 Dec 2018 12:45:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 20 Dec 2018 12:45:23 GMT
CMD ["lein" "repl"]
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
	-	`sha256:e92e3dad5aea6c55d4cf331769c423bf80ca83908602f8667ab3405c0b4233f5`  
		Last Modified: Thu, 20 Dec 2018 12:47:35 GMT  
		Size: 12.2 MB (12197161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8fcb3109a3e8a5caf2885e96d37d1f7d654ae5a8ee182f05c39a381184b1c99`  
		Last Modified: Thu, 20 Dec 2018 12:47:35 GMT  
		Size: 4.2 MB (4159993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

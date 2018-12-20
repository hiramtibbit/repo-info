## `clojure:openjdk-11-lein`

```console
$ docker pull clojure@sha256:4cc9361e6fa1def43a1d61c3cb75351859da469f224a7d9d01583962a1014a11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `clojure:openjdk-11-lein` - linux; amd64

```console
$ docker pull clojure@sha256:1c9266fa7450709ff73d069af8d46fab160ae6ec1d69f669f1933dc074d749f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.7 MB (531688731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c43fbe865ada5ccbdd5f5649796816741650cc9db1fdc6442bd0b624d2f58e6`
-	Default Command: `["lein","repl"]`

```dockerfile
# Thu, 15 Nov 2018 22:39:40 GMT
ADD file:84029df3086c983b05fbe43604e262a3500994b6a3ecfe0d463f3c8c58e0a7a1 in / 
# Thu, 15 Nov 2018 22:39:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:12:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:12:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:13:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:42:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:42:31 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:42:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:42:33 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:42:34 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:42:34 GMT
ENV JAVA_VERSION=11.0.1
# Tue, 04 Dec 2018 23:22:41 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Tue, 04 Dec 2018 23:24:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 04 Dec 2018 23:24:03 GMT
CMD ["jshell"]
# Wed, 05 Dec 2018 00:08:55 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Thu, 20 Dec 2018 00:23:16 GMT
ENV LEIN_VERSION=2.8.3
# Thu, 20 Dec 2018 00:23:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Dec 2018 00:23:17 GMT
WORKDIR /tmp
# Thu, 20 Dec 2018 00:23:20 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "67b7fa41e94e621f29625cb621ac8f7ccc77dd49 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 20 Dec 2018 00:23:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Dec 2018 00:23:20 GMT
ENV LEIN_ROOT=1
# Thu, 20 Dec 2018 00:23:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 20 Dec 2018 00:23:30 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:16e82e17faef9e90ceefcd8175e9899edce768aa6008cc16dd1e3fe7d3b88bb8`  
		Last Modified: Thu, 15 Nov 2018 23:04:08 GMT  
		Size: 49.3 MB (49259589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117dc02416a34c62e28a030f27828f2f31af6b8b1f02c85b009a1ffb390d01dc`  
		Last Modified: Fri, 16 Nov 2018 11:30:56 GMT  
		Size: 7.4 MB (7375503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4c717259ac9c550efbbf41c6fe0dc9598046f4bfd4b398deb63f7a0c19cb3f`  
		Last Modified: Fri, 16 Nov 2018 11:30:57 GMT  
		Size: 9.8 MB (9780063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a518b8f48be0323544739e175909b24be833b4a2bf39939f91fbcc2ab0e48a4`  
		Last Modified: Fri, 16 Nov 2018 11:31:40 GMT  
		Size: 50.6 MB (50638196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add32d44f708eff65a3ad250f4c87b8c3c912f0240c8a0acd76a88df6cd3ebdc`  
		Last Modified: Fri, 16 Nov 2018 15:14:42 GMT  
		Size: 883.7 KB (883701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0158fa0854313538e2807a9098aa49227ea46a44c3fc9120e9dc74e45baa408`  
		Last Modified: Fri, 16 Nov 2018 15:14:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacd9302ecfd07d9995d2e98fee405aff75c096817cc720077362b19f781455b`  
		Last Modified: Fri, 16 Nov 2018 15:14:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9d52bf6cdeab4ea1636dfd402b417490ac786fd5546dcc52c3969b3f230258`  
		Last Modified: Tue, 04 Dec 2018 23:37:09 GMT  
		Size: 397.4 MB (397394101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a4f86fdadb9a63128039ac1731d4c21901a278d5b9c62210d8cd3e488fbc74`  
		Last Modified: Thu, 20 Dec 2018 00:27:01 GMT  
		Size: 12.2 MB (12197192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3664acc70640ff70ba6ce6da6ed7b6245294f1b0e16b8f74291040968ab56704`  
		Last Modified: Thu, 20 Dec 2018 00:27:00 GMT  
		Size: 4.2 MB (4160019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-lein` - linux; arm variant v7

```console
$ docker pull clojure@sha256:9d832d6893b137f8159e99fb3f9dd5d98000ec0c31453f3fd5935e47884b9103
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.4 MB (466404822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05d6b6f550a3ee1a2c8630981052caa5055daf2525bbc82211797731434c7943`
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
# Wed, 05 Dec 2018 13:38:38 GMT
ENV LEIN_VERSION=2.8.1
# Wed, 05 Dec 2018 13:38:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Dec 2018 13:38:39 GMT
WORKDIR /tmp
# Wed, 05 Dec 2018 13:38:55 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 05 Dec 2018 13:38:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Dec 2018 13:38:59 GMT
ENV LEIN_ROOT=1
# Wed, 05 Dec 2018 13:39:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
# Wed, 05 Dec 2018 13:39:05 GMT
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
	-	`sha256:2f1a641a27bc5d4ad2e926f2e8619baaa4d60df4d7fbb5d3ae477943bd165821`  
		Last Modified: Wed, 05 Dec 2018 13:43:52 GMT  
		Size: 12.1 MB (12137766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ee855e4b5e1e65a429a038e97804cc8742cf14b4523c43d9917b433db05497`  
		Last Modified: Wed, 05 Dec 2018 13:43:51 GMT  
		Size: 3.9 MB (3941912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-lein` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bc5b12cd59a9590f4b42228bc60fbc18bd20fdb2835d26df9089e2cd51b1a2fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **507.2 MB (507208500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f781e393581d71ade3622e646e58ea9bf2abb1ea06c6491ae25727d7a10b37`
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
# Wed, 05 Dec 2018 10:53:00 GMT
ENV LEIN_VERSION=2.8.1
# Wed, 05 Dec 2018 10:53:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Dec 2018 10:53:01 GMT
WORKDIR /tmp
# Wed, 05 Dec 2018 10:53:08 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 05 Dec 2018 10:53:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Dec 2018 10:53:09 GMT
ENV LEIN_ROOT=1
# Wed, 05 Dec 2018 10:53:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
# Wed, 05 Dec 2018 10:53:18 GMT
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
	-	`sha256:8539e20e016b5103eb274cdbc5bfc6baa4cb9b00f413226f5e20f7d192ad0cde`  
		Last Modified: Wed, 05 Dec 2018 10:56:32 GMT  
		Size: 12.1 MB (12137754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702f93ad77978a50b6330889e97402e0a889b36ec10b17c371c0d918393d9af0`  
		Last Modified: Wed, 05 Dec 2018 10:56:31 GMT  
		Size: 3.9 MB (3941879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-lein` - linux; 386

```console
$ docker pull clojure@sha256:fffbd2349c2cfede8c9a3c46815d93e04ee6daf31d21160516bb480227a45a11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **612.3 MB (612320733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0c1b3f8d16eb4c9aab468b650a9a3e2f63db78834ed9b637d08e25f0ea8ea9`
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
# Wed, 05 Dec 2018 12:24:41 GMT
ENV LEIN_VERSION=2.8.1
# Wed, 05 Dec 2018 12:24:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Dec 2018 12:24:42 GMT
WORKDIR /tmp
# Wed, 05 Dec 2018 12:24:44 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 05 Dec 2018 12:24:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Dec 2018 12:24:44 GMT
ENV LEIN_ROOT=1
# Wed, 05 Dec 2018 12:24:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
# Wed, 05 Dec 2018 12:24:48 GMT
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
	-	`sha256:7a154a39f7ba2eba66221df5168a3974af3cea3ae9bf55d4661e5e570ad034f9`  
		Last Modified: Wed, 05 Dec 2018 12:28:29 GMT  
		Size: 12.1 MB (12137687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e287547b8d1b264b648e29b686b49614c1e86e33108517aa9c7c4a7ec3385d2c`  
		Last Modified: Wed, 05 Dec 2018 12:28:28 GMT  
		Size: 3.9 MB (3941816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-lein` - linux; ppc64le

```console
$ docker pull clojure@sha256:649d7f48d9f1b612d9bb9e9dde16ff335525295f4859f058df73e3406dfcbcab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **512.6 MB (512590874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11bf53fab6e167d099030ebc447688a9d3df7f4bba97cf417ed66f74b01a0690`
-	Default Command: `["lein","repl"]`

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
# Wed, 05 Dec 2018 10:39:27 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Wed, 05 Dec 2018 10:39:28 GMT
ENV LEIN_VERSION=2.8.1
# Wed, 05 Dec 2018 10:39:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Dec 2018 10:39:31 GMT
WORKDIR /tmp
# Wed, 05 Dec 2018 10:42:10 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 05 Dec 2018 10:42:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Dec 2018 10:42:13 GMT
ENV LEIN_ROOT=1
# Wed, 05 Dec 2018 10:42:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
# Wed, 05 Dec 2018 10:42:45 GMT
CMD ["lein" "repl"]
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
	-	`sha256:4a3e2b4c7684ad302f696edefb1d2f128cf7e2180c3be96f9fc2db02e3b3c940`  
		Last Modified: Wed, 05 Dec 2018 10:50:00 GMT  
		Size: 12.1 MB (12137728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76f3c1983187a92a24e43bd94770244900a85c6b12ef99523abae9501063db4`  
		Last Modified: Wed, 05 Dec 2018 10:50:00 GMT  
		Size: 3.9 MB (3941891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-lein` - linux; s390x

```console
$ docker pull clojure@sha256:a6e019e608da57b307bd1163fcb4eaf8927259526bf731a7863b1bc1e782e80a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **462.4 MB (462352028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa70b82764837b7a95b8d7a6aeb2688278a456a584b87d6b5ab39ae4815bf414`
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
# Wed, 05 Dec 2018 13:41:03 GMT
ENV LEIN_VERSION=2.8.1
# Wed, 05 Dec 2018 13:41:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Dec 2018 13:41:04 GMT
WORKDIR /tmp
# Wed, 05 Dec 2018 13:41:06 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 05 Dec 2018 13:41:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Dec 2018 13:41:07 GMT
ENV LEIN_ROOT=1
# Wed, 05 Dec 2018 13:41:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
# Wed, 05 Dec 2018 13:41:11 GMT
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
	-	`sha256:820c168482a56677e99e1dbab4397ec3e4846c724e054e6843491dda539dff08`  
		Last Modified: Wed, 05 Dec 2018 13:43:36 GMT  
		Size: 12.1 MB (12137696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa5b56badad2a8f6165fe970cde58a47d973d2c41c3f126c533574b7f531c42`  
		Last Modified: Wed, 05 Dec 2018 13:43:35 GMT  
		Size: 3.9 MB (3941798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

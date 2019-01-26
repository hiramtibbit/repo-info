## `clojure:openjdk-8-lein`

```console
$ docker pull clojure@sha256:7a0d69b162fe28d076c49b752301930f392d5358a1d5cea370c9b6618264fb2e
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

### `clojure:openjdk-8-lein` - linux; amd64

```console
$ docker pull clojure@sha256:37da0e157ec53b79cbce9663c8498bab11018d16003346a54e80aa37d9a69b2d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.8 MB (261754368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13171e3abc9176b2ec9d8d3ae63ec838f2fa73929eafb1f8632524b234f1b673`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:06:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:11:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:16:38 GMT
ENV LANG=C.UTF-8
# Tue, 22 Jan 2019 21:16:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 22 Jan 2019 21:16:40 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 22 Jan 2019 21:16:40 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 22 Jan 2019 21:16:41 GMT
ENV JAVA_VERSION=8u181
# Tue, 22 Jan 2019 21:16:41 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 22 Jan 2019 21:17:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 26 Jan 2019 01:51:22 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Sat, 26 Jan 2019 01:51:22 GMT
ENV LEIN_VERSION=2.8.3
# Sat, 26 Jan 2019 01:51:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Jan 2019 01:51:22 GMT
WORKDIR /tmp
# Sat, 26 Jan 2019 01:51:27 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "67b7fa41e94e621f29625cb621ac8f7ccc77dd49 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Sat, 26 Jan 2019 01:51:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Jan 2019 01:51:27 GMT
ENV LEIN_ROOT=1
# Sat, 26 Jan 2019 01:51:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Sat, 26 Jan 2019 01:51:33 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dd648b5ade2bbdfe77fa94424b0314100b58fb5f6a98486538c2126e08e2f`  
		Last Modified: Tue, 22 Jan 2019 20:13:28 GMT  
		Size: 50.1 MB (50062800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f886e483d6dc67cd1f7c19ed3e45348f3b1af49fe9b5f40fdfca2043281b76`  
		Last Modified: Tue, 22 Jan 2019 21:38:45 GMT  
		Size: 892.4 KB (892370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4346341d3c496637595bfdaad3837beba171fb2194b1abf1f5d0c898a2d2d477`  
		Last Modified: Tue, 22 Jan 2019 21:41:18 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006f2208d67a691a10ab1deab2f6dfbf600f087b0f6df94f8dc6cde9fc3928fe`  
		Last Modified: Tue, 22 Jan 2019 21:41:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb85cf26717dc607155f9ea8b38b0d89ca987fbfd5786b4639afc2062176fd10`  
		Last Modified: Tue, 22 Jan 2019 21:41:51 GMT  
		Size: 134.0 MB (133975924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a3032f5fb61969ef9e3060846c59133601ed2bee63455f7ea044684d9b11fc`  
		Last Modified: Sat, 26 Jan 2019 01:52:09 GMT  
		Size: 12.2 MB (12197095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a4ea5e47d3ecc49c9f29bb5c988e1177361010d520648eb57d3e8cbb9f1863`  
		Last Modified: Sat, 26 Jan 2019 01:52:09 GMT  
		Size: 4.2 MB (4160020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-8-lein` - linux; arm variant v5

```console
$ docker pull clojure@sha256:8937248c518ba3adea261754def0b84656eb1e6424e73d917b942630b79b816b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.9 MB (244927483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46166369e553b335b1664b550a82be3ad62dba2f386962f13f9ec30af9ca709e`
-	Default Command: `["lein","repl"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:03 GMT
ADD file:fa1f49edfa12ade0f591321a690ba7f35361226e174e1a6506ef39f93b34da73 in / 
# Sat, 29 Dec 2018 09:55:04 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:33:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:34:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:54:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:59:12 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:59:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 14:59:16 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 14:59:16 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 14:59:17 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 14:59:17 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 15:00:29 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 04 Jan 2019 09:48:17 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Fri, 04 Jan 2019 09:48:18 GMT
ENV LEIN_VERSION=2.8.3
# Fri, 04 Jan 2019 09:48:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 04 Jan 2019 09:48:18 GMT
WORKDIR /tmp
# Fri, 04 Jan 2019 09:48:24 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "67b7fa41e94e621f29625cb621ac8f7ccc77dd49 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Fri, 04 Jan 2019 09:48:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 04 Jan 2019 09:48:25 GMT
ENV LEIN_ROOT=1
# Fri, 04 Jan 2019 09:49:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Fri, 04 Jan 2019 09:49:08 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:aa4a25a876e256fe4408a465d97b4481c83e18aec91fbd5b6d29f32693918f71`  
		Last Modified: Sat, 29 Dec 2018 10:02:57 GMT  
		Size: 44.0 MB (44029352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a6e95dd88ea73fb3b023bdff0d683b8d2a86166db152da68c590c50f206520`  
		Last Modified: Sat, 29 Dec 2018 10:43:47 GMT  
		Size: 9.8 MB (9849207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee16d7106d19a9889450a5b8b48589591479d902b372b2fb937217426ea0c0cc`  
		Last Modified: Sat, 29 Dec 2018 10:43:45 GMT  
		Size: 4.2 MB (4158586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e50ab6e04718487c035baec36607ee0f681738f3e10b676886ae304733839bc3`  
		Last Modified: Sat, 29 Dec 2018 10:44:12 GMT  
		Size: 48.3 MB (48284780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0376dc8ad1c279341c4b12866c00d9e6bbd8370324b817feea667c280b45945a`  
		Last Modified: Sat, 29 Dec 2018 15:03:19 GMT  
		Size: 884.7 KB (884656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454bc754349e6e3a28bc8c936eea2bc14eb45eb54f69a0d7cb1cdc077ec6a9e8`  
		Last Modified: Sat, 29 Dec 2018 15:05:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b5913a88cfc5f22a51584dda0ad161c3f668c9e5dff9b67ffda06297904361`  
		Last Modified: Sat, 29 Dec 2018 15:05:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db3e289a063f9a1ad6bd4ecd7a9674837d0255a3299f336719eb887300fa0ee`  
		Last Modified: Sat, 29 Dec 2018 15:06:06 GMT  
		Size: 121.4 MB (121363219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a33cfea5311907ca4a73095640857be6b4a2bd439d9e79609f8011ade309ebc`  
		Last Modified: Fri, 04 Jan 2019 10:02:53 GMT  
		Size: 12.2 MB (12197166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8444dc113037526ff4e937c8fac0218c061f9c0072f935a5dc597c734468d9`  
		Last Modified: Fri, 04 Jan 2019 10:02:49 GMT  
		Size: 4.2 MB (4160139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-8-lein` - linux; arm variant v7

```console
$ docker pull clojure@sha256:1385c6f21db13faa24e63f6d796a1deec3a463670a805ff9d27dfa0489d8cf58
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.9 MB (273853856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5c96604e3d51cb2d99dd728b53c21e0245bc5c80b6dd901464a10c832bf2fd9`
-	Default Command: `["lein","repl"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:14:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:02:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:02:21 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 13:02:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 13:02:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 13:02:24 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 13:02:24 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 13:02:25 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 13:02:25 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:03:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:03:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 15:46:34 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Thu, 20 Dec 2018 12:57:19 GMT
ENV LEIN_VERSION=2.8.3
# Thu, 20 Dec 2018 12:57:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Dec 2018 12:57:19 GMT
WORKDIR /tmp
# Thu, 20 Dec 2018 12:57:29 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "67b7fa41e94e621f29625cb621ac8f7ccc77dd49 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 20 Dec 2018 12:57:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Dec 2018 12:57:30 GMT
ENV LEIN_ROOT=1
# Thu, 20 Dec 2018 12:57:38 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 20 Dec 2018 12:57:38 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10d0f9a54b8549a5831d24a81b301ee1e1112ba6045a85ab02050edbbeb9e96`  
		Last Modified: Sat, 05 May 2018 12:36:20 GMT  
		Size: 46.4 MB (46351195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9cf2597c5534c6b8fa92e7c2ccefb5f8d61e783c3ee00f9a42f08acdd0732e0`  
		Last Modified: Sat, 05 May 2018 13:30:34 GMT  
		Size: 867.9 KB (867879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f50a3154b114c80552aa6550bc5f76d6fc6922fb46c71c09723410e47c3a61f`  
		Last Modified: Sat, 05 May 2018 13:30:33 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a276ab88cf860d6a3819c09c09c71b847abe2606d322863776761f5bb0267332`  
		Last Modified: Sat, 05 May 2018 13:30:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a81ce76fdab6754bfcb98f674951b3eb2b338caf570a9df6a8afabaccdd438`  
		Last Modified: Sat, 05 May 2018 13:31:20 GMT  
		Size: 154.6 MB (154556031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16abac704ab259ff7bac79f8aa82dc45cae282ef903099a1c696bce2f0a91ab`  
		Last Modified: Sat, 05 May 2018 13:30:33 GMT  
		Size: 272.1 KB (272067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd1ce3901267983d8151d835a86b304db54d6e291e9806992ade039fb5f8191`  
		Last Modified: Thu, 20 Dec 2018 13:01:38 GMT  
		Size: 12.2 MB (12197163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292350fde30cd003497b0882b081bed174965720a8eb7a2fbc336f34d5a5c2b9`  
		Last Modified: Thu, 20 Dec 2018 13:01:36 GMT  
		Size: 4.2 MB (4160095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-8-lein` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4b5e43bbbdd69d2d1d1bb7db973fb86a682840d6c8e33412c68fd0efaa966a2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.5 MB (244456957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a21014f7430d9cd698dbf02cbc4c41bdee068dc5283806948a3ab48d64737c6`
-	Default Command: `["lein","repl"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 16:48:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:05:47 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 17:05:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 17:05:52 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 17:05:53 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 17:05:54 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 17:05:55 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 17:11:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 02:59:08 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Sun, 30 Dec 2018 02:59:09 GMT
ENV LEIN_VERSION=2.8.3
# Sun, 30 Dec 2018 02:59:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sun, 30 Dec 2018 02:59:10 GMT
WORKDIR /tmp
# Sun, 30 Dec 2018 02:59:36 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "67b7fa41e94e621f29625cb621ac8f7ccc77dd49 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Sun, 30 Dec 2018 02:59:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 30 Dec 2018 02:59:38 GMT
ENV LEIN_ROOT=1
# Sun, 30 Dec 2018 02:59:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Sun, 30 Dec 2018 02:59:55 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3909cbce85809e95cb66a5b6e819717d1857f55a876c03fa1d9e885c2b0d9a2`  
		Last Modified: Sat, 29 Dec 2018 13:33:57 GMT  
		Size: 48.0 MB (48005935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedf4b2485f04f7796ce3a83b666ea83c2a12d4b3083903ca2f229c058c30839`  
		Last Modified: Sat, 29 Dec 2018 17:22:35 GMT  
		Size: 877.7 KB (877728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e96100bd64d92c3e42995209cd063d9b3b289f3a3e4efe4642e9b08b85587b2`  
		Last Modified: Sat, 29 Dec 2018 17:27:48 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a244fa793ad4b554313ed169a3d2e70d5dad521fd51e81d0e87359b80abaf231`  
		Last Modified: Sat, 29 Dec 2018 17:27:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25736c9efdc040c45d5f62aeab519a667ab62820d066a479c173a66516cb742f`  
		Last Modified: Sat, 29 Dec 2018 17:28:29 GMT  
		Size: 122.3 MB (122277446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3da78aac4b934f5ccaf01de9daf6faab2ae0b0ab9202a2d679aeca34e37da8f`  
		Last Modified: Sun, 30 Dec 2018 03:06:40 GMT  
		Size: 12.2 MB (12197101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204e5625bd932d7120d90b22a5baff42ac4d3ec9da7b1e8f5c5249fc5508974c`  
		Last Modified: Sun, 30 Dec 2018 03:06:39 GMT  
		Size: 4.2 MB (4160043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-8-lein` - linux; 386

```console
$ docker pull clojure@sha256:91aefc49e981d81069d10f2913e2dde7749a7b6f9a90a199549539845f270589
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.4 MB (264357835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01b3e00095f376f28e52cd0e1558555abee6c58926d11e34c52f01a394f3947c`
-	Default Command: `["lein","repl"]`

```dockerfile
# Sat, 29 Dec 2018 11:54:44 GMT
ADD file:a8ddd3477d8cfd5a18fe1d2537e62c16161f296e912e5a65a7bde0331af35639 in / 
# Sat, 29 Dec 2018 11:54:45 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:01:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 13:01:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 20:49:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 20:53:34 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 20:53:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 20:53:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 20:53:35 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 20:53:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 20:53:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 20:54:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 06:46:02 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Sun, 30 Dec 2018 06:46:02 GMT
ENV LEIN_VERSION=2.8.3
# Sun, 30 Dec 2018 06:46:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sun, 30 Dec 2018 06:46:02 GMT
WORKDIR /tmp
# Sun, 30 Dec 2018 06:46:13 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "67b7fa41e94e621f29625cb621ac8f7ccc77dd49 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Sun, 30 Dec 2018 06:46:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 30 Dec 2018 06:46:14 GMT
ENV LEIN_ROOT=1
# Sun, 30 Dec 2018 06:46:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Sun, 30 Dec 2018 06:46:20 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:df99e535d2dfef98a9b50153edf9ab40b4355b1e30018358c90bb2ac742ea9c5`  
		Last Modified: Sat, 29 Dec 2018 12:10:19 GMT  
		Size: 46.1 MB (46057290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85ebddf711af5a5d00c3ec70830e1b0e199d81dcfa089912a1a93e7d75c7b91`  
		Last Modified: Sat, 29 Dec 2018 13:28:20 GMT  
		Size: 10.8 MB (10799001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0903d64cc922323fd00f382d7845c5313498fa2eaaa23e5b0508f38f2b4a4a76`  
		Last Modified: Sat, 29 Dec 2018 13:28:17 GMT  
		Size: 4.6 MB (4560876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b2ba2c27428f2220acf820364de7c867d7c3a1f30bda626a606427618c2840`  
		Last Modified: Sat, 29 Dec 2018 13:28:54 GMT  
		Size: 51.6 MB (51593679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c448f002468cb76456c9be7a70b27bc36eea0d7ddad039e9b4a602fee560d5a`  
		Last Modified: Sat, 29 Dec 2018 21:19:20 GMT  
		Size: 900.0 KB (899987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61daff4277b3655c31b2fc51fd9f9b7d94a6fd6e15b4b3bde19814f490465f8`  
		Last Modified: Sat, 29 Dec 2018 21:22:20 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0a126163b9d67dd7f633eb4a0bf8d42d2629c05d89491716335cbe0206be02`  
		Last Modified: Sat, 29 Dec 2018 21:22:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e336a3afa01ed1a5a8450770d3b0aa435c0e14dc87561f2729a0ce1830f31e`  
		Last Modified: Sat, 29 Dec 2018 21:22:55 GMT  
		Size: 134.1 MB (134089449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24ea6a9310920fb8ddf13c8842ad75610f2d217588c477dbd82092947d2df08`  
		Last Modified: Sun, 30 Dec 2018 06:49:25 GMT  
		Size: 12.2 MB (12197118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0031e4010164a607464ca263a2177f75b2936a6f8d19ce20f58efad118a353b7`  
		Last Modified: Sun, 30 Dec 2018 06:49:24 GMT  
		Size: 4.2 MB (4160056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-8-lein` - linux; ppc64le

```console
$ docker pull clojure@sha256:94e0647f16fd665b61e8a11f611a3e98fe2a9e3a0e3b38b63c96736d7db54c22
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.3 MB (251320923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90e60203197ab6401045f221894f39e4d64ebb80b7cacf7cc00452d531cec547`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 23 Jan 2019 09:26:55 GMT
ADD file:607fec07098dd44504d39967b200ef4c80d3c31eb3524c99a522d779f8a48785 in / 
# Wed, 23 Jan 2019 09:26:58 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:01:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:02:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 11:04:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:14:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:27:20 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:27:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:27:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 12:27:39 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 12:27:42 GMT
ENV JAVA_VERSION=8u181
# Wed, 23 Jan 2019 12:27:44 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 23 Jan 2019 12:30:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 18:28:29 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Wed, 23 Jan 2019 18:28:33 GMT
ENV LEIN_VERSION=2.8.3
# Wed, 23 Jan 2019 18:28:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 23 Jan 2019 18:28:37 GMT
WORKDIR /tmp
# Wed, 23 Jan 2019 18:28:48 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "67b7fa41e94e621f29625cb621ac8f7ccc77dd49 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 23 Jan 2019 18:28:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 23 Jan 2019 18:28:57 GMT
ENV LEIN_ROOT=1
# Wed, 23 Jan 2019 18:29:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Wed, 23 Jan 2019 18:29:13 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:ce16bf3279cca6ab2d1b46a272b57d4c1e11cbe13e3a52148fceb9cc07eb0b37`  
		Last Modified: Wed, 23 Jan 2019 09:33:00 GMT  
		Size: 45.6 MB (45616894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b9074895469b770a2456cb2377047c95c405f79e3b04ceca45935caf814e40`  
		Last Modified: Wed, 23 Jan 2019 11:48:50 GMT  
		Size: 10.0 MB (9986574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc9d854b31c2198e3a6cc80e64e62531a2e63cf2b43ff8b40f03224abe9ee36`  
		Last Modified: Wed, 23 Jan 2019 11:48:48 GMT  
		Size: 4.3 MB (4295774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48ba7f7793013080ce168066b3989515bc218c081a99c9626e919fab4089b85`  
		Last Modified: Wed, 23 Jan 2019 11:49:34 GMT  
		Size: 50.1 MB (50065120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6531482d2ad7e5231b5486c26ef61212d3a395ee72ba0a526c33e3c5597b10f6`  
		Last Modified: Wed, 23 Jan 2019 12:41:06 GMT  
		Size: 886.1 KB (886101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa666852bf1b60821b2c16f136e41153cbd238c59da4e1060652cd0143d8798`  
		Last Modified: Wed, 23 Jan 2019 12:46:23 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88296da8aa5c76352f60edb5ea523443361478ce1c3dab4173d9b6d3eeb224d8`  
		Last Modified: Wed, 23 Jan 2019 12:46:23 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15331ed705cf4a6c6008b83d5c57f7b01ef018f14f7a101a830b71d9a1e4d3a7`  
		Last Modified: Wed, 23 Jan 2019 12:47:06 GMT  
		Size: 124.1 MB (124112878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73388766344093ed46e3085a68610c05358f8b3878b4d2adf3a8a51faaf6764`  
		Last Modified: Wed, 23 Jan 2019 18:37:22 GMT  
		Size: 12.2 MB (12197160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f33084aaa1e39901dc2e51a6d5065f0ecf10b69701714c18e286a7520b3c02`  
		Last Modified: Wed, 23 Jan 2019 18:37:22 GMT  
		Size: 4.2 MB (4160043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-8-lein` - linux; s390x

```console
$ docker pull clojure@sha256:2886f98bfdb194cd372dd80f0149e80e0c5aa022dac00671d1a11f09f68313f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.4 MB (251385052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e7a643b32e9a0dd0fa40fa6f0cf57127e2aa396a603d7cbfea4763464f55ff`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:08 GMT
ADD file:5e4330c56c117138f24d32dcf0203d5180ce1e87ab43fd7f0523579c1dbc18ab in / 
# Wed, 23 Jan 2019 12:44:09 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:17:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:50:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:55:29 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:55:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 13:55:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 13:55:31 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 13:55:32 GMT
ENV JAVA_VERSION=8u181
# Wed, 23 Jan 2019 13:55:32 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 23 Jan 2019 13:56:18 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 18:51:53 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Wed, 23 Jan 2019 18:51:53 GMT
ENV LEIN_VERSION=2.8.3
# Wed, 23 Jan 2019 18:51:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 23 Jan 2019 18:51:53 GMT
WORKDIR /tmp
# Wed, 23 Jan 2019 18:52:06 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "67b7fa41e94e621f29625cb621ac8f7ccc77dd49 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 23 Jan 2019 18:52:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 23 Jan 2019 18:52:07 GMT
ENV LEIN_ROOT=1
# Wed, 23 Jan 2019 18:52:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Wed, 23 Jan 2019 18:52:34 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:722537c8945eeebf26115a6c640dee5654f86f4895040cc1bd0657fb4e130bed`  
		Last Modified: Wed, 23 Jan 2019 12:48:36 GMT  
		Size: 45.2 MB (45214806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4057c49d3c3629a7440330e6cef148d76b54a9dc31241519def2f6eb4253481d`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 10.3 MB (10312971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc291abeeae11d57015537fa94de7423586d044d3cc37d0f696d70e180ed5611`  
		Last Modified: Wed, 23 Jan 2019 13:26:54 GMT  
		Size: 4.4 MB (4371954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891e0752c1c63f9881959463a49cfea0b9c5348681fda14b6012e3bbd42f805`  
		Last Modified: Wed, 23 Jan 2019 13:27:10 GMT  
		Size: 50.5 MB (50487713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef596c6500325023a76500563ae9a7af41e76ce0d8774380df0c9577ca349364`  
		Last Modified: Wed, 23 Jan 2019 13:58:59 GMT  
		Size: 903.4 KB (903426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c92a557584c1a0bb252f78c23b08fb6e045433a6e3e427ef9af5a6259044c5f`  
		Last Modified: Wed, 23 Jan 2019 14:01:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ef260e7bfe077dfe2300c0ee69213a7cee2d0c62ac749ead920f01dc62f53c`  
		Last Modified: Wed, 23 Jan 2019 14:01:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64090290f65610d74f32e0ccc5e3a4652f9c556e544127724ce52e346b081799`  
		Last Modified: Wed, 23 Jan 2019 14:01:44 GMT  
		Size: 123.7 MB (123736643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c91f7e9e49b2624efef4166b02bb5e5253d9f26cc3f89a008bb03ca63fbdbb`  
		Last Modified: Wed, 23 Jan 2019 18:59:28 GMT  
		Size: 12.2 MB (12197113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c58a19829e39898648905acd866cf7c2e28fdd883e660e0b9a69ca127f2d08`  
		Last Modified: Wed, 23 Jan 2019 18:59:27 GMT  
		Size: 4.2 MB (4160047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

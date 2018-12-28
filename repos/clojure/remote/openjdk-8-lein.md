## `clojure:openjdk-8-lein`

```console
$ docker pull clojure@sha256:7f8d1eee76e449e0a5b8cd8317de5e30220b36356decbcb2873970798b315b6a
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
$ docker pull clojure@sha256:09eb0d1306b2060a287f6285e7265f84193e6479e3a1fba976246f8b48e98517
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.7 MB (261689943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4dd1284032a2b1c777bc3eccd64f4582e0ce4fa7ed3f658229d99c86bfe985d`
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
# Fri, 16 Nov 2018 14:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:57:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 14:57:56 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 08:33:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 09:49:27 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Wed, 26 Dec 2018 09:49:27 GMT
ENV LEIN_VERSION=2.8.3
# Wed, 26 Dec 2018 09:49:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 26 Dec 2018 09:49:28 GMT
WORKDIR /tmp
# Wed, 26 Dec 2018 09:49:35 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "67b7fa41e94e621f29625cb621ac8f7ccc77dd49 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 26 Dec 2018 09:49:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 26 Dec 2018 09:49:36 GMT
ENV LEIN_ROOT=1
# Wed, 26 Dec 2018 09:49:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Wed, 26 Dec 2018 09:49:40 GMT
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
	-	`sha256:203f1094a1e2165da6f6ec505e8cffb8853d3c72a8088f41c25218121f883b0a`  
		Last Modified: Fri, 16 Nov 2018 15:56:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38d9f85cf610794355dc0458445408ded4d648cbc45984cd259611a8a72cc3`  
		Last Modified: Fri, 16 Nov 2018 15:56:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdd07b685f5edae77834586ddb9e56b434f4fe4e5b17ed164656595e34e8fbf`  
		Last Modified: Wed, 26 Dec 2018 08:40:22 GMT  
		Size: 134.0 MB (133976353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be15c13cd7d953970d6a0eca91f68f1fe9dabad4c7120516bc047e3ff4541ed`  
		Last Modified: Wed, 26 Dec 2018 09:53:21 GMT  
		Size: 12.2 MB (12197119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a8faf6ae9701244b10c2262082124b0a02fa55a46670e6d5e67b4e6e834d31`  
		Last Modified: Wed, 26 Dec 2018 09:53:20 GMT  
		Size: 4.2 MB (4159972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-8-lein` - linux; arm variant v5

```console
$ docker pull clojure@sha256:30c5c183a877154cbacdda6f912df7ea6ec5bfe03cd9244eb80725e0b3cd3b03
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.9 MB (244879182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:443490d54c4e3f28ad9b0ece9fc1778b57b0cfe4d79a3a0b166c4e0480cf9257`
-	Default Command: `["lein","repl"]`

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
# Wed, 21 Nov 2018 10:23:10 GMT
ENV LANG=C.UTF-8
# Wed, 21 Nov 2018 10:23:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 21 Nov 2018 10:23:13 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 21 Nov 2018 10:23:16 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 21 Nov 2018 10:23:17 GMT
ENV JAVA_VERSION=8u181
# Wed, 21 Nov 2018 10:23:17 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 09:58:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 11:12:35 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Wed, 26 Dec 2018 11:12:35 GMT
ENV LEIN_VERSION=2.8.3
# Wed, 26 Dec 2018 11:12:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 26 Dec 2018 11:12:36 GMT
WORKDIR /tmp
# Wed, 26 Dec 2018 11:12:45 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "67b7fa41e94e621f29625cb621ac8f7ccc77dd49 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 26 Dec 2018 11:12:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 26 Dec 2018 11:12:46 GMT
ENV LEIN_ROOT=1
# Wed, 26 Dec 2018 11:13:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Wed, 26 Dec 2018 11:13:30 GMT
CMD ["lein" "repl"]
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
	-	`sha256:1cba9d75675ef715d2cb312d635a26a24c09e0c5c5f105b8cb952e041811fc58`  
		Last Modified: Wed, 21 Nov 2018 10:33:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12db7e87dcb35e731ccd3d4d9779710d0ffee5b331f39ba13e1959ca80fbd8d5`  
		Last Modified: Wed, 21 Nov 2018 10:33:56 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a389ae7e6b3a9c6366feb10cecac847ced9ff22936a96c1e930819841f49a53`  
		Last Modified: Wed, 26 Dec 2018 10:06:59 GMT  
		Size: 121.4 MB (121363726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a5a611e01c3d2bb4a32b03076f0a0199be8215399c3f337a751455fa76fbe1`  
		Last Modified: Wed, 26 Dec 2018 11:22:21 GMT  
		Size: 12.2 MB (12197172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd03a8cf72c62965d17f3d53947e15b1e5286199f95e5886f353a67ba0fdd840`  
		Last Modified: Wed, 26 Dec 2018 11:22:20 GMT  
		Size: 4.2 MB (4160121 bytes)  
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
$ docker pull clojure@sha256:28ef0bc7ffdc494ff3a9e7cebd8aa1f692f0b2bd7e7ecaeb89ee51f869cd7594
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.4 MB (244417494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8dd18c33e23e773a9ab7adef4a17c4c3042e007fd9c4a36498430f34ad641d`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 02:33:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:55:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:55:01 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:55:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 04:55:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 04:55:07 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 04:55:08 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 04:55:09 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 10:11:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 11:49:54 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Wed, 26 Dec 2018 11:49:55 GMT
ENV LEIN_VERSION=2.8.3
# Wed, 26 Dec 2018 11:49:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 26 Dec 2018 11:49:56 GMT
WORKDIR /tmp
# Wed, 26 Dec 2018 11:50:06 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "67b7fa41e94e621f29625cb621ac8f7ccc77dd49 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 26 Dec 2018 11:50:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 26 Dec 2018 11:50:08 GMT
ENV LEIN_ROOT=1
# Wed, 26 Dec 2018 11:50:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Wed, 26 Dec 2018 11:50:20 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbf6d1a95604486762f28db0d78dc2d0ee4ce93752f9f63500a2a5a1ccccbad`  
		Last Modified: Sat, 17 Nov 2018 02:51:58 GMT  
		Size: 48.0 MB (48005019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaeab0ecba831abe35f50cb9dee5b4bd68274cf8ad778ca18d425026705ac509`  
		Last Modified: Sat, 17 Nov 2018 05:46:27 GMT  
		Size: 877.6 KB (877593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876730cf1334a2cb7ffe4ceeae8358b70bb126b397ba016f85a82a1cf572ce74`  
		Last Modified: Sat, 17 Nov 2018 05:46:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2dcc6ac60eed4ff55f4d3058d913a9af223a27175aff2fb734f7ba0123d28e`  
		Last Modified: Sat, 17 Nov 2018 05:46:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402dd9c6070416da0c7972812e346a679f2ca42c72d56df98ff8996fa2f75e25`  
		Last Modified: Wed, 26 Dec 2018 10:28:20 GMT  
		Size: 122.3 MB (122277224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b598b1baa8f32cbab324630c121f628fd26da3cd933a5852c4c659af3d27398`  
		Last Modified: Wed, 26 Dec 2018 11:55:30 GMT  
		Size: 12.2 MB (12197132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15018dd14ba1f6cd03df713abe738d5ef8ea415523d38ede0b979f7a80b2a508`  
		Last Modified: Wed, 26 Dec 2018 11:55:28 GMT  
		Size: 4.2 MB (4160059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-8-lein` - linux; 386

```console
$ docker pull clojure@sha256:4de42736eb79e016adca85c3faef953a5bd6de342b45d5107081cbba3e631cc0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.3 MB (264307482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41233d19444329ee514544ac8163cb72599c793d7961f5cf70db0b536669d378`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 16 Nov 2018 12:35:55 GMT
ADD file:c271ec83947c149630f5083b19b12f1c2abee7cfee16687b496b762e2c03bd2f in / 
# Fri, 16 Nov 2018 12:35:56 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:24:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:24:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 11:25:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 14:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 14:00:58 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 14:00:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 14:01:00 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 14:01:01 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 14:01:01 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 14:01:01 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 12:13:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 14:36:16 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Wed, 26 Dec 2018 14:36:16 GMT
ENV LEIN_VERSION=2.8.3
# Wed, 26 Dec 2018 14:36:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 26 Dec 2018 14:36:16 GMT
WORKDIR /tmp
# Wed, 26 Dec 2018 14:36:26 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "67b7fa41e94e621f29625cb621ac8f7ccc77dd49 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 26 Dec 2018 14:36:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 26 Dec 2018 14:36:26 GMT
ENV LEIN_ROOT=1
# Wed, 26 Dec 2018 14:36:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Wed, 26 Dec 2018 14:36:31 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:174e14c2b2eaca3f23e43c1a71df56b345b1e5fd0a6f56dbdc2b7863bf521334`  
		Last Modified: Thu, 15 Nov 2018 01:55:15 GMT  
		Size: 46.1 MB (46055316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2282c1c83958740b6ecb7716fae7f829e59a91879ae6162d89e2792727ca2219`  
		Last Modified: Sat, 17 Nov 2018 11:50:04 GMT  
		Size: 10.8 MB (10752903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa7429c42215a24876206386666a9e7f5a3df20fcb1970274131f340987dc8`  
		Last Modified: Sat, 17 Nov 2018 11:50:00 GMT  
		Size: 4.6 MB (4560895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b022fb011c070a8b22c597aaf2aad4cfca3be7d2eefd830882555c79eae81d04`  
		Last Modified: Sat, 17 Nov 2018 11:51:42 GMT  
		Size: 51.6 MB (51591370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039b5b2bccea4dc7559f4d7b5d0544bff21827a7e832f096f0b601bd8b533986`  
		Last Modified: Sat, 17 Nov 2018 14:47:04 GMT  
		Size: 900.0 KB (900047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a2c2bfc99cdd99c45256a594624d53acd213ea498433cf7c23a481a0feadb5`  
		Last Modified: Sat, 17 Nov 2018 14:47:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3824eb9924abfefee33e1266319a69ffac6bbb676cc6950b976610f47406fe22`  
		Last Modified: Sat, 17 Nov 2018 14:47:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f23439f36160553ee3842b81ebdcbdddac180842067bcaee6ecbddce866039`  
		Last Modified: Wed, 26 Dec 2018 12:19:26 GMT  
		Size: 134.1 MB (134089418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb0fc7b54e81d33dee61936f10f1cf314003e23f59610c98cfae75e25cad05c8`  
		Last Modified: Wed, 26 Dec 2018 14:38:38 GMT  
		Size: 12.2 MB (12197138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b65fd1a113c3c5f63e009c09a429e480b44e82810d732f1c63651c9c5e28cab`  
		Last Modified: Wed, 26 Dec 2018 14:38:37 GMT  
		Size: 4.2 MB (4160017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-8-lein` - linux; ppc64le

```console
$ docker pull clojure@sha256:1f1f7942e8797827e82c91b4c94b76b66153778455f9ffa0af89f3abfc520ccc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.3 MB (251273349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0477acf53950c3d20de2b39bbaa1b46f15693310b095b5960896a653672e92b9`
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
# Fri, 16 Nov 2018 22:07:06 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 22:07:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 22:07:12 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 22:07:13 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 22:07:15 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 22:07:17 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 09:56:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 11:00:01 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Wed, 26 Dec 2018 11:00:04 GMT
ENV LEIN_VERSION=2.8.3
# Wed, 26 Dec 2018 11:00:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 26 Dec 2018 11:00:09 GMT
WORKDIR /tmp
# Wed, 26 Dec 2018 11:00:22 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "67b7fa41e94e621f29625cb621ac8f7ccc77dd49 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 26 Dec 2018 11:00:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 26 Dec 2018 11:00:29 GMT
ENV LEIN_ROOT=1
# Wed, 26 Dec 2018 11:00:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Wed, 26 Dec 2018 11:00:48 GMT
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
	-	`sha256:0c508dc59cd1fa7d4ce5d137025c6418ecb48295c3bdc1962ecc312e5c3d8b24`  
		Last Modified: Fri, 16 Nov 2018 22:47:25 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec055d409bf54d544bc86c293fb21507b0144a3c9d86a7e89e0e1454bb39ab4`  
		Last Modified: Fri, 16 Nov 2018 22:47:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ee810651e553a7e50413e722e64bcea3d97996a5d41da43734c78f3e64cb57`  
		Last Modified: Wed, 26 Dec 2018 10:11:19 GMT  
		Size: 124.1 MB (124113078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2e3ba763f33b85b3f59055a88319dd35360f2032c108febccdbfe38296bd13`  
		Last Modified: Wed, 26 Dec 2018 11:07:45 GMT  
		Size: 12.2 MB (12197147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0189d800495d35efc8776f3d3520dc399310ee7acda8ee1f770959bb0ed4505`  
		Last Modified: Wed, 26 Dec 2018 11:07:45 GMT  
		Size: 4.2 MB (4160098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-8-lein` - linux; s390x

```console
$ docker pull clojure@sha256:e256b4a5e7af1f3f34ce22dfce808aaa9c279e4bd361f392559fcb9e5c258435
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.3 MB (251327013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951d268ad9f739ca5811bec915bf2c534c7f52edbd34618d93945c1f31712593`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:17:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:17:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 20:18:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:52:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:52:24 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 20:52:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 20:52:26 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 20:52:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 20:52:26 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 20:52:27 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 12:53:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 13:45:08 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Wed, 26 Dec 2018 13:45:08 GMT
ENV LEIN_VERSION=2.8.3
# Wed, 26 Dec 2018 13:45:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 26 Dec 2018 13:45:08 GMT
WORKDIR /tmp
# Fri, 28 Dec 2018 13:29:31 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "67b7fa41e94e621f29625cb621ac8f7ccc77dd49 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Fri, 28 Dec 2018 13:29:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 28 Dec 2018 13:29:32 GMT
ENV LEIN_ROOT=1
# Fri, 28 Dec 2018 13:29:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Fri, 28 Dec 2018 13:29:53 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203080e34787e21c4c72a0bf78364320cb3fbabf324e473daeab90f86995aa97`  
		Last Modified: Fri, 16 Nov 2018 20:23:29 GMT  
		Size: 10.3 MB (10267982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afc14212b1fc39cd1e0f3502f09aa3d06c2e21dbb46e96108bbdf3a4f43625e`  
		Last Modified: Fri, 16 Nov 2018 20:23:28 GMT  
		Size: 4.4 MB (4371951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb1ee8d768a3204c0d5c5b95862c29567826a0cd7348e6de56fe45fa2327274`  
		Last Modified: Fri, 16 Nov 2018 20:23:53 GMT  
		Size: 50.5 MB (50484086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb954acf51977315440c17e18ae722a8a64f600fe35169a6f0ae52c0d86c25dd`  
		Last Modified: Fri, 16 Nov 2018 21:09:21 GMT  
		Size: 903.5 KB (903456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869a822ec818af6a49aa251f803f6491c18ab21015c5ccff12f39b174979a529`  
		Last Modified: Fri, 16 Nov 2018 21:09:20 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ab072ec9ad1f77e8f04e4cf9ac6efe0e69eff5cf2428ccd9cc61e74087bd8e`  
		Last Modified: Fri, 16 Nov 2018 21:09:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2171e04a0e81a67564aa013b0949db86cba231f92d74d7fb4bc31af9682e7a`  
		Last Modified: Wed, 26 Dec 2018 12:58:19 GMT  
		Size: 123.7 MB (123737161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ac63e0688314d77654057986c0a096e0f1b72fbcfaa36f81a8b4dfab5a9c47`  
		Last Modified: Fri, 28 Dec 2018 13:31:39 GMT  
		Size: 12.2 MB (12197141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c29140e8ca0a8a84be630e93d6114af4f903c9661585a7fc6c5c49da763fa2`  
		Last Modified: Fri, 28 Dec 2018 13:31:39 GMT  
		Size: 4.2 MB (4160037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

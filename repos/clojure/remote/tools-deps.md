## `clojure:tools-deps`

```console
$ docker pull clojure@sha256:68c5652330898e3b3c9ece686bb588320724d4c132239a6092886cc38c376863
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

### `clojure:tools-deps` - linux; amd64

```console
$ docker pull clojure@sha256:02b24ddcbb26a596ae291ebe945b70e55521b99f064604a454da03b8f1b96930
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.3 MB (282280877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4696c454fd20dd2fedf3a742d9d0e55ff93373762eb66fd99d1f14356ea4a2cb`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

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
# Tue, 05 Mar 2019 04:03:23 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:03:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:04:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 13:11:32 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Tue, 05 Mar 2019 13:11:32 GMT
ENV CLOJURE_VERSION=1.10.0.414
# Tue, 05 Mar 2019 13:11:33 GMT
WORKDIR /tmp
# Tue, 05 Mar 2019 13:11:43 GMT
RUN apt-get update && apt-get install -y rlwrap
# Tue, 05 Mar 2019 13:11:46 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 05 Mar 2019 13:12:04 GMT
RUN clojure -e "(clojure-version)"
# Tue, 05 Mar 2019 13:12:04 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:b535486c968ffbdf9f264ff4427502d75b637cea6a5b375ae4e8e63550621176`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e976e6210c617c81b0b232554325eb2bda0385c3c10ffbf5f8f6d031deec4f`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c11b10291d2a6a1af223d1892b22a25c11cd950117d699980479f8d061d56a`  
		Last Modified: Tue, 05 Mar 2019 04:26:59 GMT  
		Size: 134.0 MB (133975305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5898d37c919830a4385bd38320670377e8ef8a692dc71ead0919595bc3fb9e02`  
		Last Modified: Tue, 05 Mar 2019 13:15:01 GMT  
		Size: 13.0 MB (13017696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc258f5ae78d1301db5b9736358cdb8f57fdec6e267317b6f88189b7ef9322b`  
		Last Modified: Tue, 05 Mar 2019 13:15:01 GMT  
		Size: 19.8 MB (19762073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942c9c53dbe1eb225f272409f56fca332a34c49c917134fdab6c9a1bd0426bea`  
		Last Modified: Tue, 05 Mar 2019 13:14:59 GMT  
		Size: 4.1 MB (4102754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps` - linux; arm variant v5

```console
$ docker pull clojure@sha256:26d741b18373142380dbc82fb5686b7d3306ffd50f933e48c9023eeb77f69cc7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265571744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b2f0ff6ccc3484d8072b83edc6bad93f9dcbaac825ca3e00e968c3729cc5e2f`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

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
# Tue, 05 Mar 2019 11:21:19 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 11:21:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 11:21:22 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 11:21:22 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 11:21:22 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 11:21:23 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 11:22:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 16:26:07 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Tue, 05 Mar 2019 16:26:08 GMT
ENV CLOJURE_VERSION=1.10.0.414
# Tue, 05 Mar 2019 16:26:09 GMT
WORKDIR /tmp
# Tue, 05 Mar 2019 16:26:22 GMT
RUN apt-get update && apt-get install -y rlwrap
# Tue, 05 Mar 2019 16:26:27 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 05 Mar 2019 16:27:31 GMT
RUN clojure -e "(clojure-version)"
# Tue, 05 Mar 2019 16:27:31 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:2e2653eea924a1c1c8a08df8c04486d55666af51d8e3191b579028a4eb250b1e`  
		Last Modified: Tue, 05 Mar 2019 11:40:36 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afe22629459718dd29fb3d2526fb978a3a3cc8e896cb79c8c23c6fd1ce412f6`  
		Last Modified: Tue, 05 Mar 2019 11:40:36 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc281e13065bc4592801ef1404a74c5f416ba6ce59946a559d72a4c524e5a52b`  
		Last Modified: Tue, 05 Mar 2019 11:41:22 GMT  
		Size: 121.4 MB (121368190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab08af013d5087859bd66eb9d7165e5859801f85d6c6e4cfccd76679eb94ab2`  
		Last Modified: Tue, 05 Mar 2019 16:35:30 GMT  
		Size: 13.1 MB (13131677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d7d665005e2f0ebc86b58a01ac1970d5269a4792f22da1acecaab49bc15e5a`  
		Last Modified: Tue, 05 Mar 2019 16:35:31 GMT  
		Size: 19.8 MB (19762134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49066b5c2393f1d7a759864736c201fc85b74281efc75e808a0a52340db806d1`  
		Last Modified: Tue, 05 Mar 2019 16:35:29 GMT  
		Size: 4.1 MB (4102802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps` - linux; arm variant v7

```console
$ docker pull clojure@sha256:6833c11fed9f9f6441bca9775911acf6e8e6fa327e22072c7d57796f430fce71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259612161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a39db74076bbefe01a391bb5af2b286dc16b417eb72d437060264ae03c055c68`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Tue, 05 Mar 2019 13:10:34 GMT
ADD file:8f0ec0cbcef5902fe5ef35892898a19e6c61f5c422ac3d47500d42067ad7fef8 in / 
# Tue, 05 Mar 2019 13:10:35 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:50:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:50:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 13:51:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:22:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:24:47 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 14:24:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 14:24:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 14:24:51 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 14:24:51 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 14:24:52 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 14:26:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 17:46:50 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Tue, 05 Mar 2019 17:46:51 GMT
ENV CLOJURE_VERSION=1.10.0.414
# Tue, 05 Mar 2019 17:46:52 GMT
WORKDIR /tmp
# Tue, 05 Mar 2019 17:47:03 GMT
RUN apt-get update && apt-get install -y rlwrap
# Tue, 05 Mar 2019 17:47:07 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 05 Mar 2019 17:47:16 GMT
RUN clojure -e "(clojure-version)"
# Tue, 05 Mar 2019 17:47:17 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:ec43a77fdcf3d8df75738e0d3bec016f01ad00db637d5e43eee90aa67114e127`  
		Last Modified: Tue, 05 Mar 2019 13:18:22 GMT  
		Size: 42.1 MB (42075119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0128678cc4b40c9bb1ec7b0fa116a9208fd54d9337636244f099bbfedc9ca0`  
		Last Modified: Tue, 05 Mar 2019 14:02:58 GMT  
		Size: 9.5 MB (9483576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b2e6712f412bb77d3968e5923bc8e9a94c1e8cdf8885e330ba02209eb30333`  
		Last Modified: Tue, 05 Mar 2019 14:02:56 GMT  
		Size: 3.9 MB (3918633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf45915d948e0432094f336547edb2d36192b5d75faa9ed87557c6376defbd5`  
		Last Modified: Tue, 05 Mar 2019 14:03:21 GMT  
		Size: 46.4 MB (46388461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16427dc6d63940e85dc87bafb75891c2f2f291e7eaba249e42eaa95a6ff5e125`  
		Last Modified: Tue, 05 Mar 2019 14:40:26 GMT  
		Size: 867.9 KB (867894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31389826315adf87928d4763d79433504d80257a313d388a58b9d2d2952262c`  
		Last Modified: Tue, 05 Mar 2019 14:40:25 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af266faed44d8c87642707aac441d0cc0966e72172033712c9684fed1cb5ac0`  
		Last Modified: Tue, 05 Mar 2019 14:40:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401254547fb9af20b602a5f224e30fd3c671fc94a45ca0fac706b514c6370780`  
		Last Modified: Tue, 05 Mar 2019 14:41:02 GMT  
		Size: 119.8 MB (119822235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2789144f90d24413a08e28c61ac798fc818ce868de2b1c297f4ed0c001f7fbb4`  
		Last Modified: Tue, 05 Mar 2019 17:48:13 GMT  
		Size: 13.2 MB (13190946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc77994677406e2a1ad0a4e7dd227284a994d739300ce2b2f1d5dc95a55da81`  
		Last Modified: Tue, 05 Mar 2019 17:48:14 GMT  
		Size: 19.8 MB (19762136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59999802fbc138165432716e143543664e4bab939d03ba3c72d60552f1adfbad`  
		Last Modified: Tue, 05 Mar 2019 17:48:12 GMT  
		Size: 4.1 MB (4102782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:dadbdd0d33caf4271967efb630b01ab55635ef5f481142f2f19b475baccd34de
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.7 MB (264709729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcd6e119f23974a967cbaf84ed27018b3ab2ae66ef0ee56f0d91eabd96c7500f`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

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
# Tue, 05 Mar 2019 12:19:06 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:19:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 12:19:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 12:19:13 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 12:19:14 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 12:19:14 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 12:24:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 22:03:45 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Tue, 05 Mar 2019 22:03:46 GMT
ENV CLOJURE_VERSION=1.10.0.414
# Tue, 05 Mar 2019 22:03:47 GMT
WORKDIR /tmp
# Tue, 05 Mar 2019 22:03:59 GMT
RUN apt-get update && apt-get install -y rlwrap
# Tue, 05 Mar 2019 22:04:05 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 05 Mar 2019 22:04:19 GMT
RUN clojure -e "(clojure-version)"
# Tue, 05 Mar 2019 22:04:20 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:6966a83281a055917dcad184786c9a46c10458a44048e12c19b6c68b3679de47`  
		Last Modified: Tue, 05 Mar 2019 12:37:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec721d1411ce9965c94a59bc3b9d47cdf8d1cfab86efee7b3530fc842acd42a0`  
		Last Modified: Tue, 05 Mar 2019 12:37:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbdb1a98f907f39ab775525ba3971dbe1c3c74c694fed8451108307fe903828c`  
		Last Modified: Tue, 05 Mar 2019 12:37:57 GMT  
		Size: 122.3 MB (122281116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d4a5bb0156c1fda42e1ed1c6a1ac307d46ef42df370ede48abc189e47441ca8`  
		Last Modified: Tue, 05 Mar 2019 22:09:39 GMT  
		Size: 12.7 MB (12721872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732eb04272183fb22ed4bad2789146f3cb071e272bd7f92e5fe060cefe03d317`  
		Last Modified: Tue, 05 Mar 2019 22:09:39 GMT  
		Size: 19.8 MB (19762073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca05a8c884a3ca9699cbefde371c31abc4e80a1b10a2fd831b7e38d933cc6d21`  
		Last Modified: Tue, 05 Mar 2019 22:09:36 GMT  
		Size: 4.1 MB (4102726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps` - linux; 386

```console
$ docker pull clojure@sha256:68eae5866d610f3a9f56d90c41a09ee8f17b1e0551ccb4a1fdbea6ef9dd102df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.4 MB (285353437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6068a39ac7aab6d14a6ba80df754f59cd6684e249ac5aff0a77cdd73dd91ace9`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:21 GMT
ADD file:8ba178590335bfae47e507ed2dac195379232d7a419502dbb643ed765eeda051 in / 
# Tue, 05 Mar 2019 11:45:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 21:10:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 21:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 21:10:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Mar 2019 03:18:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Mar 2019 03:21:02 GMT
ENV LANG=C.UTF-8
# Wed, 06 Mar 2019 03:21:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Mar 2019 03:21:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Mar 2019 03:21:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Mar 2019 03:21:03 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Mar 2019 03:21:04 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Mar 2019 03:21:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Mar 2019 05:19:19 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Wed, 06 Mar 2019 05:19:19 GMT
ENV CLOJURE_VERSION=1.10.0.414
# Wed, 06 Mar 2019 05:19:19 GMT
WORKDIR /tmp
# Wed, 06 Mar 2019 05:19:24 GMT
RUN apt-get update && apt-get install -y rlwrap
# Wed, 06 Mar 2019 05:19:26 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 06 Mar 2019 05:19:34 GMT
RUN clojure -e "(clojure-version)"
# Wed, 06 Mar 2019 05:19:34 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:8672e33776e7a43de892193a6f53164416d0b0a3dcbb0f96c502e1d15a4dcbff`  
		Last Modified: Tue, 05 Mar 2019 11:54:52 GMT  
		Size: 46.1 MB (46064419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b807c0af5dc527d2f1018efa95b7573661bf01032b2f5222491fe79808b0506`  
		Last Modified: Tue, 05 Mar 2019 21:17:53 GMT  
		Size: 10.8 MB (10800084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d3bd1a7499ccab64de6a026e2c5b5465baf4766b3e0141dbbed1763fa33f8a`  
		Last Modified: Tue, 05 Mar 2019 21:17:52 GMT  
		Size: 4.6 MB (4561396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89befefd1020a80fcc5169908c682dd7be07c733807097d7f1467aa4b6eff74e`  
		Last Modified: Tue, 05 Mar 2019 21:18:11 GMT  
		Size: 51.6 MB (51587984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37b6b1da5d0596a8811b46437675fbe84f39ccd722dc81dab92220a3a172f56`  
		Last Modified: Wed, 06 Mar 2019 03:36:16 GMT  
		Size: 900.0 KB (899999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a261f06993eac3ffc9a23197ec775c2733f1711dadbaa0ee20fd345f923514`  
		Last Modified: Wed, 06 Mar 2019 03:37:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6856199011160e08309ab653be135079f02b4780283d060080f126a9b7b77b3`  
		Last Modified: Wed, 06 Mar 2019 03:37:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc15cf2e4b49f63f1c2ff304d0a360a6dd96f535ba4de15f7f773642e1bd178e`  
		Last Modified: Wed, 06 Mar 2019 03:38:12 GMT  
		Size: 134.1 MB (134095155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b194e4ae1a8b60ed704bb65606f25ab5617104becd26b9864a5869ce081603f`  
		Last Modified: Wed, 06 Mar 2019 05:21:23 GMT  
		Size: 13.5 MB (13479256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c7b40152cb9a85bb1c04c725d6c50661bf5650c084c57799658e048870ac10e`  
		Last Modified: Wed, 06 Mar 2019 05:21:23 GMT  
		Size: 19.8 MB (19762056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43dcc215da93b15a07a1c0ee63edc2025a2fd5e50c2dd405285ddc352e871860`  
		Last Modified: Wed, 06 Mar 2019 05:21:22 GMT  
		Size: 4.1 MB (4102711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps` - linux; ppc64le

```console
$ docker pull clojure@sha256:7dbad8239f9220e137de32495f4faf4e1e13fe61031e7f18e7720ecfe71da99a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271528037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11fd714c1584cd24874674864e42b02ce2aa8c65ffa8241f323f3a07ef93d620`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:21 GMT
ADD file:de4412e5af6632fda966c01f23fa53ac051704c5c8c63511822bae29940abba1 in / 
# Tue, 05 Mar 2019 09:25:26 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:45:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:45:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 12:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:41:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:56:25 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 14:56:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 14:56:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 14:56:37 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 14:56:39 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 14:56:42 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 15:01:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 18:35:31 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Tue, 05 Mar 2019 18:35:33 GMT
ENV CLOJURE_VERSION=1.10.0.414
# Tue, 05 Mar 2019 18:35:34 GMT
WORKDIR /tmp
# Tue, 05 Mar 2019 18:35:48 GMT
RUN apt-get update && apt-get install -y rlwrap
# Tue, 05 Mar 2019 18:35:55 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 05 Mar 2019 18:36:10 GMT
RUN clojure -e "(clojure-version)"
# Tue, 05 Mar 2019 18:36:12 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:b88be5fa0477b5e07410a4683e7f500619df6a2b1093565ef8b6c3ab2bc8bb0b`  
		Last Modified: Tue, 05 Mar 2019 09:31:30 GMT  
		Size: 45.6 MB (45610417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a668b08e3421d576c28b789bc0e8c0f7400f465503e936df3c1b880422b75bc`  
		Last Modified: Tue, 05 Mar 2019 13:02:52 GMT  
		Size: 10.0 MB (9988971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c800b04e42ea1197a3c9f6cc00c2763789101082fa94d89c8fdab3aa65aa17`  
		Last Modified: Tue, 05 Mar 2019 13:02:47 GMT  
		Size: 4.3 MB (4296530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146c9db3e4d0377ecff59398eceb81a71320a37331c19386e5bee5dfe84ff269`  
		Last Modified: Tue, 05 Mar 2019 13:03:33 GMT  
		Size: 50.1 MB (50072894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757f822fdd8badcf581380e8aa69db25a404c30f41e45fe4a8cb54ee397fdc3d`  
		Last Modified: Tue, 05 Mar 2019 15:18:48 GMT  
		Size: 886.1 KB (886123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011bd7ea6502045252f3e82cf27cc7a588e362355d9bd95c90d1d46226f703ef`  
		Last Modified: Tue, 05 Mar 2019 15:24:08 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86959e44f6d69935d590a448d210d9032bb75a2d4d33291d2ee5eaa16d1acccd`  
		Last Modified: Tue, 05 Mar 2019 15:24:08 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375a78e47c557b0e636f909cdcb545a63b3b5500082064ea1c8b989909c53e1c`  
		Last Modified: Tue, 05 Mar 2019 15:24:59 GMT  
		Size: 124.1 MB (124110419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20efff6039c7db66a8519d473be69522596ee505560501f30488a9ab6bb615a`  
		Last Modified: Tue, 05 Mar 2019 18:41:56 GMT  
		Size: 12.7 MB (12697382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1cb90d9c6de1d953c9e0dd55a31ab78c15740bf5dcd6df55b6c7410ff0196d3`  
		Last Modified: Tue, 05 Mar 2019 18:41:57 GMT  
		Size: 19.8 MB (19762133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cff9651df8116c6bdd3f50a6e367d9b619eec5cddf8e535cb99ca9b2b107d8`  
		Last Modified: Tue, 05 Mar 2019 18:41:55 GMT  
		Size: 4.1 MB (4102788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps` - linux; s390x

```console
$ docker pull clojure@sha256:07c1911492952d879fefa035c1dbd7d6f78e52e503d3527e86b456e8772576f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270901244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf47e3a01f5517e9d07f5174fbe6bf7f5b3b31d8005fbe86707d1d7d943a113`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Tue, 05 Mar 2019 12:42:57 GMT
ADD file:8271a1ca944204307a0659ebf47e18f728c4aa651091092aee9270e619c17663 in / 
# Tue, 05 Mar 2019 12:42:58 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:35:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:35:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 13:36:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:11:50 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 15:11:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 15:11:51 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 15:11:51 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 15:11:52 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 15:11:52 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 15:12:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 18:18:19 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Tue, 05 Mar 2019 18:18:19 GMT
ENV CLOJURE_VERSION=1.10.0.414
# Tue, 05 Mar 2019 18:18:19 GMT
WORKDIR /tmp
# Tue, 05 Mar 2019 18:18:25 GMT
RUN apt-get update && apt-get install -y rlwrap
# Tue, 05 Mar 2019 18:18:27 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 05 Mar 2019 18:18:57 GMT
RUN clojure -e "(clojure-version)"
# Tue, 05 Mar 2019 18:18:57 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:39653445334dc97a660d5c33a719f16c20b0727f0918c51fc17e70343f3c2fd5`  
		Last Modified: Tue, 05 Mar 2019 12:45:28 GMT  
		Size: 45.2 MB (45199281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a786adb578f3dea96f453a6695f6d658fd487c43f0c7dd5375855f6940d82c`  
		Last Modified: Tue, 05 Mar 2019 13:40:26 GMT  
		Size: 10.3 MB (10314828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1aa16a552c6ff88adf6745752a99dd6eb610c220d6b46ab8500ca4c491c5f67`  
		Last Modified: Tue, 05 Mar 2019 13:40:25 GMT  
		Size: 4.4 MB (4372182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ae78f46068f6fa2d3f32888f67818a43b3da56f4f44d003a2adeb22dca37fe`  
		Last Modified: Tue, 05 Mar 2019 13:40:43 GMT  
		Size: 50.5 MB (50489921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c602a0c5cb72de30c413fbb1ebef66e30e01c07c27c0df5e79419c88fc44c9`  
		Last Modified: Tue, 05 Mar 2019 15:15:25 GMT  
		Size: 903.5 KB (903483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02399414c37fa20d0a251977458100d89d654dbe78b7684b7e7391ab1864a0e`  
		Last Modified: Tue, 05 Mar 2019 15:17:34 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980f4dd30ee40e14997fc04e9b316643b9281236ca630dec65239dcb9ef5d63`  
		Last Modified: Tue, 05 Mar 2019 15:17:35 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7f328f976847fc3c26bdc4782b9c07fe10de72e2617c584ba33dcce4e2d118`  
		Last Modified: Tue, 05 Mar 2019 15:17:53 GMT  
		Size: 123.7 MB (123738209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbc6b47b5f8e1a6c863424918167fcc15ddddce32abe44f67141355add7ebca`  
		Last Modified: Tue, 05 Mar 2019 18:21:21 GMT  
		Size: 12.0 MB (12018135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93b92d7fe3075120424f753bcc2b0d8aa9a2b84c5d40156a9be095a8f5f96bc`  
		Last Modified: Tue, 05 Mar 2019 18:21:21 GMT  
		Size: 19.8 MB (19762070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c56cf652e94f99ecf484ea44bea4bf6c5b6d684cdb3969ddaab3447c3873063`  
		Last Modified: Tue, 05 Mar 2019 18:21:19 GMT  
		Size: 4.1 MB (4102755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

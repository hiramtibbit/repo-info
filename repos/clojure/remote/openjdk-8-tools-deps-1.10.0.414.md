## `clojure:openjdk-8-tools-deps-1.10.0.414`

```console
$ docker pull clojure@sha256:105fa24e17f929274ec6ef17a75560e2df466cbed509b92dee46a08d57faa072
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

### `clojure:openjdk-8-tools-deps-1.10.0.414` - linux; amd64

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

### `clojure:openjdk-8-tools-deps-1.10.0.414` - linux; arm variant v5

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

### `clojure:openjdk-8-tools-deps-1.10.0.414` - linux; arm variant v7

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

### `clojure:openjdk-8-tools-deps-1.10.0.414` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8416f89767b7fe1c7a9731dd9c94e84e56d734430a51a513a3612e772bae7810
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.7 MB (264690407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a88ad72726c9c22b5ce1a70e34c43f55e5bdd06b8a04f709ba1cd49b685ae9fa`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 10:39:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 11:55:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:12:41 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:12:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:12:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 12:12:51 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 12:12:54 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 12:12:55 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 12:18:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 06:36:38 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Thu, 28 Feb 2019 09:40:36 GMT
ENV CLOJURE_VERSION=1.10.0.414
# Thu, 28 Feb 2019 09:40:36 GMT
WORKDIR /tmp
# Thu, 28 Feb 2019 09:40:51 GMT
RUN apt-get update && apt-get install -y rlwrap
# Thu, 28 Feb 2019 09:40:55 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Thu, 28 Feb 2019 09:41:09 GMT
RUN clojure -e "(clojure-version)"
# Thu, 28 Feb 2019 09:41:10 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f6528b47c72f6dd5aabc947e8db01aa470adc3fdb4bbbcf052f9c3ad6ae8e`  
		Last Modified: Wed, 06 Feb 2019 10:52:36 GMT  
		Size: 9.7 MB (9728878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b5f3607713f2dab247e619fafcffd7c9edf4aaffc9e701660a76ccf324b742`  
		Last Modified: Wed, 06 Feb 2019 10:52:28 GMT  
		Size: 4.1 MB (4093098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5001a1d2fe2f54da8dbdfca56862dd05d37d1a2aab69599bcc2a130ea4fcd7f5`  
		Last Modified: Wed, 06 Feb 2019 10:52:48 GMT  
		Size: 48.0 MB (48005411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dced00d8f10be6119c18314ca53aacc160f92164d25ad89d5485db0b2361f28b`  
		Last Modified: Wed, 06 Feb 2019 12:35:39 GMT  
		Size: 877.6 KB (877571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c380bc1c79217d7541268db82fe3fc747ab41ca5c594c97335e81d96412300c8`  
		Last Modified: Wed, 06 Feb 2019 12:40:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119bcad690221f65a017d3c04d6d2c370f262b96abb1db1d70b1da114dd01a1b`  
		Last Modified: Wed, 06 Feb 2019 12:40:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:232d0fd3810fef1eb24fe4fb182ff44e7a7697ed75265db12e1e96721799aa38`  
		Last Modified: Wed, 06 Feb 2019 12:41:38 GMT  
		Size: 122.3 MB (122278152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf14e04e9ae741288404e0409c17126cdbb7f5f0b32a1189da6a724ce7c5bac`  
		Last Modified: Thu, 28 Feb 2019 09:43:46 GMT  
		Size: 12.7 MB (12717165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce9215307e6b5c8a4fcdf82beac7d0624306c5588b11bebdd1c8fcc89a7d16f`  
		Last Modified: Thu, 28 Feb 2019 09:43:44 GMT  
		Size: 19.8 MB (19762060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6bfa2937fa5df9ae8003cb6be1376bfb7b6b580213f390bfb24b37ada1ae09`  
		Last Modified: Thu, 28 Feb 2019 09:43:41 GMT  
		Size: 4.1 MB (4102717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-8-tools-deps-1.10.0.414` - linux; 386

```console
$ docker pull clojure@sha256:0563ea186e0186fb5753c4119930dead716077f644d116a5b82b2a59a932e412
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.4 MB (285355144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b04cb825919fd689fbc9ce8a174fea081a8414de981bab700b8780e803a6fafa`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

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
# Thu, 07 Feb 2019 06:22:49 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 06:22:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 06:22:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 06:22:50 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 07 Feb 2019 06:22:51 GMT
ENV JAVA_VERSION=8u181
# Thu, 07 Feb 2019 06:22:51 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Thu, 07 Feb 2019 06:23:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 06:51:59 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Thu, 28 Feb 2019 11:38:36 GMT
ENV CLOJURE_VERSION=1.10.0.414
# Thu, 28 Feb 2019 11:38:37 GMT
WORKDIR /tmp
# Thu, 28 Feb 2019 11:38:42 GMT
RUN apt-get update && apt-get install -y rlwrap
# Thu, 28 Feb 2019 11:38:44 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Thu, 28 Feb 2019 11:38:51 GMT
RUN clojure -e "(clojure-version)"
# Thu, 28 Feb 2019 11:38:51 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:9f9c4a7701163eacf47fe82a74275b58870bbf56e8158c9562051b8d87d9be7c`  
		Last Modified: Thu, 07 Feb 2019 06:40:30 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d997ea7565d6ca639de19fdddf53f9ecc0348df5d9420cc068a4e992f33e6284`  
		Last Modified: Thu, 07 Feb 2019 06:40:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b3cea66ea80e5377c481d471ad9c8fe5d4208a27eb06a26560ff40ba048f3a`  
		Last Modified: Thu, 07 Feb 2019 06:40:56 GMT  
		Size: 134.1 MB (134090192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3dbfc77d8ed02f0c7301b786f5c05778fdfd5d9733c697aeb0b5b6a96e95f7`  
		Last Modified: Thu, 28 Feb 2019 11:39:49 GMT  
		Size: 13.5 MB (13476643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9602099fd42532f60c2955490428e42d0ecd0aaa7958c3e8764cb955092f4d29`  
		Last Modified: Thu, 28 Feb 2019 11:39:50 GMT  
		Size: 19.8 MB (19762062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66dc7f892cc26cc21d9438a7fc687e29905b7bdac9edf6df64dce26c9aa9d01b`  
		Last Modified: Thu, 28 Feb 2019 11:39:48 GMT  
		Size: 4.1 MB (4102719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-8-tools-deps-1.10.0.414` - linux; ppc64le

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

### `clojure:openjdk-8-tools-deps-1.10.0.414` - linux; s390x

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

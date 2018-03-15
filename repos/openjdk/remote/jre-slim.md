## `openjdk:jre-slim`

```console
$ docker pull openjdk@sha256:5c3a171b81c8c1a8fc8ff022e6d9bba7bc26112134958a056f111a015b001b85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:jre-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:1a164cf25c1f8cfe369667d9797c85f7c5d57dfa9c3dc8b15b571255893277a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79215573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c01b1ac4ced1733a15f0dc08cfb426a6afa013251b0fe0ade3871e8a4e0efc4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 11:07:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:07:04 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:07:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:07:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:07:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 14 Mar 2018 11:07:06 GMT
ENV JAVA_VERSION=8u151
# Wed, 14 Mar 2018 11:07:06 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Wed, 14 Mar 2018 11:07:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 14 Mar 2018 11:07:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 14 Mar 2018 11:07:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b826b31940917d1052a280a46c73120f9688ce9b03a4f185d80b57755e0a9d`  
		Last Modified: Wed, 14 Mar 2018 12:48:12 GMT  
		Size: 454.8 KB (454841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb043c2d1520ae17e6480642d46665aeb109f65e9fa57cd74e8d82beb3f6eb5f`  
		Last Modified: Wed, 14 Mar 2018 12:48:11 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9d9a7482db5eaf9dfdeb02742795077ba645020e34eb8d7edade6f3ad7736b`  
		Last Modified: Wed, 14 Mar 2018 12:48:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e4c44d5ebaf32aa99b539255f3ff367bc899d572d92e3d13581eb54f464c`  
		Last Modified: Wed, 14 Mar 2018 12:48:22 GMT  
		Size: 56.0 MB (55999295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc097d790b50066f7e74a2a515381ee9340942d2b877144df6ea432127b1da26`  
		Last Modified: Wed, 14 Mar 2018 12:48:11 GMT  
		Size: 272.1 KB (272079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:3ffce6c331341f7d59281d2b7cb6952e329914c069f9c867794aa6658bad2bd2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.6 MB (68611691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4910247d560a781580dc0159041c7955dd3e0c790f3502a2d0c0c59fcee47991`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:39 GMT
ADD file:c472062baa8d8c35c7642162b18516ecdc2e143d0e5c147b472312cfc532efe9 in / 
# Wed, 14 Mar 2018 20:01:40 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 22:48:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:48:27 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:48:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:48:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:48:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 14 Mar 2018 22:48:30 GMT
ENV JAVA_VERSION=8u151
# Wed, 14 Mar 2018 22:48:30 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Wed, 14 Mar 2018 22:48:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 14 Mar 2018 22:49:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 14 Mar 2018 22:49:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:8efba53ec4136476603e9856d8bb17541faa0f33abada48ac4d2d7efe61ff43f`  
		Last Modified: Wed, 14 Mar 2018 20:13:21 GMT  
		Size: 21.2 MB (21164955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1949e18a328f3c9b962c19755d8a55af0f21d21943810d7daf39862ab8bedf`  
		Last Modified: Wed, 14 Mar 2018 23:12:26 GMT  
		Size: 447.7 KB (447681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b95963c2f246890fe81e80837f0f83814d454828b59a18fb683a23a7f0eb09c`  
		Last Modified: Wed, 14 Mar 2018 23:12:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f7dc2f45c72f39e5727403aaf034f49ea08f3db29ca0556933a777d8ea0ff9d`  
		Last Modified: Wed, 14 Mar 2018 23:12:26 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96069ab4c3365044a7103b16a1c9f0916d0f53c8f779b19218ab0c520fcd65be`  
		Last Modified: Wed, 14 Mar 2018 23:12:38 GMT  
		Size: 46.7 MB (46726479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94eeed948b7ccf3ef4c161427270912d45cd6c17831a3cc894ff7147db4c6a62`  
		Last Modified: Wed, 14 Mar 2018 23:12:26 GMT  
		Size: 272.2 KB (272198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:c438ebe6962c2929d1376208c0eb0dbadb102f0cfcb2af568c19cc51cc61a458
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.2 MB (69203475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359a0c2f5b09ddcece93052deb08d9a9818ca1c51d4955c859c379ff51fcec90`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:40:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:40:14 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:40:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:40:20 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:40:21 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 14 Mar 2018 20:40:22 GMT
ENV JAVA_VERSION=8u151
# Wed, 14 Mar 2018 20:40:23 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Wed, 14 Mar 2018 20:40:24 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 14 Mar 2018 20:42:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 14 Mar 2018 20:42:42 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c2c870b6a03218fa96a1914a126961281284a49163a7dac0a01e1e541e1d87`  
		Last Modified: Wed, 14 Mar 2018 21:41:04 GMT  
		Size: 440.8 KB (440847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9452cad7dfe516b55adcda81dc66f8983610a046558f0ff3c2fbc4d640273838`  
		Last Modified: Wed, 14 Mar 2018 21:41:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd53f132dbd6ebdabddfe1a5d0db8da6317d63520610c9287202b678034df19`  
		Last Modified: Wed, 14 Mar 2018 21:41:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdcc587dc636c9af45b3485ed384b2971cc770190a9395cfdaffe87e1937b66`  
		Last Modified: Wed, 14 Mar 2018 21:41:18 GMT  
		Size: 48.2 MB (48152953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf0159d293381af77389642ad6487d24c4b793862910352b3e6ccb895c7e27b`  
		Last Modified: Wed, 14 Mar 2018 21:41:03 GMT  
		Size: 272.1 KB (272094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-slim` - linux; 386

```console
$ docker pull openjdk@sha256:6586156da43ff0f1ae4ec6a145838a0206bf7a19ac1c77e1b6a487e0e3460fc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79415948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e90245c03e8c6a5df0a3419d770281fff151c174ed373d1993eac51f4cc43c5`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:56:40 GMT
ADD file:46f3ea038ddbb2713695c8891a22675f7355211fecac25807c95590f5a5d4bfa in / 
# Thu, 15 Feb 2018 19:04:20 GMT
CMD ["bash"]
# Tue, 20 Feb 2018 18:10:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Feb 2018 18:10:10 GMT
ENV LANG=C.UTF-8
# Tue, 20 Feb 2018 18:10:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Feb 2018 18:10:12 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 20 Feb 2018 18:10:12 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Feb 2018 18:10:12 GMT
ENV JAVA_VERSION=8u151
# Tue, 20 Feb 2018 18:10:13 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Tue, 20 Feb 2018 18:10:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Feb 2018 18:10:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Feb 2018 18:10:37 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:5a3bef8a5a8dcf8e6b5914993862777a98536514aedf43f0a604d87764970d8a`  
		Last Modified: Thu, 15 Feb 2018 01:16:16 GMT  
		Size: 23.1 MB (23135027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b868361b518dcc6fb2c7859ac8e0443e6f443c7b452b68b8d9e7728ced6d547`  
		Last Modified: Tue, 20 Feb 2018 18:43:00 GMT  
		Size: 463.5 KB (463456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a27ef0695ed4aa42a3529db326cc4880f4a549da4942a731e2c37efec5138b`  
		Last Modified: Tue, 20 Feb 2018 18:42:59 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58beaf51181ff8f485479cd306573d135d85f527e884049db1b46205adc8040b`  
		Last Modified: Tue, 20 Feb 2018 18:42:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a799ddb47172277ebd7cf4a75311844e730736cab48e1f2fe575252cb7b025d4`  
		Last Modified: Tue, 20 Feb 2018 18:43:21 GMT  
		Size: 55.5 MB (55544952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afae4c673f3aba1e60c972999ea6310d27967c7ef56ad4f6e375756e2617205`  
		Last Modified: Tue, 20 Feb 2018 18:42:59 GMT  
		Size: 272.1 KB (272134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:df6dd3f15d6be996910345a658b42bd5a2cec5a99a5681a87db93560f54b49a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.1 MB (72104226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e0829b0c7aedd2254ff73c08941a9f5dd8ac02218c48f4b7973f391122af2ae`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 04:52:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:52:45 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:52:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:52:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:53:02 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Mar 2018 04:53:06 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Mar 2018 04:53:09 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Mar 2018 04:53:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Mar 2018 04:58:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Mar 2018 04:58:20 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2161f1e27455c4f326ed4a0e9f04c75ab7cf7ec817ac77d09e60f7546eba89eb`  
		Last Modified: Thu, 15 Mar 2018 06:06:39 GMT  
		Size: 449.8 KB (449810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6707568a8fbabd710d6a1bd122f68bb3fb7bf70a82f71a8166262bc6ea9041`  
		Last Modified: Thu, 15 Mar 2018 06:06:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291e9f652987d4079557622fc40bd32490a0d89f8a608d317ab0dbcdbd3557c5`  
		Last Modified: Thu, 15 Mar 2018 06:06:39 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176b0bbc4ac5a95bb7c2c8ff12cefe9feb2605a69fdaa48c7d397eeda7d63355`  
		Last Modified: Thu, 15 Mar 2018 06:06:49 GMT  
		Size: 48.6 MB (48635818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b1801f573a41fbd39858d9af85a0313d5ca0dc3a0857525af168947dd62c97`  
		Last Modified: Thu, 15 Mar 2018 06:06:39 GMT  
		Size: 272.1 KB (272075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:0cf0a9d63398a67f0e8ec50f66a82a5cd236fa67d94949ccaf1bdee5f9d2ef08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.9 MB (70925908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:214b571658992d95230638fcf19750bc32f3f9f27ed48e6e7925f1adb3a5006e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:43:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:43:19 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 06:43:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 06:43:20 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 06:43:20 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 14 Mar 2018 06:43:20 GMT
ENV JAVA_VERSION=8u151
# Wed, 14 Mar 2018 06:43:20 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Wed, 14 Mar 2018 06:43:21 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 14 Mar 2018 06:43:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 14 Mar 2018 06:43:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512c47784c512985a2f670e2a9aebfa09511f48279b95d9891a337a558a3ad3a`  
		Last Modified: Wed, 14 Mar 2018 06:57:32 GMT  
		Size: 465.7 KB (465722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc17c7b5f20c51c5f2c4f4d919514f4d98fd1056c2f72b08ab8a805bcacec06`  
		Last Modified: Wed, 14 Mar 2018 06:57:32 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7342609907d585fc4e70d60bdbe4417280ca389d6d95b71e976510cad8cecc9c`  
		Last Modified: Wed, 14 Mar 2018 06:57:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f0cb60f876cb7ec62f2ebc8b8b14fa411ccd01ea143fcdae0ef98db9150793`  
		Last Modified: Wed, 14 Mar 2018 06:57:40 GMT  
		Size: 47.8 MB (47847164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934c4b02a8c4a824b52a83bca3302d73067200edf9e3432864394932b2bb8fa7`  
		Last Modified: Wed, 14 Mar 2018 06:57:32 GMT  
		Size: 272.2 KB (272164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

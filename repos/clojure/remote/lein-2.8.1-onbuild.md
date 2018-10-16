## `clojure:lein-2.8.1-onbuild`

```console
$ docker pull clojure@sha256:387c7533a414594cdb6af72936b4adfc67f4489385c6ef0b816a637a3860cfb2
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

### `clojure:lein-2.8.1-onbuild` - linux; amd64

```console
$ docker pull clojure@sha256:dc54a0760ec5c3c9cd576d674a50ea88223aba361f5a1ec813e7a4a0cd90b282
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.7 MB (261662634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:333e8d4e48fd452b1452175210fabd8acbe2573864a57d9d01e7e1be77c547eb`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:25:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 05:25:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 05:26:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 05:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 15:32:16 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Tue, 16 Oct 2018 15:32:16 GMT
ENV LEIN_VERSION=2.8.1
# Tue, 16 Oct 2018 15:32:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 16 Oct 2018 15:32:17 GMT
WORKDIR /tmp
# Tue, 16 Oct 2018 15:32:21 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 16 Oct 2018 15:32:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 16 Oct 2018 15:32:22 GMT
ENV LEIN_ROOT=1
# Tue, 16 Oct 2018 15:32:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 16 Oct 2018 15:32:49 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Tue, 16 Oct 2018 15:32:49 GMT
WORKDIR /usr/src/app
# Tue, 16 Oct 2018 15:32:50 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 16 Oct 2018 15:32:50 GMT
ONBUILD RUN lein deps
# Tue, 16 Oct 2018 15:32:51 GMT
ONBUILD COPY . /usr/src/app
# Tue, 16 Oct 2018 15:32:51 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7ee7ef122c78bdcb4087b1245788dfee5b7d7d796b8310bc75e5d02c4c067`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 892.3 KB (892344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c0dad691e9a2190a036b437280130e383481f0e0d5e4516a0d14de690ee0eb`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a6a68b113cde265568261ba36f477c49ff982418a561fb85d9730b5aac9a3`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28351dec2f89f7318a7aa1b3941608f822580ffc822d6cd3205f26a39620dcb5`  
		Last Modified: Tue, 16 Oct 2018 05:54:51 GMT  
		Size: 134.0 MB (133992059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa52db486a37c500d18ca2f13053418efb23340bb21f4f9b5c9d7cf33d97f65`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 246.7 KB (246702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9fdcf1448edf97138d886e01bfeecb7b2986ded34686014550dd52b013200d6`  
		Last Modified: Tue, 16 Oct 2018 15:35:50 GMT  
		Size: 12.1 MB (12137637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb639e776a738c6ab4061ba64191e5f5329db7f72f512e55b8d373dcdce3f31`  
		Last Modified: Tue, 16 Oct 2018 15:35:49 GMT  
		Size: 3.9 MB (3941827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b521251084f4ab2f5e6618a3404798b17fe60823b2b32f330467fb5c749a5`  
		Last Modified: Tue, 16 Oct 2018 15:36:42 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-2.8.1-onbuild` - linux; arm variant v5

```console
$ docker pull clojure@sha256:92cf6a6b03954c780d033156334aef68fb3ea11cf5fa2a4f7a40e7891e547c9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.8 MB (244830895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b2962a040d7b70daab17356fce77ae66b9be6c3b75095d6b6c242eef60c2d1`
-	Default Command: `["lein","run"]`

```dockerfile
# Wed, 05 Sep 2018 08:54:58 GMT
ADD file:2301eb998a2cf644d62951808894ec7ace20df38ed4e82f7ab477d8a9043b67b in / 
# Wed, 05 Sep 2018 08:54:59 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:58:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:58:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:59:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:25:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:25:33 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 14:25:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 14:25:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 14:25:35 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 14:25:36 GMT
ENV JAVA_VERSION=8u181
# Wed, 05 Sep 2018 14:25:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 05 Sep 2018 14:25:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 05 Sep 2018 14:26:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 14:26:41 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 05 Sep 2018 18:21:35 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Wed, 05 Sep 2018 18:21:35 GMT
ENV LEIN_VERSION=2.8.1
# Wed, 05 Sep 2018 18:21:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Sep 2018 18:21:36 GMT
WORKDIR /tmp
# Wed, 05 Sep 2018 18:21:43 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 05 Sep 2018 18:21:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Sep 2018 18:21:43 GMT
ENV LEIN_ROOT=1
# Wed, 05 Sep 2018 18:22:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
# Wed, 05 Sep 2018 18:22:35 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Wed, 05 Sep 2018 18:22:35 GMT
WORKDIR /usr/src/app
# Wed, 05 Sep 2018 18:22:35 GMT
ONBUILD COPY project.clj /usr/src/app/
# Wed, 05 Sep 2018 18:22:36 GMT
ONBUILD RUN lein deps
# Wed, 05 Sep 2018 18:22:36 GMT
ONBUILD COPY . /usr/src/app
# Wed, 05 Sep 2018 18:22:36 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:9cb1890a5e52c7c05eedad090ff39b863a62697e36cd9b3ff608dc0f832d5687`  
		Last Modified: Wed, 05 Sep 2018 09:03:55 GMT  
		Size: 44.0 MB (44033002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe41b212ad18ceb0a81a3f52fa8c618a0bbe47fd82200767851c667ef25f51d8`  
		Last Modified: Wed, 05 Sep 2018 10:11:48 GMT  
		Size: 9.8 MB (9810215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836b37f3f7096f6d14a8f575975e8e27092177c0480bbe64d2f9afd752d48fab`  
		Last Modified: Wed, 05 Sep 2018 10:11:45 GMT  
		Size: 4.2 MB (4153723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9281c2501a2fd245093ac2f65225acfff895211ffbe23340d97114cc79d02cde`  
		Last Modified: Wed, 05 Sep 2018 10:12:24 GMT  
		Size: 48.3 MB (48264038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58efe58aa55f2eba9d32301a24e9f6a1572c4380d1c637456f37a0765bf30f80`  
		Last Modified: Wed, 05 Sep 2018 14:38:30 GMT  
		Size: 884.6 KB (884616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d521b81bc7842dc8d1a118e2eede78d1fc7585ff2ff67c83acac58a374be795`  
		Last Modified: Wed, 05 Sep 2018 14:38:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d24bd06e4395528d32439e46deeb4413c5a3d970fa714bd7fffa569154181a0`  
		Last Modified: Wed, 05 Sep 2018 14:38:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a25387ed77348d6da1a2eea6b6ab782d58bfea981677974c768c2a69f5a3b1`  
		Last Modified: Wed, 05 Sep 2018 14:39:02 GMT  
		Size: 121.4 MB (121358351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bdec3d2c52bc153be789054b81d696f1cd610846dd5ae9fe2377809fad01da0`  
		Last Modified: Wed, 05 Sep 2018 14:38:30 GMT  
		Size: 246.7 KB (246747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142324bc504b29bd1c6bee3152a113770ace68e800f06eef4fb53d2a024e9154`  
		Last Modified: Wed, 05 Sep 2018 18:28:25 GMT  
		Size: 12.1 MB (12137702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c6a9e9c863315e1a9839bf5223071ea940936ddf4fa0f6f51b1d7c68d46646`  
		Last Modified: Wed, 05 Sep 2018 18:28:22 GMT  
		Size: 3.9 MB (3941958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be63b508ab7d52126ef4ebc08cb1ea7673eb5029cbc7b42ff1b723c88ac6f86`  
		Last Modified: Wed, 05 Sep 2018 18:29:01 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-2.8.1-onbuild` - linux; arm variant v7

```console
$ docker pull clojure@sha256:368ccb8fa132dc87bc5f7b61529395a6b9b15a4b1ff24d8da341a038fde31dac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273576378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f062bd666dea61c5be589b754e1f08724f5dda27ef22572ba389f1c8bafa95a2`
-	Default Command: `["lein","run"]`

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
# Sat, 05 May 2018 15:46:42 GMT
ENV LEIN_VERSION=2.8.1
# Sat, 05 May 2018 15:46:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 05 May 2018 15:46:58 GMT
WORKDIR /tmp
# Thu, 16 Aug 2018 11:57:35 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 16 Aug 2018 11:57:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Aug 2018 11:57:42 GMT
ENV LEIN_ROOT=1
# Thu, 16 Aug 2018 11:57:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 16 Aug 2018 11:57:58 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Thu, 16 Aug 2018 11:57:59 GMT
WORKDIR /usr/src/app
# Thu, 16 Aug 2018 11:57:59 GMT
ONBUILD COPY project.clj /usr/src/app/
# Thu, 16 Aug 2018 11:57:59 GMT
ONBUILD RUN lein deps
# Thu, 16 Aug 2018 11:58:00 GMT
ONBUILD COPY . /usr/src/app
# Thu, 16 Aug 2018 11:58:00 GMT
CMD ["lein" "run"]
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
	-	`sha256:d7c861674b045b2af5f075753fde6bbef58a48f9026102dd4a8894377591b540`  
		Last Modified: Thu, 16 Aug 2018 11:58:46 GMT  
		Size: 12.1 MB (12137702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997f3c99e53ac31080c4ee3cefcca1c78754b650a5a1bad0cc8c08f5ead4eeca`  
		Last Modified: Thu, 16 Aug 2018 11:58:45 GMT  
		Size: 3.9 MB (3941912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9236285c196c04085551728940bda24f38afa84107fb833283173a5ba3623a0b`  
		Last Modified: Thu, 16 Aug 2018 11:59:03 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-2.8.1-onbuild` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c213f3f72fda08766d679752b170d2bbd780936ee5eec518d3dbea81a666b74b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.4 MB (244386734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b63da55092d002aac9d8cd3bf848defafef9702a7263604d621797969d8f335`
-	Default Command: `["lein","run"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:04:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:24:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:24:42 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:24:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 13:24:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 13:24:47 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 13:24:48 GMT
ENV JAVA_VERSION=8u181
# Wed, 05 Sep 2018 13:24:48 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 05 Sep 2018 13:24:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 05 Sep 2018 13:30:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 13:30:30 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 06 Sep 2018 02:10:16 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Thu, 06 Sep 2018 02:10:17 GMT
ENV LEIN_VERSION=2.8.1
# Thu, 06 Sep 2018 02:10:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 06 Sep 2018 02:10:20 GMT
WORKDIR /tmp
# Thu, 06 Sep 2018 02:10:32 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 06 Sep 2018 02:10:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 06 Sep 2018 02:10:34 GMT
ENV LEIN_ROOT=1
# Thu, 06 Sep 2018 02:11:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 06 Sep 2018 02:11:41 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Thu, 06 Sep 2018 02:11:42 GMT
WORKDIR /usr/src/app
# Thu, 06 Sep 2018 02:11:43 GMT
ONBUILD COPY project.clj /usr/src/app/
# Thu, 06 Sep 2018 02:11:44 GMT
ONBUILD RUN lein deps
# Thu, 06 Sep 2018 02:11:46 GMT
ONBUILD COPY . /usr/src/app
# Thu, 06 Sep 2018 02:11:47 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b9bb8999b31a6d7863b55aa60a4268cb0d6b948e0271befbdd3e6b81af462b`  
		Last Modified: Wed, 05 Sep 2018 10:27:44 GMT  
		Size: 48.0 MB (48003320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cca4ae7d448cf1f8e56c05b78aabaa3adffef72c526a4189918bcb5f2efa4a`  
		Last Modified: Wed, 05 Sep 2018 14:08:58 GMT  
		Size: 877.4 KB (877442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7eb23c793f9092e5fc5c4878687d006f3c617cc05f9acbc917bf4e8a1d34f68`  
		Last Modified: Wed, 05 Sep 2018 14:08:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ecb6c2dca67b18496d80b092ef91f57bc4e390ba4a770ebd689f78c9aead8d`  
		Last Modified: Wed, 05 Sep 2018 14:08:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c43a218e6a0281677a81db7718afb704f5439d59fbef3237b93b29605a30ae1`  
		Last Modified: Wed, 05 Sep 2018 14:09:35 GMT  
		Size: 122.3 MB (122277122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2dcb72ac00de54144f0acb05c67ca5cc059a2e8d00a6434151b50c74cb15bdd`  
		Last Modified: Wed, 05 Sep 2018 14:08:58 GMT  
		Size: 246.7 KB (246663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32c2863b1b38ec6400cfec0d765d9230471d10eb5ccdad862a1f35416557491`  
		Last Modified: Thu, 06 Sep 2018 02:19:04 GMT  
		Size: 12.1 MB (12137686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6139729e148f0bbfdf4e79250b0228ba8622324ec55d191eab2e8bc2ce52e80`  
		Last Modified: Thu, 06 Sep 2018 02:19:01 GMT  
		Size: 3.9 MB (3941909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24820fac99c7e7364eb3dca8589998f31c64ac22a6549ab4c84a700412f3c1b4`  
		Last Modified: Thu, 06 Sep 2018 02:21:03 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-2.8.1-onbuild` - linux; 386

```console
$ docker pull clojure@sha256:69a7203ef9973da2dd7a5879bd5c8e83ad7438b7d8728d119bc28a98df6e1e07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.3 MB (264250661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4feb3a0d20b04adae0c0ffd3bd0d567cdee15563881481e6755d0f168ef43d78`
-	Default Command: `["lein","run"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:39:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:56:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:56:05 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:56:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 12:56:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 12:56:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 12:56:08 GMT
ENV JAVA_VERSION=8u181
# Wed, 05 Sep 2018 12:56:08 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 05 Sep 2018 12:56:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 05 Sep 2018 12:57:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 12:57:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 07 Sep 2018 02:08:22 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Fri, 07 Sep 2018 02:08:23 GMT
ENV LEIN_VERSION=2.8.1
# Fri, 07 Sep 2018 02:08:23 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 07 Sep 2018 02:08:23 GMT
WORKDIR /tmp
# Fri, 07 Sep 2018 02:08:27 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Fri, 07 Sep 2018 02:08:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 07 Sep 2018 02:08:27 GMT
ENV LEIN_ROOT=1
# Fri, 07 Sep 2018 02:08:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
# Fri, 07 Sep 2018 02:08:36 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Fri, 07 Sep 2018 02:08:36 GMT
WORKDIR /usr/src/app
# Fri, 07 Sep 2018 02:08:36 GMT
ONBUILD COPY project.clj /usr/src/app/
# Fri, 07 Sep 2018 02:08:36 GMT
ONBUILD RUN lein deps
# Fri, 07 Sep 2018 02:08:36 GMT
ONBUILD COPY . /usr/src/app
# Fri, 07 Sep 2018 02:08:37 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0651aebef484f2932d9d9ec0ecaeaa15733b8454c24edd2fce38adb0542d794`  
		Last Modified: Wed, 05 Sep 2018 12:09:00 GMT  
		Size: 10.8 MB (10752740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5868a2cc4b3fe4d148aaea3d9f4da71a92f29f3b899d163fef3a2ead52cf44a6`  
		Last Modified: Wed, 05 Sep 2018 12:08:55 GMT  
		Size: 4.6 MB (4555338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f5880b1f9668fd77a6ab2213c8f16110a0e52bb5a8b3edd308306f6df47911`  
		Last Modified: Wed, 05 Sep 2018 12:09:42 GMT  
		Size: 51.6 MB (51592445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d946d677d73d1b83e0a5f4f3812162efde80cd9709a09b880f586f53cea52cb`  
		Last Modified: Wed, 05 Sep 2018 13:24:00 GMT  
		Size: 900.0 KB (899984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd29a04e552c40699d3bc89f8e958f9b0f358c0a64e2fe61ce6dc07dcfc0732`  
		Last Modified: Wed, 05 Sep 2018 13:24:00 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5580265f0acacea536590d5dfca57961e251891ab73a7c8ed5b1830c703106af`  
		Last Modified: Wed, 05 Sep 2018 13:24:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8ef261eac9c905801d61884040ceb50580f8375bb85d08a8f1bbd726d6d013`  
		Last Modified: Wed, 05 Sep 2018 13:25:04 GMT  
		Size: 134.1 MB (134084320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd202f01eb7bb24d375471dac7861306e1d1ee7f29175edf0977e51edbe4f3`  
		Last Modified: Wed, 05 Sep 2018 13:24:00 GMT  
		Size: 246.8 KB (246818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7b419eba9cba3f5063adec06de04e04ddcef59df08472e7e42c45a8db78914`  
		Last Modified: Fri, 07 Sep 2018 02:10:33 GMT  
		Size: 12.1 MB (12137642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381efecea0e2432acbcdf1c4184c41c824fb45db6a84df1fb97fcfda2304a130`  
		Last Modified: Fri, 07 Sep 2018 02:10:33 GMT  
		Size: 3.9 MB (3941818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f003145be79195297f8c42e4909d591ad55081070e76a46baf3bff0847956aa`  
		Last Modified: Fri, 07 Sep 2018 02:10:41 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-2.8.1-onbuild` - linux; ppc64le

```console
$ docker pull clojure@sha256:fd42fb2b58e6a0a2de73019d21db6da2cb5e1c9a9985efcd4c1ef90cd508c4fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.2 MB (251200511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29411391409c4dbcda64f3fbc062f6c8cf0008920d513a8884bd112ef2d0ad71`
-	Default Command: `["lein","run"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:04:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:04:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:06:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:04:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:04:48 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:04:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 12:05:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 12:05:05 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 12:05:08 GMT
ENV JAVA_VERSION=8u181
# Wed, 05 Sep 2018 12:05:10 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 05 Sep 2018 12:05:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 05 Sep 2018 12:08:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 12:09:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 05 Sep 2018 16:38:49 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Wed, 05 Sep 2018 16:38:50 GMT
ENV LEIN_VERSION=2.8.1
# Wed, 05 Sep 2018 16:38:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Sep 2018 16:38:51 GMT
WORKDIR /tmp
# Wed, 05 Sep 2018 16:39:02 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 05 Sep 2018 16:39:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Sep 2018 16:39:05 GMT
ENV LEIN_ROOT=1
# Wed, 05 Sep 2018 16:39:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
# Wed, 05 Sep 2018 16:39:24 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Wed, 05 Sep 2018 16:39:24 GMT
WORKDIR /usr/src/app
# Wed, 05 Sep 2018 16:39:25 GMT
ONBUILD COPY project.clj /usr/src/app/
# Wed, 05 Sep 2018 16:39:26 GMT
ONBUILD RUN lein deps
# Wed, 05 Sep 2018 16:39:27 GMT
ONBUILD COPY . /usr/src/app
# Wed, 05 Sep 2018 16:39:27 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6ce5ff3d103c074bf719d23bd00cf4926a1a9e032e7e3307eaa65233308ab2`  
		Last Modified: Wed, 05 Sep 2018 09:17:40 GMT  
		Size: 9.9 MB (9943043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0609146a0edf97fdccccb147946f1c5d48516f95535168e016a048d486209f9`  
		Last Modified: Wed, 05 Sep 2018 09:17:38 GMT  
		Size: 4.3 MB (4289760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a32da6c68ab6aa6a71d8083456371743ac70c9e6102e539b91aeba44921e4e`  
		Last Modified: Wed, 05 Sep 2018 09:18:34 GMT  
		Size: 50.1 MB (50061031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82340cf239c4d33ecbbb20a9c6904bd0ae1029174ba0bd9fa60b80d138a6bf00`  
		Last Modified: Wed, 05 Sep 2018 12:33:00 GMT  
		Size: 886.0 KB (886027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57bf4551c9342d216eb0119aa346a485639fff9a2cf1a6de25377f5c0125c887`  
		Last Modified: Wed, 05 Sep 2018 12:33:00 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ceaad31f81816eedc039ae77c517cbf6ad3d2379368269674b513ac5ab8cc0`  
		Last Modified: Wed, 05 Sep 2018 12:33:00 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165adca44d1935c3960e7f0a077264fad259451126983dfc76cb2b8c8c617018`  
		Last Modified: Wed, 05 Sep 2018 12:33:36 GMT  
		Size: 124.1 MB (124098438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a9d90acbc8bd62369c8d4e418b7bc72ebd9ce6b0ab0691c1bb535776c2103f`  
		Last Modified: Wed, 05 Sep 2018 12:33:00 GMT  
		Size: 246.6 KB (246647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b86ce17bf406bf973d79d7e2f65b78340a304eff3d42cd42956a6f8b6d2af16c`  
		Last Modified: Wed, 05 Sep 2018 16:43:06 GMT  
		Size: 12.1 MB (12137704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d494e132306c82699d9068ddea36ede1eac34a1218c5ab99828b7c3009bae2b3`  
		Last Modified: Wed, 05 Sep 2018 16:43:03 GMT  
		Size: 3.9 MB (3941920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c191e8764787d1ab9abc4ae070b7ee32748f8eef5dad552a636d17ea964fcefa`  
		Last Modified: Wed, 05 Sep 2018 16:43:40 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-2.8.1-onbuild` - linux; s390x

```console
$ docker pull clojure@sha256:f17e2f66458206de93a163f560ab1544e305729bdeb289f07c2040b06c48fabe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.3 MB (251266965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78400800756eef2278dec2591862719e39f0da817aaf49ca7ce56559e5120bb`
-	Default Command: `["lein","run"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:54:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:05:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:05:00 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:05:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 13:05:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 13:05:02 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 13:05:02 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 13:05:02 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 13:05:02 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 13:05:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 13:05:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 14:38:13 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Tue, 16 Oct 2018 14:38:13 GMT
ENV LEIN_VERSION=2.8.1
# Tue, 16 Oct 2018 14:38:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 16 Oct 2018 14:38:14 GMT
WORKDIR /tmp
# Tue, 16 Oct 2018 14:38:18 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 16 Oct 2018 14:38:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 16 Oct 2018 14:38:19 GMT
ENV LEIN_ROOT=1
# Tue, 16 Oct 2018 14:38:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 16 Oct 2018 14:38:47 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Tue, 16 Oct 2018 14:38:48 GMT
WORKDIR /usr/src/app
# Tue, 16 Oct 2018 14:38:48 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 16 Oct 2018 14:38:48 GMT
ONBUILD RUN lein deps
# Tue, 16 Oct 2018 14:38:48 GMT
ONBUILD COPY . /usr/src/app
# Tue, 16 Oct 2018 14:38:49 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013a668a2d66f6254dd7423dc547bc94626fd5b6152897559b61d1ac81b15c0c`  
		Last Modified: Tue, 16 Oct 2018 12:58:35 GMT  
		Size: 50.5 MB (50482928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a46fef195d9494fea5ba75ec3ce663c921a423133e4290eea78220c4aa3f9b4a`  
		Last Modified: Tue, 16 Oct 2018 13:11:26 GMT  
		Size: 903.4 KB (903384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3062be346ab0d1d90a5768c462b0fef683a4ae2b3ea4311d65d47cdca2a4e853`  
		Last Modified: Tue, 16 Oct 2018 13:11:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c0ae3a8dc7c3f7275625e32fef695a971c501af1aa9d92cb20fdc81d2ff32e`  
		Last Modified: Tue, 16 Oct 2018 13:11:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c1940b554fd8fffa1e4f671ee686063789ee698596b4d6bece237fc776fc78`  
		Last Modified: Tue, 16 Oct 2018 13:11:47 GMT  
		Size: 123.7 MB (123719703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d005e249a67fe4f310402d18122694359a69abfc48f47e71d2dca2a3e4bc130b`  
		Last Modified: Tue, 16 Oct 2018 13:11:26 GMT  
		Size: 246.7 KB (246705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa5b21dc8d374be7fb2aeb2865c2abffbad234c2174c0c7b8aa85a229b272fe`  
		Last Modified: Tue, 16 Oct 2018 14:42:13 GMT  
		Size: 12.1 MB (12137671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63665c9083fadaf86a6b08129e5cddb84fe76dd51f42d7f6a8ac4a425a1f5c2a`  
		Last Modified: Tue, 16 Oct 2018 14:42:12 GMT  
		Size: 3.9 MB (3941898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba6e6fffcd09eaf1f53ba919cbf380da283d8eb0dfa57f3d8862c99bbee0a23`  
		Last Modified: Tue, 16 Oct 2018 14:42:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-2.8.1-onbuild`

```console
$ docker pull clojure@sha256:931beef1a82c38e50ff37034395d67cf3a03e8f575a3edfae51ae3b959f4181b
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
$ docker pull clojure@sha256:6225cbc8166bfda40a2a2d1c6156c0f8790b94b04ec91e8a49baa6d6c4af736c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.4 MB (300426616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b6a0ecbc857e1619a8e315cdc42eb4e4bbcd41cae677e4efec8c354b670fdca`
-	Default Command: `["lein","run"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Fri, 04 May 2018 17:41:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:41:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 04 May 2018 17:41:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 23:53:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 23:53:28 GMT
ENV LANG=C.UTF-8
# Fri, 04 May 2018 23:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 04 May 2018 23:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 04 May 2018 23:53:29 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 04 May 2018 23:53:30 GMT
ENV JAVA_VERSION=8u171
# Fri, 04 May 2018 23:53:30 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Fri, 04 May 2018 23:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 04 May 2018 23:54:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 04 May 2018 23:54:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 08:41:15 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Sat, 05 May 2018 08:41:15 GMT
ENV LEIN_VERSION=2.8.1
# Sat, 05 May 2018 08:41:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 05 May 2018 08:41:15 GMT
WORKDIR /tmp
# Sat, 05 May 2018 08:41:24 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Sat, 05 May 2018 08:41:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 05 May 2018 08:41:24 GMT
ENV LEIN_ROOT=1
# Sat, 05 May 2018 08:41:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
# Sat, 05 May 2018 08:41:40 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Sat, 05 May 2018 08:41:40 GMT
WORKDIR /usr/src/app
# Sat, 05 May 2018 08:41:40 GMT
ONBUILD COPY project.clj /usr/src/app/
# Sat, 05 May 2018 08:41:41 GMT
ONBUILD RUN lein deps
# Sat, 05 May 2018 08:41:41 GMT
ONBUILD COPY . /usr/src/app
# Sat, 05 May 2018 08:41:41 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6861473222a6f5fb6abe08f0cdebf56b5f42758b0a7430bbbf47a3d365198e5e`  
		Last Modified: Fri, 04 May 2018 18:20:41 GMT  
		Size: 10.8 MB (10773612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0b9c3b5ae080d11df6df788ce96a45b684d7b050fd017c06b4ea5a40f58545`  
		Last Modified: Fri, 04 May 2018 18:20:39 GMT  
		Size: 4.3 MB (4335883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec98735f56f2c1ad880156d0c969f405a8aa3077587870396782cbfbc43799d`  
		Last Modified: Fri, 04 May 2018 18:21:13 GMT  
		Size: 50.0 MB (50026250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55160131808f084fc2304dd05f27bbc1870237d9f1b78f94aa57770948f193bf`  
		Last Modified: Sat, 05 May 2018 00:10:11 GMT  
		Size: 892.4 KB (892433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8dbacf623ffcaa9a39a8c1afe93ffdbee4b0b0c323c43becf5481605e9b9344`  
		Last Modified: Sat, 05 May 2018 00:10:11 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8145eb5a3756f6fc5fd37487b97192459ae78be657826ea66a6fe5881262f0b0`  
		Last Modified: Sat, 05 May 2018 00:10:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00673c707b5aead8a48acd3a861d70ac201905dde3ad85f7d33758ae8d2c6f1`  
		Last Modified: Sat, 05 May 2018 00:10:44 GMT  
		Size: 172.7 MB (172728116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21012f36779c0a491de043ad71e8bc2adb2c0cd68b488d3f7a3f5fe9b1322a4`  
		Last Modified: Sat, 05 May 2018 00:10:11 GMT  
		Size: 272.1 KB (272109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83255034c38abcb882dec318b7d4213d593207357869021fe5bd025a551dcd07`  
		Last Modified: Sat, 05 May 2018 08:44:50 GMT  
		Size: 12.1 MB (12137680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039de16765cb6401f7f1077d579de7972dfa8869dbdd680e934a7ddbdda4e907`  
		Last Modified: Sat, 05 May 2018 08:44:50 GMT  
		Size: 3.9 MB (3941865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a4a122bc9f0c958cd4f30c39f4cd3eb85746923f6cbc410b1ad1537a55c961`  
		Last Modified: Sat, 05 May 2018 08:45:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-2.8.1-onbuild` - linux; arm variant v5

```console
$ docker pull clojure@sha256:416fb6a3ab3cf1af9f16f06da56d2f3dfbcfbd7f528adb74666ff12b7355d6ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265159387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a93d878c0d9dac3642a41759a8ba9c0f067ea0157c7c306fc0852e2ebacaa92c`
-	Default Command: `["lein","run"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:04 GMT
ADD file:bd77176b7f68cf66010ed7d5cd955387a1eb54726e5071bc42ddd831ac56de69 in / 
# Sat, 28 Apr 2018 08:53:04 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:00:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:00:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:01:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:33:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:33:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 09:33:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 09:33:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 09:33:19 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 09:33:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 09:33:19 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 09:33:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 09:34:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 09:34:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 12:52:09 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Sat, 05 May 2018 12:52:09 GMT
ENV LEIN_VERSION=2.8.1
# Sat, 05 May 2018 12:52:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 05 May 2018 12:52:10 GMT
WORKDIR /tmp
# Thu, 10 May 2018 09:39:02 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 10 May 2018 09:39:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 10 May 2018 09:39:06 GMT
ENV LEIN_ROOT=1
# Thu, 10 May 2018 09:39:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 10 May 2018 09:40:02 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Thu, 10 May 2018 09:40:02 GMT
WORKDIR /usr/src/app
# Thu, 10 May 2018 09:40:02 GMT
ONBUILD COPY project.clj /usr/src/app/
# Thu, 10 May 2018 09:40:03 GMT
ONBUILD RUN lein deps
# Thu, 10 May 2018 09:40:03 GMT
ONBUILD COPY . /usr/src/app
# Thu, 10 May 2018 09:40:03 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:c87e62b47a5d3031bbfc66d1b7c178e12dd4b62b36eaa44a879cebbbc558c33d`  
		Last Modified: Sat, 28 Apr 2018 09:01:28 GMT  
		Size: 44.0 MB (44038582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b447c1a942c4bbb82a6222d7f5abc3936dfb4b80c399d470515f9956cbc4e93`  
		Last Modified: Sat, 05 May 2018 09:13:26 GMT  
		Size: 9.8 MB (9842386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0b217d1eda0719b1e84281d8b64839a9a234ee6976bc53a2a031453e60beb2`  
		Last Modified: Sat, 05 May 2018 09:13:23 GMT  
		Size: 4.2 MB (4153388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2705c6d41296d908acb07f9570f488678bb308e048c5039ba5d5c8f2773356e8`  
		Last Modified: Sat, 05 May 2018 09:14:04 GMT  
		Size: 48.2 MB (48239621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54d5ed7613dd847b094cda955417c40e86b138585a75ec42baa02847940b15c`  
		Last Modified: Sat, 05 May 2018 09:59:05 GMT  
		Size: 884.8 KB (884794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da8721347d68d66c62cb3ef077d9d5a4e72c2ab8344791c0656110cc9ce4e1b`  
		Last Modified: Sat, 05 May 2018 09:59:06 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a4190394a36f501d1696a8bfa231634945a3159522d3953cf1f9fdbb3ca8b2`  
		Last Modified: Sat, 05 May 2018 09:59:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f285ee7a93143f9707e4a1e113ca60e32acfc1eb440919827249c12739127f11`  
		Last Modified: Sat, 05 May 2018 09:59:43 GMT  
		Size: 141.6 MB (141648174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3688b12b50158639d37a41401f71f74d01f64148548df57dbc5288e8795b7d2`  
		Last Modified: Sat, 05 May 2018 09:59:05 GMT  
		Size: 272.2 KB (272191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa841400d1f5b4e237e7bf827ab9c7a5eb0794548ef94fa62ed0d5e52f40b2e8`  
		Last Modified: Thu, 10 May 2018 09:40:24 GMT  
		Size: 12.1 MB (12137711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5068e318f0b85d133b307f724f8f4d480515cc5c98b0a880de752c316ee056b`  
		Last Modified: Thu, 10 May 2018 09:40:23 GMT  
		Size: 3.9 MB (3941996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe51a9882d10f29162035cb2ad46390b3fba67513bd2eb61cd40a93a420aac9c`  
		Last Modified: Thu, 10 May 2018 09:40:50 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-2.8.1-onbuild` - linux; arm variant v7

```console
$ docker pull clojure@sha256:268e037dcf28dd828fc269716093c5ffa9fe804e4ebd3f8ab2f16fe30ec2755b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273576370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72593f65743e401ad991090a33b7ed2ffd9d6f938ee58a883d93ab017ba90ac9`
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
# Sat, 05 May 2018 15:49:29 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Sat, 05 May 2018 15:49:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 05 May 2018 15:49:33 GMT
ENV LEIN_ROOT=1
# Sat, 05 May 2018 15:49:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
# Sat, 05 May 2018 15:50:23 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Sat, 05 May 2018 15:50:23 GMT
WORKDIR /usr/src/app
# Sat, 05 May 2018 15:50:32 GMT
ONBUILD COPY project.clj /usr/src/app/
# Sat, 05 May 2018 15:50:32 GMT
ONBUILD RUN lein deps
# Sat, 05 May 2018 15:50:32 GMT
ONBUILD COPY . /usr/src/app
# Sat, 05 May 2018 15:50:33 GMT
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
	-	`sha256:5ac564ea0b554cf5950ff5a2f0366144ea888db015e80969d8b7fea1f82b2cc1`  
		Last Modified: Sat, 05 May 2018 15:53:25 GMT  
		Size: 12.1 MB (12137678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35112c4abfbb480b69c2ddfc306d5b8a5ed29ef1c698befed9b7de98fcdfb51e`  
		Last Modified: Sat, 05 May 2018 15:53:24 GMT  
		Size: 3.9 MB (3941929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2183dd72bbbd8fc464f91abe544def13334089c591451725b27ebfd7cd47a9b3`  
		Last Modified: Sat, 05 May 2018 15:53:55 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-2.8.1-onbuild` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:adb2a7e0e59668879b2f9b96762464812e48319e142374816bd9aeb804216160
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (279959365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2deefb77ffa11185e423dca70ce7119e37eb1dad73a18a5e430a75702849ce27`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:38:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:39:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:40:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:14:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:14:09 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:14:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:14:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:14:18 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 12:14:20 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:14:21 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:14:22 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 12:20:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 12:20:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 21:36:50 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Sat, 05 May 2018 21:36:51 GMT
ENV LEIN_VERSION=2.8.1
# Sat, 05 May 2018 21:36:52 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 05 May 2018 21:36:52 GMT
WORKDIR /tmp
# Sat, 05 May 2018 21:37:12 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Sat, 05 May 2018 21:37:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 05 May 2018 21:37:13 GMT
ENV LEIN_ROOT=1
# Sat, 05 May 2018 21:37:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
# Sat, 05 May 2018 21:37:33 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Sat, 05 May 2018 21:37:34 GMT
WORKDIR /usr/src/app
# Sat, 05 May 2018 21:37:35 GMT
ONBUILD COPY project.clj /usr/src/app/
# Sat, 05 May 2018 21:37:36 GMT
ONBUILD RUN lein deps
# Sat, 05 May 2018 21:37:37 GMT
ONBUILD COPY . /usr/src/app
# Sat, 05 May 2018 21:37:37 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd3e9bbb1f760ff8cab41817920c5822422ba1eaab36a233c8f43348791e03d`  
		Last Modified: Sat, 05 May 2018 10:29:53 GMT  
		Size: 9.7 MB (9722189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534647756e8399143ad6e1639b6433b9a3364809ac4520f62199ea46e638a2e`  
		Last Modified: Sat, 05 May 2018 10:29:50 GMT  
		Size: 4.1 MB (4088086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9236e2af68c9ae98f323593e7a832808ed6be16d6a198b45e06d42c26d5da`  
		Last Modified: Sat, 05 May 2018 10:31:01 GMT  
		Size: 48.0 MB (47986386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223cb7070547c589a9938d8095409c3e2028ce59826b67444710059c1f1beacb`  
		Last Modified: Sat, 05 May 2018 13:04:23 GMT  
		Size: 877.6 KB (877635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded8c39202caa0f53225389347da925133b2acf9d7e904044dd13bd12b1213ea`  
		Last Modified: Sat, 05 May 2018 13:04:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3212969d5c76f0046cd15128b34aca2f924c402abe15876e7b4af1fc52604319`  
		Last Modified: Sat, 05 May 2018 13:04:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb64e69fca916ae8398121479541033328b8e9cff6d27b0a5e30af9904396845`  
		Last Modified: Sat, 05 May 2018 13:05:30 GMT  
		Size: 157.8 MB (157823523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee16d66b8ef3580ce831869733ec7130a50284b3c76ecb23244ce4896d20264`  
		Last Modified: Sat, 05 May 2018 13:04:21 GMT  
		Size: 272.1 KB (272135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c2d08853f747a8fd890a5404ca2dcd95ce091f848b349e6dfd162faca6a261`  
		Last Modified: Sat, 05 May 2018 21:41:06 GMT  
		Size: 12.1 MB (12137678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b991c153e53279abcaea6d850f785cb7eb10d975e23c845e718193bb419fe7c2`  
		Last Modified: Sat, 05 May 2018 21:41:04 GMT  
		Size: 3.9 MB (3941875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef963af114e9545b69e43eb402e6eac6bae11fc80ba9de38c63982ac1cbe7da5`  
		Last Modified: Sat, 05 May 2018 21:41:30 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-2.8.1-onbuild` - linux; 386

```console
$ docker pull clojure@sha256:66427bf2df15f6d4533168eb2fe5dc6d217f911bf8886751d444f97312512271
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.5 MB (305469908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22673b85077a290913f6d4e36f7cf1c2ea1c0a53ab4a05ae84dca2ca0addb529`
-	Default Command: `["lein","run"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Sat, 05 May 2018 11:06:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 11:06:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 11:07:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:21:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:21:59 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 13:22:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 13:22:00 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 13:22:00 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 13:22:01 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 13:22:01 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 13:22:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:22:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:22:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 19:19:17 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Sat, 05 May 2018 19:19:18 GMT
ENV LEIN_VERSION=2.8.1
# Sat, 05 May 2018 19:19:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 05 May 2018 19:19:18 GMT
WORKDIR /tmp
# Sat, 05 May 2018 19:19:26 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Sat, 05 May 2018 19:19:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 05 May 2018 19:19:27 GMT
ENV LEIN_ROOT=1
# Sat, 05 May 2018 19:19:38 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
# Sat, 05 May 2018 19:19:57 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Sat, 05 May 2018 19:19:57 GMT
WORKDIR /usr/src/app
# Sat, 05 May 2018 19:19:57 GMT
ONBUILD COPY project.clj /usr/src/app/
# Sat, 05 May 2018 19:19:58 GMT
ONBUILD RUN lein deps
# Sat, 05 May 2018 19:19:58 GMT
ONBUILD COPY . /usr/src/app
# Sat, 05 May 2018 19:19:58 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25af6543ea0fe065b8b039ef338aa11ccccc8921a78894d40c0594a1821e8c89`  
		Last Modified: Sat, 05 May 2018 11:40:01 GMT  
		Size: 10.8 MB (10783664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84eefdd216b0b19250871d762b9dd06baa7cb1a1a4094f165e32161cc7269754`  
		Last Modified: Sat, 05 May 2018 11:39:59 GMT  
		Size: 4.6 MB (4555015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc9190d0da67a487e6c5843ce48a07d4ec97543307ec18377f260f2af44b6e5`  
		Last Modified: Sat, 05 May 2018 11:40:43 GMT  
		Size: 51.6 MB (51554057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c73c3f41ff89acfb3c754b128bbef083614c69b98d854ff9516b73e3d60f19`  
		Last Modified: Sat, 05 May 2018 13:45:02 GMT  
		Size: 900.1 KB (900067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c237d1c179a1e888bca57623514704a7021e1f112394345cbc71d30f8bce6ce9`  
		Last Modified: Sat, 05 May 2018 13:45:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915a66a3aad8071041f85c2aeb8fc305872236c3a87afabd341e73cf254f97e1`  
		Last Modified: Sat, 05 May 2018 13:45:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3174ac63269839002db13e440ddf1436ce7fc62eb58aab9e44ffcf73a9fe66`  
		Last Modified: Sat, 05 May 2018 13:45:50 GMT  
		Size: 175.3 MB (175280007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5add897047ae6f52259a825f97c864599457875e9fb49af5464b97c258b608`  
		Last Modified: Sat, 05 May 2018 13:45:03 GMT  
		Size: 272.1 KB (272130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd33100a2903114b76f3fa307465447d768364e909e64fda58111db487d027e3`  
		Last Modified: Sat, 05 May 2018 19:22:49 GMT  
		Size: 12.1 MB (12137688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f31dc7699a14d14ab496a0dab462092ad847db72bb11e9422e1a844cb1bd7ed`  
		Last Modified: Sat, 05 May 2018 19:22:49 GMT  
		Size: 3.9 MB (3941885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f8825e40c17887d7ddd97a39a5181734797cfd5af0fb8cabd770be24fe5fca`  
		Last Modified: Sat, 05 May 2018 19:23:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-2.8.1-onbuild` - linux; ppc64le

```console
$ docker pull clojure@sha256:ec17f0ffac5c5d557fc30396576ea1b0e0f6bf4bf7223f0e1b66cf8761f44336
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.7 MB (288656780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7ee5fc5250d1adec20c40f8a3c2c0f44c9d1069b21b1a3898d3313930f3bc31`
-	Default Command: `["lein","run"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:30 GMT
ADD file:ae8b79396496eb2731c9fe7f159d6f3086ec59dd9c418c6d93780fc8cb685d2b in / 
# Sat, 28 Apr 2018 08:20:31 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:39:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:40:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:41:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 14:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 14:32:45 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 14:32:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 14:32:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 14:32:51 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 14:32:51 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 14:32:53 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 14:32:54 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 14:38:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 14:38:27 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 18:41:01 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Sat, 05 May 2018 18:41:02 GMT
ENV LEIN_VERSION=2.8.1
# Sat, 05 May 2018 18:41:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 05 May 2018 18:41:12 GMT
WORKDIR /tmp
# Sat, 05 May 2018 18:41:42 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Sat, 05 May 2018 18:41:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 05 May 2018 18:41:44 GMT
ENV LEIN_ROOT=1
# Sat, 05 May 2018 18:42:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
# Sat, 05 May 2018 18:42:10 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Sat, 05 May 2018 18:42:12 GMT
WORKDIR /usr/src/app
# Sat, 05 May 2018 18:42:13 GMT
ONBUILD COPY project.clj /usr/src/app/
# Sat, 05 May 2018 18:42:13 GMT
ONBUILD RUN lein deps
# Sat, 05 May 2018 18:42:14 GMT
ONBUILD COPY . /usr/src/app
# Sat, 05 May 2018 18:42:15 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:5c65288cd974eda27ef2a891c3b15c52c38c5a1c74befed7d569db78cbcb88b4`  
		Last Modified: Sat, 28 Apr 2018 08:29:36 GMT  
		Size: 45.6 MB (45590843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49669ce29c6ff5b318515a879172199a17519151b56113a98648e4e5b813e9b0`  
		Last Modified: Sat, 05 May 2018 11:03:44 GMT  
		Size: 10.0 MB (9975625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f38ff4299d23fa1e29678b39bfeb1549f444a54368faf8f03460a72b6951e8`  
		Last Modified: Sat, 05 May 2018 11:03:41 GMT  
		Size: 4.3 MB (4289600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe44d1ddd947a837b5faf3133ee67533bc10e5762c7abc5606ed72dea959632f`  
		Last Modified: Sat, 05 May 2018 11:04:41 GMT  
		Size: 50.0 MB (50028981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f108972424e64270dd3513c82fbceacd9b85ac95e1e99e43cb5140e2d4ed6a21`  
		Last Modified: Sat, 05 May 2018 15:13:06 GMT  
		Size: 886.1 KB (886098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285fd4b68faacbc88d600ef509b7228255381b631448443d508df4713e6b6fe8`  
		Last Modified: Sat, 05 May 2018 15:13:05 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2a94501130de72b5470e06ed1e7516bc34b6bb7fa400dbf49bb34f8f5a514d`  
		Last Modified: Sat, 05 May 2018 15:13:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7383d8e91ead8ba76ab0d3c0aa69d409a4498c4496d02eda67f621c1ecd925c8`  
		Last Modified: Sat, 05 May 2018 15:14:04 GMT  
		Size: 161.5 MB (161533279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841650fc79ec71a908a4f22a78f63aef231c04cfce81a633ec29cd8374de716e`  
		Last Modified: Sat, 05 May 2018 15:13:05 GMT  
		Size: 272.2 KB (272158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f51451e0901542cc8f543198b3f3bc676bd438d4cfda32eb9ece2635738b54`  
		Last Modified: Sat, 05 May 2018 18:46:56 GMT  
		Size: 12.1 MB (12137715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c50a8ae91305ff4e6ab9df14ab1bb66892ee33618b80230a8b1026ac15a7e875`  
		Last Modified: Sat, 05 May 2018 18:46:55 GMT  
		Size: 3.9 MB (3941934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb85a8a447cc3c18c65a94173fdb7a7dfe16d69750ad4c12085ec1cbab41128`  
		Last Modified: Sat, 05 May 2018 18:47:38 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-2.8.1-onbuild` - linux; s390x

```console
$ docker pull clojure@sha256:a6e02caba6b0cc9cb1e21b356f5cb86d6460efe22fe7a7f49dfdcf197cfe62fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.1 MB (271055425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91d4a61e8172acb50d1cdaa929a81baf302a34a3ed5306c5055459e79e76846e`
-	Default Command: `["lein","run"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:04 GMT
ADD file:cb13df185b5fc36710007c3b4ec6f239ac340ff9c69cbec1e38fcf974766179b in / 
# Sat, 28 Apr 2018 11:45:04 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:19:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:19:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 13:20:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:30:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:30:48 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 14:30:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 14:30:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 14:30:50 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 14:30:50 GMT
ENV JAVA_VERSION=8u162
# Sat, 28 Apr 2018 14:30:50 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Sat, 28 Apr 2018 14:30:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 28 Apr 2018 14:31:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 28 Apr 2018 14:31:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 28 Apr 2018 20:18:07 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Sat, 28 Apr 2018 20:18:07 GMT
ENV LEIN_VERSION=2.8.1
# Sat, 28 Apr 2018 20:18:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 28 Apr 2018 20:18:08 GMT
WORKDIR /tmp
# Sat, 28 Apr 2018 20:18:13 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && echo "019faa5f91a463bf9742c3634ee32fb3db8c47f0 *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Sat, 28 Apr 2018 20:18:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 28 Apr 2018 20:18:14 GMT
ENV LEIN_ROOT=1
# Sat, 28 Apr 2018 20:18:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.9.0"]])' > project.clj   && lein deps && rm project.clj
# Sat, 28 Apr 2018 20:18:52 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Sat, 28 Apr 2018 20:18:52 GMT
WORKDIR /usr/src/app
# Sat, 28 Apr 2018 20:18:52 GMT
ONBUILD COPY project.clj /usr/src/app/
# Sat, 28 Apr 2018 20:18:53 GMT
ONBUILD RUN lein deps
# Sat, 28 Apr 2018 20:18:53 GMT
ONBUILD COPY . /usr/src/app
# Sat, 28 Apr 2018 20:18:53 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:9793d586559922dfd1f10be65f3cabffaf1d31f81660ef474409da1f4f675fc7`  
		Last Modified: Sat, 28 Apr 2018 11:50:58 GMT  
		Size: 45.2 MB (45185265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1029d8fb29ae0fbf637f52ff30953b34e447a34365b9055b19faf7f1304d7a6`  
		Last Modified: Sat, 28 Apr 2018 13:29:28 GMT  
		Size: 10.3 MB (10282302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db5fb833827f26afd173271cc60ae9e63a0188bcdfcfa887ca20ef5cba5fea5`  
		Last Modified: Sat, 28 Apr 2018 13:29:26 GMT  
		Size: 4.4 MB (4365988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880249d542fab8452b7a2557e8f03c0bc9d21c2cb3d863b2e3e4db454ef4f75f`  
		Last Modified: Sat, 28 Apr 2018 13:29:36 GMT  
		Size: 50.5 MB (50450158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f0aba92e0f80ec33924cf8df5bf4c9c862f81c44d1c3a2e8b2f5e5d23fe444`  
		Last Modified: Sat, 28 Apr 2018 14:55:09 GMT  
		Size: 903.1 KB (903079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b703017df6314f9b8493960924ee5eb2b3c9def54e5d352ed31bb87cf93ceb6d`  
		Last Modified: Sat, 28 Apr 2018 14:55:08 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6204e617487fda7c8cd462d9fa5ce9b0c5eadb154902bedae113a33177b115c1`  
		Last Modified: Sat, 28 Apr 2018 14:55:08 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae059516112b02a3d2551947674db730ad93f43433d7bf7caab04ef915915fbb`  
		Last Modified: Sat, 28 Apr 2018 14:55:29 GMT  
		Size: 143.5 MB (143516383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49cd51ffc9aca982374111319b6f3a0fea07bc97eadd6e9843b5160fe97fc247`  
		Last Modified: Sat, 28 Apr 2018 14:55:08 GMT  
		Size: 272.2 KB (272158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bffc0393ed9b73b33e537d743e24b518b1699b37a6f66e92215d9344bc28b7b`  
		Last Modified: Sat, 28 Apr 2018 20:26:43 GMT  
		Size: 12.1 MB (12137680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db9130c189f0b16fbd3f7957c980e16c59c4dd1d958a9c1d531038a0767f6daa`  
		Last Modified: Sat, 28 Apr 2018 20:26:42 GMT  
		Size: 3.9 MB (3941900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9216c6ca67f24f96e647f1b5e7c8bfc06c2ea0fc9690fad43f9870a5bb2cf2e`  
		Last Modified: Sat, 28 Apr 2018 20:27:05 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:openjdk-11-tools-deps`

```console
$ docker pull clojure@sha256:8ad07597a780a10e853274a1fb1092744ec9bbcac4887a7b07ebe6b717492bbc
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
$ docker pull clojure@sha256:0af7ce42e9434ec28d2354fe54372ec18fe3b21ca482c480cf93d988f2c8c121
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.7 MB (474652924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53cba8044ec3751f5dedb9be4a94c8c1401157ecd34acd2f2e49d66cfa22fb7c`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

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
# Tue, 22 Jan 2019 21:11:43 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Tue, 22 Jan 2019 21:11:43 GMT
ENV LANG=C.UTF-8
# Tue, 22 Jan 2019 21:11:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 22 Jan 2019 21:11:46 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 22 Jan 2019 21:11:46 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 22 Jan 2019 21:11:46 GMT
ENV JAVA_VERSION=11.0.1
# Tue, 22 Jan 2019 21:11:46 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Tue, 22 Jan 2019 21:13:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 22 Jan 2019 21:13:13 GMT
CMD ["jshell"]
# Wed, 23 Jan 2019 05:52:56 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Wed, 23 Jan 2019 05:52:57 GMT
ENV CLOJURE_VERSION=1.10.0.411
# Wed, 23 Jan 2019 05:52:57 GMT
WORKDIR /tmp
# Wed, 23 Jan 2019 05:53:05 GMT
RUN apt-get update && apt-get install -y rlwrap
# Wed, 23 Jan 2019 05:53:08 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 23 Jan 2019 05:53:22 GMT
RUN clojure -e "(clojure-version)"
# Wed, 23 Jan 2019 05:53:22 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:f0c295b9cf6eefd426b3005583e0147a64d5798d77c7426c60237e566fa3d39a`  
		Last Modified: Tue, 22 Jan 2019 21:38:45 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe56009572529efd5ea05685b463e88e552849c61bb1b945faaae5a9ec9638e`  
		Last Modified: Tue, 22 Jan 2019 21:38:45 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8253cd29cd0b56adb842f82c4a993ca782426ed9774c3e51181fe29600c900`  
		Last Modified: Tue, 22 Jan 2019 21:38:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6885295983c8918b73477626db3816eea34f0663d0a3ba4a5f1c6770731bf41b`  
		Last Modified: Tue, 22 Jan 2019 21:39:19 GMT  
		Size: 325.5 MB (325479811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cdc4aacc3b9a12f9101deb32172f6bbfb31568436c1bf6554a00180417ef66`  
		Last Modified: Wed, 23 Jan 2019 05:54:43 GMT  
		Size: 13.9 MB (13886902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afc945d4fcab1796056a67c8de619f124997d960e5952dec036cb438cccb688`  
		Last Modified: Wed, 23 Jan 2019 05:54:44 GMT  
		Size: 19.8 MB (19761920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c447a9df04ae8fbf1462878a0840f51f9954b3249fb2a956589d151e3a21cd91`  
		Last Modified: Wed, 23 Jan 2019 05:54:42 GMT  
		Size: 4.1 MB (4102738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps` - linux; arm variant v5

```console
$ docker pull clojure@sha256:57daa148f1289f8998e3528cced61037ea400c1202ddf8aebf9f50f5832cc649
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.5 MB (407528747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c407f6b4f486e5f94d6cbe5b32bdaa8cd6c7a7cc7add31b4709e20226e21b18b`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:27 GMT
ADD file:8ba047ef6412ca91461f1c03e2571c0760c1e7ce294814ec3523055f0b453994 in / 
# Wed, 23 Jan 2019 09:54:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:38:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:38:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:39:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:38:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:38:42 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 23 Jan 2019 12:38:43 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:38:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:38:45 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 12:38:45 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 12:38:46 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 23 Jan 2019 12:38:46 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 23 Jan 2019 12:42:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 12:42:09 GMT
CMD ["jshell"]
# Wed, 23 Jan 2019 16:32:35 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Wed, 23 Jan 2019 16:32:36 GMT
ENV CLOJURE_VERSION=1.10.0.411
# Wed, 23 Jan 2019 16:32:36 GMT
WORKDIR /tmp
# Wed, 23 Jan 2019 16:32:46 GMT
RUN apt-get update && apt-get install -y rlwrap
# Wed, 23 Jan 2019 16:32:50 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 23 Jan 2019 16:34:17 GMT
RUN clojure -e "(clojure-version)"
# Wed, 23 Jan 2019 16:34:17 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:4fa85838ca92a72d64f970f6d43c23ad625e644e7d2d6088bfccfc6b05f2ce41`  
		Last Modified: Wed, 23 Jan 2019 10:02:01 GMT  
		Size: 44.1 MB (44053619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc93c97f4e63346ff22fa9f2a1f468f1211ae4e1c468f823078577fe992699ba`  
		Last Modified: Wed, 23 Jan 2019 10:49:24 GMT  
		Size: 9.8 MB (9849321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0e54fcc14b17f4209b661fb8a20deeb88c9b3153c5fac3c35d0367633f22f2`  
		Last Modified: Wed, 23 Jan 2019 10:49:23 GMT  
		Size: 4.2 MB (4158594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6e26dbd21ee93841f4c5c8d7e525447c626a675158cbe405e12ca3b58e889d`  
		Last Modified: Wed, 23 Jan 2019 10:49:47 GMT  
		Size: 48.3 MB (48284691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca1368d326f91b24abea9c9404aab902ace0ec2c0347eb2114fb9b0db70d2a1`  
		Last Modified: Wed, 23 Jan 2019 13:05:27 GMT  
		Size: 884.7 KB (884660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec484f5b7656af7cdcdc7821dfc6f2a890be0ac3d8b4d065e408e4ed56c836e`  
		Last Modified: Wed, 23 Jan 2019 13:05:27 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fa9632bdff54cdcc3e672f2e7f0570b505deb1424d6cebcb28d29f63f008ad`  
		Last Modified: Wed, 23 Jan 2019 13:05:27 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dbd01f305382e84f870b5d4e91fe997d949f3a3cec1c3bebcc6deb1a03db1fa`  
		Last Modified: Wed, 23 Jan 2019 13:05:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c906034468ae634b41d3611d87bc06be25d6dd30af00dda32342035e5e6270`  
		Last Modified: Wed, 23 Jan 2019 13:06:19 GMT  
		Size: 262.5 MB (262451143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f246727c43f3e5753d337811dbe0198081d6e6232243065a368ab20d748e2e1`  
		Last Modified: Wed, 23 Jan 2019 16:35:31 GMT  
		Size: 14.0 MB (13981261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdefd4fdce7479ae264f9f12630324d2900fa25aa90f64050b9cf9604630dbff`  
		Last Modified: Wed, 23 Jan 2019 16:35:31 GMT  
		Size: 19.8 MB (19762039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0511ef7b922b52c19e1b7a1c18d7929384977e019cd862877339cc1eeecf78`  
		Last Modified: Wed, 23 Jan 2019 16:35:29 GMT  
		Size: 4.1 MB (4102816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps` - linux; arm variant v7

```console
$ docker pull clojure@sha256:d3f2b5e7cc09f0b03b12eedbd49f9af58dd60f10c3017d90b8edb5b770913c56
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.7 MB (421747451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f7426e79d894b52c074e5f4d9655d919921abf6bccc2d64ca27ceb4e8844c4`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:28 GMT
ADD file:3ab1f738bb6fe0b2e0c47963cf773badbd7069848e58eeb671d7f13e357f02d8 in / 
# Sat, 29 Dec 2018 13:04:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:43:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:43:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 13:44:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:19:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:19:27 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 15:19:28 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 15:19:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 15:19:31 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 15:19:31 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 15:19:32 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 15:19:32 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 15:21:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 15:21:05 GMT
CMD ["jshell"]
# Fri, 04 Jan 2019 12:59:47 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Tue, 08 Jan 2019 12:57:56 GMT
ENV CLOJURE_VERSION=1.10.0.411
# Tue, 08 Jan 2019 12:57:57 GMT
WORKDIR /tmp
# Tue, 08 Jan 2019 12:58:04 GMT
RUN apt-get update && apt-get install -y rlwrap
# Tue, 08 Jan 2019 12:58:07 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 08 Jan 2019 12:58:19 GMT
RUN clojure -e "(clojure-version)"
# Tue, 08 Jan 2019 12:58:20 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:76e424dac3ee85f0c45a60646f8b87f57bf2ed6b48b6e06522628d2d8f7e06cf`  
		Last Modified: Sat, 29 Dec 2018 13:12:18 GMT  
		Size: 42.1 MB (42074583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f48ddd91eb6c0651e04903412a7878a0c6b983485404d539b5770c2df6c462`  
		Last Modified: Sat, 29 Dec 2018 14:04:30 GMT  
		Size: 9.5 MB (9480290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307946877196cb875cf9ce23e16058fc9525d372e0e3c6652d6f805675257c98`  
		Last Modified: Sat, 29 Dec 2018 14:04:30 GMT  
		Size: 3.9 MB (3918483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbde47943bce292ffb840fa20b0cfc39c7aeccdb423a1be8455c59d7828fe717`  
		Last Modified: Sat, 29 Dec 2018 14:04:53 GMT  
		Size: 46.4 MB (46384426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1963a6d0d2a2708817aa8f27ba6a6b1e21d53edfb808b8838ea27cade8a103b`  
		Last Modified: Sat, 29 Dec 2018 15:46:13 GMT  
		Size: 867.9 KB (867871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e889976aea489306dd508b288cb7282b536fbdff1da7a20df8b13d4b5a486063`  
		Last Modified: Sat, 29 Dec 2018 15:46:13 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be363d0c351783a0452a1975b36855613b9c6828303a8c9f3dfda73ebbe6688c`  
		Last Modified: Sat, 29 Dec 2018 15:46:13 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad67e09ecbffca1fece8208fd294973a794a35064370a4bef2e521280a4bab17`  
		Last Modified: Sat, 29 Dec 2018 15:46:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832eb47aeb994b0e4c425a297142dff827c0bd4a92f29ca7a2d1c8afac98ad6b`  
		Last Modified: Sat, 29 Dec 2018 15:47:06 GMT  
		Size: 281.1 MB (281135627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bdd177be1a26f2400b99fefc2a8381a0411ed2c5f297764ca0414b674fc344`  
		Last Modified: Tue, 08 Jan 2019 12:58:54 GMT  
		Size: 14.0 MB (14020726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b58353c688a9cfe1798a080ea1ba967ba73980513bac4d2f5b08b9dd8a4d20`  
		Last Modified: Tue, 08 Jan 2019 12:58:54 GMT  
		Size: 19.8 MB (19762041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a10187ece212dc50946927cb7ad36404c7ae9ea370b54c79472aa7c70f803dc`  
		Last Modified: Tue, 08 Jan 2019 12:58:52 GMT  
		Size: 4.1 MB (4102804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e3a4dc72d1279ac6e8299c8994f2e197f9ae473a5a15afd66b9e2a46d453378f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **444.9 MB (444923515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09e4c857574c3306b62e34fc3d41fc83d451c4874ea344ddf6636afbcfa8e583`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

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
# Sat, 29 Dec 2018 16:48:45 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 16:48:47 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 16:48:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 16:49:00 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 16:49:02 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 16:49:03 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 16:49:04 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 16:54:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 16:54:41 GMT
CMD ["jshell"]
# Sun, 30 Dec 2018 03:05:45 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Tue, 08 Jan 2019 09:40:22 GMT
ENV CLOJURE_VERSION=1.10.0.411
# Tue, 08 Jan 2019 09:40:23 GMT
WORKDIR /tmp
# Tue, 08 Jan 2019 09:40:35 GMT
RUN apt-get update && apt-get install -y rlwrap
# Tue, 08 Jan 2019 09:40:39 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 08 Jan 2019 09:40:56 GMT
RUN clojure -e "(clojure-version)"
# Tue, 08 Jan 2019 09:40:57 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:d4eaf34902eefe4b82c2d965e05ea3b5c932111bdfb9cf8c0573c1c241aba482`  
		Last Modified: Sat, 29 Dec 2018 17:22:35 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c884e63ae01a989df032cc586c4eca683e5eb140d3cdc0125d8501e79d87400a`  
		Last Modified: Sat, 29 Dec 2018 17:22:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236790ee9104105569bdd9d5655437b81d5759352e1630a6ece85b3a3ec3f920`  
		Last Modified: Sat, 29 Dec 2018 17:22:35 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255db0f63e21740c5ee47758d90a7371ba60d5b9415f2008aebb2c06d96ddca1`  
		Last Modified: Sat, 29 Dec 2018 17:23:42 GMT  
		Size: 301.7 MB (301707937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecca5537638b0226a9edf40dba99055b4c812549e85bdb15d993cc67d491e699`  
		Last Modified: Tue, 08 Jan 2019 09:41:46 GMT  
		Size: 13.5 MB (13528343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:229d91e1f7770951dcd67d63908cd236546b0ef26b89f58086393f82e15c6819`  
		Last Modified: Tue, 08 Jan 2019 09:41:47 GMT  
		Size: 19.8 MB (19761919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a71c992e55bb6778162398be1bef9418a759603794abeaee1845d1c1c1cce02`  
		Last Modified: Tue, 08 Jan 2019 09:41:44 GMT  
		Size: 4.1 MB (4102724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps` - linux; 386

```console
$ docker pull clojure@sha256:013e950c626eaaab7716afeb6fe844a5ea1d88f4b6b850a8b56524fed0799a09
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **540.2 MB (540198168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78fe2ce51b611491912d4b21a3d3845ac595b4bb11ea1ebd221dc4f02cb1251a`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

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
# Sat, 29 Dec 2018 20:49:23 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 20:49:23 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 20:49:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 20:49:25 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 20:49:25 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 20:49:25 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 20:49:25 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 20:50:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 20:50:41 GMT
CMD ["jshell"]
# Sun, 30 Dec 2018 06:48:55 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Tue, 08 Jan 2019 11:38:49 GMT
ENV CLOJURE_VERSION=1.10.0.411
# Tue, 08 Jan 2019 11:38:49 GMT
WORKDIR /tmp
# Tue, 08 Jan 2019 11:38:55 GMT
RUN apt-get update && apt-get install -y rlwrap
# Tue, 08 Jan 2019 11:38:56 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 08 Jan 2019 11:39:04 GMT
RUN clojure -e "(clojure-version)"
# Tue, 08 Jan 2019 11:39:04 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:833dcb2286b87545da2cf58e48ca05af427a320abca8a29817c8392a102ca895`  
		Last Modified: Sat, 29 Dec 2018 21:19:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9fefb56e56b4109eeef9f562cfb7c1dabc48cd1dbd3e3e3d8bff854a6753d4`  
		Last Modified: Sat, 29 Dec 2018 21:19:20 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839456ae209c748423d01ce31223717ad94b9c772a715f41fda77d5e5a9f7efd`  
		Last Modified: Sat, 29 Dec 2018 21:19:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1918504971b28fc9c867eaf74b1eb0d344ba8bd1dcafd191736801b8749df15`  
		Last Modified: Sat, 29 Dec 2018 21:20:04 GMT  
		Size: 388.1 MB (388093422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ed5327dcbea59ae3a94a6bdc03e2d165d686d0dd5c896472e75d8463543d74`  
		Last Modified: Tue, 08 Jan 2019 11:39:29 GMT  
		Size: 14.3 MB (14328668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:990575eeb0092d06e59a5e12e9c4200263a37ad5bdebf82a5e740b07658e063c`  
		Last Modified: Tue, 08 Jan 2019 11:39:29 GMT  
		Size: 19.8 MB (19761911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415efe50585b35abbd007b556f1db3289e46f356eae9d6e4915ae5cb988f0b02`  
		Last Modified: Tue, 08 Jan 2019 11:39:27 GMT  
		Size: 4.1 MB (4102733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps` - linux; ppc64le

```console
$ docker pull clojure@sha256:71644c9c3a3359b1e53aed7d09daaa6c6f026b94e5c5bf0d2b5b0c2e43c6973d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.0 MB (441037024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e60ceb701c5653bbf507d38f50dd46c810034dcdad3819e71dda2593ba0e3ecc`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:40:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:40:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:19:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:19:20 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 12:19:22 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:19:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 12:19:30 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 12:19:32 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 12:19:33 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 12:19:35 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 12:23:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 12:23:48 GMT
CMD ["jshell"]
# Sat, 29 Dec 2018 17:53:42 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Tue, 08 Jan 2019 09:17:25 GMT
ENV CLOJURE_VERSION=1.10.0.411
# Tue, 08 Jan 2019 09:17:26 GMT
WORKDIR /tmp
# Tue, 08 Jan 2019 09:17:42 GMT
RUN apt-get update && apt-get install -y rlwrap
# Tue, 08 Jan 2019 09:17:48 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 08 Jan 2019 09:18:02 GMT
RUN clojure -e "(clojure-version)"
# Tue, 08 Jan 2019 09:18:05 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f635fa148b382c93885cce85133b6f1ba33b1a391347329805ce973d3061d42`  
		Last Modified: Sat, 29 Dec 2018 11:18:00 GMT  
		Size: 10.0 MB (9986429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c0099cf676e2655012d38610077379647258d6af103b65ff34d91637631fc6`  
		Last Modified: Sat, 29 Dec 2018 11:17:59 GMT  
		Size: 4.3 MB (4295725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac453cf9be4657ff3c6bbb021d7e64057957b45d1f84550e3655ba5cdcd0f58b`  
		Last Modified: Sat, 29 Dec 2018 11:18:38 GMT  
		Size: 50.1 MB (50064531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b146ea60af943e531634711eeb85e5f21bb365e1fac66849b36e4090cdf178a4`  
		Last Modified: Sat, 29 Dec 2018 12:53:14 GMT  
		Size: 886.0 KB (885979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e0952f871e943a4dcb2b1515a9cf479bd8288d4c0cadfb1338971dffac37dd`  
		Last Modified: Sat, 29 Dec 2018 12:53:14 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f54b7d72ab1b0cfb125ffd4ac7ba8de89a2f64badae2d5b2f314e0cce7332a`  
		Last Modified: Sat, 29 Dec 2018 12:53:16 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ecc628a4f6cf02bb7ad06a85ec0f579d879f67652f46c0723dc5fb778041c78`  
		Last Modified: Sat, 29 Dec 2018 12:53:13 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51c6d05ca8653b1911091d8e5f87c649fda5625a35d1742ac716f54636c518b`  
		Last Modified: Sat, 29 Dec 2018 12:54:10 GMT  
		Size: 292.8 MB (292839051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:326e93c0a79c4211dd655dd83713b885faebad7c02438c8eb53108f7dbfe9e12`  
		Last Modified: Tue, 08 Jan 2019 09:18:55 GMT  
		Size: 13.5 MB (13494175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ebefbf04998b79c9407c9c7900da43d3eed8b7e2145b89cd0ca0e1f7a54b30`  
		Last Modified: Tue, 08 Jan 2019 09:18:55 GMT  
		Size: 19.8 MB (19762042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee84a0edc023ca86e8f9c9a388c899ce59b84c014f17edf935b6a3df1bc17796`  
		Last Modified: Tue, 08 Jan 2019 09:18:53 GMT  
		Size: 4.1 MB (4102791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps` - linux; s390x

```console
$ docker pull clojure@sha256:7d95eb2a2a2a32cd30837317e7f0b81a341ddab5ffde68a970267856a3d1be97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.2 MB (441159920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d08d2f6aceaa863bca19cca21c80c5018bb52be05e74c556d39b6782022f33dc`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Sat, 29 Dec 2018 12:43:32 GMT
ADD file:77b66e4dfb1b6be05fbe0809b73dba123a7c18a1f16751d165a43a9d6d7e8c42 in / 
# Sat, 29 Dec 2018 12:43:33 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:15:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:15:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 13:16:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:23:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:23:35 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 14:23:35 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:23:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 14:23:37 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 14:23:38 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 14:23:38 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 14:23:38 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 14:24:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 14:24:45 GMT
CMD ["jshell"]
# Sat, 29 Dec 2018 17:44:46 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Tue, 08 Jan 2019 12:42:29 GMT
ENV CLOJURE_VERSION=1.10.0.411
# Tue, 08 Jan 2019 12:42:30 GMT
WORKDIR /tmp
# Tue, 08 Jan 2019 12:42:35 GMT
RUN apt-get update && apt-get install -y rlwrap
# Tue, 08 Jan 2019 12:42:37 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 08 Jan 2019 12:42:42 GMT
RUN clojure -e "(clojure-version)"
# Tue, 08 Jan 2019 12:42:42 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:c5e4ba148bd18e885706d64bd30df16338c81bebed6fd5ef73479d4ac92a7249`  
		Last Modified: Sat, 29 Dec 2018 12:46:37 GMT  
		Size: 45.2 MB (45206162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ab879437b7ffa94dbf20c17fff26c665632ba45fe169c1234acdfc98235ea4`  
		Last Modified: Sat, 29 Dec 2018 13:25:05 GMT  
		Size: 10.3 MB (10312640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26d08cd769086cf57f94597710a8e83155b78206b639c049f55a8c4c2896ce2`  
		Last Modified: Sat, 29 Dec 2018 13:25:04 GMT  
		Size: 4.4 MB (4371853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dfbcf77830b9f550dbf3b3cb64574c5b4efd23d0e4d5607d36922028f4c25a`  
		Last Modified: Sat, 29 Dec 2018 13:25:22 GMT  
		Size: 50.5 MB (50488007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f92dbd48441dd77018658382901652d708ab431dffeed3de82eb78c85467ec8`  
		Last Modified: Sat, 29 Dec 2018 14:30:50 GMT  
		Size: 903.4 KB (903386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb3cb6e547ae31555539aef7d93562e4cedfd3b90ed6f2e92148b9041dc88d8`  
		Last Modified: Sat, 29 Dec 2018 14:30:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd552b0769168f7345a6065e87e015ef9ce227e26c6566a7125ac4363d42ec7`  
		Last Modified: Sat, 29 Dec 2018 14:30:49 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126a58bb7e311af905c7f075982bec7300b1de47fb0569d0c27784392fcad7db`  
		Last Modified: Sat, 29 Dec 2018 14:30:49 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec60614d437ceba07eb7884c7c670aa32bd4da2d4982a151bdf1eaa309601fc`  
		Last Modified: Sat, 29 Dec 2018 14:31:15 GMT  
		Size: 293.3 MB (293270521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e8a05cbe360f8c0be111dc00d46f0734b929a801ecff14b1df85ee74cd86a2`  
		Last Modified: Tue, 08 Jan 2019 12:43:26 GMT  
		Size: 12.7 MB (12742105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0affaf56f1b670c508c638e2431f7d8281c1db8b9945bd732ecaa1c7ef51aea4`  
		Last Modified: Tue, 08 Jan 2019 12:43:26 GMT  
		Size: 19.8 MB (19761924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79335d114f23e6364a2e30c60b08cd5e62978e30861f83f213dad7b6277e5a09`  
		Last Modified: Tue, 08 Jan 2019 12:43:24 GMT  
		Size: 4.1 MB (4102720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

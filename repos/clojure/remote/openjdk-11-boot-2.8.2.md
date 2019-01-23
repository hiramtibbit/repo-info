## `clojure:openjdk-11-boot-2.8.2`

```console
$ docker pull clojure@sha256:c6d0834fc5982194f76138a6f1bfdef5b4d8392f031cf7fe023d806a1ee9a510
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

### `clojure:openjdk-11-boot-2.8.2` - linux; amd64

```console
$ docker pull clojure@sha256:d6c65d8926408e19c397871a948f47666422dccd6c7456c391f2f86e15cba932
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **476.3 MB (476252475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f156763b563671f5d0258b081ae14870831ee75274e937bbf7f5e35b496a8b`
-	Default Command: `["boot","repl"]`

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
# Wed, 23 Jan 2019 05:51:54 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Wed, 23 Jan 2019 05:51:54 GMT
ENV BOOT_VERSION=2.8.2
# Wed, 23 Jan 2019 05:51:54 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Wed, 23 Jan 2019 05:51:54 GMT
WORKDIR /tmp
# Wed, 23 Jan 2019 05:51:56 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Wed, 23 Jan 2019 05:51:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 23 Jan 2019 05:51:56 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 23 Jan 2019 05:52:47 GMT
RUN boot
# Wed, 23 Jan 2019 05:52:47 GMT
CMD ["boot" "repl"]
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
	-	`sha256:b725c94d99bd5c0db8d0ffc4dcbd94a3d572961f0d7acc07921b04bdcab4eef9`  
		Last Modified: Wed, 23 Jan 2019 05:54:31 GMT  
		Size: 6.9 KB (6897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d0aeba78e2ee67f7657a273a2e8ca4e23bba934300d1c41831b865acba40ef`  
		Last Modified: Wed, 23 Jan 2019 05:54:36 GMT  
		Size: 39.3 MB (39344214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-boot-2.8.2` - linux; arm variant v5

```console
$ docker pull clojure@sha256:6d7b119e5f9f4b354a5d2bd55f6897ff18776bf280f1ae3e94434e44345e761e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.0 MB (409034467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f82737e913289fbfb5c9879da05290339bca0027d7a30e4bb20c64dcfb32ea26`
-	Default Command: `["boot","repl"]`

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
# Wed, 23 Jan 2019 16:26:48 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Wed, 23 Jan 2019 16:26:48 GMT
ENV BOOT_VERSION=2.8.2
# Wed, 23 Jan 2019 16:26:49 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Wed, 23 Jan 2019 16:26:49 GMT
WORKDIR /tmp
# Wed, 23 Jan 2019 16:26:51 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Wed, 23 Jan 2019 16:26:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 23 Jan 2019 16:26:52 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 23 Jan 2019 16:32:15 GMT
RUN boot
# Wed, 23 Jan 2019 16:32:17 GMT
CMD ["boot" "repl"]
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
	-	`sha256:df0694e988090e717e376253513417382f41e0c0062d39e4dcd3abf45a66ce5e`  
		Last Modified: Wed, 23 Jan 2019 16:35:15 GMT  
		Size: 6.9 KB (6898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa803ea874ec3ac687337df500c60a3e0f7940b25ae7820dc7e8fbc7583816f6`  
		Last Modified: Wed, 23 Jan 2019 16:35:22 GMT  
		Size: 39.3 MB (39344938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-boot-2.8.2` - linux; arm variant v7

```console
$ docker pull clojure@sha256:cc914030539c320fa838250f203f414e55c4a22383317484d05380f30f52e5aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **423.2 MB (423213142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eab5465e9d3e234c4002b35d9623eaad8b67ef3fe13887fa4630162a205c23b9`
-	Default Command: `["boot","repl"]`

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
# Fri, 04 Jan 2019 12:58:31 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Fri, 04 Jan 2019 12:58:32 GMT
ENV BOOT_VERSION=2.8.2
# Fri, 04 Jan 2019 12:58:32 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Fri, 04 Jan 2019 12:58:32 GMT
WORKDIR /tmp
# Fri, 04 Jan 2019 12:58:34 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Fri, 04 Jan 2019 12:58:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 04 Jan 2019 12:58:35 GMT
ENV BOOT_AS_ROOT=yes
# Fri, 04 Jan 2019 12:59:40 GMT
RUN boot
# Fri, 04 Jan 2019 12:59:41 GMT
CMD ["boot" "repl"]
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
	-	`sha256:9a6896fdae850c32a552820fc73f83986e557ea06debde243d2791f04928eaab`  
		Last Modified: Fri, 04 Jan 2019 13:01:08 GMT  
		Size: 6.9 KB (6901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b35bbc8edd157165fb80d14b414b490a2c1c6e366b7de039fc320c98c64955`  
		Last Modified: Fri, 04 Jan 2019 13:01:15 GMT  
		Size: 39.3 MB (39344361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-boot-2.8.2` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b9a1701a0433466fa08e1822197d47ed969df5a67d04656ecd3d2af60df46d8a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **446.9 MB (446881782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ca6dd65cb2047903f5020e9bfd3dfd96ef4cdba590ca1a9a0d3c3ab3044fe9`
-	Default Command: `["boot","repl"]`

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
# Sun, 30 Dec 2018 03:04:02 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Sun, 30 Dec 2018 03:04:03 GMT
ENV BOOT_VERSION=2.8.2
# Sun, 30 Dec 2018 03:04:04 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Sun, 30 Dec 2018 03:04:06 GMT
WORKDIR /tmp
# Sun, 30 Dec 2018 03:04:10 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Sun, 30 Dec 2018 03:04:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 30 Dec 2018 03:04:16 GMT
ENV BOOT_AS_ROOT=yes
# Sun, 30 Dec 2018 03:05:39 GMT
RUN boot
# Sun, 30 Dec 2018 03:05:40 GMT
CMD ["boot" "repl"]
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
	-	`sha256:c20182f47510fc9314f94f662d4928d41ea42237084db3de8c755d5b38e40fdd`  
		Last Modified: Sun, 30 Dec 2018 03:07:35 GMT  
		Size: 6.9 KB (6897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4030f8c47453ce8580ae58dbb4286d209aa473348d24dbdfb980ba7c5c1b4184`  
		Last Modified: Sun, 30 Dec 2018 03:07:43 GMT  
		Size: 39.3 MB (39344356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-boot-2.8.2` - linux; 386

```console
$ docker pull clojure@sha256:3ec6694ff4ccc2090b336e6f993d4eb674d6b80be62d381806311614ecf4bffa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **541.4 MB (541356045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ffd8f98ccf8f023c0f7dd5add060af10f3ca0898c54e89c8e5dd234dfa6aad6`
-	Default Command: `["boot","repl"]`

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
# Sun, 30 Dec 2018 06:48:03 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Sun, 30 Dec 2018 06:48:03 GMT
ENV BOOT_VERSION=2.8.2
# Sun, 30 Dec 2018 06:48:03 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Sun, 30 Dec 2018 06:48:03 GMT
WORKDIR /tmp
# Sun, 30 Dec 2018 06:48:04 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Sun, 30 Dec 2018 06:48:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 30 Dec 2018 06:48:05 GMT
ENV BOOT_AS_ROOT=yes
# Sun, 30 Dec 2018 06:48:45 GMT
RUN boot
# Sun, 30 Dec 2018 06:48:46 GMT
CMD ["boot" "repl"]
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
	-	`sha256:3c62b021959af8e0c4772de6fd0e34200750ba1d39f98f21c11a222ec18cd9e0`  
		Last Modified: Sun, 30 Dec 2018 06:49:54 GMT  
		Size: 6.9 KB (6898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca3d26fc6485f54489a908bce87189f3ca338ef1fef07d1bef037ce82e3cf1d`  
		Last Modified: Sun, 30 Dec 2018 06:49:58 GMT  
		Size: 39.3 MB (39344291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-boot-2.8.2` - linux; ppc64le

```console
$ docker pull clojure@sha256:1a7a02006fa0d18af555e520ffd9759990cd51a921c9550efbe834b2074483a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.0 MB (443041576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:642384ea4b3140acd810f63140cb1a15e20866f1602605945acbb490839591e4`
-	Default Command: `["boot","repl"]`

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
# Wed, 23 Jan 2019 12:14:23 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 23 Jan 2019 12:14:25 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:14:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:14:33 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 12:14:35 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 12:14:37 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 23 Jan 2019 12:14:39 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 23 Jan 2019 12:18:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 12:19:04 GMT
CMD ["jshell"]
# Wed, 23 Jan 2019 18:34:13 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Wed, 23 Jan 2019 18:34:15 GMT
ENV BOOT_VERSION=2.8.2
# Wed, 23 Jan 2019 18:34:17 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Wed, 23 Jan 2019 18:34:20 GMT
WORKDIR /tmp
# Wed, 23 Jan 2019 18:34:26 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Wed, 23 Jan 2019 18:34:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 23 Jan 2019 18:34:29 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 23 Jan 2019 18:36:14 GMT
RUN boot
# Wed, 23 Jan 2019 18:36:16 GMT
CMD ["boot" "repl"]
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
	-	`sha256:aa5a217a0ba7e6c5b73e96fee56542079906298f0bcdda05ecdaccad7b4e6a10`  
		Last Modified: Wed, 23 Jan 2019 12:41:05 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb482ebe62ffdc34a0e70a1e801d45575214a42dac89cedadd321d3412248231`  
		Last Modified: Wed, 23 Jan 2019 12:41:04 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2e2657236e1b1802d8ad2ea76c1baf7ca6fa1b5e06b9f4cf184d80361bbb9a`  
		Last Modified: Wed, 23 Jan 2019 12:41:05 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e6e785dfefaab8286dbd5ba4923ad1103c9bb553514fa59febb809048998b3`  
		Last Modified: Wed, 23 Jan 2019 12:41:54 GMT  
		Size: 292.8 MB (292838862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a686b7f3609fb24a03ca13a7e6ef304a1f736e7a71ade9ce51f6bd7be7655a8`  
		Last Modified: Wed, 23 Jan 2019 18:38:38 GMT  
		Size: 6.9 KB (6897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d729dcd5a7e4b32aa5180bc14ed33dd6a03a43a5f8b8ebf6c4310ad52797a6`  
		Last Modified: Wed, 23 Jan 2019 18:38:43 GMT  
		Size: 39.3 MB (39344752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-boot-2.8.2` - linux; s390x

```console
$ docker pull clojure@sha256:d042ad7d5754f3f2eb9969973838b43665668713dc9b94875b2e39edef4c1798
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.9 MB (443904293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd4ba6626cd0ba3ecf204e1084c9e7b97eddff7ee8eb9da1a2596bda41e2613`
-	Default Command: `["boot","repl"]`

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
# Sat, 29 Dec 2018 17:43:57 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Sat, 29 Dec 2018 17:43:57 GMT
ENV BOOT_VERSION=2.8.2
# Sat, 29 Dec 2018 17:43:57 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Sat, 29 Dec 2018 17:43:57 GMT
WORKDIR /tmp
# Sat, 29 Dec 2018 17:43:58 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Sat, 29 Dec 2018 17:43:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 29 Dec 2018 17:43:59 GMT
ENV BOOT_AS_ROOT=yes
# Sat, 29 Dec 2018 17:44:42 GMT
RUN boot
# Sat, 29 Dec 2018 17:44:42 GMT
CMD ["boot" "repl"]
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
	-	`sha256:309674194a10904ccbbc0b73b0140ff8db74d6b2a2e72e01f6754aecfa352e42`  
		Last Modified: Sat, 29 Dec 2018 17:46:04 GMT  
		Size: 6.9 KB (6899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5272aad9c116a7ea46586fdee884828e9e4c5a4ff920c0e5d1af99dc220753ab`  
		Last Modified: Sat, 29 Dec 2018 17:46:07 GMT  
		Size: 39.3 MB (39344223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

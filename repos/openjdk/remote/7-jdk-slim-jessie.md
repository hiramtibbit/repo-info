## `openjdk:7-jdk-slim-jessie`

```console
$ docker pull openjdk@sha256:24179c51bfdff46ce41aad3d7ee279972213f67f74b5c45f161358ece0a14ba5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7-jdk-slim-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:e27122af03a19b197628708220f9eaf49b8233d916cca2b1d392b7c7fd3ac15c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115790933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57c59d8cfb61be4da14b99ddd85ccfc6f7419292a51af8fad4faa940688e955f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:32:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:32:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:32:09 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:32:10 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:32:10 GMT
ENV JAVA_VERSION=7u181
# Tue, 16 Oct 2018 05:32:10 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 16 Oct 2018 05:33:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8defe034fd48900ab2c6e8bd0efb090a2e8d7dc437c82e961339ec4ad7737`  
		Last Modified: Tue, 16 Oct 2018 06:03:14 GMT  
		Size: 463.7 KB (463743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d8dad75e602d23f8d377d9e8981537f979365546442ee03aabbe7a2826ae42`  
		Last Modified: Tue, 16 Oct 2018 06:03:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad497c7359958782aa0f99bcc986a3e88be017a1052c80d1f7b51d886c93c462`  
		Last Modified: Tue, 16 Oct 2018 06:03:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba98c252b6c1ff288a099f0b1e4e66dfe9fa004e77bfc35b8e870837db911666`  
		Last Modified: Tue, 16 Oct 2018 06:03:27 GMT  
		Size: 85.2 MB (85206189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-slim-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:f53cc43d8c790405243313a9e1707bde6cd752179ed85944b6408524ae148032
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101070397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a432cc044a27774d42248a688e5fa7c3f6ebba752c6530fdd3ee9332b5a2f8ca`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:50:34 GMT
ADD file:69b30c48e8faba6f806af50fceaf1e3c221790b8c792da2f95d196e874576d79 in / 
# Tue, 16 Oct 2018 08:50:34 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:16:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:16:19 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 09:16:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 09:16:22 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 09:16:22 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 09:16:22 GMT
ENV JAVA_VERSION=7u181
# Tue, 16 Oct 2018 09:16:23 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 16 Oct 2018 09:18:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:60074b2fffc5dcd4b352d0312d355ce10a4ab05ced3d44643c9b24e24d0e0677`  
		Last Modified: Tue, 16 Oct 2018 09:00:17 GMT  
		Size: 28.4 MB (28430766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aeec93c39892ab38a29c804d36b6e00fe148e151b04537b0d15730f9f491992`  
		Last Modified: Tue, 16 Oct 2018 09:27:25 GMT  
		Size: 456.5 KB (456464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc857170e080ede98a479682d6478fd31a131756212ac768dd59b0a9afa1f6e1`  
		Last Modified: Tue, 16 Oct 2018 09:27:25 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7ab62c4c593ba60dc90051684f35dfc9020702c624ecaa4061567dc0f0bf7b`  
		Last Modified: Tue, 16 Oct 2018 09:27:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5097c54cf14d6c89a80834ea4e23bb6e14bbea75394f2dbb97f8bee5d447dbeb`  
		Last Modified: Tue, 16 Oct 2018 09:27:41 GMT  
		Size: 72.2 MB (72182788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-slim-jessie` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:da33418ad300f2a52488d07cf9a93a8211b4efef84ac71621036bfac787aef79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.2 MB (97229522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecb643f74a03a462153d8db3780c1ce411716f2331740988efa6016ae649359c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:27:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:27:59 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:28:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 13:28:02 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 13:28:02 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 13:28:02 GMT
ENV JAVA_VERSION=7u181
# Wed, 05 Sep 2018 13:28:03 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Wed, 05 Sep 2018 13:29:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20732298c973041fa9dfd5140384088b681b5210d358af234f804c92ea624af8`  
		Last Modified: Wed, 05 Sep 2018 13:45:03 GMT  
		Size: 432.3 KB (432314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:306c16b05ac260bf5495a9d4e58021eaee24fbbbb56c335ef2a1c49ad0965ec0`  
		Last Modified: Wed, 05 Sep 2018 13:45:03 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1850d26c80f8e448e6e27b56b953c98e21ec755978c144ce38fc7579edac845e`  
		Last Modified: Wed, 05 Sep 2018 13:45:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0c6734989760ae2cd2083cab8fcd04cc755190895509541f6f227f64a72f3d`  
		Last Modified: Wed, 05 Sep 2018 13:45:13 GMT  
		Size: 70.5 MB (70509827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-slim-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:0e6c57721afcbd3bde5db44f0c24b11017261ef925059344abaac44dc86b5313
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.9 MB (127862516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab8fc0d9860e4da81e39d0c49f455018df516c9d5decc791f829daa8be6733c6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:35:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:35:57 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 11:35:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 11:35:59 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 11:35:59 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 11:35:59 GMT
ENV JAVA_VERSION=7u181
# Tue, 16 Oct 2018 11:36:00 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 16 Oct 2018 11:37:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d28dea50a0a6c166453e799480a57b8890590642b67034c31296dd7bc5696b`  
		Last Modified: Tue, 16 Oct 2018 11:55:34 GMT  
		Size: 466.3 KB (466295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083f1690fc9840e55430ab8c1f43052ae609c4c6b3052be511232f859abc1163`  
		Last Modified: Tue, 16 Oct 2018 11:55:33 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5acd3e3a4c53112aa97d4e0fa8d777684931f1f04d6a31a6eb185817ffcd65c8`  
		Last Modified: Tue, 16 Oct 2018 11:55:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af68189b044a3fc70670e1a7eca29d9e7e8fd40ec42221606b8ba0bb20383e1`  
		Last Modified: Tue, 16 Oct 2018 11:56:07 GMT  
		Size: 97.1 MB (97125809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

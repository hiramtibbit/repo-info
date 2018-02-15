## `openjdk:7u151-slim`

```console
$ docker pull openjdk@sha256:b7d3677934e55aff10eecf74ab0e9a7312fb9c9c536dbfb77ae92f38a06765d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:7u151-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:2cc5cd9a5c0e5b5c1cb4d5a387acc7c27e159d4915b004a37aaa872f0e6d0456
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148793919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41fe7082b2cb8a97e9ec2e2504540fcd494966b7cc571277b0375138aa197a75`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 11:20:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:20:03 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:20:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:20:04 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:28:36 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 11:28:36 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 11:28:37 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 11:29:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fec0543fd17fcc06dc7f9580e91161d0e8c8f0b7271bf7cd18cf215b48546c`  
		Last Modified: Thu, 15 Feb 2018 13:52:24 GMT  
		Size: 463.7 KB (463719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155279dc81606a38fc5cd90dfe3c57797ad50ba297323a1d6acdab7ba880f169`  
		Last Modified: Thu, 15 Feb 2018 13:52:24 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46e519e04f821ad35cb0e6bc50d82435ee2cb78842f0cd8caa1ab028a7af46a`  
		Last Modified: Thu, 15 Feb 2018 13:52:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969e4d3a2fc80b37bab8d5d6118ada4b5abf455cad05a55a70105b9e55c688fe`  
		Last Modified: Thu, 15 Feb 2018 13:54:32 GMT  
		Size: 118.2 MB (118207442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:f142ab3c13efcbda14b8334273a9c57268ebd4248cf41ba3ace57d2cbad2067a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121607930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2ed49c71b4112408cadb400f3ad89323cf38a3eee5c01a8bcf7d795145281f5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:33 GMT
ADD file:29d0e44ebcc6f8dc2cfbc86c5034380677d263e9eec27a22ba045e0810836f81 in / 
# Tue, 12 Dec 2017 20:57:34 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:28:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:28:16 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 23:28:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 23:28:18 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 23:28:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 23:28:19 GMT
ENV JAVA_VERSION=7u151
# Tue, 12 Dec 2017 23:28:19 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 12 Dec 2017 23:29:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:51e696f556166d0e25b3b27c824c4aafbddd5adcfd3f5186c09707f7baa3b312`  
		Last Modified: Tue, 12 Dec 2017 21:07:41 GMT  
		Size: 28.4 MB (28423526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa099f182f1269f00e84b0752f62b91a57b8dc0308620b6d011bc11d368a4423`  
		Last Modified: Tue, 12 Dec 2017 23:50:50 GMT  
		Size: 456.4 KB (456443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99dcc9c8d949f6d6d32b34588004033e87e1ff1b4d10d6ffc6cbc1b16f2df88f`  
		Last Modified: Tue, 12 Dec 2017 23:50:49 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d7376d2cc9b9f5ba46cefb8d86e6bce4cadeab4d23601ba94e3c67723fc201`  
		Last Modified: Tue, 12 Dec 2017 23:50:49 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b04ddf811a0d94746c28a51f364e38b864d72ac4e4b4c4a90a5606b06a44cd`  
		Last Modified: Tue, 12 Dec 2017 23:51:11 GMT  
		Size: 92.7 MB (92727583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:432d452fe375320bef552d04df60b6bfc48c6c0e5f5e3d028c8ea093d7264026
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.2 MB (127197365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9865117f26ef0ae27b127275c4d88989583d65bef361d2c3c8b0e7faf81bbc0`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:27:02 GMT
ADD file:93c7ef253ac06f9011215f1bb9c9f62f9ce89ba664e894251a9e324fc6e8d3aa in / 
# Thu, 15 Feb 2018 13:27:02 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 15:10:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 15:10:04 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 15:10:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 15:10:06 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 15:13:35 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 15:13:35 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 15:13:35 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 15:15:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:0172d99052b787811768cdf05d717087e0c1e28761dbc7c7b19d943e6decaec5`  
		Last Modified: Thu, 15 Feb 2018 13:36:28 GMT  
		Size: 26.3 MB (26290245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7720d873307865f93ab5fb1a91a523a2a6ecc30622e796abca192f7f250e60`  
		Last Modified: Thu, 15 Feb 2018 15:40:32 GMT  
		Size: 432.3 KB (432329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c9d1a95cfdd997dd24430b77a24ec7b856fcc7e26e77f09adb578f9887227f`  
		Last Modified: Thu, 15 Feb 2018 15:40:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454a2d5067db243997a070cef7e19af881ea708e17de8e022cf8697cc26d2634`  
		Last Modified: Thu, 15 Feb 2018 15:40:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e80485260f675c874f4987c33d4412db2d8d70d894ba2f93bef08d37f9489b1`  
		Last Modified: Thu, 15 Feb 2018 15:43:17 GMT  
		Size: 100.5 MB (100474412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-slim` - linux; 386

```console
$ docker pull openjdk@sha256:0f2df9bf8e109060b622f00ff482e7d8f6615d9a0659caf6b4d13eea8f3436e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.9 MB (161856611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efe9c7569184011f08b74a7eed0b828ee8713d7f62d2b7644c3f0c5f4e2be130`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 18:27:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:27:31 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 18:27:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 18:27:33 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 18:27:33 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 18:27:33 GMT
ENV JAVA_VERSION=7u151
# Tue, 12 Dec 2017 18:27:34 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 12 Dec 2017 18:29:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e742e390c789a22a9d5c7948944bb6a4066f9faf5477634ad83913840db5e1`  
		Last Modified: Tue, 12 Dec 2017 19:29:22 GMT  
		Size: 466.3 KB (466279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eac488f66f6b7a8d110136c119f7ec7b781c18f8d993046aa54c8427caddf6d`  
		Last Modified: Tue, 12 Dec 2017 19:29:21 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a90fb722b894fee2f17cbf3835d8f4f8c161382e91ebf2deb78e130b63c8d0`  
		Last Modified: Tue, 12 Dec 2017 19:29:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611f33014ca3ac298c4e43c025dc75a7837f0ab320f5f13a8c69dc3aa05adc0b`  
		Last Modified: Tue, 12 Dec 2017 19:29:53 GMT  
		Size: 131.1 MB (131123698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:8561e4fb33e4b82eec6e9d962aa79f0527e349026d08ce19b8847b82b7b09f5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (125011969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f4597e45295a128dc646fc92fd7ebae1090497c69da985256f98c27b46a9f0a`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:34:17 GMT
ADD file:f3263f57a7d4fe956087a3f9803a0f8fe9224b2704ac54c141da2d6a166c737b in / 
# Thu, 15 Feb 2018 01:34:20 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:59:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:59:31 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 03:59:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 03:59:51 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 04:10:10 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 04:10:15 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 04:10:19 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 04:24:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:55e44e991a765aac112a6c9b4f8933a727d8c3fdfd7d5138173ff62b0624fb0c`  
		Last Modified: Thu, 15 Feb 2018 01:42:40 GMT  
		Size: 29.3 MB (29311830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d688336bbef4b11fa75dcd88cac1bbdd7a750adb22608c425310e033ad19bd`  
		Last Modified: Thu, 15 Feb 2018 04:40:44 GMT  
		Size: 460.2 KB (460235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88918fa3c71f920a1c3a4766b4ae643e5864e0abb00a48867a78b10ac68853b`  
		Last Modified: Thu, 15 Feb 2018 04:40:44 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696f18b6e68dd259022d2163b171e873f3b1715b3687c5e833e6173ac39a7855`  
		Last Modified: Thu, 15 Feb 2018 04:40:45 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e577b641f0451829e47648343b9e258610134cd6b5ecbea395425ec617359f`  
		Last Modified: Thu, 15 Feb 2018 04:41:42 GMT  
		Size: 95.2 MB (95239525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:ad19bd533b888ea9afef358b212108a9a5b0a4c46b86712adb89e4b54ddb9a21
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.9 MB (125851739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3cf78d1435865defd78d228caacf07e338639e13425cb701d0360fc4aa6beff`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 06:23:05 GMT
ADD file:68877912183dff16971679b6264399a76d678986d7cf02bbba2e006d91077cf3 in / 
# Tue, 12 Dec 2017 06:23:06 GMT
CMD ["bash"]
# Sun, 07 Jan 2018 10:54:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 10:54:18 GMT
ENV LANG=C.UTF-8
# Sun, 07 Jan 2018 10:54:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sun, 07 Jan 2018 10:54:19 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sun, 07 Jan 2018 10:54:19 GMT
ENV JAVA_HOME=/docker-java-home
# Sun, 07 Jan 2018 10:54:19 GMT
ENV JAVA_VERSION=7u151
# Sun, 07 Jan 2018 10:54:19 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Sun, 07 Jan 2018 10:55:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:7ef9b5c13de473137c3ae16d379a5f152b59921d4e96887c06f9e1291af84691`  
		Last Modified: Thu, 14 Dec 2017 00:53:34 GMT  
		Size: 30.3 MB (30293639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40419d8d4fbc32bdf12adfe4580d9eaa2624174ba8e774e1c1dc35be810cf89a`  
		Last Modified: Sun, 07 Jan 2018 10:57:57 GMT  
		Size: 473.2 KB (473182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b88ab8ae2079412cf2569dadda28662d31e65856ffb5de1b25e5158476b325`  
		Last Modified: Sun, 07 Jan 2018 10:57:57 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c08130233733fbacd45b069bf6581f0125b702449e1e23ca3d384d2b4eaf7a`  
		Last Modified: Sun, 07 Jan 2018 10:57:57 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1233671c70bd93a5669286cd13f9cc585a4a08e2fe9546483b77fdc913fbad`  
		Last Modified: Sun, 07 Jan 2018 10:58:10 GMT  
		Size: 95.1 MB (95084537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

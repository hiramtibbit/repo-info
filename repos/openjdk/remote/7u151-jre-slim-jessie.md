## `openjdk:7u151-jre-slim-jessie`

```console
$ docker pull openjdk@sha256:6dd040d45e7da283283511e263d793dc970da67326603d38c9ac56850ca57c8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:7u151-jre-slim-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:893f93641a117899bbfdf098821858059a44cc6a7b31a8893adcbc075f87ef9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104327724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:593406fffdd1e2cc5660cba60e451ea6ae11f7fcc2c004b1d220fb993c191b35`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:24:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 05:24:00 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 05:24:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 05:24:07 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 05:31:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Dec 2017 05:31:55 GMT
ENV JAVA_VERSION=7u151
# Tue, 12 Dec 2017 05:31:55 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 12 Dec 2017 05:32:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6172df11fd37fb5c8236578573abb3a4fcfe301991cee5f56aa9bf791efe27`  
		Last Modified: Tue, 12 Dec 2017 05:46:13 GMT  
		Size: 463.7 KB (463702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa777ba277022b8fdb201deb1eb0f0ae3fb4b94f455a6b85ff778e4cd01f694`  
		Last Modified: Tue, 12 Dec 2017 05:46:13 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475c21de02f74cf8ededa50463a3a43806babeb4b27b5a1541994cf945e05641`  
		Last Modified: Tue, 12 Dec 2017 05:46:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d697fcef8eb9c90d711524dcf7a1bb595040c311eca70b5edb7a287777dca88c`  
		Last Modified: Tue, 12 Dec 2017 05:48:37 GMT  
		Size: 73.7 MB (73749126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-slim-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:46d96b444f3a256f11d01c1949dd54ebef8b3206552e64f769df16235e70f17a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.3 MB (92261859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96c49d5d473d619a2f9b2c178ee391b33ef920e802088b1edf197c6821f83f06`
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
# Tue, 12 Dec 2017 23:32:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Dec 2017 23:32:06 GMT
ENV JAVA_VERSION=7u151
# Tue, 12 Dec 2017 23:32:06 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 12 Dec 2017 23:33:18 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:5054eb9a6feca86e94e9a6863fc8eaed12749b4a0121c1137742d727b43b5b65`  
		Last Modified: Tue, 12 Dec 2017 23:52:46 GMT  
		Size: 63.4 MB (63381512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-slim-jessie` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:a5bfee21c507944740894c8d0de1680afa5a53732d8c25a2b01ac10273b1cc3a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.6 MB (88643509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2280ff0902c60165c76dc26672cf69d17d8d31bf34441f7272befbb39c821591`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:47 GMT
ADD file:1f5de474caa19da14d698a3f9c3d161abfa1e19e258a596d64f3dfc9e2f17686 in / 
# Tue, 12 Dec 2017 13:27:47 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 15:08:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:08:54 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 15:08:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 15:08:56 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 15:12:41 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Dec 2017 15:12:41 GMT
ENV JAVA_VERSION=7u151
# Tue, 12 Dec 2017 15:12:41 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 12 Dec 2017 15:13:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:4b9c0f1a415433a98643bdda391dcf4fe5d9653fc3ed3845c7ac1be99eb43399`  
		Last Modified: Tue, 12 Dec 2017 13:39:52 GMT  
		Size: 26.3 MB (26282714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8304bfd7bdc1b8313bdad168853b583b33ed755c0b18ec792f826b5c21e175b5`  
		Last Modified: Tue, 12 Dec 2017 15:30:56 GMT  
		Size: 432.3 KB (432316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d635e96167e4b85a80c60577e079a4877a967ab32c491afd1204245f6eb9bfda`  
		Last Modified: Tue, 12 Dec 2017 15:30:56 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01be7961888ba110366d83f07c522f28d21f9798e047e0df17fa7aeae3bb6372`  
		Last Modified: Tue, 12 Dec 2017 15:30:56 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6447a3df7fb98db863e92e341cf34ecf9fe08dd59dea4be6fc97b3876281fd`  
		Last Modified: Tue, 12 Dec 2017 15:33:03 GMT  
		Size: 61.9 MB (61928102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-slim-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:a01cfc895938a75d59fccd68f2242c801d0f02677f6ab6302e2e73cb0c848f22
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115651398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76e7d7a2e56105a37d09f3db6aa9f6b4dc1147bccb15c6f410ce06e6de36439c`
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
# Tue, 12 Dec 2017 18:42:11 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Dec 2017 18:42:12 GMT
ENV JAVA_VERSION=7u151
# Tue, 12 Dec 2017 18:42:12 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 12 Dec 2017 18:43:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:c47590ad17bfd79e54c9f68be23ca00c50fc2e71b51e5d3c1e147fea55ff5135`  
		Last Modified: Tue, 12 Dec 2017 19:36:33 GMT  
		Size: 84.9 MB (84918485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-slim-jessie` - linux; ppc64le

```console
$ docker pull openjdk@sha256:e4d18fda17f26aa1d31a09a0cba57771bcecfa943379b6156e627acd72936f89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95185277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b0f3d3125bc0b41e3818c81f143ce2de09a2c948ed9c23236c97002174350a7`
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
# Thu, 15 Feb 2018 03:59:53 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 03:59:56 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 03:59:58 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 04:09:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:7c1e906856fad05ef0f0c8addcf8764f912421ca67ba536bb6fbb6f338b441c6`  
		Last Modified: Thu, 15 Feb 2018 04:40:57 GMT  
		Size: 65.4 MB (65412833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-slim-jessie` - linux; s390x

```console
$ docker pull openjdk@sha256:6ce3fce5eca23464bf5944c9ed356df77a5bcf825cf8ac560b4fd26851eb3e44
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96267028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f6ddf9e9d6c86e37bc029510bab7ab99741bf9f5ee736507296421bad92b54`
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
# Sun, 07 Jan 2018 10:55:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sun, 07 Jan 2018 10:55:49 GMT
ENV JAVA_VERSION=7u151
# Sun, 07 Jan 2018 10:55:50 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Sun, 07 Jan 2018 10:56:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:63fa3c2a5046f7cb4992faf1c873beaea1de00803bc39e3513f0dcc9838d8340`  
		Last Modified: Sun, 07 Jan 2018 10:59:10 GMT  
		Size: 65.5 MB (65499826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7-jdk-slim`

```console
$ docker pull openjdk@sha256:ea93179aa911d0797f8c9842aac1a8d1cc16374b25b7c8c2e1acf113859545fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7-jdk-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:ce6718f3f228d8801f9b80157867577f45ae0a3434324d1d720aa9588fdb3fb4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115853086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c490a57ec970c3bbfe6dd5774ec9b2445069c559001eafd7c465574b0d1e3c73`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:06:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 03:06:28 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 03:06:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 03:06:31 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 03:06:31 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 03:06:31 GMT
ENV JAVA_VERSION=7u181
# Sat, 29 Dec 2018 03:06:31 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Sat, 29 Dec 2018 03:11:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6670a1a594497beedeeb44939e2e71af22f942d506b9b364eda80d91bbb5ae`  
		Last Modified: Sat, 29 Dec 2018 03:26:59 GMT  
		Size: 463.8 KB (463767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb652a8c72b2bf4a42eb3c7b0b378c31acb66f874ae928e8582d8472ed6a04a`  
		Last Modified: Sat, 29 Dec 2018 03:26:59 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354db4b3a1cad290181859a674fe7c8a8abf1b3d6b17846d1f09edd3a9b945e9`  
		Last Modified: Sat, 29 Dec 2018 03:27:00 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776434d62c6179e3d6e9d1decfe79bbf3971b621308f17812c6be9197da63f93`  
		Last Modified: Sat, 29 Dec 2018 03:27:14 GMT  
		Size: 85.2 MB (85234988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:c683579046ac48d370f6030420b793c127801766b599e48f9cac779a8d4a9ae0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101132673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f61a5c8d95cd7f31c22a1720a0bb1c47e9e5dbfcba67063a6ac3a7325ec3522b`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:50:38 GMT
ADD file:320775ecef6e4af88f2ae8e6e0218006206519d8b54df639063269cb7aa38441 in / 
# Sat, 29 Dec 2018 09:50:39 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:36:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:36:57 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 10:36:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 10:37:00 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 10:37:00 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 10:37:00 GMT
ENV JAVA_VERSION=7u181
# Sat, 29 Dec 2018 10:37:01 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Sat, 29 Dec 2018 10:38:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:79f818f2c6b1cf13b6d4022f7ab9a48b97fe7b3041abbab5fc7396d53791fa60`  
		Last Modified: Sat, 29 Dec 2018 10:00:17 GMT  
		Size: 28.5 MB (28464862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e49500d82d6f827e1717f039ac3297578216194fe6fb18748a49fe71d0602ef`  
		Last Modified: Sat, 29 Dec 2018 10:45:17 GMT  
		Size: 456.5 KB (456507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dae7a5a717d8511578fd71848badaa38d54cb49f313c9e0139295e45421a2ff`  
		Last Modified: Sat, 29 Dec 2018 10:45:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2f3b8df223449ed8aa4a37c84402437917ab5e5ac0dd8744c57d6210a13961`  
		Last Modified: Sat, 29 Dec 2018 10:45:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc98e43c895825417dc0a67acfe922e3d1e2dfadd4eee9088aad4e38e3047de9`  
		Last Modified: Sat, 29 Dec 2018 10:45:32 GMT  
		Size: 72.2 MB (72210926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:b34168e568885e31dc09f423bbf3fe778554e8afe81f91de73aaf3a206820977
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97291868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9727595b573f999ae54a53ce6dc205f2d2cea27a67ce1620164e12dbbc708261`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:59:50 GMT
ADD file:6c1f2291eccb45d62542420c7fb4ef5afa8d7e9060f07f4b318457e090d2197b in / 
# Sat, 29 Dec 2018 12:59:51 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:38:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:38:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 15:38:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 15:38:44 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 15:38:45 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 15:38:45 GMT
ENV JAVA_VERSION=7u181
# Sat, 29 Dec 2018 15:38:45 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Sat, 29 Dec 2018 15:40:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:d1df0b8dad813cd907570b40c56cc21e9462178415e2a8dfb3401347e36f08a2`  
		Last Modified: Sat, 29 Dec 2018 13:09:57 GMT  
		Size: 26.3 MB (26310383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf216ff52bb39ac3599b23a9c0c475044da09f336ea9f7c90c27e310106a9db`  
		Last Modified: Sat, 29 Dec 2018 15:50:48 GMT  
		Size: 432.4 KB (432354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9721b7a9ae813f366b897eadec493e3cb47aff1255e7924bfdd51fefd04e925`  
		Last Modified: Sat, 29 Dec 2018 15:50:48 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379c4b990058e9a98ba62306f39c76250bb1691465147d7ac88370aa7d042ef2`  
		Last Modified: Sat, 29 Dec 2018 15:50:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630cbce2febf0d490b62ee088cb24d1df47964293a9a6b6315402d711e8ee0ec`  
		Last Modified: Sat, 29 Dec 2018 15:51:01 GMT  
		Size: 70.5 MB (70548753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk-slim` - linux; 386

```console
$ docker pull openjdk@sha256:fb81c2eea8c0f4d121c2cd68324aa84f6bccd14fc0cc258a3f703b4dfdac282f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.9 MB (127925148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04c5326bcae581b2cb5164d6cfaf91b19ede5bd5e6de5e5bd29114aea6c95918`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 14:12:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 14:12:32 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 14:12:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 14:12:34 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 14:12:34 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 14:12:34 GMT
ENV JAVA_VERSION=7u181
# Thu, 29 Nov 2018 12:34:06 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Thu, 29 Nov 2018 12:35:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:3141c499c103aa606c5213e7b03159670bbd0c82d7860890bf5f76d97255ab8a`  
		Last Modified: Thu, 15 Nov 2018 01:12:38 GMT  
		Size: 30.3 MB (30282191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1e2ab4ec11d6221b4b1147a4d872fcdf68f328ae78ed62fe70ed77e0dbf3a8`  
		Last Modified: Sat, 17 Nov 2018 14:55:24 GMT  
		Size: 466.3 KB (466285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871db67a3b796cc9923a0549b4fa26677f7e0f2f03b9abb8d62b33c5d3324bee`  
		Last Modified: Sat, 17 Nov 2018 14:55:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91b9f8e84f46849726fffe2fe4f7ad81701736123c46031f27c3a449c0be3f9`  
		Last Modified: Sat, 17 Nov 2018 14:55:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d632549ef414ded52740cf796c917663f0312075866a2109815ce1828245dc40`  
		Last Modified: Thu, 29 Nov 2018 12:41:26 GMT  
		Size: 97.2 MB (97176295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

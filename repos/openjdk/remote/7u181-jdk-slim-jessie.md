## `openjdk:7u181-jdk-slim-jessie`

```console
$ docker pull openjdk@sha256:aeee31470cf4d1206b58eff6e1dfb4ed873ac56f6e6fdb44625e8634eb5114e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7u181-jdk-slim-jessie` - linux; amd64

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

### `openjdk:7u181-jdk-slim-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:33604315659b34a1634a8aaa6f79ac46d0b72104b92a4f76d68d3ed97b496f40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101107123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eca0e89ec5c4a46f9b0865ea0a88f79ec5ee2c0436cde181b1360118d02f0ca`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 09:51:23 GMT
ADD file:9ac898339cba260ad76a4387ca44eb463c4686a835b644c946bf729bdd99c9a0 in / 
# Fri, 16 Nov 2018 09:51:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:46:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:46:50 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 18:46:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 18:46:53 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 18:46:54 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 18:46:54 GMT
ENV JAVA_VERSION=7u181
# Thu, 29 Nov 2018 10:02:41 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Thu, 29 Nov 2018 10:04:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:8e25b1f277cb004ed8d464c873f7b23f682ecb0449ae26255e5683c8117c03cf`  
		Last Modified: Fri, 16 Nov 2018 10:06:38 GMT  
		Size: 28.4 MB (28439693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b97d3ac76f596094d2faf4d9b97203e08ce5afd71e70cea2276d705f668e8ab2`  
		Last Modified: Fri, 16 Nov 2018 19:11:19 GMT  
		Size: 456.5 KB (456456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44efb59fabe24905f659de4c769f38575715e4a34442299ebb35367e061af451`  
		Last Modified: Fri, 16 Nov 2018 19:11:19 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9efe14a7f01c686b5b682ecee3bda1b6db2cd2eff5e88fe2f64d45feabd214`  
		Last Modified: Fri, 16 Nov 2018 19:11:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d85cf3abfd9d17b99b5bc1e882ff4acba02d82aa10fee9fc6139d883de74fa`  
		Last Modified: Thu, 29 Nov 2018 10:09:31 GMT  
		Size: 72.2 MB (72210596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jdk-slim-jessie` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:2d32f0b055a55200378a60396cb52e5a9b1aa2a5c3c5e57d60c121b498eef933
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97279565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5e1145f6899f2d3c4d0ada0fca81346f77435069a2c9bb25c6053583c13794`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:49 GMT
ADD file:890668a9726ede3252622aea02e842f9f87317f42d3b82160296dd59421c2022 in / 
# Fri, 16 Nov 2018 13:02:51 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:39:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:39:24 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 19:39:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 19:39:28 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 19:39:28 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 19:39:29 GMT
ENV JAVA_VERSION=7u181
# Thu, 29 Nov 2018 13:25:08 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Thu, 29 Nov 2018 13:26:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:600e408e79d94fee598d85c5669b8f309933caa9c016cd9e9a318c30268351c8`  
		Last Modified: Fri, 16 Nov 2018 13:16:05 GMT  
		Size: 26.3 MB (26297719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5aacfb905f0966604c10307b4b5d648f29f3a78cd2d209b76d87feef537fb8`  
		Last Modified: Fri, 16 Nov 2018 20:05:24 GMT  
		Size: 432.3 KB (432320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e0d0b9ef307977084e07b8baf1baae1b2ebedd746167b00aec86b8beba86c9`  
		Last Modified: Fri, 16 Nov 2018 20:05:24 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5672f8ed0754cc07d97e5e4070eed41a3b868c034746be60805920a61b3814`  
		Last Modified: Fri, 16 Nov 2018 20:05:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2489f88de641c9d18b334243b3f0f0de9ca26ca82ad2dde9db88db173a1ff723`  
		Last Modified: Thu, 29 Nov 2018 13:33:08 GMT  
		Size: 70.5 MB (70549148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jdk-slim-jessie` - linux; 386

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

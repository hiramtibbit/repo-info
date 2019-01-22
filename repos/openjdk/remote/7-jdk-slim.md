## `openjdk:7-jdk-slim`

```console
$ docker pull openjdk@sha256:8f7e6f760ea325c5c7002e4f007cd259c04b3abb5578316d5cb096509178c3c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7-jdk-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:46530c60939c8985b09e67d16aeb8652256b0dabacb808e0c22d2f70c01e32ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115852669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df138c5e64c2a135ad8d4cb4239540cc7de5ab879466e92d9a903ff8fd059516`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:24:52 GMT
ADD file:e1259aaf5127eb984e8800180bcdf23aae11a476ace06567c5e0571cba94552d in / 
# Tue, 22 Jan 2019 19:24:52 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 21:26:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:26:47 GMT
ENV LANG=C.UTF-8
# Tue, 22 Jan 2019 21:26:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 22 Jan 2019 21:26:49 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 22 Jan 2019 21:26:49 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 22 Jan 2019 21:26:50 GMT
ENV JAVA_VERSION=7u181
# Tue, 22 Jan 2019 21:26:50 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Tue, 22 Jan 2019 21:29:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:a82c8be864555402cbecf293fa92a8b392e48065b42c509fc1bfbb79a2e0d951`  
		Last Modified: Tue, 22 Jan 2019 19:34:49 GMT  
		Size: 30.2 MB (30152186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2a842500aa98eb09fa7bdcbcf935e84151aadb2696605f1a0675c73cc92d0d`  
		Last Modified: Tue, 22 Jan 2019 21:44:11 GMT  
		Size: 463.8 KB (463803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c661eb0136918cabd559d95e10ea28f432c641a57b3df6cabf771a7cccbbfb73`  
		Last Modified: Tue, 22 Jan 2019 21:44:11 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1e3aee7f84190f45eafedd7808f317ae5a3f504087822db6aa44a29cee6794`  
		Last Modified: Tue, 22 Jan 2019 21:44:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26febb5c4a6af0ff45e25389d28fac54bb0bf93b5a2e0f1d6faaee2e3a4e747f`  
		Last Modified: Tue, 22 Jan 2019 21:44:27 GMT  
		Size: 85.2 MB (85236305 bytes)  
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
$ docker pull openjdk@sha256:1c7fbccebba179f88c9f2d5fa2071fa30971aac9f2415cc87ef9e5e3e0362d36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.9 MB (127943312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1cbdb6daed83944935509559fc4b5ec82503cd8b1004a077c5abbbae26b1740`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:44:18 GMT
ADD file:1a212513c2c6d6c2ebcdd2881510fd0e2497570f41edeea42cc4def19dfc6dcf in / 
# Sat, 29 Dec 2018 11:44:19 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:05:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:05:12 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 21:05:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 21:05:13 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 21:05:13 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 21:05:13 GMT
ENV JAVA_VERSION=7u181
# Sat, 29 Dec 2018 21:05:14 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Sat, 29 Dec 2018 21:08:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ff487be3b1881d864168a704e636a085151c5b169d9417e82a6370e2b4423a9d`  
		Last Modified: Sat, 29 Dec 2018 12:06:40 GMT  
		Size: 30.3 MB (30298094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb3fc7f47bf20412e3f6ec9a5aa56bcf8843c3330fb3f53f9091b06b806718c`  
		Last Modified: Sat, 29 Dec 2018 21:24:43 GMT  
		Size: 466.3 KB (466335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9090822fd4d3611ef4919d18c33365183943507df89b1fe2fec9528f2b67469`  
		Last Modified: Sat, 29 Dec 2018 21:24:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25930c678a2f712d3547b7ea3da6ff7118eb2a0d2a1e2df4dd6c3c98b589a9a8`  
		Last Modified: Sat, 29 Dec 2018 21:24:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2875149f38ddaa87b475281987fbabea1a0d9ded525f19cf0d8efc048780df0f`  
		Last Modified: Sat, 29 Dec 2018 21:24:59 GMT  
		Size: 97.2 MB (97178506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

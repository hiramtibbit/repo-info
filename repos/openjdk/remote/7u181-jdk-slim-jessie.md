## `openjdk:7u181-jdk-slim-jessie`

```console
$ docker pull openjdk@sha256:77ec6d498ba5e3fdfe1f327cb9ed1601ff8052bfbe91ad4637d42f4b5125a4a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7u181-jdk-slim-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:ef6752697054dd77934da858df45b8c6e41dbb64407c405edb1b9f7f50217405
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115808406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ae473f2d6790d0d00c4e6060ae96ee67e2720e56f9bbb513222f58dee011138`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:34:24 GMT
ADD file:e9f2e31ca621ef0c68e6a429b08e2e874fb0a1b8f98fe675a5e036ccd9dd9e40 in / 
# Thu, 15 Nov 2018 22:34:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 15:07:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 15:07:21 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 15:07:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 15:07:23 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 15:07:24 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 15:07:24 GMT
ENV JAVA_VERSION=7u181
# Fri, 16 Nov 2018 15:07:25 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Fri, 16 Nov 2018 15:08:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:a92a4af0fb9c102a6d410fbd9c77c3119cd91a2230064f6c5b398fd97e3bff71`  
		Last Modified: Thu, 15 Nov 2018 22:56:37 GMT  
		Size: 30.1 MB (30129457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f50a58573b9c7b3781b60f1f09cea22fc3109fb64e92567cfb96581a6ac22f`  
		Last Modified: Fri, 16 Nov 2018 16:10:54 GMT  
		Size: 463.7 KB (463743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc21be0c650c71d60b609d1de64ecec28b3c5ee7292bfa78fb6715870ed5cac`  
		Last Modified: Fri, 16 Nov 2018 16:10:54 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd80c863b2a51d559e48fe65ad0cb4a08d10a88a61c6c9b951279afa8ccfb075`  
		Last Modified: Fri, 16 Nov 2018 16:10:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255f365b17440edbceaefdf853f5f7631d8268ee0fe650e4f23705095a8bcba6`  
		Last Modified: Fri, 16 Nov 2018 16:11:12 GMT  
		Size: 85.2 MB (85214827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jdk-slim-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:de81897aed633b2b3c3dc1ee94a78af9bad753d0bfd148f604ed8f2733d1fc58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101083908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32965254ce06ce97e7f0343ba0eb5c9a6e2ee753aa238e48be48cf9b426d7e60`
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
# Fri, 16 Nov 2018 18:46:55 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Fri, 16 Nov 2018 18:48:36 GMT
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
	-	`sha256:6f725b14d5ac6bfaa0bf59df2ab2d7783cc2bfcfed2ab1e1a7865b0aa53cb69d`  
		Last Modified: Fri, 16 Nov 2018 19:11:32 GMT  
		Size: 72.2 MB (72187381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jdk-slim-jessie` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:e407b1d60ff82f0dcbf417b1138a337e844da7a78b32081adfbc6cf2b4d19e73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97261665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f676180b04c0811f16caae0be73b0bd15304b22b5dba1accd24b6e8d8a9099`
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
# Fri, 16 Nov 2018 19:39:29 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Fri, 16 Nov 2018 19:41:06 GMT
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
	-	`sha256:612f52bcc036037759b7ff28c500190e335e1cbdd0974b45a91711e89a1b4bbd`  
		Last Modified: Fri, 16 Nov 2018 20:05:35 GMT  
		Size: 70.5 MB (70531248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jdk-slim-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:632ae0a0ed770951bea07d03c85626c1782528b9895143b9012c68cdff3f3e4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.9 MB (127891903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1934806b3f1ebebe21a6e29b670b939a4327d7cf6b0c8948d82a2c937c66340`
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
# Sat, 17 Nov 2018 14:12:34 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Sat, 17 Nov 2018 14:14:10 GMT
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
	-	`sha256:79b959b3be87b16af8da5999f8c38bec00fd4c314379fd64485a472e73d2cc67`  
		Last Modified: Sat, 17 Nov 2018 14:55:41 GMT  
		Size: 97.1 MB (97143050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7u181-jre-slim-jessie`

```console
$ docker pull openjdk@sha256:e5668be4c1a63d3ba64be93212a57ac45464c9bef2fa109f5dd2026f27aada18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7u181-jre-slim-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:1a0a78a466255e4f062d462107b054268f5ad81cc7b9d9adb4f624225d12cb19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.2 MB (92247399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e3444a88b534ae8878f5e1dab7e7c6ec0a7c2f01b49aedb20d2c5bcb0d7c8ed`
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
# Fri, 16 Nov 2018 15:11:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Nov 2018 15:11:49 GMT
ENV JAVA_VERSION=7u181
# Wed, 28 Nov 2018 23:07:02 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 28 Nov 2018 23:07:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:a66b8f1ab23b86cadb14aa2c2366d83fac9ed930cb1cd2ed850f428181091c72`  
		Last Modified: Wed, 28 Nov 2018 23:17:19 GMT  
		Size: 61.7 MB (61653820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jre-slim-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:df21b7b7cc42103c4878a66f7f4f93995c04ed74fafee1c8a49c8060375a29d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80361259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0dd7d633514382f7c6a005e3c6a157c481ef23fc18795a108bc2abdbedfc830`
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
# Fri, 16 Nov 2018 18:49:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Nov 2018 18:49:14 GMT
ENV JAVA_VERSION=7u181
# Thu, 29 Nov 2018 10:06:18 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Thu, 29 Nov 2018 10:07:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:8d1e36a0fc18fead5fa5a206f8163dc5fa6db951c214de8a79597f3464253978`  
		Last Modified: Thu, 29 Nov 2018 10:11:08 GMT  
		Size: 51.5 MB (51464732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jre-slim-jessie` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:2f18c77a695f36362886aa89cacb4585e5d92d8b9d07f46f800dc004989605b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77054593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47107e80c53f5fd44b708f4beeccf62fa252d0f31ade7c05793c7ec404b138d2`
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
# Fri, 16 Nov 2018 19:43:45 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Nov 2018 19:43:46 GMT
ENV JAVA_VERSION=7u181
# Thu, 29 Nov 2018 13:29:04 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Thu, 29 Nov 2018 13:30:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:d4412dd19b57d308d872b613c26ebc82fb8b7a17a871eb161cad1d1975cb50b9`  
		Last Modified: Thu, 29 Nov 2018 13:35:12 GMT  
		Size: 50.3 MB (50324176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jre-slim-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:6f8fbcc2c689a5a875de332f46c65122f24cbc1a2aaed17c6b8d99c628ddd6bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (104008952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcbd7b998a9ccadd005b8f0dd5eaeadaba62b52f2c2d4a6686434abbf6449c8e`
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
# Sat, 17 Nov 2018 14:17:36 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 17 Nov 2018 14:17:36 GMT
ENV JAVA_VERSION=7u181
# Thu, 29 Nov 2018 12:37:05 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Thu, 29 Nov 2018 12:37:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:7af2884106c172ac5e13002eb928e547edaa4f82aa87b9704af78f679547af36`  
		Last Modified: Thu, 29 Nov 2018 12:44:45 GMT  
		Size: 73.3 MB (73260099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

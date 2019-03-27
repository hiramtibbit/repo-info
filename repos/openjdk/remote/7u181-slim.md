## `openjdk:7u181-slim`

```console
$ docker pull openjdk@sha256:ce401979d34edc8482ae0c7d952a122100f75dbd00fafc1a64e7fd10959ab1e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7u181-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:e0827198f1c2fd495b64dd15231caa067e049fee4f3d03efc0480e82f553a8b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115855591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef2390aa030f5618cbdeb42e3bb2a42be4f98ca20be099eb31c74bbdaae7ed5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:48 GMT
ADD file:7e1c64289e566a098e45fa330e3fe3be4fb94df824f0287a0317dbadf8c643fd in / 
# Tue, 26 Mar 2019 22:39:48 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:55:37 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:55:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:55:40 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:55:41 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 00:55:41 GMT
ENV JAVA_VERSION=7u181
# Wed, 27 Mar 2019 00:55:42 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 27 Mar 2019 00:58:06 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:2a639da97f77795f2f0ebe3bb2c9fc94b4eee47bd41faaf216118e7a8fa65dd6`  
		Last Modified: Tue, 26 Mar 2019 22:43:17 GMT  
		Size: 30.2 MB (30154581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edd645c00d35e53c38bc96fb6f6cf80634b42d9f60c1d1ee17a802e8b8c0df8`  
		Last Modified: Wed, 27 Mar 2019 01:09:59 GMT  
		Size: 463.8 KB (463796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f0e3de735d46f7f989a70581fdde01a547c1668a8ff9e44b0f7b307e230844`  
		Last Modified: Wed, 27 Mar 2019 01:09:59 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae22bc8cb03d5cecd7e80eb9662861bd11336f6d1777c3db0a1f271c5a8ff717`  
		Last Modified: Wed, 27 Mar 2019 01:10:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0af5a094cde41ca31660d9fa1ee77af29f184a492204a22f91d08fb27779b7`  
		Last Modified: Wed, 27 Mar 2019 01:10:14 GMT  
		Size: 85.2 MB (85236835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:3f26c76beade4696e92ce1bec0a37c01fe105e31e2a99f98e889af33d197beae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101128970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1af94462c13652640e443f5ceca52d07bc85636506b7f9434d3ffa54759ca941`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:50:40 GMT
ADD file:b6a1d21b4c9d13e193935387c04d6bf39a4fe4601321ea62128409faebc0dc69 in / 
# Wed, 27 Mar 2019 08:50:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:12:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:12:09 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:12:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:12:12 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:12:12 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 12:12:13 GMT
ENV JAVA_VERSION=7u181
# Wed, 27 Mar 2019 12:12:13 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 27 Mar 2019 12:14:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:381b01d802d70b42a6dbda0acb85a3c3bebbd7a8eb9fb5934b0eaf054de18e44`  
		Last Modified: Wed, 27 Mar 2019 08:57:15 GMT  
		Size: 28.5 MB (28458892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636d28bcbb84a003e91ad3f74a2c8b3e363621c1f0bacd43f09b2b76fd8db293`  
		Last Modified: Wed, 27 Mar 2019 12:23:50 GMT  
		Size: 456.5 KB (456530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17735420f81169d04492a72a61d1ce7c87cb59d154eafc5d47599ba1dc06329b`  
		Last Modified: Wed, 27 Mar 2019 12:23:50 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22b5c2ead47fbbcadacf38e9b7b08639adb9472b508be60b9e5abd463b28316`  
		Last Modified: Wed, 27 Mar 2019 12:23:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d2098763d6935cd9790514e031c5d7a6c06927f0257c3a87684394718009d8`  
		Last Modified: Wed, 27 Mar 2019 12:24:03 GMT  
		Size: 72.2 MB (72213169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:eb71da0b3bbd126cafde39528efdf585a96b206062ec29d2e121d3873d127e0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97287901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65573bfa514e8b0a363f6d0644f94da71630ccfaff73a164639032249391e55e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:04:17 GMT
ADD file:41289becce270534012f48a6689e46dd1f96fd510fdd169a3641864a0e35fd2f in / 
# Wed, 27 Mar 2019 12:04:18 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:09:38 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 15:09:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 15:09:41 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 15:09:41 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 15:09:42 GMT
ENV JAVA_VERSION=7u181
# Wed, 27 Mar 2019 15:09:42 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 27 Mar 2019 15:11:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:80ee02f1493958c68f241edb0d71b84092fb026a0ffdbdabe9c7243de469f8ba`  
		Last Modified: Wed, 27 Mar 2019 12:11:04 GMT  
		Size: 26.3 MB (26306415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbaa7df0294fadef50d0e1c79cbaaa0bb6e214c8a1feb8de9a6ac64cb4e8946`  
		Last Modified: Wed, 27 Mar 2019 15:19:00 GMT  
		Size: 432.4 KB (432403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e468e412cc4600ab6dbc86addc288013b0e3b2c92ee5a545c33dbdfd4a7927f4`  
		Last Modified: Wed, 27 Mar 2019 15:19:00 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682037c33d40f1855307c10e56f25527a2242c82a5030b6ae62df2bc7dc780bb`  
		Last Modified: Wed, 27 Mar 2019 15:19:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53f0e8eb720c7d174c242f9ca80e1f5578ea6c0fd82fd4ea91959294c13ff27`  
		Last Modified: Wed, 27 Mar 2019 15:19:13 GMT  
		Size: 70.5 MB (70548704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-slim` - linux; 386

```console
$ docker pull openjdk@sha256:788014eb7284dffdc1bab755317daed2cacbf54ef0af3a1993a40ca1dc8b00ea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.9 MB (127944516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7ead13a74a8990e85866e0cfe01e1a4c880bf14dd4f50c40b88a9b2a2406b37`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:41:29 GMT
ADD file:4597fc93e1ad16418f51bd39cbbdcc88fd065a0c45f28a8c55f6f6bcb2c6e88c in / 
# Tue, 05 Mar 2019 11:41:30 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:10:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 17:10:12 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 17:10:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 17:10:13 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 17:10:14 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 17:10:14 GMT
ENV JAVA_VERSION=7u181
# Tue, 05 Mar 2019 17:10:14 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Tue, 05 Mar 2019 17:13:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:409a1ff9979e478a433a9064d8898ac7a46e71c22f5b6ee7afc31a761e2130f8`  
		Last Modified: Tue, 05 Mar 2019 11:51:30 GMT  
		Size: 30.3 MB (30299194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffc42b6aa9b8b174f2a866382c912f30e300789aa535342db9313df26927861`  
		Last Modified: Tue, 05 Mar 2019 17:20:09 GMT  
		Size: 466.4 KB (466353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7231f5c086ae4837b4c80f2f4f227972280668929077e3cb6b493cfcdc944a1`  
		Last Modified: Tue, 05 Mar 2019 17:20:08 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9b75546b0684a922bc81eac85df0ae928e5225f627932db2b5af13991bf01c`  
		Last Modified: Tue, 05 Mar 2019 17:20:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3274815c63fe5727688dab31381f2fce83414baa93162f9bbcf0c95f41b3923b`  
		Last Modified: Tue, 05 Mar 2019 17:20:23 GMT  
		Size: 97.2 MB (97178590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

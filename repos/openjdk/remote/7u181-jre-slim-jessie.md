## `openjdk:7u181-jre-slim-jessie`

```console
$ docker pull openjdk@sha256:03cc18e76f28799e03026aed8c025c94bf49727faa9157fe5b1cefdfa79efd6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7u181-jre-slim-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:d74b23c96a8cd84f2af5043b8c16eda18951a6f61b27637a34bada83700d172f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.3 MB (92276152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6337562277751933014fab0c6dcc215021a3d6096c3e28144b1f1eb13879874d`
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
# Wed, 27 Mar 2019 01:02:19 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 01:02:19 GMT
ENV JAVA_VERSION=7u181
# Wed, 27 Mar 2019 01:02:20 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 27 Mar 2019 01:04:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:d3b255dcaf6027ff6edc239f2015a43d2bf15572faf2c752494ec24d27f786b3`  
		Last Modified: Wed, 27 Mar 2019 01:10:51 GMT  
		Size: 61.7 MB (61657396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jre-slim-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:ef271db6a222971fda344f3a41be48e95e08b9ac54989390c31e6440a55a0cf6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80378326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2d796749c11842ab1d80b001c3e785de55e13c1360cd9e92fd57a1a6fd706d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:50:33 GMT
ADD file:f954baa11d5f1e9a42892d7ea994114d4b62514a2135cae4fe9fd74a0f794907 in / 
# Tue, 05 Mar 2019 09:50:34 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:29:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:29:55 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 11:29:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 11:29:57 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 11:34:45 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 11:34:45 GMT
ENV JAVA_VERSION=7u181
# Tue, 05 Mar 2019 11:34:46 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Tue, 05 Mar 2019 11:36:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:454ce3a712ed980fb3326cc66c5a7d5f5f298963748dc88ea47b9c0f3445fe2c`  
		Last Modified: Tue, 05 Mar 2019 09:59:40 GMT  
		Size: 28.5 MB (28458756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9deb5fdd9889142ac177a8dec3442890f421019958d572ca6d010beeb5105a`  
		Last Modified: Tue, 05 Mar 2019 11:43:28 GMT  
		Size: 456.5 KB (456512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee6e5de3bf5dcaf48bb24ce4be3c57a76cc3252ca1223113c1ac055c159c1c3`  
		Last Modified: Tue, 05 Mar 2019 11:43:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28dea9bec9614b5f44e2b3b7cca32e81a49f49c551a6dd90d41a101fc2a4766e`  
		Last Modified: Tue, 05 Mar 2019 11:43:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72ab53a0de6b77d2755aeb2a8121ca386dfc524dd0549561f2a2717e1915439`  
		Last Modified: Tue, 05 Mar 2019 11:44:26 GMT  
		Size: 51.5 MB (51462679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jre-slim-jessie` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:4643c5718bcf7bb7a422bdf4573689491c9107f01f00983bea8795d6118c71e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77068205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf5a631914594b19dddbeecbbe3911e3afe8aeeeeee812f3c132b9650b3efcd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:05:57 GMT
ADD file:d5ac66559aa85fe8586d5f741964b9b6ee5a433c6275199ff6ec2ebd7e76d5eb in / 
# Tue, 05 Mar 2019 13:05:58 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:33:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:33:10 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 14:33:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 14:33:13 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 14:38:13 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 14:38:14 GMT
ENV JAVA_VERSION=7u181
# Tue, 05 Mar 2019 14:38:14 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Tue, 05 Mar 2019 14:39:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:c1e6758b4b7bd0452e85a1920605cee97b7a184cf54cc9deabfd6f01d16bd8d0`  
		Last Modified: Tue, 05 Mar 2019 13:15:46 GMT  
		Size: 26.3 MB (26306306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f975a4bd48eab68781b2efb4b9e1b56120c5f55ccc85ed178ef3d17d126369`  
		Last Modified: Tue, 05 Mar 2019 14:43:03 GMT  
		Size: 432.4 KB (432401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64810432b237902457007d39e4e934cf223e81ab77fc23e4ab2aee065599ee56`  
		Last Modified: Tue, 05 Mar 2019 14:43:03 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44a731a099c101b8d14f9177840caeacf0a15cf7af79e03549654f95cb339c0`  
		Last Modified: Tue, 05 Mar 2019 14:43:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42236925188c1db325e45d0a8bd4460b02f7d0b25012aec4dbc31867279bc185`  
		Last Modified: Tue, 05 Mar 2019 14:43:59 GMT  
		Size: 50.3 MB (50329119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jre-slim-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:fde5c44bc3f80b4cfeef7b0bd7e15f62d456d0f31517c9b6ec05c9efc963a046
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (104027576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db9887137b4ff8451a8465552e4e128510c442420cbdf7dc8a67fa1ca383f888`
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
# Tue, 05 Mar 2019 17:14:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 17:14:09 GMT
ENV JAVA_VERSION=7u181
# Tue, 05 Mar 2019 17:14:09 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Tue, 05 Mar 2019 17:17:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:907aba84018587b2730d6b56c179b4123d405b04d3c0249be113af1322af1ddd`  
		Last Modified: Tue, 05 Mar 2019 17:20:43 GMT  
		Size: 73.3 MB (73261650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

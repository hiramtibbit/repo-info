## `openjdk:7u181-jre-slim`

```console
$ docker pull openjdk@sha256:080d4244cf5d487b6b88d58e944130f4220858aaa7e810404ac5eb31c0f38d50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `openjdk:7u181-jre-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:69799620b98727b85951d07f1879c0924470c0486bd07790d9e887a42ad6f750
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92741037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c02a5357dbb9c40026871d9e9e265f1fcd361fdfc4fdeb82d8a6aecf02357d55`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 01 May 2018 13:03:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 13:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 13:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 01 May 2018 13:03:59 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 01 May 2018 13:04:00 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Jun 2018 00:33:35 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 00:33:35 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 00:34:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf6b73962c3830820608005b392a0107fcd520467b7231bd529ccfdb1f073a7`  
		Last Modified: Tue, 01 May 2018 17:25:57 GMT  
		Size: 463.7 KB (463726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:394d038a3cf8b8a526cb63c52bb6f0c37e2b25496d5f0157f55469b30b8c0c80`  
		Last Modified: Tue, 01 May 2018 17:25:57 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136dfc0c9d5e44db876a849088c4715b28db4e6a4e0b943e6bfd24e1c689cd00`  
		Last Modified: Tue, 01 May 2018 17:25:56 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56007aac458bad256b790a23666024a10f7e7f2d9fe5aed1273ac230f0642496`  
		Last Modified: Tue, 12 Jun 2018 00:50:11 GMT  
		Size: 62.1 MB (62149636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jre-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:0231fca9e53c5be3e5ad4bf44d32c661bd29dfedb462cac6146cb12de665d396
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80838597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4644b4a34329af213c550fe5b095451ec235162008995690fc38aaca9f5539b`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:49 GMT
ADD file:e9274d48b6cf2508214a554b4dbe651b4dfa95bb52dba47a96fe8842bf606a87 in / 
# Sat, 28 Apr 2018 08:49:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:55:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:55:03 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 12:55:04 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 12:55:05 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Jun 2018 09:04:26 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 09:04:26 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 09:05:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:94b675ca74d2386dbd57e10d92f282f24ca3519fd21339c04af3f8f7e523617c`  
		Last Modified: Sat, 28 Apr 2018 08:57:53 GMT  
		Size: 28.4 MB (28435716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64413c45c2b1761082392f40b8eb4f8c01e04ace06cf565ed33520cde914a2f3`  
		Last Modified: Sat, 28 Apr 2018 13:30:17 GMT  
		Size: 456.4 KB (456447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc8503ffe14feee207fc8f6387fe1698d57ea88c261e13e32014df47d242ab2`  
		Last Modified: Sat, 28 Apr 2018 13:30:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3238929bec356935380aebd06a38df60f54e0b955554074db0321e380626388`  
		Last Modified: Sat, 28 Apr 2018 13:30:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b706661f1ef038f582b696703a381575a3db4d5a64c412603bcf49d1aecb49`  
		Last Modified: Tue, 12 Jun 2018 09:12:53 GMT  
		Size: 51.9 MB (51946056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jre-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:6cb664f7ae656fd4de1f2540528922b06ca336a7a967cc0a9bace196ca808f02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81115304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fab0a38993df3e92e5e014d949b6aeb950321e57c36050771d219ac97b6b0a5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Tue, 01 May 2018 11:19:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 11:19:37 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 11:19:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 01 May 2018 11:19:53 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 01 May 2018 11:19:56 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Jun 2018 09:33:43 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 09:33:44 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 09:36:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c67f48d3f95f879f0a16939897151d838aeae71743f184d41d557ba719f896`  
		Last Modified: Tue, 01 May 2018 11:59:05 GMT  
		Size: 457.9 KB (457930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e4f5df17d67da29d0f5e8846dfb76e7f541e3c84f16d804a52313cf3f2d755`  
		Last Modified: Tue, 01 May 2018 11:59:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825cf0a868d42f586b37204e4c5bbc1ab2668b7d1d01156e2be933557a5fe1fd`  
		Last Modified: Tue, 01 May 2018 11:59:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1edf8ee0b889466a9d616f24b0813e30e963842440ad3ffae5b30c1750b7fd`  
		Last Modified: Tue, 12 Jun 2018 09:49:35 GMT  
		Size: 53.2 MB (53162406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jre-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:be448f8623f710e2c4732492929d5f27c3a64c7cb07451c5d0892ad49d91189b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.7 MB (83733040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f84438c8467b1c2466cf4a1db8ed6d03bab384af30a787a5640665ff304a125c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:38:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:38:39 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 09:38:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 09:38:43 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 09:38:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Jun 2018 09:00:20 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 09:00:20 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 09:03:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:7745ff03a317ccaa10ff03129a2330b1c154aecaf51a892b7d99d5e1dbeb86cc`  
		Last Modified: Sat, 28 Apr 2018 08:25:29 GMT  
		Size: 29.3 MB (29317351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904d9cae5b4e13977b3a3f5da2837f3842b44dd1ad001f63bae91c193e6384e7`  
		Last Modified: Sat, 28 Apr 2018 09:58:30 GMT  
		Size: 460.2 KB (460245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f46e6678f464aca7e6dd6754f68d28005443749f3cbf76be8b3e676a6947a1`  
		Last Modified: Sat, 28 Apr 2018 09:58:28 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5e5c5eac28805942423bb472b259179da4051103daa04229bfb914fbd74006`  
		Last Modified: Sat, 28 Apr 2018 09:58:29 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca3a142c12e23c3c950f6347af8ac0692eb2e5ea8b99ab4589146d7c264dcfb`  
		Last Modified: Tue, 12 Jun 2018 09:15:36 GMT  
		Size: 54.0 MB (53955065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

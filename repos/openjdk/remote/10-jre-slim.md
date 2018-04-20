## `openjdk:10-jre-slim`

```console
$ docker pull openjdk@sha256:0feafa0d3d08446090e26e240d811e39c9464f6fc94151b195055ee80684dd6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; ppc64le

### `openjdk:10-jre-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:4197515d400922a8994bfed9bf0c356c5e25bd82426fa1d59275e26d8929f27f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102896686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d75c31eb82e6a644c1c1d918d187a2b2edb86798ed59c0f543c0c877abb3290`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:43 GMT
ADD file:abc56f5a5510633481f0de7469b312f4f4cdcfbbe92bf1d7bddb5d716a2a5820 in / 
# Tue, 13 Mar 2018 22:21:44 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:56:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:30:14 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:30:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 19 Apr 2018 23:13:58 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 19 Apr 2018 23:13:58 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 19 Apr 2018 23:13:59 GMT
ENV JAVA_VERSION=10-ea+46
# Thu, 19 Apr 2018 23:13:59 GMT
ENV JAVA_DEBIAN_VERSION=10~46-5
# Thu, 19 Apr 2018 23:14:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:8d602e635a7063b254ddcd64997153b2e8f74c29ff4648089ae116a4ca3ea8e3`  
		Last Modified: Tue, 13 Mar 2018 22:50:19 GMT  
		Size: 25.7 MB (25713113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b0cb5bfff7921055b3160e463c0cbbd0da8804c54c0e81870e32789de17696`  
		Last Modified: Wed, 14 Mar 2018 11:50:29 GMT  
		Size: 460.3 KB (460326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31aaf5b382af90e713d7581c352ac81060358c641b90a3708b45268486ae3911`  
		Last Modified: Wed, 14 Mar 2018 12:30:26 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698e5cb98f91351dfeafe8378be5331b8d3a8a1dd8a770085fcf057f190c0959`  
		Last Modified: Fri, 20 Apr 2018 01:51:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e351ebb6364f769ad67750d3a8d3b32d5184c6ae43f4807b5e54420d0256a8d2`  
		Last Modified: Fri, 20 Apr 2018 01:51:50 GMT  
		Size: 76.7 MB (76722878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-jre-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:a647b2041cdb3945cdfff47b16a158b8f30ee6effe9a56b2f787b87a3ad202b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85742358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:544977ab367babb7ee64174165245307851e39573876aae1d5b353a309e48988`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 19:59:20 GMT
ADD file:b829fe1b85a76eaae255627baf7572a89310e31a86d94c40353cdf5184a08296 in / 
# Wed, 14 Mar 2018 19:59:21 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 22:37:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:42:18 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:42:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 20 Apr 2018 09:00:30 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 20 Apr 2018 09:00:30 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 20 Apr 2018 09:00:31 GMT
ENV JAVA_VERSION=10-ea+46
# Fri, 20 Apr 2018 09:00:31 GMT
ENV JAVA_DEBIAN_VERSION=10~46-5
# Fri, 20 Apr 2018 09:01:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:1df428c58793052c39aa67c5a0cfc437c4f5e97e12915970ffa3b5a637915c81`  
		Last Modified: Wed, 14 Mar 2018 20:10:52 GMT  
		Size: 23.7 MB (23719570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ea34fa7879bc512ea22a1ff5fd2caeccec4a4a30a175ae662a07c22e57532a`  
		Last Modified: Wed, 14 Mar 2018 23:01:39 GMT  
		Size: 453.8 KB (453792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d53ef6ceaeefa22395981d0871593abdf315d62946258906c10c78378424bd2`  
		Last Modified: Wed, 14 Mar 2018 23:01:38 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00e792449796f21c2e9f8f590786d5922ffa6a51d2a45e75de8feb6ebca3f7c`  
		Last Modified: Fri, 20 Apr 2018 09:12:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd64ffa96e3d86c3aac9139b6efa9cff4e25cc8edcc0fdcf13126dcde543ab9`  
		Last Modified: Fri, 20 Apr 2018 09:12:24 GMT  
		Size: 61.6 MB (61568627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-jre-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:55a1e3eca53eb60d4370f98c2f3890686e632f0bab3ec1ed0625c9eba3b3329e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85666464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330aeab888c432bfc3c9d1a886223da34d86430f366dbe57507c815f31aaa5f6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:30:51 GMT
ADD file:01a57c20f154d841f3d0067187339035634947891cdd63b93cf26c052ccec8a9 in / 
# Wed, 14 Mar 2018 12:30:52 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:49:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:56:59 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 13:57:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 20 Apr 2018 12:05:34 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 20 Apr 2018 12:05:34 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 20 Apr 2018 12:05:35 GMT
ENV JAVA_VERSION=10-ea+46
# Fri, 20 Apr 2018 12:05:35 GMT
ENV JAVA_DEBIAN_VERSION=10~46-5
# Fri, 20 Apr 2018 12:06:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:eb4d24f57aa2e9887d736ab5ae837254043a7420798488e113011250c3d45c6b`  
		Last Modified: Wed, 14 Mar 2018 12:42:40 GMT  
		Size: 21.7 MB (21736182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6632e794ba04784b0b45265566f4f18a26d40bdfdd4aa6726c2df55600f62e`  
		Last Modified: Wed, 14 Mar 2018 14:18:56 GMT  
		Size: 436.4 KB (436377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e62fee9928c709ea5d7c9da848769f94473ffc5f05cbc085072d2748d08a374`  
		Last Modified: Wed, 14 Mar 2018 14:28:29 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71eb05175abb2819c084eaf8e1e8d31eff017024030aeb8acafae1c46425308d`  
		Last Modified: Fri, 20 Apr 2018 12:14:43 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5283d8cc8b629e357603cef9c331ae1b8c69e3be91385dac1a6c17895e6f62a4`  
		Last Modified: Fri, 20 Apr 2018 12:15:01 GMT  
		Size: 63.5 MB (63493535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-jre-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:3343fcc5d3cd916bfd2fa004c4e374ed7e5fb23247e8b986c4d91f26707e6d19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.7 MB (93702394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:709ad0e831cb3620770376f9cee164ca4162d65d6cd38e3c33b6bcef397865e6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 00:33:55 GMT
ADD file:e890898916a686430a0d7cea9f16c3859f35938952b26ba20163570f64ab383c in / 
# Wed, 14 Mar 2018 00:33:57 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 04:03:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:17:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:18:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 20 Apr 2018 08:50:17 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 20 Apr 2018 08:50:18 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 20 Apr 2018 08:50:18 GMT
ENV JAVA_VERSION=10-ea+46
# Fri, 20 Apr 2018 08:50:20 GMT
ENV JAVA_DEBIAN_VERSION=10~46-5
# Fri, 20 Apr 2018 08:51:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:b3949de4c16b03531582180df6c78e53e16851fa35f1a3ab12ac83a511cae577`  
		Last Modified: Wed, 14 Mar 2018 00:41:23 GMT  
		Size: 26.9 MB (26942453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ecfa491131fe3c43d09dfae52d8bf81576df7e7c5fa65cc8ca02dd14a07330c`  
		Last Modified: Thu, 15 Mar 2018 06:00:01 GMT  
		Size: 455.0 KB (454980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cd6dec31efd7f104c93e0092e096437e0fd71c847ebb04861345763d94a407`  
		Last Modified: Thu, 15 Mar 2018 06:00:00 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75fcf0f7c40be7ad736e745a62b91d057f53e9f16b31c5251b44395d9ce0d36`  
		Last Modified: Fri, 20 Apr 2018 09:11:53 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e442b0597e7c10354b98b85c388e2500132cc889f7a8de1b7dcdad88df11195`  
		Last Modified: Fri, 20 Apr 2018 09:12:16 GMT  
		Size: 66.3 MB (66304591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

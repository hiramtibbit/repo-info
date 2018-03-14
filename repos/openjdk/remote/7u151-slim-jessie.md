## `openjdk:7u151-slim-jessie`

```console
$ docker pull openjdk@sha256:9796c993547706407f38f9ab2fac94fd94758872ad8d3779530d3dbac00e7ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:7u151-slim-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:9cc43325175aae421d4601413f3aec5a0f8425b9a4ee33e8e68ae71b1d9b4314
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148792851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10f31b21cb81e7956165f937e54af794f2968731a7b0a31672ba6374c3c5f804`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 11:15:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:15:32 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:15:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:15:34 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:29:22 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 14 Mar 2018 11:29:22 GMT
ENV JAVA_VERSION=7u151
# Wed, 14 Mar 2018 11:29:22 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Wed, 14 Mar 2018 11:30:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb9677eb5994c545214796f8413ba73dbf4626fbb577aad1372c07946932a67`  
		Last Modified: Wed, 14 Mar 2018 13:18:05 GMT  
		Size: 463.7 KB (463726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c48310f4a16bd94a053595d920462410c502a4e31aa3921d14efb305625adbd`  
		Last Modified: Wed, 14 Mar 2018 13:18:05 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5aab639445cc92fdb05b5bf2216d779f1e5f2518e30633e6e0605860b980e5`  
		Last Modified: Wed, 14 Mar 2018 13:18:05 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1693ee4449ddacdaef268843ebc0571918978e2ce9067e390a916debbb8bf9`  
		Last Modified: Wed, 14 Mar 2018 13:42:06 GMT  
		Size: 118.2 MB (118206345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-slim-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:294074acd06103f0bd95c729b046442056551de8164e66e03067084c54f47054
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121619150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a17dcc3710260cba9f63295fb5b576804d56200de7c6af58e458a27decb60f33`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 20:56:30 GMT
ADD file:7590562c1d62ac7d305af7caf8771e09bcbf6d396e4d8d2b66d878327b4d3f52 in / 
# Thu, 15 Feb 2018 20:56:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:45:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:45:32 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 21:45:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 21:45:33 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 21:48:49 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 21:48:49 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 21:48:49 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 21:50:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:74273dae7ee101471a164eb562356e7b2e60d34be2b15b077b6dae6a9aa063ec`  
		Last Modified: Thu, 15 Feb 2018 21:05:26 GMT  
		Size: 28.4 MB (28430874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392d7a09ef1b99453d8d1a40f1970a2120fbe801977c02d9800a08a1ca4e4f21`  
		Last Modified: Thu, 15 Feb 2018 22:02:45 GMT  
		Size: 456.4 KB (456436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db50eb8736a7af3648e6195c24d64386926e522d9903b65c90704a1dc452daa`  
		Last Modified: Thu, 15 Feb 2018 22:02:44 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8711f563dacf987efaa49090be73f04b30471f7f4c68a461bc38fe251105321d`  
		Last Modified: Thu, 15 Feb 2018 22:02:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da55abdefa843a3b0df2c6e3b64dc9d5bbde8bf89b7f9b47f73e07f13d63f96`  
		Last Modified: Thu, 15 Feb 2018 22:05:23 GMT  
		Size: 92.7 MB (92731463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-slim-jessie` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:432d452fe375320bef552d04df60b6bfc48c6c0e5f5e3d028c8ea093d7264026
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.2 MB (127197365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9865117f26ef0ae27b127275c4d88989583d65bef361d2c3c8b0e7faf81bbc0`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:27:02 GMT
ADD file:93c7ef253ac06f9011215f1bb9c9f62f9ce89ba664e894251a9e324fc6e8d3aa in / 
# Thu, 15 Feb 2018 13:27:02 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 15:10:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 15:10:04 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 15:10:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 15:10:06 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 15:13:35 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 15:13:35 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 15:13:35 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 15:15:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:0172d99052b787811768cdf05d717087e0c1e28761dbc7c7b19d943e6decaec5`  
		Last Modified: Thu, 15 Feb 2018 13:36:28 GMT  
		Size: 26.3 MB (26290245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7720d873307865f93ab5fb1a91a523a2a6ecc30622e796abca192f7f250e60`  
		Last Modified: Thu, 15 Feb 2018 15:40:32 GMT  
		Size: 432.3 KB (432329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c9d1a95cfdd997dd24430b77a24ec7b856fcc7e26e77f09adb578f9887227f`  
		Last Modified: Thu, 15 Feb 2018 15:40:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454a2d5067db243997a070cef7e19af881ea708e17de8e022cf8697cc26d2634`  
		Last Modified: Thu, 15 Feb 2018 15:40:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e80485260f675c874f4987c33d4412db2d8d70d894ba2f93bef08d37f9489b1`  
		Last Modified: Thu, 15 Feb 2018 15:43:17 GMT  
		Size: 100.5 MB (100474412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-slim-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:df72e1f7d621a02aa9408b08f63e83b2386230e0fb9f89fc01ee696dd795b64f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.9 MB (161865359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa2a567714fa9c84b95ed0d39b88a4c77ab3608b1e9684833c4623452ee5c7b`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Tue, 20 Feb 2018 18:25:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Feb 2018 18:25:36 GMT
ENV LANG=C.UTF-8
# Tue, 20 Feb 2018 18:25:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Feb 2018 18:25:38 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 20 Feb 2018 18:29:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Feb 2018 18:29:19 GMT
ENV JAVA_VERSION=7u151
# Tue, 20 Feb 2018 18:29:19 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 20 Feb 2018 18:30:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe72695ccd31f30828386b3ba66e6290897928443a839921d0967c858ee6d9e`  
		Last Modified: Tue, 20 Feb 2018 19:52:53 GMT  
		Size: 466.3 KB (466262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0208f6d1f56f7bb80ff83ea1deeb0f8fe082197efc24327a521bac4045cc17fa`  
		Last Modified: Tue, 20 Feb 2018 19:52:53 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e63e79c2a3da37d1b5631656ad834ec23e15fb5f445c8567835377c37286f9`  
		Last Modified: Tue, 20 Feb 2018 19:52:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4e44cacf93343b29784295cadec0dde4c1d3a5a589eb45061690559840e47d`  
		Last Modified: Tue, 20 Feb 2018 20:00:38 GMT  
		Size: 131.1 MB (131125521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-slim-jessie` - linux; ppc64le

```console
$ docker pull openjdk@sha256:8561e4fb33e4b82eec6e9d962aa79f0527e349026d08ce19b8847b82b7b09f5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (125011969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f4597e45295a128dc646fc92fd7ebae1090497c69da985256f98c27b46a9f0a`
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
# Thu, 15 Feb 2018 04:10:10 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 04:10:15 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 04:10:19 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 04:24:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:e2e577b641f0451829e47648343b9e258610134cd6b5ecbea395425ec617359f`  
		Last Modified: Thu, 15 Feb 2018 04:41:42 GMT  
		Size: 95.2 MB (95239525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-slim-jessie` - linux; s390x

```console
$ docker pull openjdk@sha256:6804b8400f6af6cfb7b8a6e4534f82b859b7a3dd305b8fe15e8a8a14a9abd23d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.9 MB (125862124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43dc7552b558c08d6e6d5b331054ca0986f35bdad7ea5a0afcd375e8e435d735`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:51 GMT
ADD file:9bd92ddab0af7fb1094a6c8dd002f66c3d072f33ef24a9b28fc14949ff26406c in / 
# Thu, 15 Feb 2018 06:22:51 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:52:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 06:52:32 GMT
ENV LANG=C.UTF-8
# Sat, 17 Feb 2018 06:52:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Feb 2018 06:52:33 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Feb 2018 06:53:35 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Feb 2018 06:53:35 GMT
ENV JAVA_VERSION=7u151
# Sat, 17 Feb 2018 06:53:35 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Sat, 17 Feb 2018 06:54:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ae689cf618fbbb05b862e8d15abba29227ddab42a56a7bd8342b0ad9abc0d0ea`  
		Last Modified: Thu, 15 Feb 2018 00:56:24 GMT  
		Size: 30.3 MB (30301978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490c6e17109b149f30c4dc8a19c47817576d6fdb57b677988454c4079334592a`  
		Last Modified: Sat, 17 Feb 2018 06:55:08 GMT  
		Size: 473.2 KB (473166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f6122ab839a49c4fce9e1e7c87c0637c3cf905dbd846c80786252c58995df1`  
		Last Modified: Sat, 17 Feb 2018 06:55:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6508ea394da7fbb0a98085c1707474bf4127cc82f9e5fc6e64c79c38d3c41c5c`  
		Last Modified: Sat, 17 Feb 2018 06:55:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa3d7d035727646409b1766929f00a462b2804f904cad4942e2da9275420908`  
		Last Modified: Sat, 17 Feb 2018 06:55:51 GMT  
		Size: 95.1 MB (95086601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

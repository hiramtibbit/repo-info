## `openjdk:8u162-slim-stretch`

```console
$ docker pull openjdk@sha256:e5e8929a62a1545fd54ad11b53f9c7bcb148c8a6721ee4c7227b386bdae5579f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:8u162-slim-stretch` - linux; amd64

```console
$ docker pull openjdk@sha256:d33cf8dafcd58217b221cdc04b320854eaa5e6e86597bbc8ed52d2f2adcec383
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.9 MB (90932891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2918c0749140e6e814a04b2f348f1dbfc25ff59f014fc9eb136d40cc0a4742f3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 11:07:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:07:04 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:07:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:07:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:10:17 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 19 Mar 2018 21:39:19 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:39:19 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:39:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:39:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:39:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b826b31940917d1052a280a46c73120f9688ce9b03a4f185d80b57755e0a9d`  
		Last Modified: Wed, 14 Mar 2018 12:48:12 GMT  
		Size: 454.8 KB (454841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb043c2d1520ae17e6480642d46665aeb109f65e9fa57cd74e8d82beb3f6eb5f`  
		Last Modified: Wed, 14 Mar 2018 12:48:11 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9d9a7482db5eaf9dfdeb02742795077ba645020e34eb8d7edade6f3ad7736b`  
		Last Modified: Wed, 14 Mar 2018 12:48:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db83168774e27fb4fc5f4df720a3da42a9128277b24e01fd604d3ed7fe62600`  
		Last Modified: Mon, 19 Mar 2018 23:57:02 GMT  
		Size: 67.7 MB (67716605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b596cbbeab9f1cb0ee8492e643bb60979bab16733d625bd488284b76838cc4a9`  
		Last Modified: Mon, 19 Mar 2018 23:56:49 GMT  
		Size: 272.1 KB (272087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u162-slim-stretch` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:514491a798cb2e66dddde5412c10331990aa136420e91fd379b96d0efddec898
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77947295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d3d6314ab2e39638d198cba5ae1b91cac83596881a1e81113bd29833a77147a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:39 GMT
ADD file:c472062baa8d8c35c7642162b18516ecdc2e143d0e5c147b472312cfc532efe9 in / 
# Wed, 14 Mar 2018 20:01:40 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 22:48:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:48:27 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:48:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:48:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:51:07 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:12:27 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:12:28 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:12:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:12:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:13:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:8efba53ec4136476603e9856d8bb17541faa0f33abada48ac4d2d7efe61ff43f`  
		Last Modified: Wed, 14 Mar 2018 20:13:21 GMT  
		Size: 21.2 MB (21164955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1949e18a328f3c9b962c19755d8a55af0f21d21943810d7daf39862ab8bedf`  
		Last Modified: Wed, 14 Mar 2018 23:12:26 GMT  
		Size: 447.7 KB (447681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b95963c2f246890fe81e80837f0f83814d454828b59a18fb683a23a7f0eb09c`  
		Last Modified: Wed, 14 Mar 2018 23:12:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f7dc2f45c72f39e5727403aaf034f49ea08f3db29ca0556933a777d8ea0ff9d`  
		Last Modified: Wed, 14 Mar 2018 23:12:26 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d7f0fda821eb5202813e0a3a699c50c3900e4a005dcf256f65b65288663dc3`  
		Last Modified: Tue, 20 Mar 2018 10:39:16 GMT  
		Size: 56.1 MB (56062093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547ddd96da6cc2373a2a9eb1775b681ac03d1352a3ed94f7d20fb9dfa8a9f2c2`  
		Last Modified: Tue, 20 Mar 2018 10:39:02 GMT  
		Size: 272.2 KB (272188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u162-slim-stretch` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:3af1971ef44843db7f1ad07b7cc7aabbb8c0cad288a3f58eb9e0764a0ada63df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77947187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5f4973cadb194321f8229203523021e918af2f9d313f0ba4da5d588533ac230`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:39 GMT
ADD file:c472062baa8d8c35c7642162b18516ecdc2e143d0e5c147b472312cfc532efe9 in / 
# Wed, 14 Mar 2018 20:01:40 GMT
CMD ["bash"]
# Tue, 27 Mar 2018 01:50:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Mar 2018 01:50:11 GMT
ENV LANG=C.UTF-8
# Tue, 27 Mar 2018 01:50:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Mar 2018 01:50:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 27 Mar 2018 01:53:09 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 27 Mar 2018 01:53:10 GMT
ENV JAVA_VERSION=8u162
# Tue, 27 Mar 2018 01:53:10 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 27 Mar 2018 01:53:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 27 Mar 2018 01:53:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 27 Mar 2018 01:53:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:8efba53ec4136476603e9856d8bb17541faa0f33abada48ac4d2d7efe61ff43f`  
		Last Modified: Wed, 14 Mar 2018 20:13:21 GMT  
		Size: 21.2 MB (21164955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b006c16d8c81f9d03b541fa686cb57f40818f1d13ca2a326b7685a357d63e5`  
		Last Modified: Tue, 27 Mar 2018 02:13:30 GMT  
		Size: 447.7 KB (447679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4c60102a2d43ceb83f32f54bc9fc75f477a8b3b7b43521e705bca7293161f6`  
		Last Modified: Tue, 27 Mar 2018 02:13:30 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b290902da6536cde53ecb48ed3327fcebd41dd015833f9822475ef20d500ef85`  
		Last Modified: Tue, 27 Mar 2018 02:13:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7a8f49bb9739647a90c2b283f2dddbb67e1363d20bc02afa973e221d2cb398`  
		Last Modified: Tue, 27 Mar 2018 02:15:42 GMT  
		Size: 56.1 MB (56061983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b662a98e0b944b59df2e43fea315c35651e6a6b17941cc68a3475e550b88f5b6`  
		Last Modified: Tue, 27 Mar 2018 02:15:27 GMT  
		Size: 272.2 KB (272191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u162-slim-stretch` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:7d90573b406f0f4f26f2a31909c9550dfe1c9eec13480d0c265d267c712bd6c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.5 MB (78529908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3add56cedeff30e93b3262d365ad69e754a0e11328f15dbc37cf710e94036807`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:40:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:40:14 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:40:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:40:20 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:48:59 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 11:04:30 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 11:04:31 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 11:04:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:06:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:06:20 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c2c870b6a03218fa96a1914a126961281284a49163a7dac0a01e1e541e1d87`  
		Last Modified: Wed, 14 Mar 2018 21:41:04 GMT  
		Size: 440.8 KB (440847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9452cad7dfe516b55adcda81dc66f8983610a046558f0ff3c2fbc4d640273838`  
		Last Modified: Wed, 14 Mar 2018 21:41:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd53f132dbd6ebdabddfe1a5d0db8da6317d63520610c9287202b678034df19`  
		Last Modified: Wed, 14 Mar 2018 21:41:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2127a380d9ab374624b2d577f048e73b26f2b8c2017c8b51e0da5f481ca260c`  
		Last Modified: Tue, 20 Mar 2018 12:18:29 GMT  
		Size: 57.5 MB (57479378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2334376d440f223599deb58aa242b541bc4e0d54df02a505f77044c58d44812`  
		Last Modified: Tue, 20 Mar 2018 12:18:10 GMT  
		Size: 272.1 KB (272102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u162-slim-stretch` - linux; 386

```console
$ docker pull openjdk@sha256:4d21068524e83e7d8e3814527c54bbc988b279ed67ee845ae61f9118d19ddd8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90740185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e55205fbddeacf4e2e7b806c728fdc831b059a0e66fb92b1404d668653ab0d6c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Sat, 14 Apr 2018 02:56:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:56:41 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 02:56:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 02:56:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 14 Apr 2018 02:59:01 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 14 Apr 2018 02:59:01 GMT
ENV JAVA_VERSION=8u162
# Sat, 14 Apr 2018 02:59:01 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Sat, 14 Apr 2018 02:59:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 14 Apr 2018 02:59:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Apr 2018 02:59:27 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:4bbaad9d12d2240d446a4bdd775931ab087231a82c5d07172d661861d447f336`  
		Last Modified: Thu, 15 Mar 2018 01:29:42 GMT  
		Size: 23.1 MB (23128783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9907e8c7c6ac7377a8aaff665a0ef03d26b24f6af36d8a0ce9c1075afa7b66`  
		Last Modified: Sat, 14 Apr 2018 03:19:46 GMT  
		Size: 463.5 KB (463511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e6d063f5f6eda17cafd9f373b328ff8e5e1618340e7c686e5e8ccd16cc621e`  
		Last Modified: Sat, 14 Apr 2018 03:19:46 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc67cdddeadc1f4a56168a5f34e5a44f29d93e7db33c2528ad6f21d867a7214`  
		Last Modified: Sat, 14 Apr 2018 03:19:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a866e722a7c801ab9e275a13c534460092760b64cf81aa59c1d73b605ff428e`  
		Last Modified: Sat, 14 Apr 2018 03:22:24 GMT  
		Size: 66.9 MB (66875367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d368ee7125799d9f9f71d8d32e860d401fe97fb84b9ffc2e3cd88a71114e78`  
		Last Modified: Sat, 14 Apr 2018 03:22:09 GMT  
		Size: 272.1 KB (272145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u162-slim-stretch` - linux; ppc64le

```console
$ docker pull openjdk@sha256:5c3c5205e7794758d2edb1bbe16639615e34b1c957ce495e3fbde11f1b48ab5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81487408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0432c0ad6f6a338a7c0df816adaa8925db655a32496f263d21eadf3fba2dfa5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 04:52:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:52:45 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:52:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:52:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 05:11:05 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 11:57:26 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 11:57:27 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 11:57:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 12:00:29 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 12:00:41 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2161f1e27455c4f326ed4a0e9f04c75ab7cf7ec817ac77d09e60f7546eba89eb`  
		Last Modified: Thu, 15 Mar 2018 06:06:39 GMT  
		Size: 449.8 KB (449810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6707568a8fbabd710d6a1bd122f68bb3fb7bf70a82f71a8166262bc6ea9041`  
		Last Modified: Thu, 15 Mar 2018 06:06:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291e9f652987d4079557622fc40bd32490a0d89f8a608d317ab0dbcdbd3557c5`  
		Last Modified: Thu, 15 Mar 2018 06:06:39 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3de306a3600af476a9db0fd6b351d8fde8aef942bb812309a86742bd6a6c7a`  
		Last Modified: Tue, 20 Mar 2018 12:21:48 GMT  
		Size: 58.0 MB (58018996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f6c8c7ca952b1c735aab26a99e92b920c7bb71f47e71fd92199134d810bbcc`  
		Last Modified: Tue, 20 Mar 2018 12:21:36 GMT  
		Size: 272.1 KB (272079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u162-slim-stretch` - linux; s390x

```console
$ docker pull openjdk@sha256:eb6debfe606de18d3a87ab2f58516f61f6a4544082aa18d6ebba2bcb3868e7ae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.3 MB (80254762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587d28f27e1cbafb9f8ad7ae1f15c263c6653a685967cebc34db063cd0aed1d8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:43:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:43:19 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 06:43:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 06:43:20 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 06:44:56 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 17:04:46 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 17:04:46 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 17:04:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 17:05:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 17:05:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512c47784c512985a2f670e2a9aebfa09511f48279b95d9891a337a558a3ad3a`  
		Last Modified: Wed, 14 Mar 2018 06:57:32 GMT  
		Size: 465.7 KB (465722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc17c7b5f20c51c5f2c4f4d919514f4d98fd1056c2f72b08ab8a805bcacec06`  
		Last Modified: Wed, 14 Mar 2018 06:57:32 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7342609907d585fc4e70d60bdbe4417280ca389d6d95b71e976510cad8cecc9c`  
		Last Modified: Wed, 14 Mar 2018 06:57:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4835b97ec6b731008459e44b6ca897790a8fd49edd7ee6e5f12a0e0388b8dbf5`  
		Last Modified: Tue, 20 Mar 2018 17:17:45 GMT  
		Size: 57.2 MB (57176027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00c56e18b0b93b1a60ec82254518153d74c0db7426ff583b429af1e14a678a2`  
		Last Modified: Tue, 20 Mar 2018 17:17:36 GMT  
		Size: 272.2 KB (272155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

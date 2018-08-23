## `openjdk:11-sid`

```console
$ docker pull openjdk@sha256:dd9997742c3d3c55717e42850cfd4c646fca2a7c9108437d98b04ad98e435782
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

### `openjdk:11-sid` - linux; amd64

```console
$ docker pull openjdk@sha256:4ac1b886fa86a21f39536e99e7a2e5e5f56fa95864c9df1728aa720088609df9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **510.2 MB (510228294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e3b66ceb7c40cea0ee3897d637d851c939671f4e065212d955e6d41b96c380f`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Jul 2018 00:24:39 GMT
ADD file:f04b64a73c29541d70cda855be7033dbd8e0b173ab11cd93458f3400fd270d85 in / 
# Tue, 17 Jul 2018 00:24:40 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:09:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:09:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:10:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:08:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:08:04 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:08:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:08:05 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:08:05 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 22 Aug 2018 21:10:49 GMT
ENV JAVA_VERSION=11-ea+27
# Wed, 22 Aug 2018 21:10:49 GMT
ENV JAVA_DEBIAN_VERSION=11~27-1
# Wed, 22 Aug 2018 21:12:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 22 Aug 2018 21:12:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e367ac4072dc48836ab52faeb39e943b075e21aa02c1a88f838651b9b384de50`  
		Last Modified: Tue, 17 Jul 2018 00:39:42 GMT  
		Size: 48.7 MB (48725588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a57779b5dbaefdeb5306372ffa77aee257957dd74042f9ea2572052c5cc9201`  
		Last Modified: Tue, 17 Jul 2018 03:50:25 GMT  
		Size: 7.0 MB (7035962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4c28c5ff25d086ba826711dd56a6652542b6dd75f3c5a4bb6daa1c8977bf7e`  
		Last Modified: Tue, 17 Jul 2018 03:50:27 GMT  
		Size: 9.2 MB (9245784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8bf5e9a1f1f0c917d4b4cacd63eb974e31d4bb74c6b35ac2905c39c7568f37`  
		Last Modified: Tue, 17 Jul 2018 03:51:19 GMT  
		Size: 51.4 MB (51432749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e45f9a301efabcdf81e1b0b3ab3803d71b47963b8900551c9956c55fd7853c0`  
		Last Modified: Tue, 17 Jul 2018 06:29:35 GMT  
		Size: 898.4 KB (898412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70656c3c93966b66d9f46242ea274d59996a24e5d3b3deb9d0a9307c58845f1e`  
		Last Modified: Tue, 17 Jul 2018 06:29:35 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7fc9308a9fe5a8750ffa4848b6ded0bdb612504de7e036086f31b9a2ec49fe8`  
		Last Modified: Tue, 17 Jul 2018 06:29:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ea9c1b8a5f65812c03f77eaac5ecbca5067f6bb3b028df0cacf43151e4de34`  
		Last Modified: Wed, 22 Aug 2018 21:19:14 GMT  
		Size: 392.9 MB (392889433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-sid` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:06ece021f8dc3dd5aa7d1ce92ee3ce23ffb04587558a52dd45dff1e8601c1ec2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.2 MB (436164704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3af322b77d8d5c896104f447db4ae204f53002deb01668e6b307c9a0eff86e06`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Jul 2018 08:53:54 GMT
ADD file:feed6b12801621af72a787e98590f6fd783022a609efc8254532712521e6c570 in / 
# Tue, 17 Jul 2018 08:53:55 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:46:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:46:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 11:46:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:33:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:33:25 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:33:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:33:27 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:33:27 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 23 Aug 2018 08:50:55 GMT
ENV JAVA_VERSION=11-ea+27
# Thu, 23 Aug 2018 08:50:55 GMT
ENV JAVA_DEBIAN_VERSION=11~27-1
# Thu, 23 Aug 2018 08:53:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 23 Aug 2018 08:53:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b6112397569f950be7cab355fd3cb9fb3b089c080499c1eebc269ecb7cc3715c`  
		Last Modified: Tue, 17 Jul 2018 09:06:21 GMT  
		Size: 46.6 MB (46645580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe7203031bf40ede6b42be5c3fda4ca4d75813d5bd4b1b964031a91101f44bc`  
		Last Modified: Tue, 17 Jul 2018 11:59:56 GMT  
		Size: 6.6 MB (6628142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70fcc6b3abd37d971fff823418e9e34f70cffa0160a3baf8d7e2eea079fcf3a`  
		Last Modified: Tue, 17 Jul 2018 11:59:57 GMT  
		Size: 9.0 MB (8987743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ca24f3caa0406edca675fa7e99465d8f149ee2c5cbe3965f735cfb73eabf03`  
		Last Modified: Tue, 17 Jul 2018 12:00:32 GMT  
		Size: 48.7 MB (48706977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5525d2263f5befddd7987e3f9f3fde3b93f3f8d9f4113523b11eacc06cee828d`  
		Last Modified: Tue, 17 Jul 2018 12:48:58 GMT  
		Size: 891.5 KB (891517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b860665f8874f6c2493e1b90f2f20699f527a97d464fb7c790dd6798512829fd`  
		Last Modified: Tue, 17 Jul 2018 12:48:57 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8da1c077dfd9c3269d6f5acc5d048da94058aa35d8cd0d454d078befa979206`  
		Last Modified: Sat, 21 Jul 2018 11:05:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74880fe0819b9ac930b26822ab696f48c8c52e326910c7fbb76359b8dd4dd522`  
		Last Modified: Thu, 23 Aug 2018 08:58:13 GMT  
		Size: 324.3 MB (324304377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-sid` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:4ef33b9f59c4d799a37c54491a9caf765f87aa299fe89116b39ea6c6d9e6e9a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.8 MB (451752369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5764283cde9251a85ac633acd16705684ac815b841ef19a31bafbe20227f90e2`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Jul 2018 12:03:18 GMT
ADD file:016411fa531d65b2271f50aee3e350fc858e61add73997af4a83556197c9abd5 in / 
# Tue, 17 Jul 2018 12:03:18 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:44:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:44:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:45:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:08:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:08:31 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 16:08:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 16:08:42 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 16:08:43 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 23 Aug 2018 11:57:52 GMT
ENV JAVA_VERSION=11-ea+27
# Thu, 23 Aug 2018 11:57:52 GMT
ENV JAVA_DEBIAN_VERSION=11~27-1
# Thu, 23 Aug 2018 11:59:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 23 Aug 2018 11:59:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a4e0ee0fbc8087144c4cdef3f0495ffebba2e3ee7dfa11ff0d5a4b165ff41f7c`  
		Last Modified: Tue, 17 Jul 2018 12:15:37 GMT  
		Size: 44.5 MB (44512160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e3242d163ccebb1e24dafc2e4deb3b8913ee65303f56b15736a14018c6fcf6`  
		Last Modified: Tue, 17 Jul 2018 14:08:01 GMT  
		Size: 6.4 MB (6418813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d90194ec002d2dcbfc99ba120dcf8f01ef9037e35164e5ceb9c8ceac378ec1c`  
		Last Modified: Tue, 17 Jul 2018 14:08:01 GMT  
		Size: 8.7 MB (8703423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1bbf6b8c332b1819fff7e2683125a0904e3e0ed6b11a5de672c52deb7f2b39`  
		Last Modified: Tue, 17 Jul 2018 14:08:41 GMT  
		Size: 46.6 MB (46578274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5454f32667ce5d863d55d1b96c1461816f6d761d122705116de89508c6ac90c9`  
		Last Modified: Tue, 17 Jul 2018 16:29:41 GMT  
		Size: 874.6 KB (874572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d2c91e51b4980b7ae9491690d30afbc683e6b3c5eef2c92bf32be8de31fd71`  
		Last Modified: Tue, 17 Jul 2018 16:29:40 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa8b0f4f7e29715768cce3d99b3e43fc650924bb721a6f88857cf5da36fc9fe`  
		Last Modified: Tue, 17 Jul 2018 16:29:40 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a985995003d427c47ee8ca397b921264ee5de36ef0813db7088e4e498ed11631`  
		Last Modified: Thu, 23 Aug 2018 12:11:01 GMT  
		Size: 344.7 MB (344664763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-sid` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:72527528718232878ba77283538d0ce02b3719123a398682c16bb7d824bc8391
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **490.1 MB (490096892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee67e09e0dbf94abdb7a1f64453706bfaffa7fdb7435b87f69d5435018d3c255`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Jul 2018 08:43:33 GMT
ADD file:1145a1860bba8a4d148966c227a31ee5ee05c524c8af7a2c0963bb5671b11ad7 in / 
# Tue, 17 Jul 2018 08:43:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:39:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:40:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:42:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:46:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:46:37 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 19:46:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 19:46:48 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 19:46:49 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 23 Aug 2018 09:31:28 GMT
ENV JAVA_VERSION=11-ea+27
# Thu, 23 Aug 2018 09:31:29 GMT
ENV JAVA_DEBIAN_VERSION=11~27-1
# Thu, 23 Aug 2018 09:39:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 23 Aug 2018 09:40:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:719cf01a9d639f6fad37c3abd73d6746ec6483c438952c7daf2503b9dccde689`  
		Last Modified: Tue, 17 Jul 2018 08:53:02 GMT  
		Size: 46.0 MB (45967380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075accf774284e7b667dd405cd13b8eeb55056113680340e3245fbd09d5d03fa`  
		Last Modified: Tue, 17 Jul 2018 15:07:59 GMT  
		Size: 6.6 MB (6647895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6bf6cdca1c47f36a5665bfdb0fb046730a62f0d3c944aecf285c441be0ea93`  
		Last Modified: Tue, 17 Jul 2018 15:07:59 GMT  
		Size: 9.0 MB (8981452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f95cf11f89a05599f66a2a5fdc7bac355c7635f389cc9ade844b9fd4b744541`  
		Last Modified: Tue, 17 Jul 2018 15:08:46 GMT  
		Size: 49.4 MB (49355701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb6db50958abc95abda1dac5c23a181cbe2882c201c5e9eb9530b6c1b96b408`  
		Last Modified: Tue, 17 Jul 2018 20:36:15 GMT  
		Size: 883.7 KB (883738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9102392f830c80cfed5759b89eee44e0bb8a6650683705c584a404568f44f8cd`  
		Last Modified: Tue, 17 Jul 2018 20:36:12 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3fefb142ec98182bb9402c0e57b6b9f4948cf79450831ad5309d39388843235`  
		Last Modified: Tue, 17 Jul 2018 20:36:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016db47d30d3b73770c587e8fc8f243efd9dac01f2dd10054927d7b1655fb75a`  
		Last Modified: Thu, 23 Aug 2018 09:57:50 GMT  
		Size: 378.3 MB (378260358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-sid` - linux; 386

```console
$ docker pull openjdk@sha256:1d786d74c09ed565e88f3e5b984a88fa1e05767d7968dae946313e94cd3abc1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **600.7 MB (600650193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88872ceab2ff9b554dbc00ae8b7de75cdb77b81657d225d3c4bf63a16a932df7`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Jul 2018 10:46:37 GMT
ADD file:9a56907f76deea3f2b22068eae8c6cc31bed7f9c7b3de38c6e99c54e77d0822e in / 
# Tue, 17 Jul 2018 10:46:41 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:30:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:31:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:32:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:08:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:08:27 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 18:08:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 18:08:29 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 18:08:30 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 23 Aug 2018 11:08:26 GMT
ENV JAVA_VERSION=11-ea+27
# Thu, 23 Aug 2018 11:08:26 GMT
ENV JAVA_DEBIAN_VERSION=11~27-1
# Thu, 23 Aug 2018 11:11:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 23 Aug 2018 11:11:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c4a6da94b3de8d8ecc301930050dce3da90b886c8443b00166765e0873f7abf6`  
		Last Modified: Tue, 17 Jul 2018 11:03:38 GMT  
		Size: 49.5 MB (49529462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3804bb32a028b43835bbfcaa803b7de3d0dac5cb91ca5192d83ff39548d87dc5`  
		Last Modified: Tue, 17 Jul 2018 15:11:50 GMT  
		Size: 7.2 MB (7186448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6b791854fa42fd340bfb473b8a46084be17fd760aec34df82fd303f96a9ca5`  
		Last Modified: Tue, 17 Jul 2018 15:11:52 GMT  
		Size: 9.5 MB (9527986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40279f54426d9ac9a22689660bb34d8bc986a2f929cee2ed860920321d5ffc1d`  
		Last Modified: Tue, 17 Jul 2018 15:13:01 GMT  
		Size: 52.9 MB (52940134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336ac680bc5748d60157816fa95cefea339c0c3720c857556ccdf17043be6778`  
		Last Modified: Tue, 17 Jul 2018 18:25:37 GMT  
		Size: 906.0 KB (906033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70767d7e7737bbadef44f25783a0ad50abdad299c166e58d93c14d536dd09869`  
		Last Modified: Tue, 17 Jul 2018 18:25:35 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7350e8f9394e57944e4b612f28589251004bec75a020dc911b40ba63544d86`  
		Last Modified: Tue, 17 Jul 2018 18:25:35 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08fd29e16ea195537d17c8b3f4663bc989aef191170ce9904ab3d6df285218a6`  
		Last Modified: Thu, 23 Aug 2018 11:18:54 GMT  
		Size: 480.6 MB (480559764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-sid` - linux; ppc64le

```console
$ docker pull openjdk@sha256:f7b504743a6bd4d1238192e71a76b7a18f1c3f93412dd72d2511bc484a2e700d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **491.9 MB (491877256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f332517512904ea4e8a301b8c3aeb070d16467c8b6906c5549bce6058d7896f7`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Jul 2018 08:18:22 GMT
ADD file:94ebec540eca8b99572e5842e1f1f2fe8cf7a62fb1366b2459edb37903e41200 in / 
# Tue, 17 Jul 2018 08:18:31 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:56:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:56:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:57:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:07:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:07:15 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 16:07:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 16:07:22 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 16:07:23 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 23 Aug 2018 08:51:17 GMT
ENV JAVA_VERSION=11-ea+27
# Thu, 23 Aug 2018 08:51:17 GMT
ENV JAVA_DEBIAN_VERSION=11~27-1
# Thu, 23 Aug 2018 08:55:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 23 Aug 2018 08:55:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2d7cf41bf039d34ad7c6efe6cb9dc3370c5f55c39226a13fd409d52eb991f335`  
		Last Modified: Tue, 17 Jul 2018 08:23:43 GMT  
		Size: 50.2 MB (50185044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17647cf140d6db3c9f1f92652456b5a6bb54c33ca54b10d4dfb98f2b9f8e5c4`  
		Last Modified: Tue, 17 Jul 2018 14:13:33 GMT  
		Size: 6.9 MB (6876422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd26110f5fee83517301d699e51fa0068429ef004ebc1a0f923f23ededc8621`  
		Last Modified: Tue, 17 Jul 2018 14:13:33 GMT  
		Size: 9.5 MB (9494855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c5d2aceb0a30850066a60ad00c4acf7c902e57f834ceaa3d53eab67f5b9ee7`  
		Last Modified: Tue, 17 Jul 2018 14:14:35 GMT  
		Size: 54.1 MB (54097468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56eba754269ec00bd5b182353c6ab928b62d60d1f637e6d431eb449b24cdde2a`  
		Last Modified: Tue, 17 Jul 2018 17:24:18 GMT  
		Size: 892.9 KB (892865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21deca8c5964f5721227b1836137a06c27194532e34d1ec53f8fd9933beb7c56`  
		Last Modified: Tue, 17 Jul 2018 17:24:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f653f814264293cc025cbc7e85d65eb30689c78af3149a154d74ee6e7f42a471`  
		Last Modified: Tue, 17 Jul 2018 17:24:18 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:897ac503eaa525891c49f77c776334d971ce23749502f3cb75408977cf2b9851`  
		Last Modified: Thu, 23 Aug 2018 09:04:28 GMT  
		Size: 370.3 MB (370330231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-sid` - linux; s390x

```console
$ docker pull openjdk@sha256:d5f87a1b3525841b64eb789bb63011535d30bce1b780ccb90cd014e48cb9d319
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.7 MB (453731880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb216886bcf8eebcf35320ee10909e34f943eace56994bce68587833f3ba678`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Jul 2018 11:42:12 GMT
ADD file:cc7dc0768817446033aeb138e188af680cfedc409e223f9784d76e615feb4c11 in / 
# Tue, 17 Jul 2018 11:42:15 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:19:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:19:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:19:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:12:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:12:39 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 14:12:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 14:12:40 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 14:12:40 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 23 Aug 2018 12:05:01 GMT
ENV JAVA_VERSION=11-ea+27
# Thu, 23 Aug 2018 12:05:01 GMT
ENV JAVA_DEBIAN_VERSION=11~27-1
# Thu, 23 Aug 2018 12:06:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 23 Aug 2018 12:06:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7ce421c266a7f090ea9857f4226f9f791cb56ece2becee63129b019e9786527d`  
		Last Modified: Tue, 17 Jul 2018 11:45:34 GMT  
		Size: 47.7 MB (47674254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07abb9f11de8a7cf3609cab93301ed88a0a66c6f9946a1b865a2738460537a15`  
		Last Modified: Tue, 17 Jul 2018 13:29:20 GMT  
		Size: 6.8 MB (6764457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c958d9bc09e39d650d733b01f7aa4174021f01ef9e69f65e9ee399c5f4a6903f`  
		Last Modified: Tue, 17 Jul 2018 13:29:20 GMT  
		Size: 9.2 MB (9183018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0472d84d12561d1428c503c1a319740336416588bde4987dde0a014191292297`  
		Last Modified: Tue, 17 Jul 2018 13:29:40 GMT  
		Size: 50.8 MB (50780719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a3c8e1193f50d748e1cc4546bbb8b589406682e8d1c0d96b7e6f26f34f4eb4`  
		Last Modified: Tue, 17 Jul 2018 14:20:37 GMT  
		Size: 908.9 KB (908862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407884fad1b073a3529682bf69ca17ce835b388c0cfe3c878ec0d9af37524ce0`  
		Last Modified: Tue, 17 Jul 2018 14:20:37 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e69d24e65a682a3b4b149d58d53e4205a26326f2c2d8b45e37f11702d3030c`  
		Last Modified: Tue, 17 Jul 2018 14:20:37 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca44c117b188132b096f7ea9f7cec320331ad862e6dda35240ce5061c0bca246`  
		Last Modified: Thu, 23 Aug 2018 12:12:51 GMT  
		Size: 338.4 MB (338420202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

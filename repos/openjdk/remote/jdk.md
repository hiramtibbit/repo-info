## `openjdk:jdk`

```console
$ docker pull openjdk@sha256:b1c019637ce1a432a8ccd781fc5768c86305720479225e9f6168c1f87fb3de05
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

### `openjdk:jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:1bb3afbf94708c445cb654504daa72fef808424af22deb7f7391521d62ecec74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **510.3 MB (510283419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d2c38f0a256d228aaef76a7c01b449a6367d5a72bc36ef7fdc1a05f66ee9e37`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 15 Oct 2018 23:22:53 GMT
ADD file:12e34cd91f24d3d0c4716498cdd87838722af59e568ba8c18c457c367a53a315 in / 
# Mon, 15 Oct 2018 23:22:53 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:58:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 00:59:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:15:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:15:47 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:15:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:15:49 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:15:49 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:15:50 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 05:15:50 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Tue, 16 Oct 2018 05:17:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 05:17:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:38517b3035164966f7e2b960f3e87e1f9178537d06992e6045fbd375b84cddfa`  
		Last Modified: Mon, 15 Oct 2018 23:31:59 GMT  
		Size: 49.1 MB (49107897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d518e0b86e7ef6483709500f0dc9be4abfd5336b2516ddb335a46601ebabbd3f`  
		Last Modified: Tue, 16 Oct 2018 01:10:56 GMT  
		Size: 7.4 MB (7366348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75323769698f687431e704e4c1f298f8e803cf5a000e24ccb08f94cbf4a7fda8`  
		Last Modified: Tue, 16 Oct 2018 01:10:55 GMT  
		Size: 9.8 MB (9779476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56058d5d210a80427df6a7f06ac6759e9f5b4b1b064101e843857b0cd4774fc4`  
		Last Modified: Tue, 16 Oct 2018 01:11:36 GMT  
		Size: 51.5 MB (51540357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15911fa38fedc7fe60b36c7f212701e72fe2b0c7a45daa0f30b963a310ff928c`  
		Last Modified: Tue, 16 Oct 2018 05:36:35 GMT  
		Size: 896.9 KB (896914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05608362f0e0dcb66c43d70328dfb62bed93a76eb965be517cfc5602db5080d6`  
		Last Modified: Tue, 16 Oct 2018 05:36:34 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b557609cc1f07d388d0b34a27eed49a2db4309ab2a6008d7f9cb1346b6c8a587`  
		Last Modified: Tue, 16 Oct 2018 05:36:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca752d4c638b9a302da5ad13984fe86eeb2915f2ce328d7da0bdec3422ba7cf0`  
		Last Modified: Tue, 16 Oct 2018 05:37:33 GMT  
		Size: 391.6 MB (391592059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:9c21dd5e40af2f89c000a891a5900ce8d364f1bc4f5b8a2445619dd3a9ea0d76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.6 MB (424557028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b95fef09f6b153a4e6bc3774c59739fd127c9f950227eb16cdb3bc4badf160c7`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 16 Oct 2018 08:53:12 GMT
ADD file:d204a837dc7c47c406943c2337da21ccd177ea67f346558d9dd6ba518eb5e445 in / 
# Tue, 16 Oct 2018 08:53:15 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:57:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:57:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 09:57:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:35:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:35:11 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 12:35:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 12:35:16 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 12:35:16 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 12:35:20 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 12:35:20 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Tue, 16 Oct 2018 12:37:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 12:37:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3a2a7cefe87adee1328d1887984c79e8eb71aaaefc97a339601a30fd31866a41`  
		Last Modified: Tue, 16 Oct 2018 09:02:27 GMT  
		Size: 46.9 MB (46860503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d7aa278f4362b2edbbce821b9f1a65a7261251e406d795abe1de7406022f6e`  
		Last Modified: Tue, 16 Oct 2018 10:07:58 GMT  
		Size: 6.9 MB (6928930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8719d70374582583b66be882a7cbb9628ceb5404972849699d4f2d8ff4b9b1a`  
		Last Modified: Tue, 16 Oct 2018 10:07:58 GMT  
		Size: 9.5 MB (9481567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a9c33ee17a37fd7e022b0be2efdf422af4924ae617c59a153d82f688846f3b`  
		Last Modified: Tue, 16 Oct 2018 10:08:26 GMT  
		Size: 48.9 MB (48862779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c089360c89d410122fae259009fa5573892ffd6179d02acf0f29ebbec618baa7`  
		Last Modified: Tue, 16 Oct 2018 12:49:35 GMT  
		Size: 889.0 KB (889042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ffc781deffa154345acd6035c21073b553fae177f804026b1d3784904a8648`  
		Last Modified: Tue, 16 Oct 2018 12:49:34 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6803669b3e22297a693593dc7b3c1ebc2a00096dcf438962f22e48c4fb3e3f80`  
		Last Modified: Tue, 16 Oct 2018 12:49:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7651bb7c73d9a1cbe607dc4bc1a2a351d722a1adb6cc8edb7f73107f91f3da99`  
		Last Modified: Tue, 16 Oct 2018 12:50:40 GMT  
		Size: 311.5 MB (311533838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:b1ef475dced530c718543fa2d9abd5df37c783126baee7572c41e5cf7acc9da2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **445.8 MB (445808618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeceaa9ea16a711cd27452f601137d94abf0567dd9ce0de67a604cc718805081`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 16 Oct 2018 12:03:01 GMT
ADD file:3d47e4eafb1700975274b7c68ee1bd156e101e5252d990f75937d97a90f7b613 in / 
# Tue, 16 Oct 2018 12:03:02 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:56:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:56:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:56:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:14:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:14:15 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:14:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 13:14:18 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 13:14:21 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 13:14:22 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 13:14:22 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Tue, 16 Oct 2018 13:18:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 13:18:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4760d7874360cf16afc72e3ed07e58414d51cccfc8023f0bf68562c82bc5c471`  
		Last Modified: Tue, 16 Oct 2018 12:14:27 GMT  
		Size: 44.7 MB (44685243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf3556848531bb0de55219dfc3b1b3ead9022491a581f3743bb1deed1be8020`  
		Last Modified: Tue, 16 Oct 2018 13:08:04 GMT  
		Size: 6.7 MB (6695969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff12a4449485ceb38e16a1bd08c8ddf2cb0f1ab093e8bf728aa26f5a57eb3143`  
		Last Modified: Tue, 16 Oct 2018 13:08:05 GMT  
		Size: 9.1 MB (9147432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d2c4fc3e2ae61ecf280521f31277e7e3a7402650d05fbc344154d64376bd35`  
		Last Modified: Tue, 16 Oct 2018 13:08:35 GMT  
		Size: 46.7 MB (46655506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9a03ed5bb81df2dae86b6f7b8aba584673fee038bfe4ae6eb7ad9a1c78f70c`  
		Last Modified: Tue, 16 Oct 2018 13:36:54 GMT  
		Size: 871.4 KB (871406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068a6e1ae2d0f633949a6a36c810b1ddcf17f3432cba4c4f9824e547c0f79a5b`  
		Last Modified: Tue, 16 Oct 2018 13:36:54 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5bf09a6663a7a9de232ce93dfeb671a7ae37f4cfd895b2dc44d08f03a14784`  
		Last Modified: Tue, 16 Oct 2018 13:36:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151190822f0578a1b63007a30fb619f62f786aa7e08b58b7d9e1384b5d335135`  
		Last Modified: Tue, 16 Oct 2018 13:37:51 GMT  
		Size: 337.8 MB (337752693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:bfe8678f4ee1342d3079255982c789557461dfe64eff0d8badcea405e2d096f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.8 MB (487813816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96179f5a24851152be0f7247d2f759874778cdbadd6ed296a70b2c84ea361553`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 05 Sep 2018 08:44:44 GMT
ADD file:cac51be1621603e67cd0c6a08ff297ca705beef482ba784194fe06790776dda8 in / 
# Wed, 05 Sep 2018 08:44:45 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:48:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:48:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:51:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:56:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:56:25 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:56:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 15 Sep 2018 10:12:17 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 15 Sep 2018 10:12:18 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 08:50:13 GMT
ENV JAVA_VERSION=11
# Fri, 05 Oct 2018 09:21:50 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Fri, 05 Oct 2018 09:28:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Oct 2018 09:28:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ff5ead7611ad86204643cd46d308599be45fefaca7a358aa65ccab791156f31f`  
		Last Modified: Wed, 05 Sep 2018 09:02:06 GMT  
		Size: 47.2 MB (47246205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b9b5a56863c55df9af02f6c80c86602c59da911f5cae6082cd55967a1e138c`  
		Last Modified: Wed, 05 Sep 2018 10:21:41 GMT  
		Size: 7.1 MB (7127800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6977204ca040a8a731305a3c0e13830646c7649eec3fec0e6cbed16c6de0eb0`  
		Last Modified: Wed, 05 Sep 2018 10:21:41 GMT  
		Size: 9.2 MB (9238554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a628be1a676dbdde587710d61dd019ae5dacbc3a3d981e7411e4431e83974c`  
		Last Modified: Wed, 05 Sep 2018 10:22:52 GMT  
		Size: 51.3 MB (51290248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab0a25425fb93c2eb6e20a2a808620dd1b3b5ba1eeba55f88e32afa7c782d95`  
		Last Modified: Wed, 05 Sep 2018 13:42:23 GMT  
		Size: 887.6 KB (887638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155545660b0ed2f624026fd09561a2c6ad650693341aa8c110931149c386359e`  
		Last Modified: Wed, 05 Sep 2018 13:42:23 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67978f5b4f74c3c19deae6d8ebe0553b0f1ad666e946a6f7363444ed9c738f09`  
		Last Modified: Sat, 15 Sep 2018 10:35:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6b5030e3bd31f4cd5f24417c37c4a1708257af696016d3cb0e2a13c43a74b3`  
		Last Modified: Fri, 05 Oct 2018 09:41:22 GMT  
		Size: 372.0 MB (372023002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk` - linux; 386

```console
$ docker pull openjdk@sha256:d0fa7381e36f62ad7c22efaca8261a89f65d0841760aa80ef1e8ae4ec8bb6933
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.7 MB (593695257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feff18b7b829f48ea87a3236ae275cb8b2915fda36e0d71219ff050873207b16`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 05 Sep 2018 10:42:05 GMT
ADD file:8de67e0fc0d437844f80c43c2040a020c9b920f19c3af0645d06ad1f79099fd9 in / 
# Wed, 05 Sep 2018 10:42:06 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:36:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:36:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:37:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:45:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:45:52 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:45:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 12:45:54 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 12:45:54 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 10:47:57 GMT
ENV JAVA_VERSION=11
# Fri, 05 Oct 2018 11:06:16 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Fri, 05 Oct 2018 11:07:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Oct 2018 11:07:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c5ab6b8677b80e3d03b9cf7f6d60c5ea5e55c3ef5201228d2a1e02348632bc3b`  
		Last Modified: Wed, 05 Sep 2018 10:50:26 GMT  
		Size: 49.8 MB (49764498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3334592e8df26ecd8135ae4d98e26ee5c2152c588781fdbcb617525eab00347d`  
		Last Modified: Wed, 05 Sep 2018 12:05:57 GMT  
		Size: 7.5 MB (7502763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22424c58e25912b79ad47701b7d26c1644849d325d1095b43486c45357dce9e`  
		Last Modified: Wed, 05 Sep 2018 12:05:57 GMT  
		Size: 9.6 MB (9583883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:606003a3bac6354e2e80ce2f5036fbff540fbcf335b2bd782faa2a3abf25bc7d`  
		Last Modified: Wed, 05 Sep 2018 12:06:47 GMT  
		Size: 52.8 MB (52818485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1edfe86ce1828686e87eb3d96eeab9812e6e0d86c9aa5ac50c9a8859a9c3e7`  
		Last Modified: Wed, 05 Sep 2018 13:15:17 GMT  
		Size: 909.0 KB (909034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c99b60662ce436305522f3d87c92f2e10f80d71e4a6b9384c787d6883f4adba`  
		Last Modified: Wed, 05 Sep 2018 13:15:16 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374b3543af67be465f86ddf215834d447d839d155d2690493e8b4e1b780a61dd`  
		Last Modified: Sat, 08 Sep 2018 18:26:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7279fdf630a8ba77560f6be824cb65aa902e99baeee98fc0a679c70ee408175`  
		Last Modified: Fri, 05 Oct 2018 11:12:20 GMT  
		Size: 473.1 MB (473116226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk` - linux; ppc64le

```console
$ docker pull openjdk@sha256:5d2cc6f1e95b4afd91f2975bd9096a712d36b1735ad9cfbece924f3f45a0b816
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.8 MB (492773424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bfe375f42cd1a1291c312da48aa4209950c10ee2d81de5648b4d1fc78a02a81`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 16 Oct 2018 08:19:05 GMT
ADD file:d9b7fdbd5284d601c2fa0ac9ef56d94501675e8bb1272b818f990813457dad97 in / 
# Tue, 16 Oct 2018 08:19:08 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:32:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:33:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:34:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:39:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:39:54 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 14:39:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 14:40:00 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 14:40:01 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 14:40:02 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 14:40:04 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Tue, 16 Oct 2018 14:45:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 14:45:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:266ba3ea23b4937c573be52c8dbda3ecd61615aa8a826c0f19bd1519b482bc99`  
		Last Modified: Tue, 16 Oct 2018 08:27:28 GMT  
		Size: 52.1 MB (52120737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266e6f3713eef6a8650ec4bf4167b39cb239334429d5c2733fa67322152e2f75`  
		Last Modified: Tue, 16 Oct 2018 11:03:38 GMT  
		Size: 7.8 MB (7767281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c1406edfbf4000946a084c99d2dcae8c42613c41d2b8837c867e2f41f42551`  
		Last Modified: Tue, 16 Oct 2018 11:03:38 GMT  
		Size: 10.5 MB (10523368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6649af4f26043502717dc3f793eef48c195aecea7c6b420c3bdd490bda630`  
		Last Modified: Tue, 16 Oct 2018 11:04:20 GMT  
		Size: 57.0 MB (56995714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d3107bc827d46e838f91f7a855e45ba8bb724763cffa361eab9390233528db`  
		Last Modified: Tue, 16 Oct 2018 15:22:33 GMT  
		Size: 895.1 KB (895077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10f9dc091878a59fe5a65300f96ca378e6872e0394f79137d987d13165511b0`  
		Last Modified: Tue, 16 Oct 2018 15:22:32 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc28bf59648a798af4885abf77d3f2bffbb90721fb4077bcdaddb7a200853815`  
		Last Modified: Tue, 16 Oct 2018 15:22:32 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37b6893fdf00deda4b292121347f74b600d52269b7f825d80726492ed45232a`  
		Last Modified: Tue, 16 Oct 2018 15:24:01 GMT  
		Size: 364.5 MB (364470874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk` - linux; s390x

```console
$ docker pull openjdk@sha256:b8c81f044231f8a2af67901bf0a443313818ef1ec159bcd8b6eb4fb50beaa7b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **446.2 MB (446247652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:944583fe3de772a6325f874c51446c91c7df9e9cd3c5d242f138e4300e8c0ace`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 16 Oct 2018 11:41:58 GMT
ADD file:c2788418bf37902fd1afb90f8c09580137baf257270ad310c93f4617b2910c5c in / 
# Tue, 16 Oct 2018 11:41:58 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:52:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:52:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:52:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:00:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:00:34 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:00:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 13:00:36 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 13:00:36 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 13:00:36 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 13:00:36 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Tue, 16 Oct 2018 13:01:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 13:01:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3d678438ae7450e08efed3c628d6a7e353e585928d4dfe02330f09708b274772`  
		Last Modified: Tue, 16 Oct 2018 11:44:43 GMT  
		Size: 47.7 MB (47695841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370423f265313c06fe7dd635c4b99d81682ced500c2b77a849335c6f0d80cc04`  
		Last Modified: Tue, 16 Oct 2018 12:57:15 GMT  
		Size: 7.0 MB (7035166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeca24a03568efca643ee17996da4af2979d3da4313f8c2b884ffa852c56204`  
		Last Modified: Tue, 16 Oct 2018 12:57:15 GMT  
		Size: 9.7 MB (9670377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab206992eb083e779de5da810384a9c84c11310c45a5b9fd82ebae123edb8722`  
		Last Modified: Tue, 16 Oct 2018 12:57:31 GMT  
		Size: 50.8 MB (50751889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c97637c1b8d048ca5122be0234a07c8c53ec52e4b613135f7ec43459787f01a`  
		Last Modified: Tue, 16 Oct 2018 13:07:24 GMT  
		Size: 906.0 KB (905960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667ce8bd73bdaca7e23dcb5e1584bdbeeaf16d6f510e1f0beab7ee056d561f71`  
		Last Modified: Tue, 16 Oct 2018 13:07:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c868eecc1c1ace184f8d3454e584223b69154c73c3641710c81d145a6b11e8`  
		Last Modified: Tue, 16 Oct 2018 13:07:23 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385f413fb1d3282008e9159ebb3a4c6fcfad15b782c10ffc7af3a1bf8c0a267a`  
		Last Modified: Tue, 16 Oct 2018 13:07:59 GMT  
		Size: 330.2 MB (330188048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

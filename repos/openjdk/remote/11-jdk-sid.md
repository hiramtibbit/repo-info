## `openjdk:11-jdk-sid`

```console
$ docker pull openjdk@sha256:8d3fbea396523f3e263df7d989f5437d670d486e5c76c82fb9a5db961949226b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `openjdk:11-jdk-sid` - linux; amd64

```console
$ docker pull openjdk@sha256:90d6b093a504c18cde194ccdf85e6bf733aedf6e5b4aa29b7100d10998d955b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.8 MB (370823440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:381e8de790d3b486435ae133437266d4a3354261cca116a31ab1cba74fe6a245`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 26 Jun 2018 21:23:26 GMT
ADD file:10ef22e92828bf2e3e64f0617e248ec4f9885da94b826c950bdc8416d67d96cd in / 
# Tue, 26 Jun 2018 21:23:26 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:14:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:14:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:18:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:18:32 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:18:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:18:33 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:18:33 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 07 Jul 2018 03:54:09 GMT
ENV JAVA_VERSION=11-ea+21
# Tue, 10 Jul 2018 00:24:47 GMT
ENV JAVA_DEBIAN_VERSION=11~21-2
# Tue, 10 Jul 2018 00:26:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Jul 2018 00:26:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26254fbb7f1ecf87788ab9644ed2990fda0f5efe4ce585efa529013e3e61b8f3`  
		Last Modified: Tue, 26 Jun 2018 21:34:18 GMT  
		Size: 48.6 MB (48648929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb95abe62cf617072cd93a562dd3c073f8fabba929bb1aa8f0573971554b41a5`  
		Last Modified: Tue, 26 Jun 2018 22:27:31 GMT  
		Size: 7.0 MB (7033853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dbb6315c68fc7776b3dd34584b03f3a00f3e9fcd9058dbed42208d2843b593`  
		Last Modified: Tue, 26 Jun 2018 22:27:31 GMT  
		Size: 9.2 MB (9245186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e01fadb90415cfdce67b9b4b78f9daa661339be8a44aa55b8d53d01ccc6ab73`  
		Last Modified: Tue, 26 Jun 2018 22:28:16 GMT  
		Size: 51.4 MB (51430356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6e90a4730ea93a961d2497a76e4b79f02b749f6851e905bb8650ef05071a59`  
		Last Modified: Tue, 26 Jun 2018 23:39:07 GMT  
		Size: 897.5 KB (897511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651184a99bc562294783d09f028acd4d42b2a1bc3fb337bd831a0776dcfaa6e9`  
		Last Modified: Tue, 26 Jun 2018 23:39:07 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e10850e4e6da1c974fbd47ffbdb4284c7ef206f758f45e277b6562158f4aa74`  
		Last Modified: Sat, 07 Jul 2018 04:00:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701681b07428dda3c7e3d11eb76bb2190c608622d5fcd75d3cf907e19399afeb`  
		Last Modified: Tue, 10 Jul 2018 00:32:03 GMT  
		Size: 253.6 MB (253567239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-jdk-sid` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:4b9a772e7d5e31167c95e2ab7db41126ffd4b0d4d68fb279bbd4bb4dce0c55bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.4 MB (350448995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e5b29abb223262a24264a3dcada7bc88469e5246ee20fc8c0d402329ee2d7d8`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 27 Jun 2018 08:44:47 GMT
ADD file:9e83f24b861895e4f5c52e8dac4324df28bc9245b0cb01fd8ab8e69858eba017 in / 
# Wed, 27 Jun 2018 08:44:48 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:34:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:35:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 10:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 18:59:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 18:59:42 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 18:59:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 18:59:47 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 18:59:47 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 07 Jul 2018 08:54:53 GMT
ENV JAVA_VERSION=11-ea+21
# Sat, 07 Jul 2018 08:54:54 GMT
ENV JAVA_DEBIAN_VERSION=11~21-1
# Sat, 07 Jul 2018 09:00:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 07 Jul 2018 09:00:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:264fde3494f7596520730fbecb89582dbd098f0eb089f29cf391f225a07585c1`  
		Last Modified: Wed, 27 Jun 2018 08:55:23 GMT  
		Size: 45.9 MB (45932394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45413e1b68a065bfe89257f57035e36b4322754fb55ab4f3e39317b70c439659`  
		Last Modified: Wed, 27 Jun 2018 11:04:05 GMT  
		Size: 6.6 MB (6645906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49df4ded335c4959233bf629857422273bbb98855b17f0ddfd19a53d17c2c95`  
		Last Modified: Wed, 27 Jun 2018 11:04:05 GMT  
		Size: 9.0 MB (8980525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc812f1f70bf21c7cd28041a44021e4767f6427b70ef931c9f67c599f9fc5c8`  
		Last Modified: Wed, 27 Jun 2018 11:04:46 GMT  
		Size: 49.4 MB (49352379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678711337b6e3b1a1d11c8df25da64916107f1a8458b95517be8e48d549855ce`  
		Last Modified: Tue, 03 Jul 2018 10:13:13 GMT  
		Size: 883.2 KB (883221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef795ff367e79e46454019bcb7a30dc498e61a4e33f60899c1a966fe6d47f2e`  
		Last Modified: Tue, 03 Jul 2018 10:13:13 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad0ead39bb09064eadda12ba8583ac96219442a7f881335532851cb09164128`  
		Last Modified: Sat, 07 Jul 2018 09:15:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd0e0c1bf8498643dd2a39a8efedcb504087635bb158a84a1514376fff4c090`  
		Last Modified: Sat, 07 Jul 2018 09:17:00 GMT  
		Size: 238.7 MB (238654202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

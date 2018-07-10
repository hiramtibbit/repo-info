## `openjdk:11-ea-21-sid`

```console
$ docker pull openjdk@sha256:557a8caddeabb55cd4d166b2cc5375cf4bb26e3429be668708672ad90a34bcd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `openjdk:11-ea-21-sid` - linux; amd64

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

### `openjdk:11-ea-21-sid` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:9fdd111268f79783e03e376513d9dbad397609b4a4f0833cc48bd44f2fcf3e1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331528783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d7157e3dd4beaaa17cc6aefdddc1f0ec9efd999633573270b2e596779fb08cb`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 27 Jun 2018 12:01:58 GMT
ADD file:fb368eeca8896eaf5ae53a4a5f51bb2ffcb3de2afc5288178fc15e87327d624f in / 
# Wed, 27 Jun 2018 12:02:01 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:45:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:45:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:45:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:16:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:16:56 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 15:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 15:16:58 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 15:16:58 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 07 Jul 2018 12:01:51 GMT
ENV JAVA_VERSION=11-ea+21
# Tue, 10 Jul 2018 12:03:23 GMT
ENV JAVA_DEBIAN_VERSION=11~21-2
# Tue, 10 Jul 2018 12:04:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Jul 2018 12:04:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4d15482f8eb5deefaf0868a9ccd27a4114951064b3932d35d9efb85e81279901`  
		Last Modified: Wed, 27 Jun 2018 12:11:13 GMT  
		Size: 44.5 MB (44474882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595c67309009d5c8c4b91b2f94f2a6e15a90740433ae648f42e27abbd7f0d948`  
		Last Modified: Wed, 27 Jun 2018 12:57:07 GMT  
		Size: 6.4 MB (6417304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a0366c8111904aa25dded355812c67e2d285d60a35b0aba5efe1617309aab0`  
		Last Modified: Wed, 27 Jun 2018 12:57:07 GMT  
		Size: 8.7 MB (8702521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff3f3c75831d29e8506f8caa26b57554a0c0e213ed6dd24a9304e052c67479e`  
		Last Modified: Wed, 27 Jun 2018 12:57:35 GMT  
		Size: 46.6 MB (46570616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a712cb27c5009698e6c8fe288d98d2fa8d8d48b0e99f0ffdf5ee5c4b0b0b8dc`  
		Last Modified: Tue, 03 Jul 2018 12:17:36 GMT  
		Size: 873.5 KB (873481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e14f025f51b0d47c8f169bec92f0890804d7a56f0b8653a373972fa3738138f`  
		Last Modified: Tue, 03 Jul 2018 12:17:36 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eadcd8402f8524700fe3ac2d733654395b54b808753a12f3509fc32582496c0b`  
		Last Modified: Tue, 10 Jul 2018 12:14:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6652e63ddd86ae82e6f76026b6ed2e35b255d2d263723a9428bab4cce307f0`  
		Last Modified: Tue, 10 Jul 2018 12:15:36 GMT  
		Size: 224.5 MB (224489612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-21-sid` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:f75b28f1bd41c484c5235ae4eadcfc01ecd03df2fd8e930724e7125424232eff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.4 MB (350447134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad57667b11f57d9b185f85fdb91dfe264ac4dd86c626c5c0c144d6b5aaaf593`
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
# Tue, 10 Jul 2018 08:49:59 GMT
ENV JAVA_DEBIAN_VERSION=11~21-2
# Tue, 10 Jul 2018 08:56:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Jul 2018 08:56:05 GMT
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
	-	`sha256:1ce415ab0c74a8229d3ccb5f7868631d7abec3ed5b71bd03950928a60fab377c`  
		Last Modified: Tue, 10 Jul 2018 09:10:02 GMT  
		Size: 238.7 MB (238652341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-21-sid` - linux; 386

```console
$ docker pull openjdk@sha256:21428459c5d173acb6c2e68f6c5ad07f13cee7aeaeb3a84aacfdedf1e589e971
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.7 MB (380694685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e63ea4c4e60417e457050d9203204ce3e91fa5a72231e0a5f4c1afd761623e6`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 27 Jun 2018 10:44:10 GMT
ADD file:badca613ce9ef25e97e3f69ad617085db1421c5bc61cbe3cdcec3cab6ddb0398 in / 
# Wed, 27 Jun 2018 10:44:10 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:40:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 11:41:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:08:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:08:11 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 15:08:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 15:08:13 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 15:08:13 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 07 Jul 2018 10:51:11 GMT
ENV JAVA_VERSION=11-ea+21
# Tue, 10 Jul 2018 10:44:14 GMT
ENV JAVA_DEBIAN_VERSION=11~21-2
# Tue, 10 Jul 2018 10:46:18 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Jul 2018 10:46:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7be0c3fc2014161eddb428cc845d9fc8e2626dc2dbee261e6aac6ec5a196261e`  
		Last Modified: Wed, 27 Jun 2018 11:08:01 GMT  
		Size: 49.4 MB (49417756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3027973a27662fd47e70a05b59c4d3ef16e5f2a5ff517a541445846b16f5c693`  
		Last Modified: Wed, 27 Jun 2018 11:50:38 GMT  
		Size: 7.2 MB (7185013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a36130f6d397af272ffd4f7a90143110e77b8b9991abc51d3f4986ec6242aa`  
		Last Modified: Wed, 27 Jun 2018 11:50:38 GMT  
		Size: 9.5 MB (9527411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88a04960e3b192919356b0516d3279c32a41874822fa5a553209d3a59bce93e`  
		Last Modified: Wed, 27 Jun 2018 11:51:21 GMT  
		Size: 52.9 MB (52930733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e91fdd15981a451276e091f07501cae35dcf9cb4226f7398eccf1be0485b631f`  
		Last Modified: Tue, 03 Jul 2018 11:07:18 GMT  
		Size: 905.0 KB (905025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662ee4adb4760264e8b478010757f919c731f60523cf0edb8663bdd50be7f122`  
		Last Modified: Tue, 03 Jul 2018 11:07:18 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c19f4698627946ab66ab023dc1f75902767564d8642314121aabe90f5c21cd`  
		Last Modified: Tue, 10 Jul 2018 10:51:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095b22ab21b4615a2847214e1c51dfe344fa54b3daa474f46f4aafb1e32d55de`  
		Last Modified: Tue, 10 Jul 2018 10:52:28 GMT  
		Size: 260.7 MB (260728380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

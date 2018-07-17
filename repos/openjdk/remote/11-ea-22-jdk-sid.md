## `openjdk:11-ea-22-jdk-sid`

```console
$ docker pull openjdk@sha256:bd8fcf0a3b73fd5a3ef4113fdbd06dc99e4ab26bc712f79518c34afcd55e3452
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:11-ea-22-jdk-sid` - linux; amd64

```console
$ docker pull openjdk@sha256:93b505a40003692cd6db0d3ff66e47db4ec609f06413be4ecead107310f4bb9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.7 MB (370739529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45cd1956aaa1f6a5efcea8d1805c32d606561d3a07cadc53c21c39564b060d2a`
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
# Tue, 17 Jul 2018 06:08:05 GMT
ENV JAVA_VERSION=11-ea+22
# Tue, 17 Jul 2018 06:08:06 GMT
ENV JAVA_DEBIAN_VERSION=11~22-2
# Tue, 17 Jul 2018 06:09:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:09:32 GMT
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
	-	`sha256:ad9917245fb1e2ff7ab0e8ee0eb1607c6831a597d423e3200bd9a8819b327748`  
		Last Modified: Tue, 17 Jul 2018 06:30:41 GMT  
		Size: 253.4 MB (253400668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-22-jdk-sid` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:0edea4ddf5b9f0070e2e779c2e3fb03774b8481f767df207860e199160c1da33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.5 MB (350492106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dab612df5617febf920cde21278a9649b8cf90ca8786cef61a6b159bc3ad5d6b`
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
# Tue, 17 Jul 2018 09:49:07 GMT
ENV JAVA_VERSION=11-ea+22
# Tue, 17 Jul 2018 09:49:08 GMT
ENV JAVA_DEBIAN_VERSION=11~22-2
# Tue, 17 Jul 2018 09:56:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 09:56:13 GMT
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
	-	`sha256:711d8464956e49bef80d2e8e3ea436f8c681d0d5166e429f8e97f06576f06f02`  
		Last Modified: Tue, 17 Jul 2018 10:19:57 GMT  
		Size: 238.7 MB (238697313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-22-jdk-sid` - linux; 386

```console
$ docker pull openjdk@sha256:8ad0a4949ae2de5192ddbb0def2dccbd3f527695a739237332450234a294308e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.1 MB (380085086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feca259111c5fe6ed5f1ec5f377faae15e197d6a16d8b480c0f089723c3bb206`
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
# Tue, 17 Jul 2018 11:19:26 GMT
ENV JAVA_VERSION=11-ea+22
# Tue, 17 Jul 2018 11:19:26 GMT
ENV JAVA_DEBIAN_VERSION=11~22-2
# Tue, 17 Jul 2018 11:21:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 11:21:36 GMT
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
	-	`sha256:6b72fd108b0d9f6ac32ace9d4606a4d2e38ad8b2c67505316d169b72e7455737`  
		Last Modified: Tue, 17 Jul 2018 11:37:21 GMT  
		Size: 260.1 MB (260118781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-22-jdk-sid` - linux; ppc64le

```console
$ docker pull openjdk@sha256:c185995697deb010f72e0ede810538f3e5bec493551d0b782fca6edb20972c4f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.2 MB (357158820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b6ad862f612cfc0ee0749b51c5e2bdd7c51ea1872334ecec14801feaefb4be9`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 27 Jun 2018 08:19:22 GMT
ADD file:2290834b1e0a2945693bb58e4627798b949f493e7041453e398114cbfba8d224 in / 
# Wed, 27 Jun 2018 08:19:24 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:59:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 10:03:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:08:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:08:18 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:08:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:08:30 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:08:32 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 08:43:02 GMT
ENV JAVA_VERSION=11-ea+22
# Tue, 17 Jul 2018 08:43:05 GMT
ENV JAVA_DEBIAN_VERSION=11~22-2
# Tue, 17 Jul 2018 08:49:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 08:49:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b01a63a902832a614dcb8b935dd9404b1ae8932297cbba3e28949a6027626e87`  
		Last Modified: Wed, 27 Jun 2018 08:28:47 GMT  
		Size: 50.1 MB (50116795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cafec902fddf0414f78aeec5b7010de3851b5c2154d22465a9d16a11f5bdc57`  
		Last Modified: Wed, 27 Jun 2018 10:26:36 GMT  
		Size: 6.9 MB (6874206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d7ffceef9b2678d017627071cd185ba2ab411812b48be8a3fdb04bdfd50a33`  
		Last Modified: Wed, 27 Jun 2018 10:26:36 GMT  
		Size: 9.5 MB (9494113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca6c95e08f084bd97bd6207857494e04ed100bbdd7faae7c904c5ae6a9c42bf`  
		Last Modified: Wed, 27 Jun 2018 10:27:11 GMT  
		Size: 54.1 MB (54090982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155ba5d3b470fb9324bdfdfbf3b91b3b8234f8ad9aa6f503a97be86c3a0b4e68`  
		Last Modified: Wed, 27 Jun 2018 13:57:07 GMT  
		Size: 892.2 KB (892214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4e52f908c91b7e3dc7519eec7e7a965e9f4639ea41e23ad37732e0aa3511bc`  
		Last Modified: Wed, 27 Jun 2018 13:57:06 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ba3fa4e876a3b5778e2726f3f7b1f5757e53663b00e6c4aee3927d9b8102fb`  
		Last Modified: Wed, 11 Jul 2018 09:43:15 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe127c63ce91a107f2c83531563ca1a273ab005994f5c87d028e41e17205540d`  
		Last Modified: Tue, 17 Jul 2018 09:41:19 GMT  
		Size: 235.7 MB (235690140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-22-jdk-sid` - linux; s390x

```console
$ docker pull openjdk@sha256:f5d4fe9ce8357a29ae15b8963d80d91588910c67a8fb387ebbbaff06345d4bd1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 MB (321947991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76fb92bd8e373d0af2cbc94ec4e02fa686130a540eb58f46664c96e57a816db6`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 27 Jun 2018 11:47:48 GMT
ADD file:e5fdd44acf3c50e200fa8721ef36ce18dcde4c041d59482bff0f2fcd7ff32082 in / 
# Wed, 27 Jun 2018 11:47:48 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:18:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:18:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:19:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:49:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:49:45 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:49:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:49:46 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:49:46 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 12:01:42 GMT
ENV JAVA_VERSION=11-ea+22
# Tue, 17 Jul 2018 12:01:42 GMT
ENV JAVA_DEBIAN_VERSION=11~22-2
# Tue, 17 Jul 2018 12:02:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 12:02:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:80e8bd77eaf2fb43b1f457021472f2481479fee109d88246d06d3fdf6743f24f`  
		Last Modified: Wed, 27 Jun 2018 11:52:08 GMT  
		Size: 47.6 MB (47624129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7d7034306ce1638f02d455b492c16264ae4ddcc59326d23eb8d825dc058dd2`  
		Last Modified: Wed, 27 Jun 2018 12:24:06 GMT  
		Size: 6.8 MB (6762215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea8ed63ea6a254d75d360e4f11bac40c8208127ce5493ac2c599e4e5b4b7a0c`  
		Last Modified: Wed, 27 Jun 2018 12:24:06 GMT  
		Size: 9.2 MB (9182247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f694915af45389dcad33e203ba61c5460e43d788c6a76e14ffa252bf927300`  
		Last Modified: Wed, 27 Jun 2018 12:24:25 GMT  
		Size: 50.8 MB (50771059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845618b03e5f8d517909cc1ece764d824b0a86e08f983be8563d392e550fe3c3`  
		Last Modified: Wed, 27 Jun 2018 14:00:38 GMT  
		Size: 908.0 KB (908042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c2f5bc11a98334862a3062b750dcc08b48d25fa6fc72cae70fe71c479f8fca`  
		Last Modified: Wed, 27 Jun 2018 14:00:38 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3361b9f5675ca01d8d615b167513905bf212061e922529bcebe0d40ba08fd8d8`  
		Last Modified: Tue, 17 Jul 2018 12:09:17 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f0a7f768446af0e17feecc79b92c6b2d9a0d4ef099bd4ab261bcf6a5af70ad`  
		Last Modified: Tue, 17 Jul 2018 12:09:43 GMT  
		Size: 206.7 MB (206699930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7-jdk`

```console
$ docker pull openjdk@sha256:4992d05d425dc7fd7e5b134b3495010a9deef215778fd965ccc2a176062159ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:3da47a0460656b22ed67344d1175e4c9080536ce182fc2ff127551cb0d52a5d5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.0 MB (213964077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e05f07df597ca5b227b122e37b48ae91ff8524e37cacf62fd037076712ed2b4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:56:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:56:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 28 Dec 2018 23:58:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 03:01:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 03:01:55 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 03:01:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 03:01:57 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 03:01:57 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 03:01:57 GMT
ENV JAVA_VERSION=7u181
# Sat, 29 Dec 2018 03:01:58 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Sat, 29 Dec 2018 03:04:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8988f929403e60a98b37002c9210cf3bf3ecf8782130b011dac8f2b28608ed31`  
		Last Modified: Sat, 29 Dec 2018 00:19:39 GMT  
		Size: 17.5 MB (17539015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155407d8635b1e92ef1550c047a938a8fcf39331261d1eb742ea962d7a1a0630`  
		Last Modified: Sat, 29 Dec 2018 00:19:53 GMT  
		Size: 43.3 MB (43306794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c64f0379dc7d50f4993b8e2ff346060f4f57129aa2f9db8f4d4c9c6749c43697`  
		Last Modified: Sat, 29 Dec 2018 03:26:31 GMT  
		Size: 828.3 KB (828252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543993a01eac7e157ebc88a00280105521aae77a073a1b86012e53fc062a06f2`  
		Last Modified: Sat, 29 Dec 2018 03:26:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39dded0226c09b9724e392c4a5ed619948575782ed55fc9a5cc0da9f9407c7a4`  
		Last Modified: Sat, 29 Dec 2018 03:26:31 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2b4fc7d4c953e967b04070df0784d78c39318694b3e635c5261dc242f3af86`  
		Last Modified: Sat, 29 Dec 2018 03:26:48 GMT  
		Size: 97.9 MB (97902521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:e8247cefa0a60a0208d7fe68e08d12ad8f65e1a96126a56aafe459efe044b9e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.6 MB (196550134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae48b74c3b6421065762101fc8c73374a98631873731044e644d9089b112a7c5`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:50:08 GMT
ADD file:3321122b920f6f483dcafe715cd2a4e1da54e69c43820472bdc96463c1491ddb in / 
# Sat, 29 Dec 2018 09:50:09 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:25:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:25:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:26:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:33:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:33:55 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 10:33:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 10:33:58 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 10:33:59 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 10:33:59 GMT
ENV JAVA_VERSION=7u181
# Sat, 29 Dec 2018 10:33:59 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Sat, 29 Dec 2018 10:35:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:a204ee9ae7b96e1c5b1ab95dc720bd4653fef7c1851fb0d4e498e354f21c944a`  
		Last Modified: Sat, 29 Dec 2018 09:59:57 GMT  
		Size: 52.6 MB (52578785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7788beb019e44a341e431a392c618c04379b201dc0ac3a31c9b315e2e7aefe21`  
		Last Modified: Sat, 29 Dec 2018 10:41:15 GMT  
		Size: 17.0 MB (17030374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e97b150bf7e3a93c89335dfb2469a5f5e4c20598a0af94d468c0c2100cbc039`  
		Last Modified: Sat, 29 Dec 2018 10:41:33 GMT  
		Size: 41.1 MB (41146285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eee9f71eb7cb9d9b6de1f00a83ba575feff3892dafe7ff2ecdfafd180b659dc`  
		Last Modified: Sat, 29 Dec 2018 10:44:40 GMT  
		Size: 821.6 KB (821557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14709baac3f285d77d812048e39f0c134b334b1061ed8421652ceeaa592fdb0f`  
		Last Modified: Sat, 29 Dec 2018 10:44:40 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41df4772ebcdfdd26e2c308522c2af0d156be82961dcc4d09c73d0c152cdfff8`  
		Last Modified: Sat, 29 Dec 2018 10:44:40 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443e855539338b0de086a68593f28c30e6a0e8e961af908c36222eb8dab57983`  
		Last Modified: Sat, 29 Dec 2018 10:44:59 GMT  
		Size: 85.0 MB (84972755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:27de53033be93bc1047a8ca63dd85ee0a706b2eaa6f372d0037cc16f8eea3ec2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.2 MB (191168580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf6246ca495b62a82203fa7a7e475a0f15a35e027a069ce28c279ad46baa8a23`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:11 GMT
ADD file:9c7cee46635f83a6649a59dfa973c45dbfcb18294c4e9929937b51ca89af3242 in / 
# Fri, 16 Nov 2018 13:02:13 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:09:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:09:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:10:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:35:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:35:49 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 19:35:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 19:35:52 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 19:35:52 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 19:35:52 GMT
ENV JAVA_VERSION=7u181
# Thu, 29 Nov 2018 13:23:03 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Thu, 29 Nov 2018 13:24:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:2a662743dee4e609927ac10eb7f6457acb061af79addbda5a70c40f873a43c93`  
		Last Modified: Fri, 16 Nov 2018 13:15:12 GMT  
		Size: 50.3 MB (50279570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731cbf9b0332806ff18413498271ad3f71f9c770f17fd6365db6bd350a47af07`  
		Last Modified: Fri, 16 Nov 2018 18:27:49 GMT  
		Size: 16.7 MB (16712873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9f23784e9c8032bc43636149994cec447c09b6dc5e7f55f9d27a05e85e07c6`  
		Last Modified: Fri, 16 Nov 2018 18:28:22 GMT  
		Size: 39.8 MB (39763255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f73b4cb84d935ae1d466678e22964e39884daea6d2e683879acf2a47ea7aac`  
		Last Modified: Fri, 16 Nov 2018 20:03:56 GMT  
		Size: 795.4 KB (795395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0153a9546f41a3e574e1303bebbef109cec49eeef547a3d44b91181d64c4fc89`  
		Last Modified: Fri, 16 Nov 2018 20:03:55 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2447229d4a288c49fa57c104eee3b04a30612aab9d338fd561164890bc6f1b3`  
		Last Modified: Fri, 16 Nov 2018 20:03:56 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c768e8bbe9a3aa6d31155389bf69c4de7a4b138d272318b8c006a5c517aa0cf2`  
		Last Modified: Thu, 29 Nov 2018 13:31:20 GMT  
		Size: 83.6 MB (83617109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jdk` - linux; 386

```console
$ docker pull openjdk@sha256:98fadd8182d29fdb930b084f599e20773aa75df5d9ef23b27f0647212c877427
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.8 MB (226788199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f65d2fe0d3045a17b94a210aa852bb146a2693a9cd7a0c1768730aec7be8008c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:25:54 GMT
ADD file:85dda498c7ceba872653c9bb40223849881a8a9c59c0f9a39003a8e6862f66e5 in / 
# Fri, 16 Nov 2018 12:25:54 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:14:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:14:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 11:16:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 14:08:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 14:08:44 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 14:08:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 14:08:46 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 14:08:46 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 14:08:47 GMT
ENV JAVA_VERSION=7u181
# Thu, 29 Nov 2018 12:32:34 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Thu, 29 Nov 2018 12:33:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:16575792c3dc98957c43c8d8fc1a81b062a3ff3fc617db60ddae32a813319afd`  
		Last Modified: Thu, 15 Nov 2018 01:12:17 GMT  
		Size: 54.6 MB (54584852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c656c5ba901c867f311e23cdb35dca16d35c23b492c6e4738f0124af80e92d`  
		Last Modified: Sat, 17 Nov 2018 11:41:35 GMT  
		Size: 19.8 MB (19837621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124efacb5af9ea62e9c8c01741b4d909626d5d473c05e84cfeedccefa4568ad3`  
		Last Modified: Sat, 17 Nov 2018 11:42:28 GMT  
		Size: 44.0 MB (43952498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f7e128318f6441abdaae53b23628eb6f329c945ca99bc9be8823592d974ab3`  
		Last Modified: Sat, 17 Nov 2018 14:53:29 GMT  
		Size: 831.2 KB (831225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073cc432ca755ea19f259025dae565faa248ef7f8baad020d2302494ae838c42`  
		Last Modified: Sat, 17 Nov 2018 14:53:28 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d668d5dacdbf2ed96d3dcab261a86a19b4413698f7358d3c17aafbf6198c961`  
		Last Modified: Sat, 17 Nov 2018 14:53:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d356c27d0ab9b123352eb33f1503bf5be841618a76acafac811eadb274b763`  
		Last Modified: Thu, 29 Nov 2018 12:39:17 GMT  
		Size: 107.6 MB (107581625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

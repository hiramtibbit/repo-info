## `openjdk:10-jdk`

```console
$ docker pull openjdk@sha256:4f993749875a3b81b2914816e67c941c2bdd3a978ca85f68739ed9feb25bd946
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

### `openjdk:10-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:ddf619265d6d05d1f5310dd54f7020cb7fa71ca7c84ff554dfd20bd524c8973d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.0 MB (379980888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d7d8111cbf387effa5800d8bd779fe75ffbe2fa507439f538b5779289baf83e`
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
# Mon, 02 Jul 2018 23:30:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:30:48 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jul 2018 23:30:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 02 Jul 2018 23:43:04 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 02 Jul 2018 23:43:05 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 02 Jul 2018 23:43:05 GMT
ENV JAVA_VERSION=10.0.1+10
# Mon, 02 Jul 2018 23:43:05 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Mon, 02 Jul 2018 23:43:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 02 Jul 2018 23:43:55 GMT
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
	-	`sha256:e1cd0209a5bc6e9659abf4056b32ad8bc967d1be4513778296456363ff335b11`  
		Last Modified: Tue, 03 Jul 2018 00:17:06 GMT  
		Size: 897.6 KB (897552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad7e4377efa37145e0a9a5da99226fdf6c00e69463a5a43e029b0dbc9da7af7`  
		Last Modified: Tue, 03 Jul 2018 00:17:06 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9060e2bcd30a9beccd104099eca97d3f0a19c36c6b1a4c6e30f2f692986fee6`  
		Last Modified: Tue, 03 Jul 2018 00:17:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca9fd09362b0798f550b6fdf8a1c89a8ec911423d86cee18e198b0f99f0e33c`  
		Last Modified: Tue, 03 Jul 2018 00:17:46 GMT  
		Size: 262.7 MB (262724643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-jdk` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:f181e1feeaf26c2cf2558424866da4260013e05dd6b24c893d0b67810a2bf0db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.2 MB (344228968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b63bc7ec0e267ee15456a9f3b6fbee008c3d35697f84953165996c6bc12244d0`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 27 Jun 2018 08:52:05 GMT
ADD file:ff4224e770f51d0f3be1aecc1f129a7f389ab6fb2a02c33f71754bcecaa8eed6 in / 
# Wed, 27 Jun 2018 08:52:06 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:35:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:35:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 09:36:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:24:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:24:31 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:24:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:27:52 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:27:52 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 12:27:53 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 27 Jun 2018 12:27:54 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 27 Jun 2018 12:29:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 12:29:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7decc6d2fc57efa1361d37f5ad2c7aa7c3781d38053c8cbb4f5f4f0efb8f6509`  
		Last Modified: Wed, 27 Jun 2018 09:01:05 GMT  
		Size: 46.6 MB (46603040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9691ec6c700eaec782847d7533f59b108859f65b19cbf9fdba233042347c72f2`  
		Last Modified: Wed, 27 Jun 2018 09:46:46 GMT  
		Size: 6.6 MB (6626612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b974f70f947561f9652d18f74b53b01eae62f2eff92385378a0fefb51f2ae8a1`  
		Last Modified: Wed, 27 Jun 2018 09:46:46 GMT  
		Size: 9.0 MB (8986694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccce33860d56681a683fce54e7c4df590d01e1f0d09e0dc0bfc16c739c37866`  
		Last Modified: Wed, 27 Jun 2018 09:47:19 GMT  
		Size: 48.7 MB (48706276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2393b9d714a7a86fde5cc5f58eeb34dbcaa0fe23263774dceae7b0d058d6f233`  
		Last Modified: Wed, 27 Jun 2018 12:45:34 GMT  
		Size: 890.6 KB (890615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e42c24bc9c4742b65cb6e9e4d2344b47c00c379f8e6499d2491c6dded3450d`  
		Last Modified: Wed, 27 Jun 2018 12:45:34 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c82d049f021a98fee4fa5c51f10df162e9cace849f23968b1ef5b83c52011e`  
		Last Modified: Wed, 27 Jun 2018 12:45:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5abbfad16c3b35aa0f3f3ea5eb962644a37094e1a46574fbb14ddc6e82744f6`  
		Last Modified: Wed, 27 Jun 2018 12:46:23 GMT  
		Size: 232.4 MB (232415367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-jdk` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:78c988a2ac5610aeaa66b1bdc5e25209eeb0f9c87be66e012fb1a8ab369e272f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.1 MB (343142171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69dba11c6783638dd166b35fe2e2acf38b5c6d5c043035f800736d785f1981aa`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 28 Apr 2018 12:02:19 GMT
ADD file:b8fa078b9ddc39737b1c9eaeea11c4d1a71fb53d2ac6747fa0eab346280119a5 in / 
# Sat, 28 Apr 2018 12:02:20 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:10:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:10:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:11:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:50:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:50:09 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:50:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:54:19 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:54:20 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 12:54:20 GMT
ENV JAVA_VERSION=10.0.1+10
# Thu, 10 May 2018 12:11:38 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 15 May 2018 12:11:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 12:11:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bd36ef86ab3a0249a38384d63e39dbf85bd3f64d4e9ae0179795e2da5754d3fc`  
		Last Modified: Sat, 28 Apr 2018 12:13:46 GMT  
		Size: 44.2 MB (44193727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2182099ef994efdc26b1608eeb96ebb41405847c6f253e40c752ec9246cce60`  
		Last Modified: Sat, 05 May 2018 12:33:28 GMT  
		Size: 7.5 MB (7535807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5fedbfebaf2860a81e319ee9a8c18137fb801f56d7729af7b4698f98e05c62b`  
		Last Modified: Sat, 05 May 2018 12:33:28 GMT  
		Size: 8.9 MB (8899307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:496b1250aadf8322a3300af60aa0258966c4b2c12109c11bd182477c5514ef26`  
		Last Modified: Sat, 05 May 2018 12:34:02 GMT  
		Size: 47.9 MB (47926773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629e5fac21e671f199fc1cac252e622d21a20f37e79fe3630532931d2bb40e5f`  
		Last Modified: Sat, 05 May 2018 13:12:55 GMT  
		Size: 871.5 KB (871492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7a7248d3ef3e6ee57ebcf46bc34d79eb8c65a74f73193128b9736553a5e46d`  
		Last Modified: Sat, 05 May 2018 13:12:55 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18de89152980cab32e413ac53ff8e637b08ae9e52e2faee33192d07438741943`  
		Last Modified: Sat, 05 May 2018 13:20:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc4eff30625d836150eed97c5e420c0c2745a20fabe5324c028fc7c8a284ca4`  
		Last Modified: Tue, 15 May 2018 12:44:25 GMT  
		Size: 233.7 MB (233714697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-jdk` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:5848a33b14fad33def8709b1231a62233b5d50ba16ffa6e87062395fdbc0a4bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.4 MB (352403982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7292b7f9f694cbcb77ffd5dbfcac6730b4d979eb2b3d88416c3a9ec8b6542d0a`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 30 Apr 2018 23:27:31 GMT
ADD file:ebaa7f02c60ac8138d085ce979847d36a1a8ce243bcef9b7e81e3e667d060dcb in / 
# Mon, 30 Apr 2018 23:27:34 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:28:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:30:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 11:20:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 11:20:11 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 11:20:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 11:39:58 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 11:39:59 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 11:40:00 GMT
ENV JAVA_VERSION=10.0.1+10
# Thu, 10 May 2018 10:24:33 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 15 May 2018 09:25:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:25:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ed5c004c8effeb24e6eee983af18662b0d28341fbbd46983746399c6df3358c8`  
		Last Modified: Mon, 30 Apr 2018 23:47:36 GMT  
		Size: 45.6 MB (45610129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8023415c45ba32335bb869e25328b3b2c70e3ad264f1129bb133addb1fbfef4a`  
		Last Modified: Sat, 05 May 2018 10:25:46 GMT  
		Size: 7.9 MB (7867437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2793192206e4ab032f5152356b71ea402af9d6cfd3812ad4e29857c76a039af6`  
		Last Modified: Sat, 05 May 2018 10:25:45 GMT  
		Size: 9.2 MB (9190303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04e033c04a8296917467f1a5f58f33424a0c62e7f1ad7bc521d1a04a30491463`  
		Last Modified: Sat, 05 May 2018 10:26:49 GMT  
		Size: 50.8 MB (50809602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8751d53eb40e199ecd3910be45e09c6c039df9cf93ff8d670dbeea5b482f73af`  
		Last Modified: Sat, 05 May 2018 12:42:04 GMT  
		Size: 881.3 KB (881341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1938d575c214b836cf8b48efd7a34cc415cc6910744792cbf930f8a0db1a557d`  
		Last Modified: Sat, 05 May 2018 12:42:04 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f233056ca4e8e4182f4e424772fe1bbb116f4a12222adeaaceec03a398d5f3b1`  
		Last Modified: Sat, 05 May 2018 12:51:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4fa745d17ac9138fc1e54a324706492b6c90e4e9dfcfed08c3f31c95eac537`  
		Last Modified: Tue, 15 May 2018 10:45:44 GMT  
		Size: 238.0 MB (238044801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-jdk` - linux; 386

```console
$ docker pull openjdk@sha256:6016acd62e853b92901140056489a54bf3c8cf8f74a469e9d4f37f5094b05a2f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.0 MB (392956369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56b741fc6c4f24e780c75ac06144d05a44d8ab67a2aac0b09ca14b664d3293b1`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 28 Apr 2018 10:40:49 GMT
ADD file:cb21908d8f286f1381ea180209120314676afa1ce4d5d480e0310fe70a4c96d4 in / 
# Sat, 28 Apr 2018 10:40:49 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:38:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:38:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:39:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:17:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:17:33 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 13:17:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 13:22:12 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 13:22:12 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 13:22:12 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 06 Jun 2018 13:22:12 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 06 Jun 2018 13:24:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 13:24:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:33fb16074d5de3f73c0e2941c01c03e5dc69cfb8f568b7fbc3e29926b575fef0`  
		Last Modified: Sat, 28 Apr 2018 10:47:25 GMT  
		Size: 49.1 MB (49090181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a686f4eb752c82ac41a17df9c6701b1f073f7a2d9e420555cd2a5cb0dcbbea8a`  
		Last Modified: Wed, 06 Jun 2018 12:14:55 GMT  
		Size: 7.2 MB (7182217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9c2ebf9e0747fb0a03a84261c3698af2618b3c2fb833bdee559337f846c39f`  
		Last Modified: Wed, 06 Jun 2018 12:14:53 GMT  
		Size: 10.7 MB (10657958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fde487e4c90bba22453b5178624bff1a2fa7bd6f0b83fb4d605b1f4198e932`  
		Last Modified: Wed, 06 Jun 2018 12:15:40 GMT  
		Size: 56.0 MB (55957246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc753c52779b4d5229b7f48908ad306e4cff4aff3c6b3cbb29cbd7de06a0c29`  
		Last Modified: Wed, 06 Jun 2018 13:39:40 GMT  
		Size: 902.9 KB (902867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b779bb512bf82746866821a79e233f33fea211925f996d9fc3d7a48ef50841fd`  
		Last Modified: Wed, 06 Jun 2018 13:39:39 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1bdab517a7dd05a6a815053bb8daa7d096e0fb4a15a5eab75c632ce4ccd17a6`  
		Last Modified: Wed, 06 Jun 2018 13:47:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda47556b65b7f444fe9f61737a8bd4346ab480681065ac35048b7545a6a89ef`  
		Last Modified: Wed, 06 Jun 2018 13:50:03 GMT  
		Size: 269.2 MB (269165533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-jdk` - linux; ppc64le

```console
$ docker pull openjdk@sha256:6f4e46acb068728c49696a3298bb2a38ed21e813311dbf3351513e5b1e679b96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.1 MB (367137216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0772ddaf46672aa5ccb8aa9266f8167a7433be50259ab22d10e478702ceb34d7`
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
# Wed, 27 Jun 2018 13:12:59 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:13:00 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 13:13:03 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 27 Jun 2018 13:13:05 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 27 Jun 2018 13:24:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:24:06 GMT
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
	-	`sha256:b75db535c498b18ac26023915e607a2ce0ea7342dee6589ef218313fd8c547db`  
		Last Modified: Wed, 27 Jun 2018 13:57:06 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ef40756802d21c597db7ea1fa51eda14409db6ee300ea3269302023d8e4708`  
		Last Modified: Wed, 27 Jun 2018 13:58:15 GMT  
		Size: 245.7 MB (245668536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-jdk` - linux; s390x

```console
$ docker pull openjdk@sha256:e675cf4aec610933995aa2cbe8def1deaabf2b07ec7e006e44ae4e2894221565
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.7 MB (335684730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6eba0b75e12bf5515179af364395eac86fb231e22f76a9d74530b2aeb12f894`
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
# Wed, 27 Jun 2018 13:51:31 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:51:31 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 13:51:31 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 27 Jun 2018 13:51:32 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 27 Jun 2018 13:52:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:52:48 GMT
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
	-	`sha256:c05bf91b00622dd513ac12a5d9115beb3a6a8cd03a0df6c2b357dc1dcfc28d09`  
		Last Modified: Wed, 27 Jun 2018 14:00:37 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3faefd583a1fbec1894dd317b9ff519d1be74032744bf78eda1a8915798905d`  
		Last Modified: Wed, 27 Jun 2018 14:01:10 GMT  
		Size: 220.4 MB (220436669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

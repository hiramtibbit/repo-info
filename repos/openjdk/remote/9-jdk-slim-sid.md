## `openjdk:9-jdk-slim-sid`

```console
$ docker pull openjdk@sha256:a1fd2f3c1d8981b8c0b330b609767bfd86d40d37eea3bf15b10b588105938b99
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

### `openjdk:9-jdk-slim-sid` - linux; amd64

```console
$ docker pull openjdk@sha256:49e86f985fba96dd128d5508cd2883683e7e114c4639d05b7515cd37c0f10f73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.3 MB (183307199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5149033ba93d3d1b6fc97a9bfb7cd56ec4b442e430ac36723f588bdf897f8e4a`
-	Default Command: `["jshell"]`

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
# Wed, 14 Mar 2018 10:30:16 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:30:16 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 14 Mar 2018 10:30:16 GMT
ENV JAVA_VERSION=9.0.1+11
# Wed, 14 Mar 2018 10:30:16 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Wed, 14 Mar 2018 10:48:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 14 Mar 2018 10:48:22 GMT
CMD ["jshell"]
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
	-	`sha256:5713db526a481e662cb137cca84372e8433d562ce47cab6f445157cd465a6caf`  
		Last Modified: Wed, 14 Mar 2018 12:30:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a43101ae4292a3536f04251309008da5dbec2da6fb32802dca83a617d2688e`  
		Last Modified: Wed, 14 Mar 2018 12:41:23 GMT  
		Size: 157.1 MB (157133390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk-slim-sid` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:734c25166200d4fd576a075dda99400973bfc9a2156b056403628e03632eb777
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.7 MB (155651951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0e1ae2036975b7c7980218ac0df1b21b70b7a4c4fff9b2ed7f2fcd6ec9b1703`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 15 Feb 2018 20:58:51 GMT
ADD file:b4a773bdf36e1d5ffd1a18e572d68931d4c543bb8f15550118ca2dc3b56e82da in / 
# Thu, 15 Feb 2018 20:58:52 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:35:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:38:49 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 21:38:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 21:38:51 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 21:38:51 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 21:38:52 GMT
ENV JAVA_VERSION=9.0.1+11
# Thu, 15 Feb 2018 21:38:52 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Thu, 15 Feb 2018 21:40:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 21:40:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ad9f8330a554b5ea58298fafbf1a911d1e58c0fb81693513c0861ceb96632b59`  
		Last Modified: Thu, 15 Feb 2018 21:08:42 GMT  
		Size: 23.7 MB (23716725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d914632b097b3facb2d4406d1d30059488f13e396bae18eae347e863f9251b5c`  
		Last Modified: Thu, 15 Feb 2018 21:50:46 GMT  
		Size: 453.8 KB (453776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e7daa60ce36c04f372f2bd900db5e86c6e42df4621121e83c02bdca7aeab03`  
		Last Modified: Thu, 15 Feb 2018 21:54:31 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957474f00d906d29e1de55b95f6f6f4d5922ed04515945512be6e850b3ddbf03`  
		Last Modified: Thu, 15 Feb 2018 21:54:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349a254dbf8b09b3a4ab32e7734afa452351579a0745c777d457d8d62a7be14d`  
		Last Modified: Thu, 15 Feb 2018 21:56:24 GMT  
		Size: 131.5 MB (131481081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk-slim-sid` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:73777dc578e84b275915c93c2f03e1e2c9a74c1bfcffdbaa82a10db2807a16cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.9 MB (158883453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e682df0a4160f565ce10744b5c0c04a57981e5918589b81c8da17ee4a54072`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 15 Feb 2018 13:29:36 GMT
ADD file:7daa4de7b314b856e7fcdb5f371c7b945c14b0c7caa86846eb2c49fe9979bd32 in / 
# Thu, 15 Feb 2018 13:29:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:52:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:58:35 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 14:58:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 14:58:37 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 14:58:37 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 14:58:38 GMT
ENV JAVA_VERSION=9.0.1+11
# Thu, 15 Feb 2018 14:58:38 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Thu, 15 Feb 2018 15:01:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 15:01:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f5167d994364c066eea50fc16a99c559bdcafc5c8351ccd492d7917624d883a2`  
		Last Modified: Thu, 15 Feb 2018 13:39:33 GMT  
		Size: 21.7 MB (21734810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e79887eeeb3c90499aefa18a2df783bb582abcccd01e38a5b53315e05cf40b7`  
		Last Modified: Thu, 15 Feb 2018 15:17:33 GMT  
		Size: 436.4 KB (436392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998958bfd78068428674e28aaff8c08eb497b4cbdd99c8016aed189726848148`  
		Last Modified: Thu, 15 Feb 2018 15:26:07 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83aca475643964aee18068c3daaedb42212219b78a695d9df1f360966d1c4a1f`  
		Last Modified: Thu, 15 Feb 2018 15:26:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270461d785b841145e2b83a7340168f94f0928587564931078799a69b9c864b6`  
		Last Modified: Thu, 15 Feb 2018 15:32:13 GMT  
		Size: 136.7 MB (136711883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk-slim-sid` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:faa6f5fc75aec789e48699d6fabd38ebd755f2cfb9a5dc5281b1e6be2628eded
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.7 MB (162661813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d40cb37a99da2dcf3131a8cbe7d09a636b4cc3a512884fdd7ee19d546a4e5bc`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 15 Feb 2018 18:27:10 GMT
ADD file:c88d10e67b1798acdb635ddc0f61d822ef61e0d3ec33a1c4e2cffbc886d457f5 in / 
# Thu, 15 Feb 2018 18:27:13 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:49:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:13:30 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:13:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:13:33 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:13:34 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 22:13:35 GMT
ENV JAVA_VERSION=9.0.1+11
# Thu, 15 Feb 2018 22:13:36 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Thu, 15 Feb 2018 22:24:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:24:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:314e7324202544a982e975f5f851b7261aaad42f2e9b14b91716a5e0c3c6369b`  
		Last Modified: Thu, 15 Feb 2018 01:01:20 GMT  
		Size: 23.1 MB (23102391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948d32396f67588f74628efe8c74109298589fde30acca5e0bf38a8e05b7b6b2`  
		Last Modified: Thu, 15 Feb 2018 22:55:42 GMT  
		Size: 445.1 KB (445098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916f2ca5f363821f895753d143a0b10d8c73d253fc216d10098782ec05af6e10`  
		Last Modified: Thu, 15 Feb 2018 23:07:25 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798de9cf2d4f76cbc2f8e6bd39171e4b954c67921fd6d546edf1a7337e1b143f`  
		Last Modified: Thu, 15 Feb 2018 23:07:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6f0581c567578e5e3235a183a992bbead702af128a513efe267f1964a3602e`  
		Last Modified: Thu, 15 Feb 2018 23:14:40 GMT  
		Size: 139.1 MB (139113956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk-slim-sid` - linux; 386

```console
$ docker pull openjdk@sha256:bcb3652d8c976ff294ec2a845ddd809a9b852262b181d22a13523d46c605971c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.4 MB (186405551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76fcdbb24360fac02fc33086b00483d81ab5cc361ef46c752410ebacc520e639`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 15 Feb 2018 16:51:57 GMT
ADD file:8f960dcf48be7b5f9cd5e77981116810dc05da4b2b6a17221b8f461f93ba60c1 in / 
# Thu, 15 Feb 2018 16:51:58 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 15:14:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 17:09:26 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 17:09:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 17:09:29 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 17:09:30 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 17:09:30 GMT
ENV JAVA_VERSION=9.0.1+11
# Fri, 16 Feb 2018 17:09:30 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Fri, 16 Feb 2018 17:54:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 17:54:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:be56e166276f67c204f772591a93fbb1018c56a1e2cde7af2f366608b506d0ce`  
		Last Modified: Thu, 15 Feb 2018 01:08:50 GMT  
		Size: 26.3 MB (26341098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a752fc63aea2ba845dd5dcc121982b440db2c074c967b876d367f2fb6186b1d4`  
		Last Modified: Fri, 16 Feb 2018 20:11:35 GMT  
		Size: 468.9 KB (468899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9aff19d4cd401028bdd1300c5cce29776e4f71924012b7fd2b493a2b7c85403`  
		Last Modified: Sat, 17 Feb 2018 01:43:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c1bae313e00b78f92cacf9e2ceb03f1e59716f429075600d54fe6d9c6a900e`  
		Last Modified: Sat, 17 Feb 2018 01:43:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc96704892fb61489cd5a62c2b3aded6fd4be239cda29a6bb123b605c4249a43`  
		Last Modified: Sat, 17 Feb 2018 07:26:06 GMT  
		Size: 159.6 MB (159595186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk-slim-sid` - linux; ppc64le

```console
$ docker pull openjdk@sha256:c96127d8795e5669ca7af38a106db5d0f43afa5cb05a441d69db742469e36d7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168265379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e7d1d6d98ae1acd209f83ee56de4afa44c7286d18fa982aa45b79a3c66e3dfc`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 15 Feb 2018 01:36:05 GMT
ADD file:91265f9e386b45036e051d1a52d6a070f8b8eabeffe16b8b6f50073469e1981f in / 
# Thu, 15 Feb 2018 01:36:07 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:20:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:39:17 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 03:39:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 03:39:28 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 03:39:30 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 03:39:33 GMT
ENV JAVA_VERSION=9.0.1+11
# Thu, 15 Feb 2018 03:39:36 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Thu, 15 Feb 2018 03:47:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 03:47:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:37ba6ae4dccd54eb9fe727eb50853dc2e0af6fb30dd0098145e52936c6061421`  
		Last Modified: Thu, 15 Feb 2018 01:44:36 GMT  
		Size: 26.9 MB (26876199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f972aec9f02c502cb9944fa42ae7e57d157fec3b5b93be7beabf9ab273ce3f4`  
		Last Modified: Thu, 15 Feb 2018 04:31:09 GMT  
		Size: 455.0 KB (454971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cfcbdf444d60c3ca84d9a88b991ac97b00165c9a6b56f69af5a56df7a006ae0`  
		Last Modified: Thu, 15 Feb 2018 04:35:28 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f61fa966b6f48a410b6ea624f113721ebdef83f2b138cc97bd67eaa38062616`  
		Last Modified: Thu, 15 Feb 2018 04:35:28 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d82461eb4903010c3983cbc87acb3dc81d4dd8a545a078a5222da0b03c6316`  
		Last Modified: Thu, 15 Feb 2018 04:36:56 GMT  
		Size: 140.9 MB (140933840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk-slim-sid` - linux; s390x

```console
$ docker pull openjdk@sha256:de8f9ba2ec9de9542c4806e45971a51d411203e9b277add6f02a8699a2345512
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166128823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52952c8e63032e8baa0c89ec4132bd43565fcf42661c03b529474728f1dec78a`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:08 GMT
ADD file:6f68d1b98f1844e4f556be18e2db7a2f1262097f9dea14071f46d5f8dfbd22e7 in / 
# Wed, 14 Mar 2018 05:23:08 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:35:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:39:52 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 06:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 06:39:54 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 06:39:54 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 14 Mar 2018 06:39:54 GMT
ENV JAVA_VERSION=9.0.1+11
# Wed, 14 Mar 2018 06:39:54 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Wed, 14 Mar 2018 06:41:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 14 Mar 2018 06:41:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:298af72285f6bd87726f47a71d44a9089da15048e0eb38a6b2ad0d5f6eef4cff`  
		Last Modified: Wed, 14 Mar 2018 05:27:48 GMT  
		Size: 24.9 MB (24881607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46fa0f98e9ab2b7efe654e711de6bbee6c0afc5d2a8d62d21d8f7b9f5dd611b9`  
		Last Modified: Wed, 14 Mar 2018 06:49:13 GMT  
		Size: 471.1 KB (471066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145731487640b0c37253c269f62de8cb9a3e791ad045f4100fe13271ed4fe7ac`  
		Last Modified: Wed, 14 Mar 2018 06:53:15 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef137134e11a09aa4335e2221819e8c3b177b5e2d92cc5e8e34975efceafb81`  
		Last Modified: Wed, 14 Mar 2018 06:53:15 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa3b5980d48f24b5910f0f96e0d86d9e7fc98d4152448279dacdd9004d3d9b4`  
		Last Modified: Wed, 14 Mar 2018 06:55:47 GMT  
		Size: 140.8 MB (140775779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

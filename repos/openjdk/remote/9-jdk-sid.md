## `openjdk:9-jdk-sid`

```console
$ docker pull openjdk@sha256:258cad3afe937366c1e77cd5cc5aeea3ee34a44b6e9e1156b1d7dfac737b3224
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

### `openjdk:9-jdk-sid` - linux; amd64

```console
$ docker pull openjdk@sha256:69a114121186785ac161ad66ac3cffae26967527533a62d1dd4d034c38c73665
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.9 MB (400870451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a627f2f7e62fb3f261e98a6af9826c7eda0a173e12c6eb9ad2740f15bf99a231`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 15 Feb 2018 01:54:31 GMT
ADD file:8fa9c86e024ea7f184db6b16d250b62a03f4a3a60aaaf2bd8cc033c817e9477e in / 
# Thu, 15 Feb 2018 01:54:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:35:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:36:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 03:36:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 09:32:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 10:42:36 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 10:42:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 10:42:49 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 10:42:49 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 10:42:49 GMT
ENV JAVA_VERSION=9.0.1+11
# Thu, 15 Feb 2018 10:42:49 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Thu, 15 Feb 2018 10:43:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 10:43:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5364a50cbd6ed670b0a6d395e61526831db377e95d195e2557b2397af9773ed7`  
		Last Modified: Thu, 15 Feb 2018 02:23:04 GMT  
		Size: 47.9 MB (47869173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cbcd6d6fb5ba1a29429cabae2b6c93f13bc6ed37d66980ef59f1c307368279`  
		Last Modified: Thu, 15 Feb 2018 04:28:07 GMT  
		Size: 8.6 MB (8633437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c5a073a53d8391a783dd8d6b676cd6eb5de13d3cc9bdc71bc7fbda27c5aff`  
		Last Modified: Thu, 15 Feb 2018 04:28:07 GMT  
		Size: 9.1 MB (9067842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4518366658c8bd7a59f6273c316b46162e0979f5e42d4782326e0947aaf1900b`  
		Last Modified: Thu, 15 Feb 2018 04:28:47 GMT  
		Size: 49.2 MB (49154102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cd5cea19fcfe89883e59ca70528b9156e3d46cffdf6792daed07c12c359305`  
		Last Modified: Thu, 15 Feb 2018 12:19:42 GMT  
		Size: 893.3 KB (893339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181cac94b36e36864dedef7e52c6c89878952dbb7cbb00c1555bd588df13c4a9`  
		Last Modified: Thu, 15 Feb 2018 13:20:37 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1ff381accc797fd1bfea0a49531f13c90606b11fee45060857b0268ff0f523`  
		Last Modified: Thu, 15 Feb 2018 13:20:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676422ce965933b513e8090e8e74d40d87f39d779fb6995fda3336a0b13d4b87`  
		Last Modified: Thu, 15 Feb 2018 13:21:35 GMT  
		Size: 285.3 MB (285252190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk-sid` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:73acdd5afee0e96455de89ba46f2f961459ced3762458b82a0c9d3ea0d4da682
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.0 MB (382011506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eec3130f94097c9bf4b642ec04c2ce22be23bf7a0aaa5f1d11b005b1d757952d`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 15 Feb 2018 20:58:33 GMT
ADD file:107983e3364b7c4bbc033bbf794c7e00825550acf2bbe9841c4b84c7c881eccd in / 
# Thu, 15 Feb 2018 20:58:33 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:39:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:40:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:36:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:40:49 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 00:40:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 00:40:51 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 00:40:51 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 00:40:52 GMT
ENV JAVA_VERSION=9.0.1+11
# Fri, 16 Feb 2018 00:40:52 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Fri, 16 Feb 2018 00:42:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 00:43:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d01625705202408c94c6dcf3ed17d16b9856be2b48b91c3e700101a2fa56684b`  
		Last Modified: Thu, 15 Feb 2018 21:08:15 GMT  
		Size: 46.1 MB (46118378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1103338ba972f97c075bc5e2ab9b8b03a059f6396c66bc9188aae3817f325660`  
		Last Modified: Thu, 15 Feb 2018 21:52:21 GMT  
		Size: 7.8 MB (7806559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc2e6e4400952f6a646419a74b5b3482b874dcf5b7b69695588aaac20e11fa4`  
		Last Modified: Thu, 15 Feb 2018 21:52:20 GMT  
		Size: 8.8 MB (8809744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0aa7eb9a0a27ecfb1e071729afa545af667d355a34e2a1ff23980928400eb55`  
		Last Modified: Thu, 15 Feb 2018 21:52:48 GMT  
		Size: 47.0 MB (46970289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b0d20e195916c3a15868fb8f4bfa2cd49f24e5b743b9f51d726995484a8a255`  
		Last Modified: Fri, 16 Feb 2018 00:49:15 GMT  
		Size: 886.6 KB (886560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f87ac0f59a2dcf0425ea38b1cf710f78b22819358dc667362f2dba3d994ee73`  
		Last Modified: Fri, 16 Feb 2018 00:54:27 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dea185161df60ca433b31489389612724b149035f866421302e2faa00b46790`  
		Last Modified: Fri, 16 Feb 2018 00:54:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adde11ea6a6ae4114e17fd1ee193ca5e9acb1fb134c0cb3bee73e88a8219e6d6`  
		Last Modified: Fri, 16 Feb 2018 00:55:25 GMT  
		Size: 271.4 MB (271419607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk-sid` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:4105decfc34e8897b68fc53dc9d6dc67b262d8b403d81e7a590e5735992f1390
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.5 MB (363483754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15fe9b63365a291842eccbbcbd01cc6e4a3f357790a0976310992732d0af58b7`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 15 Feb 2018 13:29:14 GMT
ADD file:2aea859c0a6778b5dda37d88a2950bd3b4a3f064ba80238942f0fd989f2f98a1 in / 
# Thu, 15 Feb 2018 13:29:15 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:11:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:11:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 14:12:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:54:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:59:20 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 14:59:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 14:59:22 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 14:59:22 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 14:59:23 GMT
ENV JAVA_VERSION=9.0.1+11
# Thu, 15 Feb 2018 14:59:23 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Thu, 15 Feb 2018 15:00:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 15:00:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:edb17d2272ee1f673a566ef1dad82b5718d41ab85bf825afb024696eb25a6c06`  
		Last Modified: Thu, 15 Feb 2018 13:39:11 GMT  
		Size: 44.0 MB (44041846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73ad90f7c852d25ebf530b4d6d7fb57b5f346d1eab00797d5ea8a95c1c39668`  
		Last Modified: Thu, 15 Feb 2018 14:23:04 GMT  
		Size: 7.5 MB (7530194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a531aa76f39f2767bd533b1565a152fa6ca6579139f7326a264f4cc8d9e8fa5`  
		Last Modified: Thu, 15 Feb 2018 14:23:04 GMT  
		Size: 8.5 MB (8526796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d25c78e3af744565a709949cf449c4a7cddf89eee25cfba16d7dc0b755e154e`  
		Last Modified: Thu, 15 Feb 2018 14:23:33 GMT  
		Size: 45.0 MB (44970011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43272cbc49a3902cb4afa3a1f2179e91eed6debaeae40f0595b8dbabafff4704`  
		Last Modified: Thu, 15 Feb 2018 15:18:49 GMT  
		Size: 869.2 KB (869169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dd6aab46edb9137b76f5c7b44e7f375febbbe631698ab34558408f1b0e8b5b`  
		Last Modified: Thu, 15 Feb 2018 15:27:46 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147c6fc63e058ce092655c229b43679cab025bc3d22e269608be220f64712341`  
		Last Modified: Thu, 15 Feb 2018 15:27:46 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f750c894892d4b31097655136001001de934da96640ae61664459403ef3f7527`  
		Last Modified: Thu, 15 Feb 2018 15:28:37 GMT  
		Size: 257.5 MB (257545370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk-sid` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:04584b9ea13b4fa002131ec0cddcf27e7e211f7a54ed297877117759ddb8f589
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.7 MB (387723032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8dca9d4bbfc9d2f52f32a5eb30c93ecd067901318b65de7665ec1f42b8fb29e`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 15 Feb 2018 18:26:40 GMT
ADD file:5bb6b9865cc630a171f0b1113659e175ff9d2d99b497bdf10932b9121245e61d in / 
# Thu, 15 Feb 2018 18:26:41 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:35:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:35:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 19:37:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:51:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:15:07 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:15:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:15:12 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:15:13 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 22:15:14 GMT
ENV JAVA_VERSION=9.0.1+11
# Thu, 15 Feb 2018 22:15:15 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Thu, 15 Feb 2018 22:22:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:22:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8dab87746e31cd73bc6c6c954d55ed543b9ebddc4d7d6c9d8961e0f0b0bb6696`  
		Last Modified: Thu, 15 Feb 2018 01:01:04 GMT  
		Size: 45.4 MB (45441133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53592274d741de4c663dc70a37a7bc2a681be612b5580a664d01a567c0c7901`  
		Last Modified: Thu, 15 Feb 2018 20:12:49 GMT  
		Size: 7.9 MB (7852943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e22fd85086b428b96a9700b3efe5d7074813bd2546ae981d697d9ddeceedee1`  
		Last Modified: Thu, 15 Feb 2018 20:12:48 GMT  
		Size: 8.8 MB (8801900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68c454e2cd7dd07919afab7476126c8504b78f11c02a5d53f8fb7041ab96425`  
		Last Modified: Thu, 15 Feb 2018 20:13:34 GMT  
		Size: 47.4 MB (47442755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dd16eb58c75249ab9f11546ee366395c18da0f5f8e66447e1831a4db99a202`  
		Last Modified: Thu, 15 Feb 2018 22:57:23 GMT  
		Size: 878.7 KB (878697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a43081d8cee2e5acb6010a93320d11d30f020aa3d8d00ff4d4da3e31460e97b`  
		Last Modified: Thu, 15 Feb 2018 23:09:29 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf67a917e305285fb6c631a81f7a9368f699503a16d340faef2d4e064a3c384`  
		Last Modified: Thu, 15 Feb 2018 23:09:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71f7d44fa116346bec1dcf8474963a0adc7b79b3256963cc674fec1c3456269`  
		Last Modified: Thu, 15 Feb 2018 23:10:40 GMT  
		Size: 277.3 MB (277305236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk-sid` - linux; 386

```console
$ docker pull openjdk@sha256:1cd466e80956c116da5696eefd4ed58bba742e24ead02d87f6151e8a978d4833
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.1 MB (426055043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21331587a939c6fcec5d6edf6cf8c839dbe34f16ca84a0c42b526349e42e9a76`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 15 Feb 2018 16:36:13 GMT
ADD file:cf035e5110d165962eb9d4449482cb8d6b0f7749539aa1e8fc6e6a66531d2106 in / 
# Thu, 15 Feb 2018 16:36:13 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 08:24:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 08:24:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 08:33:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 15:44:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 17:32:21 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 17:32:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 17:32:24 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 17:32:24 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 17:32:25 GMT
ENV JAVA_VERSION=9.0.1+11
# Fri, 16 Feb 2018 17:32:25 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Fri, 16 Feb 2018 17:34:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 17:45:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:313ea93a0d5246207e1ed7ff3833d7115bb13cbbbdfbb9fe6209ae0aca4de0da`  
		Last Modified: Thu, 15 Feb 2018 01:08:34 GMT  
		Size: 48.8 MB (48836165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d4fbe871849ec9eabbd42c66b6c1c7b1b7d725a5203103e36d3381d8ad08a3`  
		Last Modified: Fri, 16 Feb 2018 11:10:04 GMT  
		Size: 8.6 MB (8607351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14345a4d6f1e739fc3a5dfbf921d32d03cb87a160025d7181e792427a8523282`  
		Last Modified: Fri, 16 Feb 2018 11:10:03 GMT  
		Size: 9.3 MB (9344637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048be6ce56d70bb11eacd949548ea4f0d59e9c65a0a5fb11f787580f77094ff2`  
		Last Modified: Fri, 16 Feb 2018 11:10:48 GMT  
		Size: 50.9 MB (50864809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9568c5e46865a4b3a919c848ee2799db6aa465308877271335266caf7df32c8`  
		Last Modified: Fri, 16 Feb 2018 21:50:52 GMT  
		Size: 901.6 KB (901645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c66d589709ebc0681fadd1498b2424081a205a1208e58c0524da503a0f3fb8`  
		Last Modified: Sat, 17 Feb 2018 03:09:27 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec71376902a41c9fe909703a5c88dcab42b294a82d4927c6d92a5e73a989db22`  
		Last Modified: Sat, 17 Feb 2018 03:09:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f47e67951a5083f75057b6ed1bf9a5af699cae4a8ea14d6ebdbdfcc0dbdf3ee`  
		Last Modified: Sat, 17 Feb 2018 03:10:46 GMT  
		Size: 307.5 MB (307500067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk-sid` - linux; ppc64le

```console
$ docker pull openjdk@sha256:9fbda85d8dae324f44d7a8df02c20702fd5dd028fe1e465d53b894d545787de4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.8 MB (388805424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e70ca3ff4e28398e865417729ea98027f4934c021caf2c2699535c0fb382039`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 15 Feb 2018 01:35:38 GMT
ADD file:47880b96018a20d461394bfee9f42022392b5a715ce6caa05668c81d22bd4348 in / 
# Thu, 15 Feb 2018 01:35:48 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:26:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:31:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:33:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:00:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 12:01:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 12:01:04 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 12:01:10 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 12:01:12 GMT
ENV JAVA_VERSION=9.0.1+11
# Thu, 15 Feb 2018 12:01:14 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Thu, 15 Feb 2018 12:13:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 12:13:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bb0115828b7c31e86fe8af9c575640d37b7fda139063b888abc6d9e3918927cb`  
		Last Modified: Thu, 15 Feb 2018 01:44:12 GMT  
		Size: 49.5 MB (49452997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b4ca0e4957fe813d9111b3f330183b278dd8533c9283aa11d1304a4305bd6e`  
		Last Modified: Thu, 15 Feb 2018 08:24:47 GMT  
		Size: 8.2 MB (8210641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3705860163816dcaecf267ec2e4ef10cf0abefeeb33cd4678d0c86d79ac89ed4`  
		Last Modified: Thu, 15 Feb 2018 08:24:50 GMT  
		Size: 9.3 MB (9305059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ded6b910a7220eb72b1522521396a04bfcbbadec60d0c5248cd8029cb13de1b`  
		Last Modified: Thu, 15 Feb 2018 08:25:24 GMT  
		Size: 52.1 MB (52050046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f52bc8b8c0156ac2a89bbb90fd5b3b361d8c56aca7a0d1a51a70b671da505bc`  
		Last Modified: Thu, 15 Feb 2018 13:08:33 GMT  
		Size: 888.6 KB (888620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c75783991ce803446b349954454a4ce3ddc036dbef53f62fee6fca43b08fd5e`  
		Last Modified: Thu, 15 Feb 2018 13:21:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf84017290115b35d1679a37accff2eceecebe2d0ff3bad5817a66bb3d1bf96`  
		Last Modified: Thu, 15 Feb 2018 13:21:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1902220bfda3de39fbb8c24c08170f4d1fa0b2184a0186e754b8820e10d05a29`  
		Last Modified: Thu, 15 Feb 2018 13:24:10 GMT  
		Size: 268.9 MB (268897690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jdk-sid` - linux; s390x

```console
$ docker pull openjdk@sha256:27e2019e0add863571672df3e2a86af9311707389c6025645720393b29a4ad6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.2 MB (375182202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5d579e1b538b3362ffea2c4a725b36b0dcc56dac787bdc4ea88a12ece892d5a`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 14 Mar 2018 05:22:56 GMT
ADD file:5a60fa1a91bb2b727d8bfee18b5c3fe6523121a4b58861a0ba668058347acd7d in / 
# Wed, 14 Mar 2018 05:22:56 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:52:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:52:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:53:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:36:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:40:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 06:40:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 06:40:23 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 06:40:23 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 14 Mar 2018 06:40:23 GMT
ENV JAVA_VERSION=9.0.1+11
# Wed, 14 Mar 2018 06:40:24 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Wed, 14 Mar 2018 06:41:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 14 Mar 2018 06:41:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:86f40742baf992f423224f64973e576104b2523ae049a44d7574dda9869d0735`  
		Last Modified: Wed, 14 Mar 2018 05:27:34 GMT  
		Size: 47.2 MB (47214668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a246e96e1e744b60e0cc0af03037b01bf7646f969863ef6a65410d8296981b2`  
		Last Modified: Wed, 14 Mar 2018 05:59:43 GMT  
		Size: 8.2 MB (8166746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a4f67084db30235359962de1d5608135e8a73048a898619ce995fd58947477`  
		Last Modified: Wed, 14 Mar 2018 05:59:42 GMT  
		Size: 9.1 MB (9075240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21b2c6a8c15ce6f8cbc645f7f3179dbe1808043ef6e238cd3a419aa1f2d2d39`  
		Last Modified: Wed, 14 Mar 2018 06:00:00 GMT  
		Size: 49.1 MB (49125842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7213c180353964c9c5acf9bf7628bdbbfa14daeec9d274654f138b20fa05a5`  
		Last Modified: Wed, 14 Mar 2018 06:49:49 GMT  
		Size: 903.9 KB (903935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b84a7d763324bcb96352099a7b1a8811131498fdcf3fa75b58c7a4e3a49c7cd`  
		Last Modified: Wed, 14 Mar 2018 06:53:57 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d0a77a09d90ac9af1b84c2a5d3019cac0e0e6516ffdb42e6ba3e8d8bb3a8da`  
		Last Modified: Wed, 14 Mar 2018 06:53:57 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d13ba79871399d4bc82099c9c6a7f3b6244a1e8fbf905a23f6b5f34bbba9f6`  
		Last Modified: Wed, 14 Mar 2018 06:54:28 GMT  
		Size: 260.7 MB (260695401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

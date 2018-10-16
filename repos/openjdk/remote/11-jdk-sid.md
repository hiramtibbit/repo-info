## `openjdk:11-jdk-sid`

```console
$ docker pull openjdk@sha256:07ea399cd00dce0c745c9c7e190417766c5d5c0ecf966d8989e7896d67f0f977
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

### `openjdk:11-jdk-sid` - linux; amd64

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

### `openjdk:11-jdk-sid` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:a0b1579e1c84e966d387f9091dc15943441f9967ce81ef7a9387265a5794d447
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **425.0 MB (425046024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb6ffe9411fb7b8a3514c137c492cfe6a1520b5223837a3467a09b6a41334694`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 05 Sep 2018 08:53:05 GMT
ADD file:197405a6e437f7755c9e1eaaeffa366cbbed5d22b6433e8985fc72c0399c9741 in / 
# Wed, 05 Sep 2018 08:53:10 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:55:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:55:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:56:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:18:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:18:13 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 14:18:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 14:18:15 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 14:18:16 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 08:48:46 GMT
ENV JAVA_VERSION=11
# Fri, 05 Oct 2018 09:00:23 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Fri, 05 Oct 2018 09:02:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Oct 2018 09:02:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d249ae748c1383631885fe6ef102c9f4763c974c7e2ed31cbd7b8ec3b469b01e`  
		Last Modified: Wed, 05 Sep 2018 09:02:23 GMT  
		Size: 46.8 MB (46817101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd45a59e2fb41f181140d262402692b7bb09adb957eecafdeb3c8a5534ab243`  
		Last Modified: Wed, 05 Sep 2018 10:09:53 GMT  
		Size: 6.9 MB (6917036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02fe315336f45a33182829fb9bc3dd66b77a0251800dc947f7872e4abb3393a9`  
		Last Modified: Wed, 05 Sep 2018 10:09:53 GMT  
		Size: 9.0 MB (9043599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272ffe9dac308caa185c4952004783691d58dc1ed47dac2e1b87a47b09b2b35f`  
		Last Modified: Wed, 05 Sep 2018 10:10:27 GMT  
		Size: 48.8 MB (48786952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0606143b70af1f37ea160d1aba3412f685749d420fe7b395c447bf73a046bc`  
		Last Modified: Wed, 05 Sep 2018 14:32:54 GMT  
		Size: 892.9 KB (892869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac23b8bd0498a5b8df2954f5eb73c101fb25a32cd767ffe8b96ae01eadd0d2ba`  
		Last Modified: Wed, 05 Sep 2018 14:32:53 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe51cbcfcbfe19dc726c7476d6255fd2163df3d6aabbdc9086aea8fed5e03b97`  
		Last Modified: Sat, 08 Sep 2018 08:58:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d343e9d9c7da688b32fb90f85830b92d42ce732b68df7be8fec20c5f2f11d48e`  
		Last Modified: Fri, 05 Oct 2018 09:08:15 GMT  
		Size: 312.6 MB (312588100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-jdk-sid` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:a533f972e2f30e66363c68777449751757f1ef5ee23a3b23a1949ac8bdf2c787
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **445.6 MB (445616753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4c4e7f80a7210020ca751b06c9d36b68f0401a560715cc790efb569cb9f79db`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 05 Sep 2018 12:02:03 GMT
ADD file:6bce3a6eaae154a74bd434bc6087c35774f3ca30b31179bd9d3a8ccc883e6356 in / 
# Wed, 05 Sep 2018 12:02:08 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:41:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:41:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:09:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:09:16 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:09:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 13:09:18 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 13:09:19 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 11:57:48 GMT
ENV JAVA_VERSION=11
# Fri, 05 Oct 2018 11:58:20 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Sat, 06 Oct 2018 11:59:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 06 Oct 2018 11:59:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:41ac34bbb663ff9b66612cbe07ba88955dbe37f15f0732d7438ed9d75ffef0c9`  
		Last Modified: Wed, 05 Sep 2018 12:11:20 GMT  
		Size: 44.7 MB (44660481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4a6a41cc4abd0bf494829b7c229c8b0332e0fa15e4070e51e196a72e0e9f8f`  
		Last Modified: Wed, 05 Sep 2018 12:55:10 GMT  
		Size: 6.7 MB (6684465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff85737d1afda4a28ad503d9827b69fbb9a8cb0c387134d95a9099dea0d22d0e`  
		Last Modified: Wed, 05 Sep 2018 12:55:10 GMT  
		Size: 8.8 MB (8752299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f942d01e599eb3af73eb31be8169a4ea25e5805aad28a71fdb278bc7d3c1ac`  
		Last Modified: Wed, 05 Sep 2018 12:55:38 GMT  
		Size: 46.6 MB (46571890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2354edd34c62b656a4ae8626d1e2294f9c2bb024d003fdde19dc21b89faefad7`  
		Last Modified: Wed, 05 Sep 2018 13:32:39 GMT  
		Size: 875.8 KB (875772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:218f1f52dd5542be1fbd9d9cf5b3efa1ed5b9b0466ee070a34f286958f6b5780`  
		Last Modified: Wed, 05 Sep 2018 13:32:39 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4c23a0fdfdd80b5257d8faefe0656a4eecf1e96493f83d09f9f882256d4637`  
		Last Modified: Sat, 08 Sep 2018 12:19:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5576668f35407d599e04b8fc69e0717d8675a14b578fdcaf0c1dc0128ff2022e`  
		Last Modified: Sat, 06 Oct 2018 12:16:00 GMT  
		Size: 338.1 MB (338071478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-jdk-sid` - linux; arm64 variant v8

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

### `openjdk:11-jdk-sid` - linux; 386

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

### `openjdk:11-jdk-sid` - linux; ppc64le

```console
$ docker pull openjdk@sha256:ff0a65fd4ed2c3a1689774cb59b0488991cb1f3aff3365f9d965bb12e36d4d92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **491.9 MB (491931794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:505246a2692e62c7e9e109d300632e22a37bf76f108810069086b42f2b1fc501`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 05 Sep 2018 08:17:51 GMT
ADD file:74cafd19c9f92f0bcf0ebf8af7c5fab91202cd413254da05d5a2b9191ecbee2d in / 
# Wed, 05 Sep 2018 08:17:53 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:56:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 08:56:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 08:58:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:44:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:44:24 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 11:44:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 11:44:34 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 11:44:35 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 08:17:44 GMT
ENV JAVA_VERSION=11
# Fri, 05 Oct 2018 08:54:33 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Fri, 05 Oct 2018 09:03:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Oct 2018 09:04:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:88839b4f566005ace21b4fb23e56b4a9638df137ee204c622d554444045423e4`  
		Last Modified: Wed, 05 Sep 2018 08:23:23 GMT  
		Size: 51.8 MB (51843930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5080e7dd5658ca43e5ab2c481fd673297ba9af3c9873b12896d7b0afb50375be`  
		Last Modified: Wed, 05 Sep 2018 09:15:01 GMT  
		Size: 7.6 MB (7623087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d33c3810da3865f1a4b8e646406ec32e5b89f1595d3a9b780139a5aa99ca1e`  
		Last Modified: Wed, 05 Sep 2018 09:15:00 GMT  
		Size: 9.9 MB (9854750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d8586b90ff807723abb2d80e53f27f00ad40782f143ee6542c4cbad679edfd`  
		Last Modified: Wed, 05 Sep 2018 09:15:46 GMT  
		Size: 56.9 MB (56858899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d516269a2175adf9f1906744812df8dd2f7a9bd3142ea3e79ee825bc38a2bbb`  
		Last Modified: Wed, 05 Sep 2018 12:19:29 GMT  
		Size: 899.5 KB (899476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36a5848a0d935e163767418980e664f0baa477a4babe6d63734384bb4185beb`  
		Last Modified: Wed, 05 Sep 2018 12:19:24 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c046ed55c138ece973d6325ed0cdcb47607ba410f1de5f761b0c16ee2eca65e`  
		Last Modified: Sat, 08 Sep 2018 09:31:55 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e92b3e59b804063b8de913fe525ac26944017ec12e72599fd738a8b62f4608`  
		Last Modified: Fri, 05 Oct 2018 09:21:06 GMT  
		Size: 364.9 MB (364851282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-jdk-sid` - linux; s390x

```console
$ docker pull openjdk@sha256:d9d7f5a756ca000dc0f964e64bb5aa6a298bcb47e4f7d3f245b247ea07b2ce2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **446.0 MB (446045818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16caafad21f298de13c6d9d44b6cadab767775e500a8711407741257fcd0232c`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 05 Sep 2018 11:42:29 GMT
ADD file:832b68a7f8033560aa3536d9163f28d197490633c05d49240dd2bed266d9504e in / 
# Wed, 05 Sep 2018 11:42:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:42:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:42:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:42:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:08:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:08:41 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 18:08:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 18:08:43 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 18:08:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 11:55:25 GMT
ENV JAVA_VERSION=11
# Fri, 05 Oct 2018 12:01:59 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Fri, 05 Oct 2018 12:04:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Oct 2018 12:04:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b9886f96c1f9394ba76a75262b09bb6ad6b8100a8d94cf87089d43cb2068efe3`  
		Last Modified: Wed, 05 Sep 2018 11:47:17 GMT  
		Size: 47.7 MB (47670424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203b1cc1f2b55f95ed71809ae9ea5d67d78156f617f3321574955a3bf2c43e96`  
		Last Modified: Wed, 05 Sep 2018 12:48:44 GMT  
		Size: 7.1 MB (7059600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b11d48b0ceace2a58877479a5838ea5f51cbc6bd1e0b4f5823e44e519817de19`  
		Last Modified: Wed, 05 Sep 2018 12:48:44 GMT  
		Size: 9.2 MB (9222100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059acf3f028d654702f3596c76e3c5df197bc5c9682b500da63636d224ef5974`  
		Last Modified: Wed, 05 Sep 2018 12:49:08 GMT  
		Size: 50.7 MB (50664680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e385ec24203bc99e7ec9f492c7980d7597f86796c0d8679ad6355799913ee78`  
		Last Modified: Wed, 05 Sep 2018 18:22:01 GMT  
		Size: 909.8 KB (909804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620a26c43a47cc042a20da609bc0c4a3a3a8731e5412df11c57b7daf601a651b`  
		Last Modified: Wed, 05 Sep 2018 18:22:01 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0741414a2b5d5bcf8e5808698abc84e396ce075710694dc80718b694dfb79c61`  
		Last Modified: Sat, 08 Sep 2018 12:12:25 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a7d38ece57541574b69dafb681e24fe0bdbad2f460f894c88fd7a0749af159`  
		Last Modified: Fri, 05 Oct 2018 12:09:14 GMT  
		Size: 330.5 MB (330518839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

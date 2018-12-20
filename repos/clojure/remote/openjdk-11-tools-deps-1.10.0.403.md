## `clojure:openjdk-11-tools-deps-1.10.0.403`

```console
$ docker pull clojure@sha256:c3c217d14d04e4a3ef9f0752bbb0235a40a2708f90683e12ee04ed5bf8cbb145
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

### `clojure:openjdk-11-tools-deps-1.10.0.403` - linux; amd64

```console
$ docker pull clojure@sha256:7c42508274fcd3518e8c5f37010d317bb401a9eaaf799e4b8ab7c90c8fd71425
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **562.1 MB (562063809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a20e630e58da2c1f0f280dad1204314762c635acc47ade3539d65415ea2ff0e4`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Thu, 15 Nov 2018 22:39:40 GMT
ADD file:84029df3086c983b05fbe43604e262a3500994b6a3ecfe0d463f3c8c58e0a7a1 in / 
# Thu, 15 Nov 2018 22:39:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:12:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:12:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:13:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:42:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:42:31 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:42:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:42:33 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:42:34 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:42:34 GMT
ENV JAVA_VERSION=11.0.1
# Tue, 04 Dec 2018 23:22:41 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Tue, 04 Dec 2018 23:24:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 04 Dec 2018 23:24:03 GMT
CMD ["jshell"]
# Wed, 05 Dec 2018 00:11:39 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Thu, 20 Dec 2018 00:24:37 GMT
ENV CLOJURE_VERSION=1.10.0.403
# Thu, 20 Dec 2018 00:24:38 GMT
WORKDIR /tmp
# Thu, 20 Dec 2018 00:24:54 GMT
RUN apt-get update && apt-get install -y rlwrap
# Thu, 20 Dec 2018 00:24:57 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Thu, 20 Dec 2018 00:25:11 GMT
RUN clojure -e "(clojure-version)"
# Thu, 20 Dec 2018 00:25:11 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:16e82e17faef9e90ceefcd8175e9899edce768aa6008cc16dd1e3fe7d3b88bb8`  
		Last Modified: Thu, 15 Nov 2018 23:04:08 GMT  
		Size: 49.3 MB (49259589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117dc02416a34c62e28a030f27828f2f31af6b8b1f02c85b009a1ffb390d01dc`  
		Last Modified: Fri, 16 Nov 2018 11:30:56 GMT  
		Size: 7.4 MB (7375503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4c717259ac9c550efbbf41c6fe0dc9598046f4bfd4b398deb63f7a0c19cb3f`  
		Last Modified: Fri, 16 Nov 2018 11:30:57 GMT  
		Size: 9.8 MB (9780063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a518b8f48be0323544739e175909b24be833b4a2bf39939f91fbcc2ab0e48a4`  
		Last Modified: Fri, 16 Nov 2018 11:31:40 GMT  
		Size: 50.6 MB (50638196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add32d44f708eff65a3ad250f4c87b8c3c912f0240c8a0acd76a88df6cd3ebdc`  
		Last Modified: Fri, 16 Nov 2018 15:14:42 GMT  
		Size: 883.7 KB (883701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0158fa0854313538e2807a9098aa49227ea46a44c3fc9120e9dc74e45baa408`  
		Last Modified: Fri, 16 Nov 2018 15:14:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacd9302ecfd07d9995d2e98fee405aff75c096817cc720077362b19f781455b`  
		Last Modified: Fri, 16 Nov 2018 15:14:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9d52bf6cdeab4ea1636dfd402b417490ac786fd5546dcc52c3969b3f230258`  
		Last Modified: Tue, 04 Dec 2018 23:37:09 GMT  
		Size: 397.4 MB (397394101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6430f544bd5beb77988d2d414db87de5183c0cb77aac2fd3a25f53ed28b13123`  
		Last Modified: Thu, 20 Dec 2018 00:27:22 GMT  
		Size: 22.9 MB (22868220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2800f948da9a2370b4781b7233098b8dfe7117ab2bd7a168639dc6516d42b245`  
		Last Modified: Thu, 20 Dec 2018 00:27:20 GMT  
		Size: 19.8 MB (19761334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff77e6d73cfad0a39dfda2c89e7409935a0418b7546eb8b0b97a29cf768928c`  
		Last Modified: Thu, 20 Dec 2018 00:27:18 GMT  
		Size: 4.1 MB (4102735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps-1.10.0.403` - linux; arm variant v5

```console
$ docker pull clojure@sha256:48fa678a712dfa6186fb5ce861d7cd3c592aeeefaa39bc9d7d56b00c5d2bf87a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **477.0 MB (476965329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15b882a7c4578be41a6f6f638eaf11328ed41f9738cbe80bbe6a28e9d2d7deff`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Fri, 16 Nov 2018 09:55:05 GMT
ADD file:8beac90fab79047a99139951c1eb0b26598cb16b3de6be3a6768d30f41e470da in / 
# Fri, 16 Nov 2018 09:55:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:33:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:33:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:34:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 01:42:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 01:42:03 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 01:42:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 01:42:05 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 01:42:06 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 01:42:06 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 05 Dec 2018 09:48:39 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Wed, 05 Dec 2018 09:50:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 09:50:57 GMT
CMD ["jshell"]
# Wed, 05 Dec 2018 10:29:24 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Wed, 05 Dec 2018 10:29:24 GMT
ENV CLOJURE_VERSION=1.9.0.397
# Wed, 05 Dec 2018 10:29:25 GMT
WORKDIR /tmp
# Wed, 05 Dec 2018 10:29:43 GMT
RUN apt-get update && apt-get install -y rlwrap
# Wed, 05 Dec 2018 10:29:46 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 05 Dec 2018 10:30:56 GMT
RUN clojure -e "(clojure-version)"
# Wed, 05 Dec 2018 10:30:56 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:47c89bded53655a08a5ade4bcec2735b8f5ed461132add6b56c91d99d2d43e82`  
		Last Modified: Fri, 16 Nov 2018 10:09:57 GMT  
		Size: 46.9 MB (46931174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c40e735ea786d7012557eb1a19713d212a9eb65c662a0e17496c671826df7e8`  
		Last Modified: Fri, 16 Nov 2018 18:48:44 GMT  
		Size: 6.9 MB (6936827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e84d4e46d444d64c8c7b8bc36fc4bba762c6ab773eb80c2e8a53fea1ef65f0`  
		Last Modified: Fri, 16 Nov 2018 18:48:45 GMT  
		Size: 9.5 MB (9481899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1b7b406c5a68f251b1791ff0a2eaf1cc337291dfee3aa145f354e9f7e544e7`  
		Last Modified: Fri, 16 Nov 2018 18:49:32 GMT  
		Size: 48.4 MB (48387442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a13e885d8aac00d63b54709b5dfafe149fda6c5d2eb1d9b3b0b1d3cce755952`  
		Last Modified: Wed, 21 Nov 2018 10:27:26 GMT  
		Size: 875.8 KB (875819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a1d5f778a88898d1420f8bd5d2bf9e1aa776a2042078ae871bcfe673188271`  
		Last Modified: Wed, 21 Nov 2018 10:27:26 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2191ddd678ed0cdb135290c73f3ae0e6e8035348e9046390ad2bfcdf6aa40a7f`  
		Last Modified: Wed, 21 Nov 2018 10:27:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664abd9cfb3c6806277ee4fade4fe822e4bfcc23f02473e7062e6bfaf0971238`  
		Last Modified: Wed, 05 Dec 2018 09:59:14 GMT  
		Size: 318.4 MB (318408267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d3753ab973541215b348ef24caac286c74a643be31bc32fe2338b914d810a7`  
		Last Modified: Wed, 05 Dec 2018 10:32:27 GMT  
		Size: 22.5 MB (22502705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ac913a870db5ae7e36423a6d2673407048e0a7ea4551a4e0fa40d876806b00`  
		Last Modified: Wed, 05 Dec 2018 10:32:26 GMT  
		Size: 19.5 MB (19549363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a2e79f3294ec3d9bb723439b21c36c78e79cf7ec4026c6e17a921d5656c95a`  
		Last Modified: Wed, 05 Dec 2018 10:32:22 GMT  
		Size: 3.9 MB (3891464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps-1.10.0.403` - linux; arm variant v7

```console
$ docker pull clojure@sha256:1e3f8b69d0966c542f23f82fb5af4fc4e6d679edcee4e195812f5e35a29d59a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.1 MB (496095163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf7e338f3f30ac24afb574adfaa2085da63042c96f2c8e9cbec01457b5342d4c`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Fri, 16 Nov 2018 13:06:12 GMT
ADD file:4182d54a140ffdace3af2db1d2632f4271c1b1754fbc78075c0813d49212e466 in / 
# Fri, 16 Nov 2018 13:06:14 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:14:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:14:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:15:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:11:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:11:18 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 19:11:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 19:11:28 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 19:11:28 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 19:11:29 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 05 Dec 2018 12:58:25 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Wed, 05 Dec 2018 13:00:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 13:00:38 GMT
CMD ["jshell"]
# Wed, 05 Dec 2018 13:41:28 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Wed, 05 Dec 2018 13:41:33 GMT
ENV CLOJURE_VERSION=1.9.0.397
# Wed, 05 Dec 2018 13:41:39 GMT
WORKDIR /tmp
# Wed, 05 Dec 2018 13:42:01 GMT
RUN apt-get update && apt-get install -y rlwrap
# Wed, 05 Dec 2018 13:42:04 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 05 Dec 2018 13:42:21 GMT
RUN clojure -e "(clojure-version)"
# Wed, 05 Dec 2018 13:42:27 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:fdd94773a9e48362892e21476e28eead609d35afebea9220515e313cc45e9b67`  
		Last Modified: Fri, 16 Nov 2018 13:19:04 GMT  
		Size: 44.8 MB (44797919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170ebfdb451da69aec8b40173375cf38f87f1e39085d2072e246796c09c6738c`  
		Last Modified: Fri, 16 Nov 2018 18:29:31 GMT  
		Size: 6.7 MB (6703425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e9929c695e5dc9cd495d9b50731f7cabfba0a93fbe0c8c039f86c25531c0dd`  
		Last Modified: Fri, 16 Nov 2018 18:29:31 GMT  
		Size: 9.1 MB (9148032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6bcaac2bb74a1cabcea380f40f9d6285cf5ab611d8855dd0abf607d4bb1719`  
		Last Modified: Fri, 16 Nov 2018 18:30:05 GMT  
		Size: 46.2 MB (46230479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d555960358f8902e3c4fa164f2eaff997c9f834ca273af0f9a3bf23d922baa`  
		Last Modified: Fri, 16 Nov 2018 19:45:34 GMT  
		Size: 859.3 KB (859307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f784dc9e6ae4b50a8aea506e338b09e1a52e7cf10ee66b99df88f226079e486e`  
		Last Modified: Fri, 16 Nov 2018 19:45:34 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa51ea68c3042fb1fffdebdbd6606a6e115f2b19752cfc1a87270870020fcf3`  
		Last Modified: Fri, 16 Nov 2018 19:45:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760158d2b55f38a0733f8286094da5de8ab0befe337376c03b41a57a32b95784`  
		Last Modified: Wed, 05 Dec 2018 13:15:10 GMT  
		Size: 342.6 MB (342585614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e899a3646101a9d58f4d1aa5f4feefe6e2d1efcf99c837df8b3be9af0185e6b`  
		Last Modified: Wed, 05 Dec 2018 13:44:39 GMT  
		Size: 22.3 MB (22329202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bd7509d3428922a7d5023d1d8a6493f4743ffc4b1fa0a0b7909bf0b16b807ba`  
		Last Modified: Wed, 05 Dec 2018 13:44:37 GMT  
		Size: 19.5 MB (19549363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b81e2cfe269ccc9bb499fc9f19b0e20d45fbfb757f0cff239a7ae204347860`  
		Last Modified: Wed, 05 Dec 2018 13:44:35 GMT  
		Size: 3.9 MB (3891454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps-1.10.0.403` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8a9f11296de4bd0426bb92cdde0a87ddba5077b4a6812446bff1a26e9804b74d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **536.6 MB (536602919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:716fb9b87fe7b5473f6f4b66ed1b059fe2a0cf9e247dd2819e4012606774c7de`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Fri, 16 Nov 2018 10:10:09 GMT
ADD file:832a9af57620f627dd172e1887e8dd24971e52fd5eee7d5f5d2a43532d6be776 in / 
# Fri, 16 Nov 2018 10:10:17 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:17:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:17:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 02:19:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:17:49 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:17:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 04:17:53 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 04:17:53 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 04:17:54 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 05 Dec 2018 10:07:30 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Wed, 05 Dec 2018 10:13:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 10:13:10 GMT
CMD ["jshell"]
# Wed, 05 Dec 2018 10:55:20 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Wed, 05 Dec 2018 10:55:21 GMT
ENV CLOJURE_VERSION=1.9.0.397
# Wed, 05 Dec 2018 10:55:22 GMT
WORKDIR /tmp
# Wed, 05 Dec 2018 10:55:49 GMT
RUN apt-get update && apt-get install -y rlwrap
# Wed, 05 Dec 2018 10:55:53 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 05 Dec 2018 10:56:07 GMT
RUN clojure -e "(clojure-version)"
# Wed, 05 Dec 2018 10:56:07 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:3da09231e583a9a3b7103f6be2d0679bc461005f2d2ff624366b0eb98f3dbfd5`  
		Last Modified: Thu, 15 Nov 2018 01:31:37 GMT  
		Size: 47.6 MB (47624414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9075e353d5a562472189e3052838c7ae3ae6d1010aaaa24fdee045e71c553ecb`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 7.3 MB (7251197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645fc9dd9541251810eb8e2a2465a257a66a4c0e930c37f2b9233063083fffdf`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 9.8 MB (9760021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba26c567a7328f84137444d24147d0c92aca12ec9230cd0e0731cc8dbcf885dc`  
		Last Modified: Sat, 17 Nov 2018 02:48:12 GMT  
		Size: 50.9 MB (50925446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dfa4caa5a3bd9a21554d2a4be311cc0111fc65fc6e2c03adaff6ae90983a595`  
		Last Modified: Sat, 17 Nov 2018 05:12:36 GMT  
		Size: 871.3 KB (871311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06166062b74c5a700b88560ca3177645e55a9dfa59f2c180e3e8c0e20a6e448`  
		Last Modified: Sat, 17 Nov 2018 05:12:35 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ac93f1a8c306a07ee202476606cf0dfcbd2dc2a7b29f82afd5535bbc32328e6`  
		Last Modified: Sat, 17 Nov 2018 05:12:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc9c8152e3a0ec1e40302a04d9b5a3ff4e071ac4d9f1caf98a174fe0c8488db`  
		Last Modified: Wed, 05 Dec 2018 10:26:31 GMT  
		Size: 374.7 MB (374696110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4746dbdcbd4a389e973ee1702d0c792b848406a729e7a7cc6c48801ed5a2dc33`  
		Last Modified: Wed, 05 Dec 2018 10:57:33 GMT  
		Size: 22.0 MB (22033330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6d802ab2899664833cb172448cd398fc0e6f0dd72476310a28df2833c5c56d`  
		Last Modified: Wed, 05 Dec 2018 10:57:28 GMT  
		Size: 19.5 MB (19549327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb348c71f5d4137af70d38e3858da74d43c7b389c2bedfd29abbdc6249b78c8`  
		Last Modified: Wed, 05 Dec 2018 10:57:26 GMT  
		Size: 3.9 MB (3891395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps-1.10.0.403` - linux; 386

```console
$ docker pull clojure@sha256:f491cdc5159265aff432720f8bd6d364fdb2ff50e4e5df93543b0e709130592b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **643.0 MB (642997386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c802429cea1e90e8e477f3afdb4c3695aa8b91bc2d5b68536ca9a788a058ad8`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Fri, 16 Nov 2018 12:32:10 GMT
ADD file:35a7a6d82265a9aaaa338d026c69123fcf5a876f04c62aa8b8576e728eb2d703 in / 
# Fri, 16 Nov 2018 12:32:10 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:20:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:20:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 11:21:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 13:43:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 13:43:54 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 13:43:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 13:43:56 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 13:43:57 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 13:43:57 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 05 Dec 2018 11:47:30 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Wed, 05 Dec 2018 11:49:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 11:49:08 GMT
CMD ["jshell"]
# Wed, 05 Dec 2018 12:26:21 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Wed, 05 Dec 2018 12:26:22 GMT
ENV CLOJURE_VERSION=1.9.0.397
# Wed, 05 Dec 2018 12:26:22 GMT
WORKDIR /tmp
# Wed, 05 Dec 2018 12:26:34 GMT
RUN apt-get update && apt-get install -y rlwrap
# Wed, 05 Dec 2018 12:26:37 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 05 Dec 2018 12:26:43 GMT
RUN clojure -e "(clojure-version)"
# Wed, 05 Dec 2018 12:26:43 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:aa30602b1807a2d186d63c50f118d4f15cb29b1b571140414c0bfc373476f654`  
		Last Modified: Thu, 15 Nov 2018 01:33:39 GMT  
		Size: 49.9 MB (49936516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ad8c93fe5a088ae5005cfe50a1ef475d4f0e1a97371d56db68fc08705a03df`  
		Last Modified: Sat, 17 Nov 2018 11:45:39 GMT  
		Size: 7.5 MB (7524919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ece88fa739651725b15edad9d926c3b46176bc8e5ea97bfbb390ed5a132223d`  
		Last Modified: Sat, 17 Nov 2018 11:45:39 GMT  
		Size: 10.1 MB (10109366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaede97eaff6a5c97ae494a535eff0f48e64e7b4e03b957fd570580ffb158172`  
		Last Modified: Sat, 17 Nov 2018 11:46:40 GMT  
		Size: 52.2 MB (52175725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5a4aabc6a7d0a15df4dcafb791e439aa59c61e865314f8e32868e6bd779d3c`  
		Last Modified: Sat, 17 Nov 2018 14:20:27 GMT  
		Size: 892.7 KB (892732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9037135d90687ee4334bc62f83f6515195022efb0c8f6be241e1a2b6f6cba73a`  
		Last Modified: Sat, 17 Nov 2018 14:20:26 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14fa8268c85d5849886f51ae651d986fcdf0a426e247b9b0661ec6e45ff011c`  
		Last Modified: Sat, 17 Nov 2018 14:20:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a42114712231f81d54577c3d95c6fc356e95a3d029da575f09f0ae745b11b611`  
		Last Modified: Wed, 05 Dec 2018 11:54:50 GMT  
		Size: 475.6 MB (475601603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688199fbed56fecaa09fd7f1fc109a63cebf95c64e6277e7c2934404feea263e`  
		Last Modified: Wed, 05 Dec 2018 12:29:40 GMT  
		Size: 23.3 MB (23315462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1269292dab3dea3f9780bc1afe49c821ce980d11ea21591bd0bdfd382753321`  
		Last Modified: Wed, 05 Dec 2018 12:29:39 GMT  
		Size: 19.5 MB (19549327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8da47bb3628d777960b53a48f7296fc3c0b5bf25e6c44651b0210543f6b4f54`  
		Last Modified: Wed, 05 Dec 2018 12:29:36 GMT  
		Size: 3.9 MB (3891367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps-1.10.0.403` - linux; ppc64le

```console
$ docker pull clojure@sha256:83a4607a1dd68c12cff895b1aed9f5e98c9832c9215c7acea8589db2238bfd57
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **543.5 MB (543470026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69ba696bcfb5ec109975af5842239b62cd3aa7bff633c7a0466a1e39ee99c5df`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Fri, 16 Nov 2018 09:29:11 GMT
ADD file:21c19a0a0b72cf3f388f00fe01c1519967fda820c517637abea940bde9dcbdcb in / 
# Fri, 16 Nov 2018 09:29:13 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:15:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:16:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:41:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:41:32 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 21:41:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 21:41:36 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 21:41:37 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 21:41:38 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 05 Dec 2018 09:27:02 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Wed, 05 Dec 2018 09:33:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 09:34:07 GMT
CMD ["jshell"]
# Wed, 05 Dec 2018 10:47:33 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Thu, 20 Dec 2018 09:25:20 GMT
ENV CLOJURE_VERSION=1.10.0.403
# Thu, 20 Dec 2018 09:25:22 GMT
WORKDIR /tmp
# Thu, 20 Dec 2018 09:26:09 GMT
RUN apt-get update && apt-get install -y rlwrap
# Thu, 20 Dec 2018 09:26:19 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Thu, 20 Dec 2018 09:26:33 GMT
RUN clojure -e "(clojure-version)"
# Thu, 20 Dec 2018 09:26:36 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:e57b32151bc02904963bd565e696f960ec0fcf7e61de7736cf428f181f77a638`  
		Last Modified: Fri, 16 Nov 2018 09:37:27 GMT  
		Size: 52.4 MB (52388297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab0f66852fcb84f2cd9e128298c12a55a73df334109fd2d39ccada2d5813aa5`  
		Last Modified: Fri, 16 Nov 2018 19:43:21 GMT  
		Size: 7.8 MB (7805704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28eae639cdf9e8ca8ce95408b8ae6bbcbde8367a9ad6d7c204571ff3c434eb01`  
		Last Modified: Fri, 16 Nov 2018 19:43:22 GMT  
		Size: 10.5 MB (10523243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f4bae92772f353dfc8916ff4bfa43c29ef572bbaa7095b863bfd2ef31d7bef`  
		Last Modified: Fri, 16 Nov 2018 19:44:20 GMT  
		Size: 56.4 MB (56381166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ff30587ed969d75d99ffce534f79923cef7304ff1dd798d7d9668b93661ac1`  
		Last Modified: Fri, 16 Nov 2018 22:20:15 GMT  
		Size: 882.0 KB (881998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aad39f0d719f564dd781d71db6e58ce57d0326d9360dfe2e1047a3d20d8d5af`  
		Last Modified: Fri, 16 Nov 2018 22:20:14 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274b868ca6e7fa1251abc204716d9afcdc7658f1c2e63f3344fb1334efe35258`  
		Last Modified: Fri, 16 Nov 2018 22:20:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c69eba62bab9ae4f958ee5ae841c57ea891385211526c31e1ed92fdc9382f1`  
		Last Modified: Wed, 05 Dec 2018 09:55:53 GMT  
		Size: 368.5 MB (368530475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c76638e20daf123308c4b896677fc9b29144edc1674e6eb020aaeabdeda42ff`  
		Last Modified: Thu, 20 Dec 2018 09:28:18 GMT  
		Size: 23.1 MB (23094545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00eb1d985b614c38e3d933b3a653e13286cbb61f24f91627f3a3115b20b77ab0`  
		Last Modified: Thu, 20 Dec 2018 09:28:16 GMT  
		Size: 19.8 MB (19761438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ff018fbbb0a4fa6c64f857d6cc11c5bed70d6ab1dd50b926df1e24341939b9`  
		Last Modified: Thu, 20 Dec 2018 09:28:14 GMT  
		Size: 4.1 MB (4102788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps-1.10.0.403` - linux; s390x

```console
$ docker pull clojure@sha256:8116105e4fb7219cde2c43a77bc54cc12f195bbbdd49ce8670ac4d950332393a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **491.9 MB (491861104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b2c5a4ecb5d5d82b85b0f5487fbef07e8be656bf00a34fa423007c40a291db3`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Fri, 16 Nov 2018 12:42:33 GMT
ADD file:77fbcf3a7fd8e7c1d35c9b0144f5dcef5228f477c512b3de313b5f9f8106c20b in / 
# Fri, 16 Nov 2018 12:42:34 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:14:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:14:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 20:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:43:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:43:44 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 20:43:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 20:43:45 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 20:43:46 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 20:43:46 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 05 Dec 2018 13:07:25 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Wed, 05 Dec 2018 13:09:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 13:09:42 GMT
CMD ["jshell"]
# Wed, 05 Dec 2018 13:42:26 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Wed, 05 Dec 2018 13:42:27 GMT
ENV CLOJURE_VERSION=1.9.0.397
# Wed, 05 Dec 2018 13:42:27 GMT
WORKDIR /tmp
# Wed, 05 Dec 2018 13:42:39 GMT
RUN apt-get update && apt-get install -y rlwrap
# Wed, 05 Dec 2018 13:42:41 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 05 Dec 2018 13:42:47 GMT
RUN clojure -e "(clojure-version)"
# Wed, 05 Dec 2018 13:42:47 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:b5f718c394fe29f847c837a4abaeea5358350a23da072857d9a17d7b3f835ba6`  
		Last Modified: Thu, 15 Nov 2018 01:49:01 GMT  
		Size: 47.9 MB (47868485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41806c8eb45b71025055bb1e6fd1976203b50f81a43cd4d17ecd2e08bf1ca416`  
		Last Modified: Fri, 16 Nov 2018 20:22:12 GMT  
		Size: 7.0 MB (7044644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311646161ff8988e1dbd14a16907d30a4e22f1b324c178e21580877b40c200d0`  
		Last Modified: Fri, 16 Nov 2018 20:22:12 GMT  
		Size: 9.7 MB (9670979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c6030aaf58f5a38dd0870a3bfedbe1405f3e0f69b97a75b92f033a4b4e8188`  
		Last Modified: Fri, 16 Nov 2018 20:22:37 GMT  
		Size: 50.1 MB (50126030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd13e0dfcf1b0c7040fcfed05b4331b230c8b9161b8c8bad6ddbb0d18ff72ddb`  
		Last Modified: Fri, 16 Nov 2018 20:57:29 GMT  
		Size: 892.7 KB (892722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb5a00ecec2eade209879061cbc4d4d9fcae46be4b01df1b03f74586b0c992b`  
		Last Modified: Fri, 16 Nov 2018 20:57:29 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70999fda9f2f1104fabf9d2b99819a17c78c456a2352bc27ff7710ef3e594e9e`  
		Last Modified: Fri, 16 Nov 2018 20:57:29 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba23daa741fcdd64622fb31c7e22d681b975e33560e1413bf3e01afc5cf08e6e`  
		Last Modified: Wed, 05 Dec 2018 13:13:55 GMT  
		Size: 330.7 MB (330669305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f57c36cff2bc7b9e17ec137007d74caf03f617d0dfc285d53b40f978c140423`  
		Last Modified: Wed, 05 Dec 2018 13:44:07 GMT  
		Size: 22.1 MB (22147887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515027e52442719c26c906572c9426b2a6c5a842fb15f6b6a70747cf3f705ec8`  
		Last Modified: Wed, 05 Dec 2018 13:44:06 GMT  
		Size: 19.5 MB (19549318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf7d4f92e351184603f16cabae95900ccafb48a5bc7d688cd709b321498fe37`  
		Last Modified: Wed, 05 Dec 2018 13:44:04 GMT  
		Size: 3.9 MB (3891365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

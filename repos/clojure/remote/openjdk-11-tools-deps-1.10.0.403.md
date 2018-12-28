## `clojure:openjdk-11-tools-deps-1.10.0.403`

```console
$ docker pull clojure@sha256:aa68490e36501bf5893b06c16d925e6c656e7764373527ba507d44fc28a2654f
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
$ docker pull clojure@sha256:d2e79f71ab3cd94868208a0786e48590f5d164ddde29798870f16ca7c6f9532a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.5 MB (474544512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c40a0f12ae11f40561670d9fa170a338969b33f00ceb89e246c8b0a0d6ca0ad0`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 08:29:37 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 08:29:38 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 08:29:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 08:29:39 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 08:29:39 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 08:29:39 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 08:29:40 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Fri, 28 Dec 2018 00:21:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 28 Dec 2018 00:21:25 GMT
CMD ["jshell"]
# Fri, 28 Dec 2018 00:49:48 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Fri, 28 Dec 2018 00:49:48 GMT
ENV CLOJURE_VERSION=1.10.0.403
# Fri, 28 Dec 2018 00:49:49 GMT
WORKDIR /tmp
# Fri, 28 Dec 2018 00:49:53 GMT
RUN apt-get update && apt-get install -y rlwrap
# Fri, 28 Dec 2018 00:49:56 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Fri, 28 Dec 2018 00:50:05 GMT
RUN clojure -e "(clojure-version)"
# Fri, 28 Dec 2018 00:50:05 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6b28682cfe6db721c143309125728417dca93643b3d8d4c22ae7fbb4eb940`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 892.4 KB (892364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a84aafc5010d7c2aef2f8e9422fd37c8136fe5aad75ac4e51b875aba6a43b4`  
		Last Modified: Wed, 26 Dec 2018 08:37:35 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274ee31220a890006169c081d33a7a1e2f8cfa3d967d6c819e5d0b231ffd6f30`  
		Last Modified: Wed, 26 Dec 2018 08:37:35 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d567c51dd7aa2102f286187f8f9587531f5fd043cf0beba562ce323fcafa16aa`  
		Last Modified: Wed, 26 Dec 2018 08:37:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e0585fb03353a6b30f72906432c681091d04aba578d5f965b4515e09baf20a`  
		Last Modified: Fri, 28 Dec 2018 00:27:11 GMT  
		Size: 325.5 MB (325476176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a4a3df3c94858e71cec910496b986fcf8eb5c108eeb6293e7727e1e9c35933`  
		Last Modified: Fri, 28 Dec 2018 00:50:45 GMT  
		Size: 13.8 MB (13847513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:526a0ccf07e94fef55a4d0d46e47bfa7d5625466ef347dd554d11f8042455cde`  
		Last Modified: Fri, 28 Dec 2018 00:50:45 GMT  
		Size: 19.8 MB (19761381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83bf7410cb5e6cc835194b0edb3f450e0c897c189cde25a34d1a6cb203737f22`  
		Last Modified: Fri, 28 Dec 2018 00:50:43 GMT  
		Size: 4.1 MB (4102718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps-1.10.0.403` - linux; arm variant v5

```console
$ docker pull clojure@sha256:6a0e51bdb00b4754872a4177ad80c6cd80d35f3a46c4328b4bfd1af8391f5bb6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.4 MB (407417014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f713dfaab52d28cc376f4f2adee20523fef3d1fd101c0f65f37059c5d2999e49`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Fri, 16 Nov 2018 09:57:44 GMT
ADD file:f9237d2b6971cee3b5e97a3eee00a9f5ee788a30971f8ed1770d2cb47fbb3111 in / 
# Fri, 16 Nov 2018 09:57:45 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:37:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:37:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:38:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Nov 2018 10:23:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:49:35 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 09:49:36 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 09:49:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 09:49:39 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 09:49:39 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 09:49:39 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 09:49:40 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Fri, 28 Dec 2018 09:51:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 28 Dec 2018 09:51:41 GMT
CMD ["jshell"]
# Fri, 28 Dec 2018 10:39:42 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Fri, 28 Dec 2018 10:39:43 GMT
ENV CLOJURE_VERSION=1.10.0.403
# Fri, 28 Dec 2018 10:39:43 GMT
WORKDIR /tmp
# Fri, 28 Dec 2018 10:39:53 GMT
RUN apt-get update && apt-get install -y rlwrap
# Fri, 28 Dec 2018 10:39:57 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Fri, 28 Dec 2018 10:41:23 GMT
RUN clojure -e "(clojure-version)"
# Fri, 28 Dec 2018 10:41:23 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:15c0977ad57b8c1e459a84e9660baad60a59f519993211bd2bcfafa129c57b26`  
		Last Modified: Fri, 16 Nov 2018 10:12:16 GMT  
		Size: 44.0 MB (44031335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad5842ea5c57b54a3234d4466d9ce27f85b88e78d462439d74bec92845106b1`  
		Last Modified: Fri, 16 Nov 2018 18:51:10 GMT  
		Size: 9.8 MB (9810920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8779ae1b142cf8073085a020a4a857f81411f8267cb771b9888c23164cebfad1`  
		Last Modified: Fri, 16 Nov 2018 18:51:08 GMT  
		Size: 4.2 MB (4158685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36df4c9303ec5ed090e9c746045a71d4285056f215f04828647a3a7c4111bd5`  
		Last Modified: Fri, 16 Nov 2018 18:52:03 GMT  
		Size: 48.3 MB (48272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d36f3d062340ef2287f87ad3b2e9e6e2709004adc5c2f1f9167f479015e195`  
		Last Modified: Wed, 21 Nov 2018 10:33:56 GMT  
		Size: 884.7 KB (884721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52357cf5f826f41efddf2db9b309ed12831ef4b6aa36f2d1c6f518185fa84c91`  
		Last Modified: Wed, 26 Dec 2018 10:02:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48be9319cc176195ea3faf7dd1dbd5a5af73e19c17f69da364a571cc05a2323c`  
		Last Modified: Wed, 26 Dec 2018 10:02:43 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86a042a81120b935e918c94aa0c4012ac8005b67d27af566ac172545d5009de`  
		Last Modified: Wed, 26 Dec 2018 10:02:43 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda6e95f7612249b7367cc43ab8aa3071bd739129e435fe2af5ec01943b3ddd6`  
		Last Modified: Fri, 28 Dec 2018 10:00:10 GMT  
		Size: 262.5 MB (262451233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42f41ede705c5a367699d1e3fa55cb75a9a17dc32f632d15d9e04f2a4ee6dec`  
		Last Modified: Fri, 28 Dec 2018 10:42:10 GMT  
		Size: 13.9 MB (13943125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a272d37793ed23086255e71885581e4970b219d592ced9758f1a26276a6df0a`  
		Last Modified: Fri, 28 Dec 2018 10:42:10 GMT  
		Size: 19.8 MB (19761455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d96a89531493f2558dab2e99491ce12bef9f903505c032b21fd228d1d0bd058`  
		Last Modified: Fri, 28 Dec 2018 10:42:08 GMT  
		Size: 4.1 MB (4102813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps-1.10.0.403` - linux; arm variant v7

```console
$ docker pull clojure@sha256:045d303301ca5a0d73fe602c89b26191822b97b66da46348e27f8e689c5fd232
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.6 MB (496572881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f2e13fe1e413c19893c8a168e40841c1c941d1bd2d6fab85b155ac4d3b73ce`
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
# Thu, 20 Dec 2018 13:00:44 GMT
ENV CLOJURE_VERSION=1.10.0.403
# Thu, 20 Dec 2018 13:00:44 GMT
WORKDIR /tmp
# Thu, 20 Dec 2018 13:01:00 GMT
RUN apt-get update && apt-get install -y rlwrap
# Thu, 20 Dec 2018 13:01:03 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Thu, 20 Dec 2018 13:01:13 GMT
RUN clojure -e "(clojure-version)"
# Thu, 20 Dec 2018 13:01:14 GMT
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
	-	`sha256:d2d9b254d51fce721832e3f83aefc74e4ffdaedf2242cf18a91a97eed6c7eb8b`  
		Last Modified: Thu, 20 Dec 2018 13:02:46 GMT  
		Size: 22.4 MB (22383494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d6239ad7f496f4792a0ffeb4ed4d5bd512b04e70e0f446c8fa6642e0a0e8cd`  
		Last Modified: Thu, 20 Dec 2018 13:02:43 GMT  
		Size: 19.8 MB (19761439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861bc93b5bcb8768a27c7724579fa93775bf7e7ba115eb5d69a382b3df20f3fb`  
		Last Modified: Thu, 20 Dec 2018 13:02:40 GMT  
		Size: 4.1 MB (4102804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps-1.10.0.403` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9cf013fa99b500e0e1d37e573ed018daf75b778081eb2d591a063a41a11ea84c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **444.9 MB (444883810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b15f44d99b3ffcbb434876453d1f000c5b0d0b01e7c7e5e1253a7a816cc7be`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 02:33:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:55:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:49:16 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 09:49:16 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 09:49:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 09:49:21 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 09:49:22 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 09:49:22 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 09:49:23 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Fri, 28 Dec 2018 09:50:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 28 Dec 2018 09:50:15 GMT
CMD ["jshell"]
# Fri, 28 Dec 2018 10:42:07 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Fri, 28 Dec 2018 10:42:09 GMT
ENV CLOJURE_VERSION=1.10.0.403
# Fri, 28 Dec 2018 10:42:10 GMT
WORKDIR /tmp
# Fri, 28 Dec 2018 10:42:29 GMT
RUN apt-get update && apt-get install -y rlwrap
# Fri, 28 Dec 2018 10:42:38 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Fri, 28 Dec 2018 10:43:00 GMT
RUN clojure -e "(clojure-version)"
# Fri, 28 Dec 2018 10:43:02 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbf6d1a95604486762f28db0d78dc2d0ee4ce93752f9f63500a2a5a1ccccbad`  
		Last Modified: Sat, 17 Nov 2018 02:51:58 GMT  
		Size: 48.0 MB (48005019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaeab0ecba831abe35f50cb9dee5b4bd68274cf8ad778ca18d425026705ac509`  
		Last Modified: Sat, 17 Nov 2018 05:46:27 GMT  
		Size: 877.6 KB (877593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d884fe09697c6b6df8510a1ed8d3346ecb12a259df8ed10a5bb4c7a7bdfc33b4`  
		Last Modified: Wed, 26 Dec 2018 10:22:29 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f05d6ea155dcd175dc4457972d2b17072c1dbf1e8dbf02a78e8563d3d324f31`  
		Last Modified: Wed, 26 Dec 2018 10:22:29 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55405ed9f5abe82ba4f57692a501a8acd291df37c88895065ca345b459cd8b5e`  
		Last Modified: Wed, 26 Dec 2018 10:22:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4feba0db4881de3607f1b79e26ccb1fbe441baa0cf7d1dc6d301226231ebe37`  
		Last Modified: Fri, 28 Dec 2018 10:05:42 GMT  
		Size: 301.7 MB (301708075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811616d8649797a375c8beac29e51890b6a81f64ef78e6be13fedd90b51b8f0b`  
		Last Modified: Fri, 28 Dec 2018 10:44:18 GMT  
		Size: 13.5 MB (13528306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa47cb6d401ea952220c2ea61c4ce4bd710b79afc41d4d11a2508a5aef3b653`  
		Last Modified: Fri, 28 Dec 2018 10:44:15 GMT  
		Size: 19.8 MB (19761378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328be163fd5b9c53c21a5d85a47d919a582a5e88e3babc9da25dbc606daab30c`  
		Last Modified: Fri, 28 Dec 2018 10:44:13 GMT  
		Size: 4.1 MB (4102744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps-1.10.0.403` - linux; 386

```console
$ docker pull clojure@sha256:339064bb944e2753a19e96f55e185cc8134b3414bd584b65c257256fc30e490f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **643.5 MB (643474586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84c92deb36eda003882a8d85f88317796bcd1ca873531249ade630f070a67b8c`
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
# Thu, 20 Dec 2018 11:43:20 GMT
ENV CLOJURE_VERSION=1.10.0.403
# Thu, 20 Dec 2018 11:43:20 GMT
WORKDIR /tmp
# Thu, 20 Dec 2018 11:43:31 GMT
RUN apt-get update && apt-get install -y rlwrap
# Thu, 20 Dec 2018 11:43:33 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Thu, 20 Dec 2018 11:43:39 GMT
RUN clojure -e "(clojure-version)"
# Thu, 20 Dec 2018 11:43:39 GMT
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
	-	`sha256:0a6c5d5851a596d2fb6114cc669502f0b30c3233ca9f269125dfa0679899f304`  
		Last Modified: Thu, 20 Dec 2018 11:44:38 GMT  
		Size: 23.4 MB (23369288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f604ba3e1675e6cc9e8580b51eca4313a57a058583369da0f8b92eb4cac95ca`  
		Last Modified: Thu, 20 Dec 2018 11:44:36 GMT  
		Size: 19.8 MB (19761329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcc4c66706b6fdafef926488024acb2e55e18b8d1542f3d7b30a62dbfdba19f`  
		Last Modified: Thu, 20 Dec 2018 11:44:34 GMT  
		Size: 4.1 MB (4102739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps-1.10.0.403` - linux; ppc64le

```console
$ docker pull clojure@sha256:02a9547c32b6429d38e382c51029ff0f3f85b5ca24a5dfba2bda78369626fcf1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.0 MB (441000234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5286a9c585f05b5240a003782c61024cfa78b09e1233bed0fcf907db3f66b427`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:27:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:27:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:29:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:07:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:40:34 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 09:40:36 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 09:40:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 09:40:43 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 09:40:45 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 09:40:47 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 09:40:48 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Fri, 28 Dec 2018 09:20:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 28 Dec 2018 09:20:56 GMT
CMD ["jshell"]
# Fri, 28 Dec 2018 10:06:52 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Fri, 28 Dec 2018 10:06:54 GMT
ENV CLOJURE_VERSION=1.10.0.403
# Fri, 28 Dec 2018 10:06:56 GMT
WORKDIR /tmp
# Fri, 28 Dec 2018 10:07:07 GMT
RUN apt-get update && apt-get install -y rlwrap
# Fri, 28 Dec 2018 10:07:14 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Fri, 28 Dec 2018 10:07:28 GMT
RUN clojure -e "(clojure-version)"
# Fri, 28 Dec 2018 10:07:31 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5bebfbb4940b6d3d8df18b51cbbd90a08385846bf9add13616d9ed867f08e7`  
		Last Modified: Fri, 16 Nov 2018 19:47:07 GMT  
		Size: 9.9 MB (9943735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b2a4eda93227739d4c204a11b693cc3494e9e6153e1ae2dd57a0e46a7f5873`  
		Last Modified: Fri, 16 Nov 2018 19:47:05 GMT  
		Size: 4.3 MB (4295770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1016a8823510eb6145ea613b3d780bb9dcd39aa654ebca99ddc07cb139702012`  
		Last Modified: Fri, 16 Nov 2018 19:48:13 GMT  
		Size: 50.1 MB (50070922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e469fb5581abe67c9afdec146613c3f9b83ea5dac1585f9cd125c54a079d792d`  
		Last Modified: Fri, 16 Nov 2018 22:47:26 GMT  
		Size: 886.1 KB (886141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36cfb2ad97146d6ee1c657c3acd4c671949426bb1f7ef60e2be1e01a0977a7e8`  
		Last Modified: Wed, 26 Dec 2018 10:05:16 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56b67f49feb0b4e754ffdcdb06ca1bb41c35718265c5d684353edf2678b3116`  
		Last Modified: Wed, 26 Dec 2018 10:05:16 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2063807139fd21daa1968be6996438e6f23fb7bdf89636d427ca794ba366c0e0`  
		Last Modified: Wed, 26 Dec 2018 10:05:17 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4545eb94412624fbdc6b0373e5863572decc16f1226c336f6085ae6fb1773189`  
		Last Modified: Fri, 28 Dec 2018 09:30:22 GMT  
		Size: 292.8 MB (292838927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f619655f770d57fc332d6935094b08c4c5804f39b0b253dfd13d61680b18508`  
		Last Modified: Fri, 28 Dec 2018 10:08:32 GMT  
		Size: 13.5 MB (13493828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af045eeaaac01b9ef7f70dab55e5f16765198afffe24b5d4f4495b164bb3b8c9`  
		Last Modified: Fri, 28 Dec 2018 10:08:32 GMT  
		Size: 19.8 MB (19761459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28626a20a9d67ff40afd29ee048a8010e5a7022c8c46cbe2e1537f55bd1adf2`  
		Last Modified: Fri, 28 Dec 2018 10:08:31 GMT  
		Size: 4.1 MB (4102765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps-1.10.0.403` - linux; s390x

```console
$ docker pull clojure@sha256:ac497810ce5cde039e243d659b98e42a8f010e670ec29b4c29992a2529fba1ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.7 MB (498673769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b6bd891063c6d9c6ba95e0906e29263828cf3bf1d5348fec673715acf05f9d0`
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
# Thu, 20 Dec 2018 12:46:16 GMT
ENV CLOJURE_VERSION=1.10.0.403
# Thu, 20 Dec 2018 12:46:16 GMT
WORKDIR /tmp
# Thu, 20 Dec 2018 12:46:30 GMT
RUN apt-get update && apt-get install -y rlwrap
# Thu, 20 Dec 2018 12:46:32 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Thu, 20 Dec 2018 12:46:38 GMT
RUN clojure -e "(clojure-version)"
# Thu, 20 Dec 2018 12:46:38 GMT
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
	-	`sha256:7c0bb30f40feb5b74ee3aa98074e0623432888e3988e25600e379a12c83ff0d3`  
		Last Modified: Thu, 20 Dec 2018 12:47:57 GMT  
		Size: 28.5 MB (28537236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2790a690703b0737992e0f918065679515ab04ca61aa12660dae6ebe1e18e34d`  
		Last Modified: Thu, 20 Dec 2018 12:47:54 GMT  
		Size: 19.8 MB (19761312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abe76d36b648ff57314018bc2723bde1407d8bbf3a7d283a99d2f9bfd213a89`  
		Last Modified: Thu, 20 Dec 2018 12:47:53 GMT  
		Size: 4.1 MB (4102687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

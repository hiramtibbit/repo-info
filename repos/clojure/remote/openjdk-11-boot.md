## `clojure:openjdk-11-boot`

```console
$ docker pull clojure@sha256:7b9dd59cb7b0cafa98830e843eaa2832bc5cc7d3b331c796ffcfce46ae1d4eda
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

### `clojure:openjdk-11-boot` - linux; amd64

```console
$ docker pull clojure@sha256:9e89d6da4c151cfcb67c530892825da90522dc0b8adb43d7b9b3b2f9bbeafe32
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **476.2 MB (476226799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2acc17eb4703e1b1cc6cb7bd52547e5534e1040090f7da28f1cc6f6b1fec4a7f`
-	Default Command: `["boot","repl"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 00:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:52:37 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 02:52:37 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:52:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:52:39 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:52:39 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:52:40 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 02:52:40 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 02:54:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 02:54:02 GMT
CMD ["jshell"]
# Sat, 29 Dec 2018 10:25:01 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Sat, 29 Dec 2018 10:25:01 GMT
ENV BOOT_VERSION=2.8.2
# Sat, 29 Dec 2018 10:25:01 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Sat, 29 Dec 2018 10:25:01 GMT
WORKDIR /tmp
# Sat, 29 Dec 2018 10:25:03 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Sat, 29 Dec 2018 10:25:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 29 Dec 2018 10:25:03 GMT
ENV BOOT_AS_ROOT=yes
# Sat, 29 Dec 2018 10:25:58 GMT
RUN boot
# Sat, 29 Dec 2018 10:25:58 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045b51e26e750443c84216071a1367a7aae0b76245800629dc04934628b4b1ea`  
		Last Modified: Sat, 29 Dec 2018 00:22:00 GMT  
		Size: 50.1 MB (50062697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e50f3a5916063721a472d949e4708f7ef54cd00ea07336c43cc1b192f5a30c`  
		Last Modified: Sat, 29 Dec 2018 03:21:36 GMT  
		Size: 892.3 KB (892281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db1045008babb180511e50f86fe629e2b8d7912c00414e373539130f29466f0`  
		Last Modified: Sat, 29 Dec 2018 03:21:35 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba72089e00c558e987f6b51ee0fa9806ed5a6c7b188539094c8e77a01f84f04`  
		Last Modified: Sat, 29 Dec 2018 03:21:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810bdb5dd91f82c447fc4d446e5d90edcd030b01fed5081199efa532e394c275`  
		Last Modified: Sat, 29 Dec 2018 03:21:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b56347555630dfd6f134c3d404e8f424cfba12707a0705fc64d49d06a0122b`  
		Last Modified: Sat, 29 Dec 2018 03:22:10 GMT  
		Size: 325.5 MB (325475368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26219b006103de4ae97ac5a8dbcfeed45366e21f6cdd1a56423d029c51a7a6e5`  
		Last Modified: Sat, 29 Dec 2018 10:27:55 GMT  
		Size: 6.9 KB (6898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a6ec93dfa47eceada634e738d456e1424c703cd692fec8847be82e128cc6cd`  
		Last Modified: Sat, 29 Dec 2018 10:27:59 GMT  
		Size: 39.3 MB (39344227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-boot` - linux; arm variant v5

```console
$ docker pull clojure@sha256:afb7b433b924faf5ad19ccbb03f7a9c63c5cf6cb139f0c81290e21c785c28999
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.0 MB (408961580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd7d53b30ea001ba0ef27880dfb3f527ea7fd3ecfc92fd21c03bc9f8253de75e`
-	Default Command: `["boot","repl"]`

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
# Fri, 28 Dec 2018 10:33:39 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Fri, 28 Dec 2018 10:33:40 GMT
ENV BOOT_VERSION=2.8.2
# Fri, 28 Dec 2018 10:33:40 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Fri, 28 Dec 2018 10:33:41 GMT
WORKDIR /tmp
# Fri, 28 Dec 2018 10:33:42 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Fri, 28 Dec 2018 10:33:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 28 Dec 2018 10:33:43 GMT
ENV BOOT_AS_ROOT=yes
# Fri, 28 Dec 2018 10:39:30 GMT
RUN boot
# Fri, 28 Dec 2018 10:39:30 GMT
CMD ["boot" "repl"]
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
	-	`sha256:a927474a71193650f833e1f3fa7e582e508f25fe5024ede2dec19e4133ccdcdf`  
		Last Modified: Fri, 28 Dec 2018 10:41:55 GMT  
		Size: 6.9 KB (6899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286bd83efcdf80c582a7bba1f964b034f10d3f6b99a17455aaeb7d7fdceac29a`  
		Last Modified: Fri, 28 Dec 2018 10:42:01 GMT  
		Size: 39.3 MB (39345060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-boot` - linux; arm variant v7

```console
$ docker pull clojure@sha256:4d058e6f468da3a5b03095c1834a0ee4380018284bacd99f989e3e6bd8bed6da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **423.2 MB (423170064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe0d4e413c8be74a2d84a1340903df40d52e92c1da8c0714450f595e67954b3a`
-	Default Command: `["boot","repl"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:17:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:17:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:18:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:57:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 13:05:25 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 13:05:25 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 13:05:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 13:05:28 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 13:05:28 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 13:05:29 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 13:05:29 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Fri, 28 Dec 2018 13:00:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 28 Dec 2018 13:00:06 GMT
CMD ["jshell"]
# Fri, 28 Dec 2018 13:32:16 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Fri, 28 Dec 2018 13:32:17 GMT
ENV BOOT_VERSION=2.8.2
# Fri, 28 Dec 2018 13:32:17 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Fri, 28 Dec 2018 13:32:17 GMT
WORKDIR /tmp
# Fri, 28 Dec 2018 13:32:19 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Fri, 28 Dec 2018 13:32:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 28 Dec 2018 13:32:20 GMT
ENV BOOT_AS_ROOT=yes
# Fri, 28 Dec 2018 13:33:08 GMT
RUN boot
# Fri, 28 Dec 2018 13:33:09 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7353b73b294b9e3d692697431695f92c48a581f30b3295a5fad1b80854f13e5b`  
		Last Modified: Fri, 16 Nov 2018 18:31:31 GMT  
		Size: 9.4 MB (9440401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e92165ab0bf59142c3f101750c7a81a51d559eed557c0674a209979d86fd4a9`  
		Last Modified: Fri, 16 Nov 2018 18:31:30 GMT  
		Size: 3.9 MB (3918472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876ce4c93c1cd23dba26163faf2c97ba7d2ff4a19e9ec4f18fd0d9dbf3c3491d`  
		Last Modified: Fri, 16 Nov 2018 18:32:16 GMT  
		Size: 46.4 MB (46379290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024c5fe60833dbd5de75fb0be244113ec7248b6fdfc231ea97d59f4435607e81`  
		Last Modified: Wed, 26 Dec 2018 13:19:13 GMT  
		Size: 867.8 KB (867838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b6ce66de8b2d3e80f6d0e280a15b72a7d3f149ec864db205de42776494bb41`  
		Last Modified: Wed, 26 Dec 2018 13:19:13 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055528fdc938bf4651bb0459fb413f1a77c686bf06d7cffdcff7d996510cdb7f`  
		Last Modified: Wed, 26 Dec 2018 13:19:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88c305e92aa154316f3a34c16fefbef00ffc3eb21f054e2ea2f7a73fa2d54612`  
		Last Modified: Wed, 26 Dec 2018 13:19:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240142eadc5e8e682ba5e4e48c96b934b27af595cc0a6ae25c6323fc5be8286e`  
		Last Modified: Fri, 28 Dec 2018 13:13:21 GMT  
		Size: 281.1 MB (281136148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ed06543b3abb699764f4e907c9741fb225a7638fc39f250ad7d2c91f0478cb`  
		Last Modified: Fri, 28 Dec 2018 13:34:12 GMT  
		Size: 6.9 KB (6900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50056f369cb006f37b7ca2155e1bd95d103aa6404fefba2d85136be1aaf30687`  
		Last Modified: Fri, 28 Dec 2018 13:34:18 GMT  
		Size: 39.3 MB (39344267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-boot` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d5b60cc2a65c3f1da032b34380d64be87918b5031252c051da5aca3a83f773e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **446.8 MB (446842705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:304896286d61b7b281b82529439458b475f80341d4242e652a196fd2851d66e2`
-	Default Command: `["boot","repl"]`

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
# Fri, 28 Dec 2018 10:40:08 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Fri, 28 Dec 2018 10:40:09 GMT
ENV BOOT_VERSION=2.8.2
# Fri, 28 Dec 2018 10:40:11 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Fri, 28 Dec 2018 10:40:12 GMT
WORKDIR /tmp
# Fri, 28 Dec 2018 10:40:16 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Fri, 28 Dec 2018 10:40:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 28 Dec 2018 10:40:22 GMT
ENV BOOT_AS_ROOT=yes
# Fri, 28 Dec 2018 10:41:56 GMT
RUN boot
# Fri, 28 Dec 2018 10:41:57 GMT
CMD ["boot" "repl"]
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
	-	`sha256:73c41354eb9da77e23fe9b08ba90173b9cf00e5f5a17a5396122a30b2152c235`  
		Last Modified: Fri, 28 Dec 2018 10:43:53 GMT  
		Size: 6.9 KB (6902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bcae64c3d3413ed7722fddc5110804d8181532ea5187f1e94f10ace29360649`  
		Last Modified: Fri, 28 Dec 2018 10:44:02 GMT  
		Size: 39.3 MB (39344421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-boot` - linux; 386

```console
$ docker pull clojure@sha256:438fcdd62f21c0440a64bcdda25e34de5f8959987fb5e1d302e4999d980db340
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **541.3 MB (541304339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:456a80fcdcb1718167f0fc7919cb7a14232bb85f70add7793ac17e3ae242bd81`
-	Default Command: `["boot","repl"]`

```dockerfile
# Fri, 16 Nov 2018 12:35:55 GMT
ADD file:c271ec83947c149630f5083b19b12f1c2abee7cfee16687b496b762e2c03bd2f in / 
# Fri, 16 Nov 2018 12:35:56 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:24:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:24:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 11:25:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 14:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 12:07:47 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 12:07:47 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 12:07:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 12:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 12:07:49 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 12:07:49 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 12:07:49 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Fri, 28 Dec 2018 11:39:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 28 Dec 2018 11:39:48 GMT
CMD ["jshell"]
# Fri, 28 Dec 2018 13:17:20 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Fri, 28 Dec 2018 13:17:20 GMT
ENV BOOT_VERSION=2.8.2
# Fri, 28 Dec 2018 13:17:20 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Fri, 28 Dec 2018 13:17:21 GMT
WORKDIR /tmp
# Fri, 28 Dec 2018 13:17:22 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Fri, 28 Dec 2018 13:17:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 28 Dec 2018 13:17:22 GMT
ENV BOOT_AS_ROOT=yes
# Fri, 28 Dec 2018 13:18:40 GMT
RUN boot
# Fri, 28 Dec 2018 13:18:41 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:174e14c2b2eaca3f23e43c1a71df56b345b1e5fd0a6f56dbdc2b7863bf521334`  
		Last Modified: Thu, 15 Nov 2018 01:55:15 GMT  
		Size: 46.1 MB (46055316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2282c1c83958740b6ecb7716fae7f829e59a91879ae6162d89e2792727ca2219`  
		Last Modified: Sat, 17 Nov 2018 11:50:04 GMT  
		Size: 10.8 MB (10752903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa7429c42215a24876206386666a9e7f5a3df20fcb1970274131f340987dc8`  
		Last Modified: Sat, 17 Nov 2018 11:50:00 GMT  
		Size: 4.6 MB (4560895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b022fb011c070a8b22c597aaf2aad4cfca3be7d2eefd830882555c79eae81d04`  
		Last Modified: Sat, 17 Nov 2018 11:51:42 GMT  
		Size: 51.6 MB (51591370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039b5b2bccea4dc7559f4d7b5d0544bff21827a7e832f096f0b601bd8b533986`  
		Last Modified: Sat, 17 Nov 2018 14:47:04 GMT  
		Size: 900.0 KB (900047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f609112b099ec27cd36ab84786ae3181d03f4e7352272c2f23b3671240b8105`  
		Last Modified: Wed, 26 Dec 2018 12:15:56 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87cf21abe0bf719e817643e83630c08974379ef55ef19c79607b5f225fadbeaa`  
		Last Modified: Wed, 26 Dec 2018 12:15:56 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfcfa7b9e5e18274c73c73734ebe18777f1ee3cc19c7284f7111b81068dfd9ec`  
		Last Modified: Wed, 26 Dec 2018 12:15:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80246fc9fe3417c585e4cbc390db33765f9dbe6b7a87c55ca5bce14a92387182`  
		Last Modified: Fri, 28 Dec 2018 11:44:28 GMT  
		Size: 388.1 MB (388091878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b37d158b552fe7cea03c960f695e9940d9e750b55464054153a003341f7680`  
		Last Modified: Fri, 28 Dec 2018 13:19:25 GMT  
		Size: 6.9 KB (6901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b901142ecec501c5f2c7dc11e9471bab92be9473dca10cd9b8df89b1a04cd5`  
		Last Modified: Fri, 28 Dec 2018 13:19:29 GMT  
		Size: 39.3 MB (39344425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-boot` - linux; ppc64le

```console
$ docker pull clojure@sha256:57451b107f3fba83f1bc7765adb99c068a6b1bfe67cd8980b452faf35eed6892
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.0 MB (443029417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b01c6b7c0154ae46b8a6604d13601fb6eae49c0855490f1a9bf07cd6134daab`
-	Default Command: `["boot","repl"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:40:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:40:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:19:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:19:20 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 12:19:22 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:19:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 12:19:30 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 12:19:32 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 12:19:33 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 12:19:35 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 12:23:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 12:23:48 GMT
CMD ["jshell"]
# Sat, 29 Dec 2018 17:51:04 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Sat, 29 Dec 2018 17:51:05 GMT
ENV BOOT_VERSION=2.8.2
# Sat, 29 Dec 2018 17:51:07 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Sat, 29 Dec 2018 17:51:08 GMT
WORKDIR /tmp
# Sat, 29 Dec 2018 17:51:13 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Sat, 29 Dec 2018 17:51:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 29 Dec 2018 17:51:17 GMT
ENV BOOT_AS_ROOT=yes
# Sat, 29 Dec 2018 17:53:33 GMT
RUN boot
# Sat, 29 Dec 2018 17:53:36 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f635fa148b382c93885cce85133b6f1ba33b1a391347329805ce973d3061d42`  
		Last Modified: Sat, 29 Dec 2018 11:18:00 GMT  
		Size: 10.0 MB (9986429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c0099cf676e2655012d38610077379647258d6af103b65ff34d91637631fc6`  
		Last Modified: Sat, 29 Dec 2018 11:17:59 GMT  
		Size: 4.3 MB (4295725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac453cf9be4657ff3c6bbb021d7e64057957b45d1f84550e3655ba5cdcd0f58b`  
		Last Modified: Sat, 29 Dec 2018 11:18:38 GMT  
		Size: 50.1 MB (50064531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b146ea60af943e531634711eeb85e5f21bb365e1fac66849b36e4090cdf178a4`  
		Last Modified: Sat, 29 Dec 2018 12:53:14 GMT  
		Size: 886.0 KB (885979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e0952f871e943a4dcb2b1515a9cf479bd8288d4c0cadfb1338971dffac37dd`  
		Last Modified: Sat, 29 Dec 2018 12:53:14 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f54b7d72ab1b0cfb125ffd4ac7ba8de89a2f64badae2d5b2f314e0cce7332a`  
		Last Modified: Sat, 29 Dec 2018 12:53:16 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ecc628a4f6cf02bb7ad06a85ec0f579d879f67652f46c0723dc5fb778041c78`  
		Last Modified: Sat, 29 Dec 2018 12:53:13 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51c6d05ca8653b1911091d8e5f87c649fda5625a35d1742ac716f54636c518b`  
		Last Modified: Sat, 29 Dec 2018 12:54:10 GMT  
		Size: 292.8 MB (292839051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11a48184e247a952fd977c82df6b30f77e2f195f1403cc5a4d3cd861bde96e8`  
		Last Modified: Sat, 29 Dec 2018 17:55:54 GMT  
		Size: 6.9 KB (6898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2a96e230f84fc052ea675c9eeec5a50caab18f2a60e0a14947f29a7caf4e6e`  
		Last Modified: Sat, 29 Dec 2018 17:55:58 GMT  
		Size: 39.3 MB (39344503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-boot` - linux; s390x

```console
$ docker pull clojure@sha256:d042ad7d5754f3f2eb9969973838b43665668713dc9b94875b2e39edef4c1798
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.9 MB (443904293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd4ba6626cd0ba3ecf204e1084c9e7b97eddff7ee8eb9da1a2596bda41e2613`
-	Default Command: `["boot","repl"]`

```dockerfile
# Sat, 29 Dec 2018 12:43:32 GMT
ADD file:77b66e4dfb1b6be05fbe0809b73dba123a7c18a1f16751d165a43a9d6d7e8c42 in / 
# Sat, 29 Dec 2018 12:43:33 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:15:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:15:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 13:16:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:23:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:23:35 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 14:23:35 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:23:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 14:23:37 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 14:23:38 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 14:23:38 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 14:23:38 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 14:24:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 14:24:45 GMT
CMD ["jshell"]
# Sat, 29 Dec 2018 17:43:57 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Sat, 29 Dec 2018 17:43:57 GMT
ENV BOOT_VERSION=2.8.2
# Sat, 29 Dec 2018 17:43:57 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Sat, 29 Dec 2018 17:43:57 GMT
WORKDIR /tmp
# Sat, 29 Dec 2018 17:43:58 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Sat, 29 Dec 2018 17:43:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 29 Dec 2018 17:43:59 GMT
ENV BOOT_AS_ROOT=yes
# Sat, 29 Dec 2018 17:44:42 GMT
RUN boot
# Sat, 29 Dec 2018 17:44:42 GMT
CMD ["boot" "repl"]
```

-	Layers:
	-	`sha256:c5e4ba148bd18e885706d64bd30df16338c81bebed6fd5ef73479d4ac92a7249`  
		Last Modified: Sat, 29 Dec 2018 12:46:37 GMT  
		Size: 45.2 MB (45206162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ab879437b7ffa94dbf20c17fff26c665632ba45fe169c1234acdfc98235ea4`  
		Last Modified: Sat, 29 Dec 2018 13:25:05 GMT  
		Size: 10.3 MB (10312640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26d08cd769086cf57f94597710a8e83155b78206b639c049f55a8c4c2896ce2`  
		Last Modified: Sat, 29 Dec 2018 13:25:04 GMT  
		Size: 4.4 MB (4371853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dfbcf77830b9f550dbf3b3cb64574c5b4efd23d0e4d5607d36922028f4c25a`  
		Last Modified: Sat, 29 Dec 2018 13:25:22 GMT  
		Size: 50.5 MB (50488007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f92dbd48441dd77018658382901652d708ab431dffeed3de82eb78c85467ec8`  
		Last Modified: Sat, 29 Dec 2018 14:30:50 GMT  
		Size: 903.4 KB (903386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb3cb6e547ae31555539aef7d93562e4cedfd3b90ed6f2e92148b9041dc88d8`  
		Last Modified: Sat, 29 Dec 2018 14:30:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd552b0769168f7345a6065e87e015ef9ce227e26c6566a7125ac4363d42ec7`  
		Last Modified: Sat, 29 Dec 2018 14:30:49 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126a58bb7e311af905c7f075982bec7300b1de47fb0569d0c27784392fcad7db`  
		Last Modified: Sat, 29 Dec 2018 14:30:49 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec60614d437ceba07eb7884c7c670aa32bd4da2d4982a151bdf1eaa309601fc`  
		Last Modified: Sat, 29 Dec 2018 14:31:15 GMT  
		Size: 293.3 MB (293270521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309674194a10904ccbbc0b73b0140ff8db74d6b2a2e72e01f6754aecfa352e42`  
		Last Modified: Sat, 29 Dec 2018 17:46:04 GMT  
		Size: 6.9 KB (6899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5272aad9c116a7ea46586fdee884828e9e4c5a4ff920c0e5d1af99dc220753ab`  
		Last Modified: Sat, 29 Dec 2018 17:46:07 GMT  
		Size: 39.3 MB (39344223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

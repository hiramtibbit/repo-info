## `clojure:boot-2.8.1`

```console
$ docker pull clojure@sha256:3c22b2489c0f4afb52d796af1e6a76c8e750c889bf1876a7913c98bf3080cadc
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

### `clojure:boot-2.8.1` - linux; amd64

```console
$ docker pull clojure@sha256:3c95dc539f6fe870bf7a65e2fa9ebaa0984246fa3c6ccdf15705f507157841d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.4 MB (285386821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d39f223e113d0118ddd7e56f94f7de4b3285e1399348d9565f535914356dbf4`
-	Default Command: `["bash"]`

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
# Fri, 16 Nov 2018 14:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:57:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 14:57:56 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 16 Nov 2018 14:57:56 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 14:59:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 14:59:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 06:54:08 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Sat, 17 Nov 2018 06:54:08 GMT
ENV BOOT_VERSION=2.8.1
# Sat, 17 Nov 2018 06:54:09 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Sat, 17 Nov 2018 06:54:09 GMT
WORKDIR /tmp
# Sat, 17 Nov 2018 06:54:10 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Sat, 17 Nov 2018 06:54:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Nov 2018 06:54:11 GMT
ENV BOOT_AS_ROOT=yes
# Sat, 17 Nov 2018 06:55:56 GMT
RUN boot
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
	-	`sha256:203f1094a1e2165da6f6ec505e8cffb8853d3c72a8088f41c25218121f883b0a`  
		Last Modified: Fri, 16 Nov 2018 15:56:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38d9f85cf610794355dc0458445408ded4d648cbc45984cd259611a8a72cc3`  
		Last Modified: Fri, 16 Nov 2018 15:56:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f692fae02b67cf2beabf3ef9ce647697740ba979ab16eaec12425ead1c1ddfd`  
		Last Modified: Fri, 16 Nov 2018 15:56:52 GMT  
		Size: 134.0 MB (133973083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa976dc543cb2e46a89970e2d079b99ccc3ca4b2c8e6c31adf9511ce8933950`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 246.8 KB (246754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6807eac6d763b99f46a096f62526ae10c47d17cb2fe8d3c1d30766178240a056`  
		Last Modified: Sat, 17 Nov 2018 06:58:21 GMT  
		Size: 6.9 KB (6899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b58a30368c42c30bea0661d65ba99b529894fcd89437dcc4e5070d5d4d2133a`  
		Last Modified: Sat, 17 Nov 2018 06:58:26 GMT  
		Size: 39.8 MB (39803586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.8.1` - linux; arm variant v5

```console
$ docker pull clojure@sha256:c49a952945925ae4cf94ef323828ae57c0b340755bd46371b2d8c860fe78c9f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.6 MB (268582143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:984ad361f80b535ad2df0c92030aded745e85422fb827359fa44e8d2cb7dc4b3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:59 GMT
ADD file:9400a194c6dcf24f439664aab3a28cb7dbf93753b71d2756dbaf872d294fbb8e in / 
# Tue, 16 Oct 2018 08:55:00 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:00:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:00:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:00:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:45:07 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 12:45:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 12:45:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 12:45:10 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 12:45:11 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 10:01:34 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 10:01:34 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 10:03:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 10:03:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 09:37:28 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Wed, 31 Oct 2018 09:37:28 GMT
ENV BOOT_VERSION=2.8.1
# Wed, 31 Oct 2018 09:37:28 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Wed, 31 Oct 2018 09:37:29 GMT
WORKDIR /tmp
# Wed, 31 Oct 2018 09:37:30 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Wed, 31 Oct 2018 09:37:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 31 Oct 2018 09:37:31 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 31 Oct 2018 09:41:04 GMT
RUN boot
```

-	Layers:
	-	`sha256:67cd7720dfa3de15234643bf308008813fd129e03429f026775738064b364e24`  
		Last Modified: Tue, 16 Oct 2018 09:04:05 GMT  
		Size: 44.0 MB (44033067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd276b766fa97ab74e113c92ed57093015cfc9c9030be8ba22b5e752cd8e8877`  
		Last Modified: Tue, 16 Oct 2018 10:09:36 GMT  
		Size: 9.8 MB (9810396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b000ac5a1a22a2dea4538586726677f91c42079cf289a8eb88fdf9c65fda7f6`  
		Last Modified: Tue, 16 Oct 2018 10:09:35 GMT  
		Size: 4.2 MB (4153754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934ee470e55ff8bd40b6443f001fd454b30115f4b101a17d9636ad5fb1b9a626`  
		Last Modified: Tue, 16 Oct 2018 10:11:07 GMT  
		Size: 48.3 MB (48271388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848ebfa95aa0d86f00a756135fce41a9f8379ac40b295a22d37f8b28487f2632`  
		Last Modified: Tue, 16 Oct 2018 12:55:38 GMT  
		Size: 884.6 KB (884623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14348942ef0e1b1486f90aa8ad91a3c0ef06b3de35686c8364f6a3e4bb990e7`  
		Last Modified: Tue, 16 Oct 2018 12:55:36 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407fb1e8f05c6338af21514eb6d43427f13c28db620055f9403028fb5ff09bbd`  
		Last Modified: Tue, 16 Oct 2018 12:55:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16acea2c06c1d5253fa48fae016079d915c81d3c969495e7468aa59f9cd9499`  
		Last Modified: Tue, 30 Oct 2018 10:08:41 GMT  
		Size: 121.4 MB (121371083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bac7112f111554c020b620c3a19cef9995daeb2486f62be1e0bc3ff6c2d0209`  
		Last Modified: Tue, 30 Oct 2018 10:08:11 GMT  
		Size: 246.8 KB (246750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedd8b404d2d162b96687992bda4b7a62bd942908de939877d0cd925a7e28996`  
		Last Modified: Wed, 31 Oct 2018 09:44:33 GMT  
		Size: 6.9 KB (6900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d98236ccbd619ff3f9bb01faed6e0b7c7e5a97267d3c35c4836c4995e768c39f`  
		Last Modified: Wed, 31 Oct 2018 09:44:42 GMT  
		Size: 39.8 MB (39803802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.8.1` - linux; arm variant v7

```console
$ docker pull clojure@sha256:03e8eab6969f6abb12b8c486586bf83698c5fabdc1ba0be7aa03423fcbd5cba9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.3 MB (297306925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:113683e8e913049a6b05a750a13d04a5a50fff235b81d6f3cd09599439ac89c9`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:14:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:02:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:02:21 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 13:02:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 13:02:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 13:02:24 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 13:02:24 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 13:02:25 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 13:02:25 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:03:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:03:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 15:50:55 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Tue, 31 Jul 2018 12:07:16 GMT
ENV BOOT_VERSION=2.8.1
# Tue, 31 Jul 2018 12:07:16 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 31 Jul 2018 12:07:16 GMT
WORKDIR /tmp
# Tue, 31 Jul 2018 12:07:18 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 31 Jul 2018 12:07:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 31 Jul 2018 12:07:18 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 31 Jul 2018 12:08:24 GMT
RUN boot
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10d0f9a54b8549a5831d24a81b301ee1e1112ba6045a85ab02050edbbeb9e96`  
		Last Modified: Sat, 05 May 2018 12:36:20 GMT  
		Size: 46.4 MB (46351195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9cf2597c5534c6b8fa92e7c2ccefb5f8d61e783c3ee00f9a42f08acdd0732e0`  
		Last Modified: Sat, 05 May 2018 13:30:34 GMT  
		Size: 867.9 KB (867879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f50a3154b114c80552aa6550bc5f76d6fc6922fb46c71c09723410e47c3a61f`  
		Last Modified: Sat, 05 May 2018 13:30:33 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a276ab88cf860d6a3819c09c09c71b847abe2606d322863776761f5bb0267332`  
		Last Modified: Sat, 05 May 2018 13:30:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a81ce76fdab6754bfcb98f674951b3eb2b338caf570a9df6a8afabaccdd438`  
		Last Modified: Sat, 05 May 2018 13:31:20 GMT  
		Size: 154.6 MB (154556031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16abac704ab259ff7bac79f8aa82dc45cae282ef903099a1c696bce2f0a91ab`  
		Last Modified: Sat, 05 May 2018 13:30:33 GMT  
		Size: 272.1 KB (272067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60551d0f5423766ef00b49019d529d14f57b0e6e140e15af011c80ccccea4360`  
		Last Modified: Tue, 31 Jul 2018 12:09:09 GMT  
		Size: 6.9 KB (6900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d928fd52150f3cc2684fe4ebaeedc34ccf9954ff00d26d0d2586c2503df1fe16`  
		Last Modified: Tue, 31 Jul 2018 12:09:15 GMT  
		Size: 39.8 MB (39803427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.8.1` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d01056db23addb901902f7356601312d67d60c7beb15143b1adfecfa3f6674cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.1 MB (268120991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3c0cc83035c847a71562850c2a27840758dba05c17969407c3af66df688598d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:02:59 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 22:03:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 22:03:04 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 22:03:05 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 22:03:06 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:01:26 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:01:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:04:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:04:57 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:17:09 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Tue, 30 Oct 2018 14:17:11 GMT
ENV BOOT_VERSION=2.8.1
# Tue, 30 Oct 2018 14:17:13 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 30 Oct 2018 14:17:14 GMT
WORKDIR /tmp
# Tue, 30 Oct 2018 14:17:17 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 30 Oct 2018 14:17:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 30 Oct 2018 14:17:19 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 30 Oct 2018 14:18:54 GMT
RUN boot
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572533d310055ca506af51db699ecddf742195aa194d408e0e44da0f97ce4bca`  
		Last Modified: Tue, 16 Oct 2018 12:27:03 GMT  
		Size: 48.0 MB (48004319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1094229a8274a39b9241b5314653503769fd6cfb5c799c539af287b3c7e702b`  
		Last Modified: Tue, 16 Oct 2018 22:25:13 GMT  
		Size: 877.5 KB (877499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9976419192a7e34c05d1ababf3e3a9cc822c04251aaacaa02d10dbd19cc722`  
		Last Modified: Tue, 16 Oct 2018 22:25:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615288d8ebcbb4419d2e3d1210f1c632e6b8a9c3578a0b23e7992cbc80526192`  
		Last Modified: Tue, 16 Oct 2018 22:25:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8dcd046fa50f391b526548a2370e44b0206ca39d65e8237aefc20bb4fe88454`  
		Last Modified: Tue, 30 Oct 2018 09:18:18 GMT  
		Size: 122.3 MB (122279261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832151a3417601c01bc7ae29b1d078f6f7ae2aa33594ae1fca7316c8915dab9c`  
		Last Modified: Tue, 30 Oct 2018 09:17:12 GMT  
		Size: 246.7 KB (246701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9c64dcd99c134f41c73c8d842f01de85b2be9de7d152cf328d16c6d11c009e`  
		Last Modified: Tue, 30 Oct 2018 14:22:17 GMT  
		Size: 6.9 KB (6899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bd869470b3c86e07f7b483b2ce40b80a4b138c2a92928aaa1bab024ea3062ca`  
		Last Modified: Tue, 30 Oct 2018 14:22:24 GMT  
		Size: 39.8 MB (39803532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.8.1` - linux; 386

```console
$ docker pull clojure@sha256:b84e2a42166cb19ff84a8d1230ff7102ae0ac54a5f1a368acf9615ebcc762915
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.0 MB (287993981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b75e4a5b874226f0cc89c16a2c9da181a3d5f6e12e05f26d7a751e41ea7506b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:30:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 21:31:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 03:35:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 03:35:25 GMT
ENV LANG=C.UTF-8
# Wed, 17 Oct 2018 03:35:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 17 Oct 2018 03:35:26 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 17 Oct 2018 03:35:26 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 17 Oct 2018 03:35:26 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 11:07:40 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 11:07:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 11:08:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 11:08:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:34:14 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Tue, 30 Oct 2018 14:34:15 GMT
ENV BOOT_VERSION=2.8.1
# Tue, 30 Oct 2018 14:34:15 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 30 Oct 2018 14:34:15 GMT
WORKDIR /tmp
# Tue, 30 Oct 2018 14:34:16 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 30 Oct 2018 14:34:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 30 Oct 2018 14:34:17 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 30 Oct 2018 14:35:32 GMT
RUN boot
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d8b973c47bc2b9e663e0405a9b6c4923e7edd886f9352807642bd012741c7b`  
		Last Modified: Tue, 16 Oct 2018 21:46:21 GMT  
		Size: 10.8 MB (10752717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc96b1bed2761a443ab819cbb860219f45d0a8bd03334cd84a81ee97399ee0`  
		Last Modified: Tue, 16 Oct 2018 21:46:19 GMT  
		Size: 4.6 MB (4555326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca2adee749cf61e87ad8f85cd93969430e26d9213412dd06fc7edf5cba2eb00`  
		Last Modified: Tue, 16 Oct 2018 21:47:11 GMT  
		Size: 51.6 MB (51593319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e022666f0ba9d377e7807514bb96832faad596cfe57d200e039e1c37b3d4775b`  
		Last Modified: Wed, 17 Oct 2018 03:49:34 GMT  
		Size: 900.0 KB (899993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c415dbab8af9b50d2792a581b299600f51e164ec204104b739053421d869df`  
		Last Modified: Wed, 17 Oct 2018 03:49:34 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e07ccc580066f2d895869f4bab3daf1fc87e8a3dc674d4898fb743851550f2a`  
		Last Modified: Wed, 17 Oct 2018 03:49:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28723e22257c08f31075593ab49996eafe11be0a2010a23617c5732f71dfb524`  
		Last Modified: Tue, 30 Oct 2018 11:12:45 GMT  
		Size: 134.1 MB (134096030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ced791f812d2782e8c826e0a7a39e2e35ba778795431b5dc2cea734e4956c6a`  
		Last Modified: Tue, 30 Oct 2018 11:12:19 GMT  
		Size: 246.7 KB (246703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa99064feb56f1d68afe584c7c346cf08214e49bcebb49df2844d81ea8a5463`  
		Last Modified: Tue, 30 Oct 2018 14:37:32 GMT  
		Size: 6.9 KB (6899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451480e908bae4508a9bea497f630315f5e2f0a8a75f9d3bc8acfc775708a774`  
		Last Modified: Tue, 30 Oct 2018 14:37:36 GMT  
		Size: 39.8 MB (39803393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.8.1` - linux; ppc64le

```console
$ docker pull clojure@sha256:2f2fcf17dcf37f43965c90cd35bb37173952e2acf84a731f13402fea3180878a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (274974234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:042b0a1003f2bd802acc45fec2895213cbeffb5033dfa281fc1d65efdaf0481e`
-	Default Command: `["bash"]`

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
# Fri, 16 Nov 2018 22:07:06 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 22:07:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 22:07:12 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 22:07:13 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 22:07:15 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 22:07:17 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 16 Nov 2018 22:07:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 22:10:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 22:11:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 05:10:44 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Sat, 17 Nov 2018 05:10:45 GMT
ENV BOOT_VERSION=2.8.1
# Sat, 17 Nov 2018 05:10:47 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Sat, 17 Nov 2018 05:10:50 GMT
WORKDIR /tmp
# Sat, 17 Nov 2018 05:10:54 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Sat, 17 Nov 2018 05:11:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Nov 2018 05:11:04 GMT
ENV BOOT_AS_ROOT=yes
# Sat, 17 Nov 2018 05:14:29 GMT
RUN boot
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
	-	`sha256:0c508dc59cd1fa7d4ce5d137025c6418ecb48295c3bdc1962ecc312e5c3d8b24`  
		Last Modified: Fri, 16 Nov 2018 22:47:25 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec055d409bf54d544bc86c293fb21507b0144a3c9d86a7e89e0e1454bb39ab4`  
		Last Modified: Fri, 16 Nov 2018 22:47:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f427f79fdd67bcb1702b8a5bd8d9f038db747050ef34a13c556c8821ff8924`  
		Last Modified: Fri, 16 Nov 2018 22:48:25 GMT  
		Size: 124.1 MB (124113942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ba3d2b6d2b99c380f402b9bc8662460bf83a5e10035b1c29e16bc899b37ab8`  
		Last Modified: Fri, 16 Nov 2018 22:47:25 GMT  
		Size: 246.6 KB (246637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9145e5f6155c38c02a73db6a6bc75660e38c375a552584c83f7b67b041e4a8ec`  
		Last Modified: Sat, 17 Nov 2018 05:16:19 GMT  
		Size: 6.9 KB (6899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d135523555f89b919283b209043ddf49d437bd785e21270abfccdcf5d3f163a4`  
		Last Modified: Sat, 17 Nov 2018 05:16:23 GMT  
		Size: 39.8 MB (39803730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.8.1` - linux; s390x

```console
$ docker pull clojure@sha256:544a5cf28562bf0019ff131fd996dc9577309bac47a42cc75aff6f0ee6776340
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275025496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0518a3fe8dcf9883638127951711c476f8bb50e7be8069140c07eed99bfec8d0`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:17:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:17:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 20:18:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:52:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:52:24 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 20:52:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 20:52:26 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 20:52:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 20:52:26 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 20:52:27 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 16 Nov 2018 20:52:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 20:53:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 20:53:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 07:09:31 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Sat, 17 Nov 2018 07:09:31 GMT
ENV BOOT_VERSION=2.8.1
# Sat, 17 Nov 2018 07:09:32 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Sat, 17 Nov 2018 07:09:32 GMT
WORKDIR /tmp
# Sat, 17 Nov 2018 07:09:33 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Sat, 17 Nov 2018 07:09:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Nov 2018 07:09:33 GMT
ENV BOOT_AS_ROOT=yes
# Sat, 17 Nov 2018 07:11:32 GMT
RUN boot
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203080e34787e21c4c72a0bf78364320cb3fbabf324e473daeab90f86995aa97`  
		Last Modified: Fri, 16 Nov 2018 20:23:29 GMT  
		Size: 10.3 MB (10267982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afc14212b1fc39cd1e0f3502f09aa3d06c2e21dbb46e96108bbdf3a4f43625e`  
		Last Modified: Fri, 16 Nov 2018 20:23:28 GMT  
		Size: 4.4 MB (4371951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb1ee8d768a3204c0d5c5b95862c29567826a0cd7348e6de56fe45fa2327274`  
		Last Modified: Fri, 16 Nov 2018 20:23:53 GMT  
		Size: 50.5 MB (50484086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb954acf51977315440c17e18ae722a8a64f600fe35169a6f0ae52c0d86c25dd`  
		Last Modified: Fri, 16 Nov 2018 21:09:21 GMT  
		Size: 903.5 KB (903456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869a822ec818af6a49aa251f803f6491c18ab21015c5ccff12f39b174979a529`  
		Last Modified: Fri, 16 Nov 2018 21:09:20 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ab072ec9ad1f77e8f04e4cf9ac6efe0e69eff5cf2428ccd9cc61e74087bd8e`  
		Last Modified: Fri, 16 Nov 2018 21:09:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6520a0e20dfbb4c03b7db4dbdb893fafeea912b3592890e31183d326d906cf4`  
		Last Modified: Fri, 16 Nov 2018 21:09:57 GMT  
		Size: 123.7 MB (123735580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7edda1a0eac94e712e16c0ecf0f598e103db47763c9384462bf65d4e42630c`  
		Last Modified: Fri, 16 Nov 2018 21:09:20 GMT  
		Size: 246.7 KB (246691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78622ad30a598614a0f37f5e5032b9f2f615d2ccf87d8a2bc4198b736e46b0bc`  
		Last Modified: Sat, 17 Nov 2018 07:12:47 GMT  
		Size: 6.9 KB (6897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c252af95cdfae60c30c330b19c1f1bc8dc7bfab4ea0522f6d5b85cbb4f3b60da`  
		Last Modified: Sat, 17 Nov 2018 07:12:50 GMT  
		Size: 39.8 MB (39803654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

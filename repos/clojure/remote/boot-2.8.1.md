## `clojure:boot-2.8.1`

```console
$ docker pull clojure@sha256:3d1054c45c532943508083091c332be226c661daf0eedeab883ce0387b990a6c
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
$ docker pull clojure@sha256:75e0835ad83670826e948b69386f5e490ad8f8e64f10aed59160cae37dc9650a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.4 MB (285386821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11479b199591ba46e1340dcb93225811aad826a164f4f18f2bdf15a65230f04c`
-	Default Command: `["boot","repl"]`

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
# Fri, 30 Nov 2018 00:22:07 GMT
CMD ["boot" "repl"]
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
$ docker pull clojure@sha256:e1ed61259f82d4db0cb638e01f07b5145ac9015489e2d0232275a6b2a6e45025
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.6 MB (268575961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4960fbbf139e51e6466713e55f18a89ff61d08b1d53c70ae0f501b2680cc1458`
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
# Wed, 21 Nov 2018 10:23:10 GMT
ENV LANG=C.UTF-8
# Wed, 21 Nov 2018 10:23:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 21 Nov 2018 10:23:13 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 21 Nov 2018 10:23:16 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 21 Nov 2018 10:23:17 GMT
ENV JAVA_VERSION=8u181
# Wed, 21 Nov 2018 10:23:17 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 21 Nov 2018 10:23:17 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 21 Nov 2018 10:25:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 21 Nov 2018 10:25:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 21 Nov 2018 10:53:33 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Wed, 21 Nov 2018 10:53:34 GMT
ENV BOOT_VERSION=2.8.1
# Wed, 21 Nov 2018 10:53:34 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Wed, 21 Nov 2018 10:53:34 GMT
WORKDIR /tmp
# Wed, 21 Nov 2018 10:53:36 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Wed, 21 Nov 2018 10:53:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Nov 2018 10:53:36 GMT
ENV BOOT_AS_ROOT=yes
# Wed, 21 Nov 2018 10:57:28 GMT
RUN boot
# Fri, 30 Nov 2018 09:48:50 GMT
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
	-	`sha256:1cba9d75675ef715d2cb312d635a26a24c09e0c5c5f105b8cb952e041811fc58`  
		Last Modified: Wed, 21 Nov 2018 10:33:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12db7e87dcb35e731ccd3d4d9779710d0ffee5b331f39ba13e1959ca80fbd8d5`  
		Last Modified: Wed, 21 Nov 2018 10:33:56 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d53f2f28078dd7700fdb32b72a5c42811f97aa54fa8d19334907eb33155ab5a`  
		Last Modified: Wed, 21 Nov 2018 10:34:28 GMT  
		Size: 121.4 MB (121360218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41caa05abc1ea5b05c76ac5c8c53338b58c4b5e1e684b3a46fceafaa66a0a1bf`  
		Last Modified: Wed, 21 Nov 2018 10:33:56 GMT  
		Size: 246.7 KB (246749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703fef9f3310f4d18567a52645340ecedae4f86fed6a5b6fdceb21e0c9eeee69`  
		Last Modified: Wed, 21 Nov 2018 10:59:22 GMT  
		Size: 6.9 KB (6898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621ffd0c0a560a24b809eb1ebfcb30a91725036dcf1ed8d5cc13e54139220606`  
		Last Modified: Wed, 21 Nov 2018 10:59:29 GMT  
		Size: 39.8 MB (39803933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.8.1` - linux; arm variant v7

```console
$ docker pull clojure@sha256:970a02458d90bb7c2f657ce163f47f6c558c6576da2d8442ed4dcb115c3dfd52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.3 MB (297306925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f97eb0ba9e8bbab697a5e48e25f225bd5aa058ca1a24ea6d08548c9dd41cc9`
-	Default Command: `["boot","repl"]`

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
# Fri, 30 Nov 2018 12:57:35 GMT
CMD ["boot" "repl"]
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
$ docker pull clojure@sha256:449689072e55f48461be41d5c053ed20204cdadb3781cf9559e53094df38b6fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.1 MB (268116362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad8b5325e767574715457e49fbadb1ca3815371c087ca235842107d765a70f9b`
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
# Sat, 17 Nov 2018 04:55:01 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:55:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 04:55:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 04:55:07 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 04:55:08 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 04:55:09 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 17 Nov 2018 04:55:09 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 17 Nov 2018 05:00:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 05:00:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 20:20:46 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Sat, 17 Nov 2018 20:20:47 GMT
ENV BOOT_VERSION=2.8.1
# Sat, 17 Nov 2018 20:20:48 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Sat, 17 Nov 2018 20:20:48 GMT
WORKDIR /tmp
# Sat, 17 Nov 2018 20:20:51 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Sat, 17 Nov 2018 20:20:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Nov 2018 20:20:52 GMT
ENV BOOT_AS_ROOT=yes
# Sat, 17 Nov 2018 20:23:02 GMT
RUN boot
# Fri, 30 Nov 2018 09:40:21 GMT
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
	-	`sha256:876730cf1334a2cb7ffe4ceeae8358b70bb126b397ba016f85a82a1cf572ce74`  
		Last Modified: Sat, 17 Nov 2018 05:46:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2dcc6ac60eed4ff55f4d3058d913a9af223a27175aff2fb734f7ba0123d28e`  
		Last Modified: Sat, 17 Nov 2018 05:46:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddefc3463fd15b5228fa685f5fd713da126cadb89e1d03f21d3282f56737cdd9`  
		Last Modified: Sat, 17 Nov 2018 05:47:05 GMT  
		Size: 122.3 MB (122276122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b2a53d65300e1d9d173f1e28a7455a84ca3a8d0579f3fdf28e3bedcecb7777`  
		Last Modified: Sat, 17 Nov 2018 05:46:26 GMT  
		Size: 246.7 KB (246701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f692a6e00248e75f23f7837bf07d5e405ca3fbcc7490b3cd0f4cb098b65d366a`  
		Last Modified: Sat, 17 Nov 2018 20:24:45 GMT  
		Size: 6.9 KB (6899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809f45e5b026c215488021911f5386fc7076ee081c1cbef3580aa15d2dbbc386`  
		Last Modified: Sat, 17 Nov 2018 20:24:55 GMT  
		Size: 39.8 MB (39803561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.8.1` - linux; 386

```console
$ docker pull clojure@sha256:cb912897852b04e4645e314dbe7ccefc5719903052a94d065c09d6d68c42147c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.0 MB (288005757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6be00308ec4a15b623f7965543089f1f794c158362e731469169a158962cd03d`
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
# Sat, 17 Nov 2018 14:00:58 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 14:00:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 14:01:00 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 14:01:01 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 14:01:01 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 14:01:01 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 17 Nov 2018 14:01:02 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 17 Nov 2018 14:02:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 14:02:31 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sun, 18 Nov 2018 02:11:10 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Sun, 18 Nov 2018 02:11:11 GMT
ENV BOOT_VERSION=2.8.1
# Sun, 18 Nov 2018 02:11:11 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Sun, 18 Nov 2018 02:11:11 GMT
WORKDIR /tmp
# Sun, 18 Nov 2018 02:11:12 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Sun, 18 Nov 2018 02:11:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 18 Nov 2018 02:11:12 GMT
ENV BOOT_AS_ROOT=yes
# Sun, 18 Nov 2018 02:12:44 GMT
RUN boot
# Fri, 30 Nov 2018 11:39:52 GMT
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
	-	`sha256:73a2c2bfc99cdd99c45256a594624d53acd213ea498433cf7c23a481a0feadb5`  
		Last Modified: Sat, 17 Nov 2018 14:47:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3824eb9924abfefee33e1266319a69ffac6bbb676cc6950b976610f47406fe22`  
		Last Modified: Sat, 17 Nov 2018 14:47:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71dece1dd81fc5100938afdb8aad58a8638a1f95373d987f38e519282b3a325a`  
		Last Modified: Sat, 17 Nov 2018 14:47:34 GMT  
		Size: 134.1 MB (134087543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f09a0148c8f81c3c9b90d7a46ce71a1e54ed83850830dd0a3316c0b11651ae`  
		Last Modified: Sat, 17 Nov 2018 14:47:04 GMT  
		Size: 246.8 KB (246779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3af229a9919970726a63aaa8932d0da1b736ab503f2ddfa55d763cdae482cc`  
		Last Modified: Sun, 18 Nov 2018 02:13:41 GMT  
		Size: 6.9 KB (6894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106a46fa5a1d583b5a154d8f9dc0d6a1f137e4052eb86d6f673a25ac9fb44f68`  
		Last Modified: Sun, 18 Nov 2018 02:13:46 GMT  
		Size: 39.8 MB (39803632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.8.1` - linux; ppc64le

```console
$ docker pull clojure@sha256:5bc5e05be4457b251531a447b468d85d3228ed93658948d56a0a2916e9de8c86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (274974234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a12dd2302d9fbe90e90e86454a560fc39000258270862b5979ee9c27416f8102`
-	Default Command: `["boot","repl"]`

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
# Fri, 30 Nov 2018 09:27:48 GMT
CMD ["boot" "repl"]
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
$ docker pull clojure@sha256:a9a35e78dc95e55eb01299089cacae1ee3de33b0c111ac212da71d248ea78577
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275025496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d375cfda9ccf5fe16193381ad9d019dc75b8c081beb684b699ce8f5a5768e06`
-	Default Command: `["boot","repl"]`

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
# Fri, 30 Nov 2018 12:41:51 GMT
CMD ["boot" "repl"]
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

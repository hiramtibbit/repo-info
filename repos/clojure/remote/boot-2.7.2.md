## `clojure:boot-2.7.2`

```console
$ docker pull clojure@sha256:29a35bdd46f758f04dc90580596b9fb82cb804fa98071c2776ee5d6c92b19cef
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

### `clojure:boot-2.7.2` - linux; amd64

```console
$ docker pull clojure@sha256:73137ed2251c78f2fe4e7b9f9d715c636d27e4f490ffd4d4225368f2288c9faa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.1 MB (328087608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d20cd230430ff6802a00a134b709a9e8cb780c7eccdec6d7e663c8ccba9b1782`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 03:56:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:17:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:17:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:17:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:17:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:17:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:18:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:18:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 17:16:18 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 15 Feb 2018 17:16:18 GMT
ENV BOOT_VERSION=2.7.2
# Thu, 15 Feb 2018 17:16:19 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Thu, 15 Feb 2018 17:16:19 GMT
WORKDIR /tmp
# Thu, 15 Feb 2018 17:16:20 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Thu, 15 Feb 2018 17:16:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 15 Feb 2018 17:16:21 GMT
ENV BOOT_AS_ROOT=yes
# Thu, 15 Feb 2018 17:18:02 GMT
RUN boot
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e99216b7ade69e485ea213e61a54528fde48b4dc4cf05715fa3492b9dad3f1`  
		Last Modified: Thu, 15 Feb 2018 04:41:14 GMT  
		Size: 50.0 MB (50022692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e688b2d72158e454f2bbb324aa92263cb6dcc782e7ff5f700b94cc1f2b16131`  
		Last Modified: Thu, 15 Feb 2018 13:42:49 GMT  
		Size: 892.1 KB (892065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e9ec3ed749a92de10f82502b1fc6da0a67f646988435dcb2bf232ba9c38b92`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd3ba26786476877c00c53a3abab5d25ba03ea1293a589e4a32aa955d7ceb2d`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5672be24157fde538cf58b4df4a0c8c1b02b9f66fe0bca510e758230a276dc06`  
		Last Modified: Thu, 15 Feb 2018 13:43:28 GMT  
		Size: 182.9 MB (182907087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5307d6ff27ac265ed9022a799a47e4d74086dc051ca0de5c9ae36e1b5679ba`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 272.1 KB (272094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375c5309f356cef845e8b2b9bd84e5d1c8fadfcc8b484e9328da338ac7840858`  
		Last Modified: Thu, 15 Feb 2018 17:20:45 GMT  
		Size: 6.9 KB (6895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90608cc4eba2a9a66f5d466ec3d4a4be215b5e3159c4813eb084125dcc40a02a`  
		Last Modified: Thu, 15 Feb 2018 17:20:49 GMT  
		Size: 33.4 MB (33410521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.7.2` - linux; arm variant v5

```console
$ docker pull clojure@sha256:e4f6728c44f6e2d01889dffd83370f1f168c4761cf31ead16ee538afb6620035
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.8 MB (292825025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd1d871df546dd08821838a6f98ec0c3a17fd36171957391535d2fc60f53f40f`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:04 GMT
ADD file:9b55f7842213fac6c45e64fd742a0d28f0b11a4d7e9a9e76d85eac96922d84dd in / 
# Thu, 15 Feb 2018 21:00:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:43:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:45:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:45:15 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 00:45:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 00:45:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 00:45:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 00:46:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 00:46:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 02:59:09 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Fri, 16 Feb 2018 02:59:10 GMT
ENV BOOT_VERSION=2.7.2
# Fri, 16 Feb 2018 02:59:10 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Fri, 16 Feb 2018 02:59:16 GMT
WORKDIR /tmp
# Fri, 16 Feb 2018 02:59:17 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Fri, 16 Feb 2018 02:59:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 16 Feb 2018 02:59:18 GMT
ENV BOOT_AS_ROOT=yes
# Fri, 16 Feb 2018 03:03:16 GMT
RUN boot
```

-	Layers:
	-	`sha256:0fe3809766afc6e60be7b2e9b8874666da1dac184bea1d9ee6d9de13ac28e501`  
		Last Modified: Thu, 15 Feb 2018 21:10:11 GMT  
		Size: 43.8 MB (43814325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9633086ab8bf9b644f2e526c1e31a653b237dd394e966e68cd869ac721123ba4`  
		Last Modified: Thu, 15 Feb 2018 21:54:22 GMT  
		Size: 10.2 MB (10206359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74cc7a63d9a1f4d3228550a6f08da560d0d43c11c89fabaebafbcf284452351`  
		Last Modified: Thu, 15 Feb 2018 21:54:18 GMT  
		Size: 4.2 MB (4153085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb32a30ad89dee863e7a994617b921fc42bbbe95108dd650924f5d3226d98829`  
		Last Modified: Thu, 15 Feb 2018 21:55:01 GMT  
		Size: 48.2 MB (48233272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e02510e456e4ceb8f1aa7c6e05f42498d0c8d03fd2802095685fa845a54419`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 884.4 KB (884404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1497a8a1c2a040ea700da02e8531f9088aaa527abdf4da9668db3845b6c131f6`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6d2a839d95b8107f579aa44ce5c90bc979c497777fa8f8bb6b386dd5632cf3`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c6048eec32ddeea870823e3817f0dd8423178450eed16066e70938a70eeb4a`  
		Last Modified: Fri, 16 Feb 2018 01:00:21 GMT  
		Size: 151.8 MB (151843248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d176a6463bf1118edb106d2d9a57a8b272a31d8b10c92990b825cf4e511a0ce6`  
		Last Modified: Fri, 16 Feb 2018 00:59:43 GMT  
		Size: 272.2 KB (272189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f020a4d82170593f0eb8dd1bd78e66f7971c9b8576f1008aa8943d2c28b183`  
		Last Modified: Fri, 16 Feb 2018 03:05:06 GMT  
		Size: 6.9 KB (6899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2160e2fa32695f990da3e86d4e6fed75e0a089d8735cef9740d99aa1cfd1ba2c`  
		Last Modified: Fri, 16 Feb 2018 03:05:11 GMT  
		Size: 33.4 MB (33410865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.7.2` - linux; arm variant v7

```console
$ docker pull clojure@sha256:a8c4170efebe00096d1638cf35f822e6d2107585ee8725eaa711e56e13e131b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.3 MB (301250639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb9c8c09c5ae9940e998a1fe5c66addf2faacfba01644017884a8658b7a0759d`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:30:55 GMT
ADD file:58c4e4829c3db6bdb6063ee3ca04776b696772f592f70cb29d5196788c3608da in / 
# Thu, 15 Feb 2018 13:30:56 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:14:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 14:15:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 15:05:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 15:05:01 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 15:05:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 15:05:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 15:05:03 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 15:05:03 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 15:05:04 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 15:05:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 15:05:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 15:05:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 18:41:17 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 15 Feb 2018 18:41:17 GMT
ENV BOOT_VERSION=2.7.2
# Thu, 15 Feb 2018 18:41:17 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Thu, 15 Feb 2018 18:41:18 GMT
WORKDIR /tmp
# Thu, 15 Feb 2018 18:41:19 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Thu, 15 Feb 2018 18:41:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 15 Feb 2018 18:41:20 GMT
ENV BOOT_AS_ROOT=yes
# Thu, 15 Feb 2018 18:42:36 GMT
RUN boot
```

-	Layers:
	-	`sha256:c0518139464abb63e1069cd4c638aad760a6cb319660ae2229921b17c703441b`  
		Last Modified: Thu, 15 Feb 2018 13:40:56 GMT  
		Size: 41.9 MB (41859666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72be4c519488d3f9c0893c7e4aa66f806292ac98c1f509b4387b4eb8e4789e9a`  
		Last Modified: Thu, 15 Feb 2018 14:24:47 GMT  
		Size: 9.8 MB (9824909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e5a3e5bf5f97b01c2bf09851057f8cc68748d43fdde36477492ec435aabd55`  
		Last Modified: Thu, 15 Feb 2018 14:24:46 GMT  
		Size: 3.9 MB (3912530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5727b344ba95e9bd04f25fd92a97ede236a31569adaee62ca3843b214d4d7d3`  
		Last Modified: Thu, 15 Feb 2018 14:25:27 GMT  
		Size: 46.3 MB (46346480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917946f878a23cc8936781cebbf03e6b4152d74fe1fd22a58a5e42422cf733a0`  
		Last Modified: Thu, 15 Feb 2018 15:36:29 GMT  
		Size: 867.5 KB (867523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d652be9c34abb1e5b739d0cbdfca99186ea789cc4cf788e755ddf11e2cfa58`  
		Last Modified: Thu, 15 Feb 2018 15:36:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d51dfbd71fdd5d3df9b94019138e224d07351875e591e982c2cc8f01b4c000`  
		Last Modified: Thu, 15 Feb 2018 15:36:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f5a1789acf2fc3cb8c72f4b544182dc991e1d7eed7e45170b9c055bee16934`  
		Last Modified: Thu, 15 Feb 2018 15:37:10 GMT  
		Size: 164.7 MB (164749621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25211e5b66588cf8045fa565a8454fc81ea115b3fa4990b1065cd5bf258109cb`  
		Last Modified: Thu, 15 Feb 2018 15:36:29 GMT  
		Size: 272.1 KB (272071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f07b1953724a7cfa6330b19b60c165fb236bf2261788233e2716279ee6f1264`  
		Last Modified: Thu, 15 Feb 2018 18:44:30 GMT  
		Size: 6.9 KB (6899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64bec32f09880d7594e6f7147f6222e9874437aebbb5a64ec27d616b129de3e`  
		Last Modified: Thu, 15 Feb 2018 18:44:35 GMT  
		Size: 33.4 MB (33410561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.7.2` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7c2e82290c682c6cc1cd8efb5fd589b9e0e45de3f8e72c505d5de8bab8fe1c7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.7 MB (307675978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eebc2d00ed22038ba4d40d00dbc02c35ec9e2ff86c2137b3142820332b8db551`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:49:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 19:51:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:34:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:34:52 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:34:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:35:08 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:35:11 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 22:35:14 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 22:35:19 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 22:35:22 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 22:40:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:41:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 11:03:15 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Fri, 16 Feb 2018 11:03:15 GMT
ENV BOOT_VERSION=2.7.2
# Fri, 16 Feb 2018 11:03:16 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Fri, 16 Feb 2018 11:03:17 GMT
WORKDIR /tmp
# Fri, 16 Feb 2018 11:03:19 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Fri, 16 Feb 2018 11:03:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 16 Feb 2018 11:03:20 GMT
ENV BOOT_AS_ROOT=yes
# Fri, 16 Feb 2018 11:04:56 GMT
RUN boot
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7310b14179e155997ab4625e06eb59600ea20b500835fe5bdca17a52d61e1c45`  
		Last Modified: Thu, 15 Feb 2018 20:15:23 GMT  
		Size: 10.1 MB (10066614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785fa2a238ab89b203751335a74784cdb5ea9d78eabac46ce433ef327d7ff1db`  
		Last Modified: Thu, 15 Feb 2018 20:15:21 GMT  
		Size: 4.1 MB (4087808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a434d283e1e20068621bb55d760d5ea6ba21944e93cd241761d5ebfd5cfdd3`  
		Last Modified: Thu, 15 Feb 2018 20:16:18 GMT  
		Size: 48.0 MB (47983036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5701b94a7967fd1d7bf8631e37bc8d9f8fe0de4e901cada1f5402e63b4a384ff`  
		Last Modified: Thu, 15 Feb 2018 23:21:43 GMT  
		Size: 877.4 KB (877372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e3501074eb3ba85476134921d596116b98cf370561c542194381cfacd8b746`  
		Last Modified: Thu, 15 Feb 2018 23:21:42 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23169740c7326bea1026f13a51d61795a5fc938e4da719fc52f02aedb0b79b89`  
		Last Modified: Thu, 15 Feb 2018 23:21:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52cbd8d39395028ea9c403d6cccd092a3092927cf4088bf16df52c138aac5e1`  
		Last Modified: Thu, 15 Feb 2018 23:22:32 GMT  
		Size: 168.0 MB (168049508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc70b8f575025075d0bc58b2c6b73d3d819804704cbe08e0a1c65e83b4021fd2`  
		Last Modified: Thu, 15 Feb 2018 23:21:43 GMT  
		Size: 272.1 KB (272091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf7a246006928c8317ff612f6f323b9a217a71728bbdeb3a6254139da316cb6`  
		Last Modified: Fri, 16 Feb 2018 11:07:25 GMT  
		Size: 6.9 KB (6899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8151e11c768e579e141b841eb945dd41f64555ec776868e5f7fc58aed85961e2`  
		Last Modified: Fri, 16 Feb 2018 11:07:31 GMT  
		Size: 33.4 MB (33410362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.7.2` - linux; 386

```console
$ docker pull clojure@sha256:595b7a9a05a8cac1ea6c62717a1cf01cff2e7b1b5542b67c380d05cec54ff5ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.1 MB (333142320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05f29cea2237f44b564a35ee42f51d7bedc04a8f16e54b671795a05531cb8a17`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 09:03:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 09:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 09:13:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:26:48 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:26:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:26:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:26:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 18:26:51 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:26:51 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:26:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 18:28:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 18:28:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sun, 18 Feb 2018 20:49:29 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Sun, 18 Feb 2018 20:49:30 GMT
ENV BOOT_VERSION=2.7.2
# Sun, 18 Feb 2018 20:49:30 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Sun, 18 Feb 2018 20:49:30 GMT
WORKDIR /tmp
# Sun, 18 Feb 2018 20:49:34 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Sun, 18 Feb 2018 20:49:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 18 Feb 2018 20:49:34 GMT
ENV BOOT_AS_ROOT=yes
# Sun, 18 Feb 2018 20:51:58 GMT
RUN boot
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b842c4f12ce193c6669f6d0ce38aec19cf0f2c7adb70daf9ead694218a108708`  
		Last Modified: Fri, 16 Feb 2018 11:35:51 GMT  
		Size: 11.2 MB (11150751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3c168f821c9302872e46de652da9ba7965adf0095f1b6e5adbdd7c9bd6710c`  
		Last Modified: Fri, 16 Feb 2018 11:35:49 GMT  
		Size: 4.6 MB (4554693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9476a4303288bf3216074e1391fd34e057694d8f8cfd65e8a6a331838eb084a`  
		Last Modified: Fri, 16 Feb 2018 11:40:16 GMT  
		Size: 51.6 MB (51553959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47dae246ed9875942ba48169bb8923441909f100eb5cd149a3b96c869a6eb7e`  
		Last Modified: Sat, 17 Feb 2018 09:27:18 GMT  
		Size: 899.8 KB (899771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995b7dba947c990ca9a57c9d59534af7306fc16da72038431e1c58047f3f338d`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e245a67281929abe4df93d1f0bd098d54b454f6a08969c9f82a07a94f45770be`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91921fcaad9a2b44ee7787137a6a7e68449747a1c367526d52fc84923bd7e27f`  
		Last Modified: Sat, 17 Feb 2018 09:28:08 GMT  
		Size: 185.5 MB (185455309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c0f164c79346852e9965d801fed8eb09809861cfd6303bcdb23a241291ceca`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 272.2 KB (272182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ed012c3abe3979c2c6eba701db34c57d11b16dfcbf8d5fe876b06697b596b3`  
		Last Modified: Sun, 18 Feb 2018 21:35:19 GMT  
		Size: 6.9 KB (6899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd804e2d2deda10799e230656936d06a6b0a7dcceb63d7644959aa3c78cc8e4d`  
		Last Modified: Sun, 18 Feb 2018 21:35:23 GMT  
		Size: 33.4 MB (33410651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.7.2` - linux; ppc64le

```console
$ docker pull clojure@sha256:3fc83a4da721cf59082c982e97a81307564006f3313a3dda6d23196437f8b2d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.3 MB (316325915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adf1b87d4cce8eb05ac9b7dd29dbaa607f33c4d19820114ac8fad647b7d17562`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:56:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:59:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:26:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:26:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 12:27:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 12:27:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 12:27:15 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 12:27:18 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 12:27:21 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 12:27:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 12:36:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 12:37:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 17:19:30 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 15 Feb 2018 17:19:32 GMT
ENV BOOT_VERSION=2.7.2
# Thu, 15 Feb 2018 17:19:34 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Thu, 15 Feb 2018 17:19:36 GMT
WORKDIR /tmp
# Thu, 15 Feb 2018 17:19:46 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Thu, 15 Feb 2018 17:19:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 15 Feb 2018 17:19:53 GMT
ENV BOOT_AS_ROOT=yes
# Thu, 15 Feb 2018 17:22:44 GMT
RUN boot
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973873e505f5d45a098d524617afcd53f6043873cce8353b33bf411badfc34a3`  
		Last Modified: Thu, 15 Feb 2018 08:26:58 GMT  
		Size: 10.3 MB (10339468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408cc33d8bafc715aecb7512ba918f3ee19119c303b6ac2cdc55086a077bcc32`  
		Last Modified: Thu, 15 Feb 2018 08:26:56 GMT  
		Size: 4.3 MB (4289551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1c30ae6c7e8ab2aa87128a6f2addb7e4e6e5ad2bc703bc7d43a7427991ec4e`  
		Last Modified: Thu, 15 Feb 2018 08:27:32 GMT  
		Size: 50.0 MB (50028084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd488bc2a9f69b4f63e3bbe13d90c0860ddb035846ac8fbdf89bf749b66bac4`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 886.3 KB (886321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fe892a20ffc079a5e1a568e368f3cbcabf7f31d65c7b3a257f97a5bc5eec36`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81777d91c805d950cb4775cc2daf7c024374fd390dc7e56de9d1ae4150b8e790`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13199f7ed20dbd0892310586a464e0f4a050eae3c0bdacf6583070e2871dbe14`  
		Last Modified: Thu, 15 Feb 2018 13:43:28 GMT  
		Size: 171.7 MB (171704528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6903c4011aa1c30687a6f3174bee8837d8685294916ff389b82ff5dc792461`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 272.0 KB (272044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f6f6d1fee009df09361c90e036ea62264abcdcb585b7348e898cc4ff908995`  
		Last Modified: Thu, 15 Feb 2018 17:24:08 GMT  
		Size: 6.9 KB (6896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25123601e6047add1f9f077a321d86dfb368e1c2a331a57d352ced252780d3e9`  
		Last Modified: Thu, 15 Feb 2018 17:24:12 GMT  
		Size: 33.4 MB (33410814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.7.2` - linux; s390x

```console
$ docker pull clojure@sha256:e8b526964d6b8bb3a32659cf9498c8af0779890c840c202bfbdb552008fcadd2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.8 MB (298755935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16c25a91575d5255e05ddc360d74be8affc83960009b890a4168ed6f2d82d2ac`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:07 GMT
ADD file:01afc5861263642b3ae4beb3dedd40e7edb1e65d86c4368a502a15247a39a3c1 in / 
# Thu, 15 Feb 2018 06:24:07 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:54:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:54:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 06:55:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:23:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:23:11 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 08:23:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 08:23:12 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 08:23:12 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 08:23:13 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 08:23:13 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 08:23:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 08:23:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 08:24:01 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 12:16:43 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 15 Feb 2018 12:16:43 GMT
ENV BOOT_VERSION=2.7.2
# Thu, 15 Feb 2018 12:16:44 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Thu, 15 Feb 2018 12:16:44 GMT
WORKDIR /tmp
# Thu, 15 Feb 2018 12:16:45 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Thu, 15 Feb 2018 12:16:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 15 Feb 2018 12:16:45 GMT
ENV BOOT_AS_ROOT=yes
# Thu, 15 Feb 2018 12:19:06 GMT
RUN boot
```

-	Layers:
	-	`sha256:964d84d1f29ab606f833ed91af2d80183a542335d5c85f61d55a80b6c2dbdd32`  
		Last Modified: Thu, 15 Feb 2018 01:20:26 GMT  
		Size: 45.0 MB (44971889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8de23eb22736f2b1a1ee7d3e7cb7124762f87e4fa1d2e9848eac12bda54ba4`  
		Last Modified: Thu, 15 Feb 2018 07:00:44 GMT  
		Size: 10.7 MB (10668568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b245666c672793e5b50be400fd6cf3981742c5efc93f7836f0fa7b865e502f5`  
		Last Modified: Thu, 15 Feb 2018 07:00:43 GMT  
		Size: 4.4 MB (4365966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b323d54d0df6efa09cadf041d10bd52a0d84d1768c0b345362243407b46149`  
		Last Modified: Thu, 15 Feb 2018 07:01:03 GMT  
		Size: 50.4 MB (50448019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b6942247295a8e272b7abd4594e39aacb90c501d052f143780281970508db1`  
		Last Modified: Thu, 15 Feb 2018 08:42:16 GMT  
		Size: 903.1 KB (903118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e29210e084eddf73531337bc3843d61449f59a113eb70920ecaa022a9ce7c03`  
		Last Modified: Thu, 15 Feb 2018 08:42:18 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfc9c76f20d11c5ec70224396f609ff2ff6ed9ebf1ff326f101ba868c955950`  
		Last Modified: Thu, 15 Feb 2018 08:42:16 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea50b7c28e20745824f29c422a537055572a426d7397a7a0f834ed409239dd4`  
		Last Modified: Thu, 15 Feb 2018 08:42:41 GMT  
		Size: 153.7 MB (153708281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18bea8c90c6cbc17a4c963be157c9655f57d1c570e3ea36b1cbf9dd35878b71`  
		Last Modified: Thu, 15 Feb 2018 08:42:16 GMT  
		Size: 272.2 KB (272165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49fb49f5c9155b8430794f50d628fad64eeb1f2bbf9342eecefa55211c433a1`  
		Last Modified: Thu, 15 Feb 2018 12:19:49 GMT  
		Size: 6.9 KB (6900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750ed79121811323d88e9238af68e18ffcad75adc40d757bc2ef4e1ddebc48bf`  
		Last Modified: Thu, 15 Feb 2018 12:19:53 GMT  
		Size: 33.4 MB (33410649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

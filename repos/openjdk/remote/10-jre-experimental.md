## `openjdk:10-jre-experimental`

```console
$ docker pull openjdk@sha256:817be2fb74d5aeadd7a43f8fb4698b481ac2543f32f24c8a31f7f3fea2d8ac83
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

### `openjdk:10-jre-experimental` - linux; amd64

```console
$ docker pull openjdk@sha256:1868f91edc7196e709fa6bff19447049bf4a011edacae18def8f02965ee1b91c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265805979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4c366bab641d921c83d9c973c9ff67e50a674568b53d9728bd684925f28d163`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:54:31 GMT
ADD file:8fa9c86e024ea7f184db6b16d250b62a03f4a3a60aaaf2bd8cc033c817e9477e in / 
# Thu, 15 Feb 2018 01:54:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:35:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:36:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 09:16:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 09:16:32 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Feb 2018 09:16:32 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 09:16:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 09:16:34 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 09:16:45 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 09:16:46 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 15 Feb 2018 09:16:46 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 15 Feb 2018 09:17:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:0cff3b98ce90e0703cbd0e3e96967cd658684237ecc46350843fceb417782d9e`  
		Last Modified: Thu, 15 Feb 2018 11:45:00 GMT  
		Size: 855.5 KB (855520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e481a9ba698993256467e36bb29d0141d98029566c58bc28bd994a88c2826cf1`  
		Last Modified: Thu, 15 Feb 2018 11:44:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93434cb2d7a677a1e72d7b979118d9c0e9b1e9e8ea512f42abb7df62cfee4e4`  
		Last Modified: Thu, 15 Feb 2018 11:44:59 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc47224111a823d79a36176bd84a3d636bffc38942e3a44f5247143629b09de8`  
		Last Modified: Thu, 15 Feb 2018 11:44:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646c0d0b26bafdc12ebff7fab46b63cc78042a24ddf6590f22e1c016be782b92`  
		Last Modified: Thu, 15 Feb 2018 11:45:46 GMT  
		Size: 199.4 MB (199379415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-jre-experimental` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:60085dc989ee0e3ce8fe190428d21df33bc215b21f912d6f5330f0bca4707962
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251961781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ba942421145c8e6f928b84217cb9ff2428c14b58e10128c045b7341a97c18d1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 20:59:59 GMT
ADD file:af4cd7d5c7a1769f049a442dfd7a1b0fa6359ce5306569a5130c55609ec5175e in / 
# Tue, 12 Dec 2017 20:59:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:56:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:56:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 23:43:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 10:55:13 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 19 Jan 2018 10:55:13 GMT
ENV LANG=C.UTF-8
# Fri, 19 Jan 2018 10:55:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 19 Jan 2018 10:55:14 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 19 Jan 2018 10:55:15 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Jan 2018 10:55:15 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 19 Jan 2018 10:55:15 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 19 Jan 2018 10:57:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:acff8687551d235a654afe80e0891cce1bd27c306fff4e41bb6b44b226a473e4`  
		Last Modified: Tue, 12 Dec 2017 21:10:06 GMT  
		Size: 46.9 MB (46876188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12a8cc19c8faf784e145d3a3c486d1b5a0892e4af7a81189d15f0eb18053a58`  
		Last Modified: Tue, 12 Dec 2017 23:08:24 GMT  
		Size: 7.8 MB (7808219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93c884700496b57c386401815cba851f8f8f992a0295e68194990608ff2dea2`  
		Last Modified: Tue, 12 Dec 2017 23:08:23 GMT  
		Size: 8.7 MB (8718966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddbd75681696fa7b3b62dd3fd7842ac4be43019cf6f706d6042ed3b41d4adbd`  
		Last Modified: Wed, 13 Dec 2017 00:01:18 GMT  
		Size: 849.3 KB (849337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62a089b5f30797bf2c6a9c2c3d5d23a7f648f29e51d01479f7cd5d354df275e9`  
		Last Modified: Fri, 19 Jan 2018 11:03:40 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3b2be4e16aad7844c08371923745f5e4323ce20232e961c759fe3c410fef40`  
		Last Modified: Fri, 19 Jan 2018 11:03:41 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54c7af448d000cef3b9be471b4640c29759c44437b562b632ab260927567f15`  
		Last Modified: Fri, 19 Jan 2018 11:03:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac07a675c3304bb822f9627ea91edf472050a29d5f387f8f70e00332baaebb78`  
		Last Modified: Fri, 19 Jan 2018 11:04:26 GMT  
		Size: 187.7 MB (187708471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-jre-experimental` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:cdfd29cc6d3a0386dd225c58ce5207e2864a3e5b7b1d8ee94d8fc989428b7360
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246774823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c3e1767be496324361dae9544f6e49ea1ec7c9814cb1fc7c440d7eca6f0264`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:30:47 GMT
ADD file:b788e24f4cada715c58008741a4bc6b55912bf54f897e9febf55038c7259474a in / 
# Tue, 12 Dec 2017 13:30:48 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:18:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:18:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 15:24:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 02:23:19 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 19 Jan 2018 02:23:20 GMT
ENV LANG=C.UTF-8
# Fri, 19 Jan 2018 02:23:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 19 Jan 2018 02:23:21 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 19 Jan 2018 02:23:21 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Jan 2018 02:23:21 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 19 Jan 2018 02:23:22 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 19 Jan 2018 02:24:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ee9da7ca0ecfb9e496d4e6a11a2de17d38b2676f64081ca6643b85f1026bd24a`  
		Last Modified: Tue, 12 Dec 2017 13:42:33 GMT  
		Size: 44.8 MB (44836300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9035433aec00afaaa737a1213c4367cab1ef3d7a572aa2cb952e73854b963d0`  
		Last Modified: Tue, 12 Dec 2017 14:32:26 GMT  
		Size: 7.5 MB (7534247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d036c584b8f46f4616710df516ffdb5657ef66387fcf24bd3752cdeaf9091427`  
		Last Modified: Tue, 12 Dec 2017 14:32:26 GMT  
		Size: 8.4 MB (8438419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c8053ed8fc580846cce780616eb015dd48cb75ce50026b0651185fdc9b68f4d`  
		Last Modified: Tue, 12 Dec 2017 15:40:57 GMT  
		Size: 833.0 KB (833006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bbbeb4e977c7029840d2dc075b58e1e15afc8c45e4a1c9d2ea8becd2a4d0b1`  
		Last Modified: Fri, 19 Jan 2018 02:33:00 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a01bd729e5aea304fdb79472cdbb9ff4613480e3170cc1487d76fb58352678`  
		Last Modified: Fri, 19 Jan 2018 02:33:00 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13142691f71abf0ccb95fcf3f3e58e95bad39cd2f0a9f85b88bb068c99186dfe`  
		Last Modified: Fri, 19 Jan 2018 02:33:00 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e1d8c865da6ae83c6177bf7bedea35bcaa1248385740dbfb1ae11578b5c060`  
		Last Modified: Fri, 19 Jan 2018 02:33:44 GMT  
		Size: 185.1 MB (185132252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-jre-experimental` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:f60f0d1d8df921770647ccabc8f2ad0b45790bab9c297f5baa466bf3707b821b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252544354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6fa80b1b92f4dcf9ed1ffcc122621e66de01da18b96308d71a058193154e6ee`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:28:41 GMT
ADD file:7487b447e9ae95ddff2e8f1bbdc2b089a3a6fb70edf7f218bf3c662727c19ade in / 
# Tue, 12 Dec 2017 18:28:42 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 16:02:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 16:03:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 21:13:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 11:00:54 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 19 Jan 2018 11:00:55 GMT
ENV LANG=C.UTF-8
# Fri, 19 Jan 2018 11:00:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 19 Jan 2018 11:00:58 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 19 Jan 2018 11:00:58 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Jan 2018 11:00:59 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 19 Jan 2018 11:00:59 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 19 Jan 2018 11:06:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:aa10cf671b46f67e3e12579e72f085c7b8402ff25ccafb8616eb9e1cbe71bf85`  
		Last Modified: Tue, 12 Dec 2017 18:44:03 GMT  
		Size: 46.2 MB (46188985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cce7e08176846c9ad6c15ff845d12c630e1d4ab1a0f8ef1e7a0786ec45ad2b`  
		Last Modified: Fri, 15 Dec 2017 17:17:29 GMT  
		Size: 7.9 MB (7856875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a14a037f71e9308ee97c32436f3203d1f06a675930a80dba9a16c2f5c78166`  
		Last Modified: Fri, 15 Dec 2017 17:17:29 GMT  
		Size: 8.7 MB (8712398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fa8eea21357a0c5faac2654ad9623138d46d73e90554a9372aa7cfd9111e7d`  
		Last Modified: Fri, 15 Dec 2017 21:25:45 GMT  
		Size: 842.5 KB (842524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a44741fa16c40f02d69595b3f92cd768fd2d686f6e7e31cedd612b0d0037659`  
		Last Modified: Fri, 19 Jan 2018 11:30:43 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02663a80fb0a73eb106e9a2d38430dde717d4913422c41bc6b95117eb5fb9d6`  
		Last Modified: Fri, 19 Jan 2018 11:30:44 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c110f585515e5667c57113fda358db9ac8fd6001d2f455f0bbf83d6bcbec6d`  
		Last Modified: Fri, 19 Jan 2018 11:30:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd818afdb9a8fee681d2bee03b4c7eed30cd5ccd93287f59a95077590f8875e`  
		Last Modified: Fri, 19 Jan 2018 11:31:39 GMT  
		Size: 188.9 MB (188942972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-jre-experimental` - linux; 386

```console
$ docker pull openjdk@sha256:e1dfef2bc630f0ea6c24d09a54bd13f89ab82b676fe2b4337f57edf4859713fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282949153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:981f07050c332b7c1688a2290251c02a46f2a68998ed9183a32531e8a504c02d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:24:56 GMT
ADD file:7e72f60be83facf3a36831facc1a26f572f3ae83fc49b2bc4c8de0b6e3321e84 in / 
# Tue, 12 Dec 2017 14:24:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:02:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:02:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 19:07:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 10:57:44 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 19 Jan 2018 10:57:45 GMT
ENV LANG=C.UTF-8
# Fri, 19 Jan 2018 10:57:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 19 Jan 2018 10:57:46 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 19 Jan 2018 10:57:47 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Jan 2018 10:57:47 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 19 Jan 2018 10:57:47 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 19 Jan 2018 11:00:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:c3cf1d3d69aef55e4aef2c1f0a9455d1dfbbb7ae17d15a0d963e8c55e6e61af4`  
		Last Modified: Tue, 12 Dec 2017 14:58:13 GMT  
		Size: 49.3 MB (49250980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767ba54897a1df6013ec3b06fd1546d3123979a02ac1f8f8eb0f079fd928126`  
		Last Modified: Tue, 12 Dec 2017 17:33:48 GMT  
		Size: 8.6 MB (8608693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936341216c1a183dced55abc7be29ddca5b53a3fe1a3d85f00538784bd1a090d`  
		Last Modified: Tue, 12 Dec 2017 17:33:48 GMT  
		Size: 9.3 MB (9251281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8218fb4c74ebf68ad66d2edba5ca7160ff1fba80f1227ba2660c7b88290f00b`  
		Last Modified: Tue, 12 Dec 2017 20:06:42 GMT  
		Size: 864.9 KB (864922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af73b82e617c5ca3521b7c3f88daff33f76c5ebee4e87f021f7c837f0d87f80f`  
		Last Modified: Fri, 19 Jan 2018 12:10:45 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3dd9246dcf8f626cc53ac3eb73563b11c321c663832cfc8c4fa300eb67e1fa0`  
		Last Modified: Fri, 19 Jan 2018 12:10:44 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2943224ba7dfec8e497656d2e1f28936b781c018b31f19f4e8cca8e86fdcbcf`  
		Last Modified: Fri, 19 Jan 2018 12:10:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6751924f14f22d2f2d8550c044c919ccc53b4d474bfb211dbb05256cb63411`  
		Last Modified: Fri, 19 Jan 2018 12:11:48 GMT  
		Size: 215.0 MB (214972674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-jre-experimental` - linux; ppc64le

```console
$ docker pull openjdk@sha256:d40cb3df321aa6b8f6f6e23cc6aa471ed815ff0f71edf40857aada3231d8954a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.6 MB (264613691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a065854bc3f9bb629a2b51970b4438bcf2f32086c78124a11bb0661fa28953b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:34:15 GMT
ADD file:7904a0f79cc86767c6e3ac367f0df06aa262c6639e79e39652eac766c3faf4b6 in / 
# Tue, 12 Dec 2017 01:34:16 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:12:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:13:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 06:36:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 11:47:50 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 19 Jan 2018 11:47:51 GMT
ENV LANG=C.UTF-8
# Fri, 19 Jan 2018 11:47:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 19 Jan 2018 11:47:57 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 19 Jan 2018 11:47:59 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Jan 2018 11:48:00 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 19 Jan 2018 11:48:01 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 19 Jan 2018 11:55:29 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:21b73404fd38d2445a6ecbcf148b2dd5047623273b33ea9546ddf6796601ec9b`  
		Last Modified: Tue, 12 Dec 2017 01:40:28 GMT  
		Size: 49.7 MB (49652013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3d5e1672290a07cf756dbcee37e26f4e406df9a113e8e2dc11abbc2b31d867`  
		Last Modified: Tue, 12 Dec 2017 03:54:16 GMT  
		Size: 8.2 MB (8207114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7d8032257e5508a59f355bd1eb60e35584078939f47f0f54ca3e647ed03f71`  
		Last Modified: Tue, 12 Dec 2017 03:54:18 GMT  
		Size: 9.2 MB (9192961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945b80e81b6e809ec6e645912b39082de0ebda6755597c055b08cc36afbd1170`  
		Last Modified: Fri, 15 Dec 2017 06:49:32 GMT  
		Size: 852.3 KB (852281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591703f01502dc7d24e430dc005620c7011f5ce03af329c52f857b2b2bb165de`  
		Last Modified: Fri, 19 Jan 2018 12:21:48 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3d9fbabf8b8a35d003cf894caf0173498f3d1352ee8833cfd78cee9589e9cc`  
		Last Modified: Fri, 19 Jan 2018 12:21:48 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7923b76a8d4ab1fa520ffb19f8b7cce9dd0cea8eecaab9b8f4c992f995cc56`  
		Last Modified: Fri, 19 Jan 2018 12:21:48 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9e25b185febd18bc08d920779f809045c9eee54d1f4f435175603228023a57`  
		Last Modified: Fri, 19 Jan 2018 12:22:28 GMT  
		Size: 196.7 MB (196708715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-jre-experimental` - linux; s390x

```console
$ docker pull openjdk@sha256:6d5624c93a76c51e8b9a6a518c8024fa6a93d450b1fe483d4a1d5f1444c1fa4b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230864171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4118b49ffc6baf365170d941474352a4edcd015817666dc996aedc010db9876`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 06:23:25 GMT
ADD file:044e96e222c822455babaf357ef8db0795de4149889cb81364204dca02b492ce in / 
# Thu, 15 Feb 2018 06:23:26 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:52:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:52:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 08:12:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:12:57 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Feb 2018 08:12:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 08:12:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 08:12:58 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 08:12:58 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 08:12:59 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 15 Feb 2018 08:12:59 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 15 Feb 2018 08:14:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:2c81921a603ec79dabbd4e8cddf60c1d80b67ca921cfc969b21b2e2786d10aa8`  
		Last Modified: Thu, 15 Feb 2018 01:14:13 GMT  
		Size: 47.2 MB (47237963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91819694b4f3f99b68e351dce6412264a13c403c821302391b468b46a939bdea`  
		Last Modified: Thu, 15 Feb 2018 06:59:38 GMT  
		Size: 8.2 MB (8167378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b1294664ef6e52571bc28e685c8bc665f53866e0616d602895c953f3b7946a`  
		Last Modified: Thu, 15 Feb 2018 06:59:39 GMT  
		Size: 9.0 MB (9039908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f073417fef01cb8256487de8d9614f41d646dc1e1d1e5663bc0f8db4fdd5cf`  
		Last Modified: Thu, 15 Feb 2018 08:33:46 GMT  
		Size: 866.2 KB (866203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbb9dc1f9134c204a05a33b705582b1083424cf9c83acefc24f4698c6afa1e3`  
		Last Modified: Thu, 15 Feb 2018 08:33:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a47396a8635a31d41a2942e3c4ed4d20c798cb0463e8bcd87c096c169602d4`  
		Last Modified: Thu, 15 Feb 2018 08:33:45 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759682a04b6dd2027e9a8a09b71579cc8f3cc33b2e404a3d653ed0f6d16f4abd`  
		Last Modified: Thu, 15 Feb 2018 08:33:45 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e021a0b8912c80cd9baaa14a459f3ca2bb12862a74e4939be128ac6b621208de`  
		Last Modified: Thu, 15 Feb 2018 08:34:12 GMT  
		Size: 165.6 MB (165552129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

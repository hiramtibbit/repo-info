## `openjdk:7-jre`

```console
$ docker pull openjdk@sha256:361466aa939a3876cdd78b4f2f5be6583030f6f7fb721132641bf759f4e4019f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7-jre` - linux; amd64

```console
$ docker pull openjdk@sha256:a16cab3e3eea98b963b99976cfb7d6a7ba3f67a0a0e208a14b4d1fe5e81fd5bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.5 MB (154539360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b42de531b6ae424c1137b5956fa7e69c7585ad31255a4143ea8df8cab324be0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:23:31 GMT
ADD file:3392f08cefaf93484868c5183e810a29e7cc370d21dae7cff10b856b2b21d072 in / 
# Tue, 22 Jan 2019 19:23:31 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 19:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 19:58:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 21:31:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:31:34 GMT
ENV LANG=C.UTF-8
# Tue, 22 Jan 2019 21:31:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 22 Jan 2019 21:31:35 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 22 Jan 2019 21:31:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 22 Jan 2019 21:31:35 GMT
ENV JAVA_VERSION=7u181
# Tue, 22 Jan 2019 21:31:36 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Tue, 22 Jan 2019 21:34:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:8ac9f5ca4429ff58493e4cb486b7a5eaa6af0a4711e9bda1ce4671732e25d1d1`  
		Last Modified: Tue, 22 Jan 2019 19:34:35 GMT  
		Size: 54.4 MB (54385768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4aea35522d8492e879829e82df51ae00b3313707430c6c29a715ad366c406df`  
		Last Modified: Tue, 22 Jan 2019 20:11:18 GMT  
		Size: 17.5 MB (17538985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d2816dd6bea7f8f279f9759028cd662101a54280cfff29910e41ab9f864b55`  
		Last Modified: Tue, 22 Jan 2019 21:44:45 GMT  
		Size: 795.2 KB (795161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29b13248445e741a620021a134c3dcab214aa256540c6613611520ba7dc727c`  
		Last Modified: Tue, 22 Jan 2019 21:44:45 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeeb83f693eda623201d434c75c61b7b994f8893568202a331662e93c6c0c056`  
		Last Modified: Tue, 22 Jan 2019 21:44:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ed33ff3865211af93616204afeac3dc5f30a32eeb5a9c099d536f69c948b25`  
		Last Modified: Tue, 22 Jan 2019 21:45:00 GMT  
		Size: 81.8 MB (81819070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:5cb7174de57e222db0afb34d885bbd27d5072cbc6178746af410b9445852d49e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.9 MB (141877722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fed7c0522349e0050bd44dd6f79fb865102287c8178769cd789107beeb0489b1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:30:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:01:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:01:03 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:01:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 13:01:06 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 13:01:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 23 Jan 2019 13:01:07 GMT
ENV JAVA_VERSION=7u181
# Wed, 23 Jan 2019 13:01:07 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 23 Jan 2019 13:02:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e5089c7dbd37156a16aa333e82a8047c39870627ad13f9d513f514eba1f9`  
		Last Modified: Wed, 23 Jan 2019 10:46:53 GMT  
		Size: 17.0 MB (17030345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9359813d020b0d9ce651f05a10df633df9b32819ce2a73abd95d616e4c97aae0`  
		Last Modified: Wed, 23 Jan 2019 13:12:52 GMT  
		Size: 788.0 KB (787968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf087ed004deb2058d24ae6cd910445d78d754ce9d873d663a291d9909a03d0`  
		Last Modified: Wed, 23 Jan 2019 13:12:52 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c18c846b876ec307325eaf8af3c9e7164a6dc0098df74bf3a7081af1e7d40f`  
		Last Modified: Wed, 23 Jan 2019 13:12:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b6b8b572290c49d1e79a6a89b740fdbbae1cea4e9b4959f808f7c4ec5934c9`  
		Last Modified: Wed, 23 Jan 2019 13:13:08 GMT  
		Size: 71.5 MB (71484477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:a73541386442fb93c301af546531ecbe6ecd9095fcb141ef63597acee0c8dbd5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137788469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be8feebd765dd3b7cc639db1969240ed966450ba33e5c455c109164ea213e163`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:59:26 GMT
ADD file:82fbc1afc65e113a763fd56969e610ee7f80938bd2f37ffc964d6f5b4525b68b in / 
# Wed, 23 Jan 2019 12:59:27 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:35:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:35:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 14:59:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:59:34 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 14:59:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 14:59:37 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 14:59:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 23 Jan 2019 14:59:38 GMT
ENV JAVA_VERSION=7u181
# Wed, 23 Jan 2019 14:59:39 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 23 Jan 2019 15:01:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:8d0ee67914252a6f8316bcf4f5de02a5d7894abb8061e33223a2a3691b209217`  
		Last Modified: Wed, 23 Jan 2019 13:09:16 GMT  
		Size: 50.3 MB (50291632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf121bdd5ab54c14416ccb673e4d49a933fe0fbd4e82f9b83a4bcdb965555be`  
		Last Modified: Wed, 23 Jan 2019 14:03:10 GMT  
		Size: 16.7 MB (16713234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6abe191702b18ab189ddca1f0774fde4dab251e150ae9674a5fb807cd56cc1`  
		Last Modified: Wed, 23 Jan 2019 15:09:17 GMT  
		Size: 762.5 KB (762495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b182e4af8b9a826187990996b5a608b6125b11b9c712f76969fd97fe04aae76`  
		Last Modified: Wed, 23 Jan 2019 15:09:16 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789956c3ef42ed78f20234fa1a96f874e7eebaa271968d44fc699e061a170799`  
		Last Modified: Wed, 23 Jan 2019 15:09:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5af368f4f91823372350a75e1ad8754abd4c5627b2af06184cf0aabf7da6bd2`  
		Last Modified: Wed, 23 Jan 2019 15:09:30 GMT  
		Size: 70.0 MB (70020731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre` - linux; 386

```console
$ docker pull openjdk@sha256:cee11c9f0f87d9c9fdb26239fe940cd6022c9952a67d773da8085ad1d513e09d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.9 MB (166920706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:277492bc463dba0963f61b602112f3af27762a1e2a70a9c376eba679ac07f271`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:42:56 GMT
ADD file:34c4d7be20c87ed251d0f5a99c46920d29f51e7050390664fe342895d416cf26 in / 
# Wed, 23 Jan 2019 11:42:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:38:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 18:16:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 18:16:02 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 18:16:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 18:16:03 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 18:16:04 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 23 Jan 2019 18:16:04 GMT
ENV JAVA_VERSION=7u181
# Wed, 23 Jan 2019 18:16:04 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 23 Jan 2019 18:19:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:c9e90e967f2e8ff1c9bcd2f542cedbcf4ef3dd2e4601b2f3c66fdbef5125fe84`  
		Last Modified: Wed, 23 Jan 2019 11:59:12 GMT  
		Size: 54.6 MB (54598497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f41350de1b8c9a9aaef88261e4271f1d2cdbfcd19c25b6ff74b91d18449ccf3`  
		Last Modified: Wed, 23 Jan 2019 13:08:22 GMT  
		Size: 19.8 MB (19846606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e48adfb17eca1e46bc839ba8c38ba760d7e2bc9e8ac6779a1e62a1aae048bfe`  
		Last Modified: Wed, 23 Jan 2019 18:29:46 GMT  
		Size: 798.2 KB (798157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272ea4d6b4930e1162d015f630b873f2d324eaaf42db6ad4c436d8e6d4bcc68d`  
		Last Modified: Wed, 23 Jan 2019 18:29:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77583c27ba7c8b8d17aacf10bcfb24e0bbfc740d9def584b61348411e9c3b7e2`  
		Last Modified: Wed, 23 Jan 2019 18:29:45 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cde60fadda7ee18ea30b29ecc3b9884e27db0d54c8adf615f000c2bce987b58`  
		Last Modified: Wed, 23 Jan 2019 18:30:00 GMT  
		Size: 91.7 MB (91677068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

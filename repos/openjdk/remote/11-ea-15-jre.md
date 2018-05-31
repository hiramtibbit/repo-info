## `openjdk:11-ea-15-jre`

```console
$ docker pull openjdk@sha256:aa78a716e0e48020ab9dcf693a6e0a4522b2e54c6f6479c4c586059cca7ce8ab
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

### `openjdk:11-ea-15-jre` - linux; amd64

```console
$ docker pull openjdk@sha256:8095b1b141bdded621fdae04383dce89dbeefad916d1cc7797f62c22709a3c61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.6 MB (246551390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07feb16bca60fffd076c9dd378a5e4af302db920c585fc0c34a8b271cd21db5e`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:49:58 GMT
ADD file:229ad62fdc5e079bf925fb084264841ce27bf7125beb1fd821cbd6ed5132b37c in / 
# Sat, 28 Apr 2018 06:49:59 GMT
CMD ["bash"]
# Sat, 05 May 2018 04:59:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 04:59:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 08:00:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:00:25 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 08:00:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 08:00:26 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 08:00:27 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 30 May 2018 18:58:38 GMT
ENV JAVA_VERSION=11-ea+15
# Wed, 30 May 2018 18:58:38 GMT
ENV JAVA_DEBIAN_VERSION=11~15-1
# Wed, 30 May 2018 18:59:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:e7cb83f94a464daabb5fa4e63ae521d65d7956bfcb3619bc75857f7d598ff12c`  
		Last Modified: Sat, 28 Apr 2018 08:58:22 GMT  
		Size: 48.3 MB (48303234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2af7c2bd543ba42600867217cd2f676eae7c4c38a8ba8a3cf8edce489534cfe`  
		Last Modified: Sat, 05 May 2018 05:02:11 GMT  
		Size: 8.6 MB (8642335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5286ee17a380311ffd9b7f82c5c957c59358a2103c0a1cc96c0be7eb91528f`  
		Last Modified: Sat, 05 May 2018 05:02:10 GMT  
		Size: 9.5 MB (9459894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6f948f766f58ed5e0b5c75b9b6338f3a6a7ee3ac64fe98c946b196b1a92515`  
		Last Modified: Sat, 05 May 2018 08:08:30 GMT  
		Size: 856.7 KB (856710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ca5a1068e6437056cf1b53c145bb93231b122e13be7e8760336394bfb30a32`  
		Last Modified: Sat, 05 May 2018 08:08:30 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9776722d85d54280072bd69f6b18338a5c92efaa267679990c2094d022af6838`  
		Last Modified: Sat, 05 May 2018 08:08:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7154d9ecf34488b4c07a8ad0c0e21a9994597af08857ab8a3497b726c9b43130`  
		Last Modified: Wed, 30 May 2018 19:09:48 GMT  
		Size: 179.3 MB (179288848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-15-jre` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:41ea3a5af596879a4fd6458990714a10c1289f1add67413b0227742f66ca7958
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.5 MB (224537132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff3009da34cfadde60e000f58270e87dd5669c6ef2912d18143415c69ae25c4`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:51:39 GMT
ADD file:289dd78ee91d70cba0d1bc2f296c3c14565c2fc5a7545ded07d727de72e2c7af in / 
# Sat, 28 Apr 2018 08:51:39 GMT
CMD ["bash"]
# Sat, 05 May 2018 08:57:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:57:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:19:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:19:08 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 09:19:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 09:19:10 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 09:19:11 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 31 May 2018 08:48:41 GMT
ENV JAVA_VERSION=11-ea+15
# Thu, 31 May 2018 08:48:42 GMT
ENV JAVA_DEBIAN_VERSION=11~15-1
# Thu, 31 May 2018 08:50:18 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:e55988127988d265ae9a533cadc5ee50c9a724a2602f8677daa3d5ca1354a4c8`  
		Last Modified: Sat, 28 Apr 2018 08:59:59 GMT  
		Size: 46.3 MB (46298645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aafc48823c28e5748b4391dec0c3ace05a68f5a65301bb16529fbf5cfdcf4ba2`  
		Last Modified: Sat, 05 May 2018 09:11:24 GMT  
		Size: 7.8 MB (7807554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab5f6db056b1ea7d4547374cc334a044271698f505521bb613b98b4e9d62fff`  
		Last Modified: Sat, 05 May 2018 09:11:25 GMT  
		Size: 9.2 MB (9194241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16073a84548c03437560da2931d6276f5698e1b26256817ec343c389cfd1c66a`  
		Last Modified: Sat, 05 May 2018 09:40:37 GMT  
		Size: 849.9 KB (849869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7511e3d44dd1677ace4c49728e92bc682e66c906f2d94d5a76db694717d1923c`  
		Last Modified: Sat, 05 May 2018 09:40:37 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855ae9a6b0d9285f5fd78459cb29e4089de21e1dcfb2f422edbd12db27296e26`  
		Last Modified: Sat, 05 May 2018 09:40:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe469f8c70cf110c0129243c6e6d6aeada99c61c7d31db97a77d72c0f19e3fd`  
		Last Modified: Thu, 31 May 2018 08:56:26 GMT  
		Size: 160.4 MB (160386456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-15-jre` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:5bf7bee3d5a213207806a9e77ddda8e3b26a1251414aa382398420417acce472
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.7 MB (219704974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10befda051543d74abe5ea10f67bda69c4d87991b251b77c433083fc87d8a664`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:02:19 GMT
ADD file:b8fa078b9ddc39737b1c9eaeea11c4d1a71fb53d2ac6747fa0eab346280119a5 in / 
# Sat, 28 Apr 2018 12:02:20 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:10:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:10:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:47:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:47:14 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:47:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:47:18 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:47:18 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 31 May 2018 11:58:17 GMT
ENV JAVA_VERSION=11-ea+15
# Thu, 31 May 2018 11:58:17 GMT
ENV JAVA_DEBIAN_VERSION=11~15-1
# Thu, 31 May 2018 11:59:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:bd36ef86ab3a0249a38384d63e39dbf85bd3f64d4e9ae0179795e2da5754d3fc`  
		Last Modified: Sat, 28 Apr 2018 12:13:46 GMT  
		Size: 44.2 MB (44193727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2182099ef994efdc26b1608eeb96ebb41405847c6f253e40c752ec9246cce60`  
		Last Modified: Sat, 05 May 2018 12:33:28 GMT  
		Size: 7.5 MB (7535807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5fedbfebaf2860a81e319ee9a8c18137fb801f56d7729af7b4698f98e05c62b`  
		Last Modified: Sat, 05 May 2018 12:33:28 GMT  
		Size: 8.9 MB (8899307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff4a3e738acdd9a9a58a2aae6f1746bfb228f3db2f19111110fa026ecbbbfa56`  
		Last Modified: Sat, 05 May 2018 13:10:03 GMT  
		Size: 833.5 KB (833517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b2675718e4005b12e6c5113e924d01d09028ba80a4aa158bcdd2cde1983eac2`  
		Last Modified: Sat, 05 May 2018 13:10:03 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:184c701159bb95571dd96ec48e59c940cf0b1c99277727bb8dd2e6deda95487e`  
		Last Modified: Sat, 05 May 2018 13:10:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6cb0b0b8c0c4926385e4a6f23843676dfb4e84d72d9008386e2312a008660a`  
		Last Modified: Thu, 31 May 2018 12:16:17 GMT  
		Size: 158.2 MB (158242248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-15-jre` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:66e1b5f0db54ae9d72e34d84e5132dc8400d109b51453b295c8da0754da3e6a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229196691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a04ac378016da8dda1db9ce56ed2afb1f951b89a074934abdc322d5e31c5266a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:27:31 GMT
ADD file:ebaa7f02c60ac8138d085ce979847d36a1a8ce243bcef9b7e81e3e667d060dcb in / 
# Mon, 30 Apr 2018 23:27:34 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:28:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 11:10:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 11:10:02 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 11:10:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 11:10:09 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 11:10:10 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 31 May 2018 08:54:21 GMT
ENV JAVA_VERSION=11-ea+15
# Thu, 31 May 2018 08:54:23 GMT
ENV JAVA_DEBIAN_VERSION=11~15-1
# Thu, 31 May 2018 08:59:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ed5c004c8effeb24e6eee983af18662b0d28341fbbd46983746399c6df3358c8`  
		Last Modified: Mon, 30 Apr 2018 23:47:36 GMT  
		Size: 45.6 MB (45610129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8023415c45ba32335bb869e25328b3b2c70e3ad264f1129bb133addb1fbfef4a`  
		Last Modified: Sat, 05 May 2018 10:25:46 GMT  
		Size: 7.9 MB (7867437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2793192206e4ab032f5152356b71ea402af9d6cfd3812ad4e29857c76a039af6`  
		Last Modified: Sat, 05 May 2018 10:25:45 GMT  
		Size: 9.2 MB (9190303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e00dfc0b129c4ab2194347ddc38f66136387e9921b5f11f3ed3612ee9c840f`  
		Last Modified: Sat, 05 May 2018 12:39:12 GMT  
		Size: 843.0 KB (843039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0ff915ee587518b4d37f32230fd2b29388359c6dd67adc9e61cf15fbce46b6`  
		Last Modified: Sat, 05 May 2018 12:39:11 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c9430658318b096a24aa78870a521a4fb1d3e37c82b91243b8a28ec6de822a`  
		Last Modified: Sat, 05 May 2018 12:39:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41abe512638adcd566ef02c45f61a197b29d91071d53323d31842a8b1abfc3f8`  
		Last Modified: Thu, 31 May 2018 09:21:16 GMT  
		Size: 165.7 MB (165685416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-15-jre` - linux; 386

```console
$ docker pull openjdk@sha256:5b8a5b948b899127e48290893b5632338cede0276e6acd8c01aa6d0bcfe9a0e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (256973102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10e3278e1cb47766d89b09c20054fbf1bb0d24aaa0fced3aed70a9c45f26db8`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:40:49 GMT
ADD file:cb21908d8f286f1381ea180209120314676afa1ce4d5d480e0310fe70a4c96d4 in / 
# Sat, 28 Apr 2018 10:40:49 GMT
CMD ["bash"]
# Sat, 05 May 2018 11:02:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 11:02:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 31 May 2018 05:44:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 05:44:01 GMT
ENV LANG=C.UTF-8
# Thu, 31 May 2018 05:44:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 31 May 2018 05:44:02 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 31 May 2018 05:44:02 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 31 May 2018 05:44:02 GMT
ENV JAVA_VERSION=11-ea+15
# Thu, 31 May 2018 05:44:03 GMT
ENV JAVA_DEBIAN_VERSION=11~15-1
# Thu, 31 May 2018 05:45:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:33fb16074d5de3f73c0e2941c01c03e5dc69cfb8f568b7fbc3e29926b575fef0`  
		Last Modified: Sat, 28 Apr 2018 10:47:25 GMT  
		Size: 49.1 MB (49090181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c0106e7eaef0802d668a2b79bf9f1db764acfe5d6181a1f4d15dc548ad4a5d`  
		Last Modified: Sat, 05 May 2018 11:38:03 GMT  
		Size: 8.6 MB (8616091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc872687358d61e714f879d08e972342c93b7d91f31c13f6b15916a9a4130cc`  
		Last Modified: Sat, 05 May 2018 11:38:03 GMT  
		Size: 9.7 MB (9738582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11fcf70d0bc0f5b0fa5888593ede8d65d300d66adfa0258d888852841b8e329`  
		Last Modified: Thu, 31 May 2018 06:16:24 GMT  
		Size: 865.3 KB (865312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3d71cbdd629e74b1d8c77723f2dc26aa234e85d81ffa8398f6bf85250c20e3`  
		Last Modified: Thu, 31 May 2018 06:16:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616dc8339fe70e5d5f543ba47a5ea763688ac061aea873c01e9fc361370c4d54`  
		Last Modified: Thu, 31 May 2018 06:16:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7178aa208be3e18374ff986aec04c731ff493839fd41183494d0c3bfd4a7fa3c`  
		Last Modified: Thu, 31 May 2018 06:17:32 GMT  
		Size: 188.7 MB (188662566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-15-jre` - linux; ppc64le

```console
$ docker pull openjdk@sha256:3638a21660099b57b96f06907a3d1f53e4e2db74d330569c354cf92235af1803
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.2 MB (237234154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae6bd7eba3dade259c8b52b6ea84a242e7ef8373ee5cc8ae3190d2e9eb64d36`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:19:13 GMT
ADD file:320268259acdc4e2a105be735ea4ee0cb1398bb05ce729d46f4a54fa3c3c84e3 in / 
# Sat, 28 Apr 2018 08:19:15 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:16:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:16:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 13:40:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:40:58 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 13:41:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 13:41:02 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 13:41:06 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 31 May 2018 08:31:27 GMT
ENV JAVA_VERSION=11-ea+15
# Thu, 31 May 2018 08:31:28 GMT
ENV JAVA_DEBIAN_VERSION=11~15-1
# Thu, 31 May 2018 08:35:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:354f055c313d4d07201e01fd4de9af4aca89e3df17572870e56c5b8945e48443`  
		Last Modified: Sat, 28 Apr 2018 08:27:42 GMT  
		Size: 49.8 MB (49754912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77e4d2b61d28a226758713bae6bf933182cc9aa5eea6834696ef5865b36a2d2`  
		Last Modified: Sat, 05 May 2018 10:56:29 GMT  
		Size: 8.3 MB (8252158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38bf91c1472a5fafe06a2f5ba7ea5bf20d82e4c77308ccb3bb26c3068d95c5`  
		Last Modified: Sat, 05 May 2018 10:56:40 GMT  
		Size: 9.7 MB (9711623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac66d4df0eb05e246b8290fe8e98d0dc23c04705d9e2e79abed62b95a7329a0a`  
		Last Modified: Sat, 05 May 2018 14:50:15 GMT  
		Size: 852.5 KB (852475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09abe145510be9656286d6cbd8cfed6e7efc4f1079ce629e458b56c291939a9`  
		Last Modified: Sat, 05 May 2018 14:50:14 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcfc84ce5c8614175802345c31d29d0829ae536a87ca8e08abb26167c05f191`  
		Last Modified: Sat, 05 May 2018 14:50:14 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9565ea9035d680f681d02a403fbce108a6d25894a0146d5590073c3259c947bd`  
		Last Modified: Thu, 31 May 2018 08:50:32 GMT  
		Size: 168.7 MB (168662616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-15-jre` - linux; s390x

```console
$ docker pull openjdk@sha256:bf20a336b4d1815fce22c07ae02a81b15161b87819cb58aa64af9c775b97bf23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.7 MB (207736206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ceb131b9dde282e91a4794200f415c939dd52e4665bbb5b199794279585f26c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:43:52 GMT
ADD file:2ebc77cf35fadaf6ffd85f0d203bf60b217e15aa3c15737aac14f71008535107 in / 
# Sat, 28 Apr 2018 11:43:52 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:33:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:34:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 13:04:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:04:48 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 13:04:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 13:04:49 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 13:04:50 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 31 May 2018 11:56:37 GMT
ENV JAVA_VERSION=11-ea+15
# Thu, 31 May 2018 11:56:37 GMT
ENV JAVA_DEBIAN_VERSION=11~15-1
# Thu, 31 May 2018 11:57:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:893cc85742608c84d1d6314416656d650a83dae134d0d1e22a839b39a03cbf3e`  
		Last Modified: Sat, 28 Apr 2018 11:49:42 GMT  
		Size: 47.4 MB (47350246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6465ae4acbbbfe22cde44168d0262178f375ac945898fbe73420bec2cc2ccbe0`  
		Last Modified: Sat, 05 May 2018 12:46:57 GMT  
		Size: 8.1 MB (8124442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47a8c562fcb2d700f3403a2f6b5d1c62f5961afce859416ff6a03520adf95a5`  
		Last Modified: Sat, 05 May 2018 12:46:57 GMT  
		Size: 9.4 MB (9414344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d454588c8ff8bb223303585c77d5babc9049e62b88dc7e14e1b2060311433972`  
		Last Modified: Sat, 05 May 2018 13:20:02 GMT  
		Size: 867.2 KB (867200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b294e615c7f7bb31f89759db3ec8dc4a53c969332be38669eb8d9e5095a5370`  
		Last Modified: Sat, 05 May 2018 13:20:02 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e86c86c15985e0643c28d68750f469e1b0390060cc9bfa5f577d44452f55b2`  
		Last Modified: Thu, 10 May 2018 13:12:35 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8123664c8260d2224d9e48254e92dad60fd3d1661fc2229dc9e358046ca60b`  
		Last Modified: Thu, 31 May 2018 12:03:39 GMT  
		Size: 142.0 MB (141979604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

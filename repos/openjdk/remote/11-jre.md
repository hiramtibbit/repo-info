## `openjdk:11-jre`

```console
$ docker pull openjdk@sha256:15acfa09850851e62ae1f388e7c19a0d69d780863e6d6b1039f25ca10dd7b340
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5

### `openjdk:11-jre` - linux; amd64

```console
$ docker pull openjdk@sha256:200a036c171c7118a214c82230457880333f017b7ebd2011665855fa85d6a12a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.2 MB (253212181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17d12850de1465a5d97cffdb2a428011fe5165d9d9eed514cb9b429a3f37155d`
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
# Wed, 09 May 2018 17:32:13 GMT
ENV JAVA_VERSION=11-ea+12
# Wed, 09 May 2018 17:32:13 GMT
ENV JAVA_DEBIAN_VERSION=11~12-1
# Wed, 09 May 2018 17:36:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:2aa9ee4a4dd02f1e37f98beb33d7e73ba7f5358b1b939ca0f19a452c7e61a2bf`  
		Last Modified: Wed, 09 May 2018 17:46:35 GMT  
		Size: 185.9 MB (185949639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-jre` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:1bdd5e5ba77948e16ef5c260e1003399603e7adb51bb66aba4c9c9cd6eece2de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.6 MB (231564233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a17ec7f3bd16e45901aaf066daed2a2a9077a4961514c9e49687afd9485cdec1`
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
# Thu, 10 May 2018 08:48:36 GMT
ENV JAVA_VERSION=11-ea+12
# Thu, 10 May 2018 08:48:36 GMT
ENV JAVA_DEBIAN_VERSION=11~12-1
# Thu, 10 May 2018 08:49:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:10bddebf1b9b1938eeb040a739ec8f0b840894dc55a8ce956535f97ea1ffc303`  
		Last Modified: Thu, 10 May 2018 09:00:40 GMT  
		Size: 167.4 MB (167413557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

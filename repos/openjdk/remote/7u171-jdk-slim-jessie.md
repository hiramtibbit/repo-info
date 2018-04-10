## `openjdk:7u171-jdk-slim-jessie`

```console
$ docker pull openjdk@sha256:76ca906f5c9b794b0aff311798640c3ad08419b0f5ee3d52c6b3506916037d8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `openjdk:7u171-jdk-slim-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:9d3da5ee7e60a5ea147494d68bd7f9e09c2f8523dfe935366f312d8e8df90341
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.4 MB (149368277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b8ca6278e4babda8d59babcae822cbcfd270f0db387e4cedeaadbeaac84744`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 11:15:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:15:32 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:15:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:15:34 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:29:22 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Apr 2018 04:03:46 GMT
ENV JAVA_VERSION=7u171
# Tue, 10 Apr 2018 04:03:46 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Tue, 10 Apr 2018 04:05:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb9677eb5994c545214796f8413ba73dbf4626fbb577aad1372c07946932a67`  
		Last Modified: Wed, 14 Mar 2018 13:18:05 GMT  
		Size: 463.7 KB (463726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c48310f4a16bd94a053595d920462410c502a4e31aa3921d14efb305625adbd`  
		Last Modified: Wed, 14 Mar 2018 13:18:05 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5aab639445cc92fdb05b5bf2216d779f1e5f2518e30633e6e0605860b980e5`  
		Last Modified: Wed, 14 Mar 2018 13:18:05 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd523785ac9b6c1e3185e5eee570bf5ecdd1f13b2e8e59d3cf3efba84367066d`  
		Last Modified: Tue, 10 Apr 2018 04:38:39 GMT  
		Size: 118.8 MB (118781771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u171-jdk-slim-jessie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:cb60dd51a3c6e8395806eae5a18ff97b2cdc00286f627b31b2d9334ddc753d42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121202936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a91e895be1924fa259887057cd066965c15276025f3e52cb54ebc2fb58ec50fb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:54:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:54:52 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:54:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:54:58 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:58:54 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Apr 2018 04:00:17 GMT
ENV JAVA_VERSION=7u171
# Tue, 10 Apr 2018 04:00:36 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Tue, 10 Apr 2018 04:06:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e7dce196c2b3ec395266d9a54e3e86ce2370094ab2afcd4105523de42387b5`  
		Last Modified: Tue, 10 Apr 2018 04:11:51 GMT  
		Size: 457.9 KB (457899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c48cff4a86f2532c3b64dbc60b9640b85ae94744e878f345887d5dd8e54030`  
		Last Modified: Tue, 10 Apr 2018 04:11:50 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81258555389907120383cb0bbd1face67741e609245bb613a037b0a4514a0cdb`  
		Last Modified: Tue, 10 Apr 2018 04:11:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77804c205ecbd4c1e7e179f071942b7ef171d1fda1768a867d310abd5b4201c`  
		Last Modified: Tue, 10 Apr 2018 04:20:57 GMT  
		Size: 93.3 MB (93256481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u171-jdk-slim-jessie` - linux; ppc64le

```console
$ docker pull openjdk@sha256:d11cd9a85349f99dd6241b2766b34bed8662f1856d9d89fa22f950556d950464
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125584632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5898a2b3d1fd44338a4f6f3aa79ecbbfd691eab5c5234837c43d0c8231e397a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:43 GMT
ADD file:27ae8e2821fa9503c72fac99c983a370df91d52d7a5b3423149597f1e7809a7a in / 
# Wed, 14 Mar 2018 00:32:44 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 05:25:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:25:53 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 05:25:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 05:26:04 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 05:45:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Apr 2018 03:00:12 GMT
ENV JAVA_VERSION=7u171
# Tue, 10 Apr 2018 03:00:14 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Tue, 10 Apr 2018 03:11:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:5853f0e07e55a691985bbc1b5abe444cd0a1293cf6b5356cbc6b27b3cbd790ef`  
		Last Modified: Wed, 14 Mar 2018 00:39:27 GMT  
		Size: 29.3 MB (29311797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a23d0d988d639cb2abed3fbe682af7bc919fac598a0cb4258398705b86dec85`  
		Last Modified: Thu, 15 Mar 2018 06:11:35 GMT  
		Size: 460.2 KB (460246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bb6680cccebe9a737c4c87a3e289c930abf7d89966374066bd85cfa50912a2`  
		Last Modified: Thu, 15 Mar 2018 06:11:34 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704e8a024ee8d914c5eaf0ff6890773888432ad7f97a1f4ca0d87affdc53c0f1`  
		Last Modified: Thu, 15 Mar 2018 06:11:34 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898f13b7f08406a989b68d7fdeb8f19ae8586aee686d4cd182f519c93e4698b5`  
		Last Modified: Tue, 10 Apr 2018 03:17:27 GMT  
		Size: 95.8 MB (95812209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

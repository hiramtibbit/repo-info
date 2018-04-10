## `openjdk:7-jre-slim`

```console
$ docker pull openjdk@sha256:8811e99efd83ac62eca5c884565793978a74ccb49a4b34a702ba71d05aa825ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `openjdk:7-jre-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:ddf2a68ad7d5cecb885ff870aa9efb5e1c1cf2cff76625111e3b5f5ebf88c105
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104902679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6ef844dd63e3558fdbbab96d391f80a6c234106b9870b3f74009f1d267c6784`
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
# Wed, 14 Mar 2018 11:15:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Apr 2018 03:40:02 GMT
ENV JAVA_VERSION=7u171
# Tue, 10 Apr 2018 03:40:03 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Tue, 10 Apr 2018 03:40:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:9751ff10474e698d3ad33929bc4cd0e2065f5704d3c02c5eb09a9d64705ce908`  
		Last Modified: Tue, 10 Apr 2018 04:33:51 GMT  
		Size: 74.3 MB (74316173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:b67c805a829d143e78f574ea16a1559ece2a45a80e48e4c97c58f226df0f3f51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92424515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfee200de92a8c03fc45dd6af45bff395d1a001d08f5a42743309f3d655ea488`
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
# Wed, 14 Mar 2018 20:54:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Apr 2018 03:47:10 GMT
ENV JAVA_VERSION=7u171
# Tue, 10 Apr 2018 03:47:11 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Tue, 10 Apr 2018 03:52:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:f30f0fdd8680ec81526c3acecba1c2d3359e5940d4154793deb361f5c5a53ccf`  
		Last Modified: Tue, 10 Apr 2018 04:12:08 GMT  
		Size: 64.5 MB (64478060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:49fd2385cb92b2ff3b1b70e5ea6747a2836364c694117256b14c35a9d996ce3c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95739034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f9af5a9eef0923944d250a4efa406d0da0b74cf568821818ef2178db3b04b2c`
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
# Thu, 15 Mar 2018 05:26:07 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Apr 2018 02:42:37 GMT
ENV JAVA_VERSION=7u171
# Tue, 10 Apr 2018 02:42:38 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Tue, 10 Apr 2018 02:50:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:27278e1e1c22d733b460efafa3e08bfc2e394731ce7883f4f8c16b2a4e2a141e`  
		Last Modified: Tue, 10 Apr 2018 03:14:52 GMT  
		Size: 66.0 MB (65966611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

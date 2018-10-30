## `openjdk:8-slim-stretch`

```console
$ docker pull openjdk@sha256:fd6d4231a4a33fc830e074c5bf23da99e5563a64b0a1656a84a7ac8274ef533c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:8-slim-stretch` - linux; amd64

```console
$ docker pull openjdk@sha256:d4c971bd7b2301f8021479548904c40624150fddd3b095771f3c02f7ee7fff3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90683015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44f08b787217cede1118ee6bfa9ff2d00b1f316c1356be2686516c8854babc46`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:27:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:27:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:27:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:27:10 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:27:10 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:29:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:29:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:30:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:30:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c48fea920808538de92047d2615ee465bb0461b3a9c7030e22784400268ffc`  
		Last Modified: Tue, 16 Oct 2018 05:56:37 GMT  
		Size: 454.8 KB (454840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beeeb05aa4653b87a6fa2268a20c197222c3223c01f5e20552ffaab449b6994`  
		Last Modified: Tue, 16 Oct 2018 05:56:36 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cf2782bd40eebe1d10c7efbde028e6c9321cd49331f11be5354633b0424a88`  
		Last Modified: Tue, 16 Oct 2018 05:56:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4c36b48cf1e371776a9e2d07b042373463ffbf2af7f0e5007df73bb426de33`  
		Last Modified: Mon, 29 Oct 2018 23:37:26 GMT  
		Size: 67.5 MB (67495071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425e838cd2fa8dcd9e00d2f53da4aea1f7982283b1640c3697bc50ba7ea8bba7`  
		Last Modified: Mon, 29 Oct 2018 23:37:11 GMT  
		Size: 246.7 KB (246685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-slim-stretch` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:4d6fba5f578d6dcdadab0eb219903461198c912b1bcd30aab60a48d9239a7ca5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77778413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c14d73966ccbc259acbcc3ce4e20ee2e781e3d6ff9569f564c605aab7d088fd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:13:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:13:35 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 09:13:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 09:13:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 09:13:37 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 09:13:40 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 10:03:44 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 10:03:44 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 10:04:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 10:04:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a37ecb314e4fc3bb5f9abc23bfb660388e8e8552bd586a01b41b77fc64798e`  
		Last Modified: Tue, 16 Oct 2018 09:25:59 GMT  
		Size: 447.7 KB (447675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d72cd2bb07250acf0f22d065e542f62dfce9e7a7d5886559a1c82091c1f8f2d`  
		Last Modified: Tue, 16 Oct 2018 09:25:59 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4071c2b551e55bc41e6824664d8598a78ccf4140096edab7d707825c128cf5c`  
		Last Modified: Tue, 16 Oct 2018 09:25:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f357af097be507790b608decc08b06b5859a889dffc3608e91e8f73b7d3cc3e9`  
		Last Modified: Tue, 30 Oct 2018 10:09:59 GMT  
		Size: 55.9 MB (55920645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e36b6081666e17ea7178f41714c5a956a702eb3b9a5f3fbe28f4693e4a93b0`  
		Last Modified: Tue, 30 Oct 2018 10:09:42 GMT  
		Size: 246.7 KB (246749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-slim-stretch` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:c89bafd90d2d1aa021adfbd6b3fbef113dc7a9ef5b7a956ddac3849ac57739ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78356997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cb420f357008d0e46150446986fd55b77af3739016f306c2a4803f46c83532b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:16:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:16:12 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 09:16:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 09:16:16 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 09:16:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 09:16:17 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:05:28 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:05:29 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:06:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:07:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7324d8335882a29fe8c0b3303f713c5dd3588ed146a85f7f92a197d97496f414`  
		Last Modified: Tue, 16 Oct 2018 09:31:31 GMT  
		Size: 440.9 KB (440859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18813557b28b8d4195cf501751c81b61df21e01bc189f1491b03c907cf4c0d5`  
		Last Modified: Tue, 16 Oct 2018 09:31:31 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09a9482aee914f7b29117d12b2deab0e7df6413b6fb4cdb5eee6a61017f7811`  
		Last Modified: Tue, 16 Oct 2018 09:31:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05b1690da890ff114c8e3e1f07d120448517fc1061a0ba2ae6af3fbc201f401`  
		Last Modified: Tue, 30 Oct 2018 09:21:29 GMT  
		Size: 57.3 MB (57337507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9675a1ab1b81fd4ad903a259c118ef5932e62d79b549f99f22dd7b6c49aa42f4`  
		Last Modified: Tue, 30 Oct 2018 09:20:58 GMT  
		Size: 246.7 KB (246666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-slim-stretch` - linux; 386

```console
$ docker pull openjdk@sha256:ca19d4f24b1ce63b7a3c98a99598571280784be8ba7d7993c49f0cc46e478696
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90549559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b4b35186b6ec5e182601ddff342dea7ccb3ca65bb154e612e4f348c88e6c89a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:33:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:33:06 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 11:33:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 11:33:08 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 11:33:08 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 11:33:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 11:08:54 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 11:08:54 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 11:09:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 11:09:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b9eebfdcdc50c2fc015902acabb5b081483ac42de35903ca5e8dc691b9d10e`  
		Last Modified: Tue, 16 Oct 2018 11:52:02 GMT  
		Size: 463.5 KB (463507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27881e30f22216eb10b6e36a1dc630790c4d1699785cf5ad4d23e7895ab0e21`  
		Last Modified: Tue, 16 Oct 2018 11:52:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077465a4cf36ea808537e9372e194ceafe0cb3dbaa47220476866c29545c89c8`  
		Last Modified: Tue, 16 Oct 2018 11:52:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fafa172f728e571b850c391ec2c1e1a7ff01447f9572d61b1efeec1e3450a89`  
		Last Modified: Tue, 30 Oct 2018 11:14:20 GMT  
		Size: 66.7 MB (66712381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaee5fea14f73087d66591f44002f5a3132c29100e0c5eb7713ac18e856f70ad`  
		Last Modified: Tue, 30 Oct 2018 11:14:07 GMT  
		Size: 246.7 KB (246687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-slim-stretch` - linux; ppc64le

```console
$ docker pull openjdk@sha256:427b1fde99ae85e302f863760bc8646a8e15668396260643d3a23476fc636e2f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81294619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eeee0c41a4c7bfb6f3e6c085e21f3c7e96403c5d279723085d35e3af8c6409f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:38:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:38:44 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 08:38:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 08:38:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 08:38:56 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 08:38:58 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:37:05 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:37:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:39:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:39:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432b5543e9d8921bca55226b6b02359bff99fcbba14a5e4fafef43e85cd22be8`  
		Last Modified: Tue, 16 Oct 2018 09:02:08 GMT  
		Size: 449.8 KB (449756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a61c52170d68c0edcd064ac4a7786028f65b5494155795a597c3b8b7acda56`  
		Last Modified: Tue, 16 Oct 2018 09:02:08 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9398f12a0760b2cbf7c8ee799fcea4024bf516290710da0b88d3bab698b4cca8`  
		Last Modified: Tue, 16 Oct 2018 09:02:07 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d20a422d5e293a9430236b0693d7a87329e655e4f4b20f6d9644a140044d2b`  
		Last Modified: Tue, 30 Oct 2018 10:09:27 GMT  
		Size: 57.9 MB (57857147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a545a7e682b7f461bca776b09c5b79c48a2801a20ce481c5d92af3a7af8350`  
		Last Modified: Tue, 30 Oct 2018 10:08:53 GMT  
		Size: 246.8 KB (246751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-slim-stretch` - linux; s390x

```console
$ docker pull openjdk@sha256:d84a01a1eacfa729d2c19c20c36063ae35dc96da65c76facae76fbfff2713269
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80063037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa4a56e1727934115aea67a4eb35e15d4efa85958619cae6d639a25760fb17b2`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:52 GMT
ADD file:a7cc9e5280b465a6e72c8b1331e009ddd18bff12c000c9e49ababac631179edc in / 
# Tue, 16 Oct 2018 11:42:52 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:51:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:51:17 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 11:51:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 11:51:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 11:51:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 11:51:19 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 12:08:12 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 12:08:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 12:08:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 12:08:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:b16a7816eac3ca0893b75f07b37e5e276ba331e1a35619343718d1c33f877877`  
		Last Modified: Tue, 16 Oct 2018 11:46:03 GMT  
		Size: 22.3 MB (22334662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e94b0d505f538ae54afb9dc971dc4f184f951b9b7c0a6386e55119be35cec7`  
		Last Modified: Tue, 16 Oct 2018 11:56:15 GMT  
		Size: 465.8 KB (465777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:accba0e259d42eea864d5eaade6d14caeb1b80f07936da1d4498a932c01a901d`  
		Last Modified: Tue, 16 Oct 2018 11:56:15 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fc725da6f78df007778d52100ad914a775759c2c780f3313ac9413f8b048432`  
		Last Modified: Tue, 16 Oct 2018 11:56:15 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136d2c4237b26e00e9e01fce51354494d4a9792a9f0a6864ae608cb740475ac0`  
		Last Modified: Tue, 30 Oct 2018 12:12:19 GMT  
		Size: 57.0 MB (57015510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfde6c133b6d5fb546b8ec54343b09254aa8f6faa4f7d0ea203ce15757ec6a75`  
		Last Modified: Tue, 30 Oct 2018 12:12:09 GMT  
		Size: 246.7 KB (246707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

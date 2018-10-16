## `openjdk:7-jre-slim-jessie`

```console
$ docker pull openjdk@sha256:3e7c37ba55392c1443522ce1ceea8c022f0e1acf5d4b871e7f37ec4156e1bfbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7-jre-slim-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:3557fb244cd1fd460ee64eb30a70d78b40f0b5f56b121be470a0a2943e18c06a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.2 MB (92212193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13049644935dc847b3abc36c24824373dbe158591a04b64d88504f6061d5730f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:32:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:32:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:32:09 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:34:45 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 05:34:45 GMT
ENV JAVA_VERSION=7u181
# Tue, 16 Oct 2018 05:34:45 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 16 Oct 2018 05:35:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8defe034fd48900ab2c6e8bd0efb090a2e8d7dc437c82e961339ec4ad7737`  
		Last Modified: Tue, 16 Oct 2018 06:03:14 GMT  
		Size: 463.7 KB (463743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d8dad75e602d23f8d377d9e8981537f979365546442ee03aabbe7a2826ae42`  
		Last Modified: Tue, 16 Oct 2018 06:03:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad497c7359958782aa0f99bcc986a3e88be017a1052c80d1f7b51d886c93c462`  
		Last Modified: Tue, 16 Oct 2018 06:03:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40288f52be3aae2e5f4181293b5ba574e71c221607bb79f2a29c8552c6ed1b08`  
		Last Modified: Tue, 16 Oct 2018 06:06:27 GMT  
		Size: 61.6 MB (61627449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-slim-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:ca93169cc05897eaff49c8d30e6c1c44760adb03d0dca93f91dd99f4312f4324
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.3 MB (80317148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18b8e8ae05d46b68225599265701688ad21547fcf1d5b749e56cba0853ee1167`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:50:34 GMT
ADD file:69b30c48e8faba6f806af50fceaf1e3c221790b8c792da2f95d196e874576d79 in / 
# Tue, 16 Oct 2018 08:50:34 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:16:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:16:19 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 09:16:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 09:16:22 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 09:18:30 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 09:18:30 GMT
ENV JAVA_VERSION=7u181
# Tue, 16 Oct 2018 09:18:31 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 16 Oct 2018 09:19:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:60074b2fffc5dcd4b352d0312d355ce10a4ab05ced3d44643c9b24e24d0e0677`  
		Last Modified: Tue, 16 Oct 2018 09:00:17 GMT  
		Size: 28.4 MB (28430766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aeec93c39892ab38a29c804d36b6e00fe148e151b04537b0d15730f9f491992`  
		Last Modified: Tue, 16 Oct 2018 09:27:25 GMT  
		Size: 456.5 KB (456464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc857170e080ede98a479682d6478fd31a131756212ac768dd59b0a9afa1f6e1`  
		Last Modified: Tue, 16 Oct 2018 09:27:25 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7ab62c4c593ba60dc90051684f35dfc9020702c624ecaa4061567dc0f0bf7b`  
		Last Modified: Tue, 16 Oct 2018 09:27:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6293f561ad165bb289b357e4066e22d3a854bce68af0c7879f5cd1101d20e7`  
		Last Modified: Tue, 16 Oct 2018 09:28:25 GMT  
		Size: 51.4 MB (51429539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-slim-jessie` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:e193a506b8f0781fd0f793ef7a36eadaf82ab074cc17bc385513f8653acbd4ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (77019392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1340cd0e01cc49c9f78d79c4f79826304606e87a6dc6611fe183b4705322201c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:27:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:27:59 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:28:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 13:28:02 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 13:31:13 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 05 Sep 2018 13:31:13 GMT
ENV JAVA_VERSION=7u181
# Wed, 05 Sep 2018 13:31:15 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Wed, 05 Sep 2018 13:32:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20732298c973041fa9dfd5140384088b681b5210d358af234f804c92ea624af8`  
		Last Modified: Wed, 05 Sep 2018 13:45:03 GMT  
		Size: 432.3 KB (432314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:306c16b05ac260bf5495a9d4e58021eaee24fbbbb56c335ef2a1c49ad0965ec0`  
		Last Modified: Wed, 05 Sep 2018 13:45:03 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1850d26c80f8e448e6e27b56b953c98e21ec755978c144ce38fc7579edac845e`  
		Last Modified: Wed, 05 Sep 2018 13:45:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e76ac02efaea45192d900e30d92ea00ac30e4453b2ad89ef555c01b0b50faa`  
		Last Modified: Wed, 05 Sep 2018 13:47:06 GMT  
		Size: 50.3 MB (50299697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-slim-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:53037717a9567cb5e3275b9ddf635989cdae124fb02b24164d9fac5093b7929d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (103951170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e02f3b898d1bc6d2493199b1c6faa2c9949fe57b0746984964d667bc541f08`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:06:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:06:49 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:06:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 13:06:52 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 13:12:41 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 05 Sep 2018 13:12:42 GMT
ENV JAVA_VERSION=7u181
# Wed, 05 Sep 2018 13:12:42 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Wed, 05 Sep 2018 13:14:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec388e0f3fa2dac46c15155f8c5d833c73c83c38c56ba879b7b9ee1f82c33721`  
		Last Modified: Wed, 05 Sep 2018 13:29:52 GMT  
		Size: 466.3 KB (466290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c171584d41ec51129431a206158a478453ba12d8395205e3c8025530b52569`  
		Last Modified: Wed, 05 Sep 2018 13:29:52 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ecedb5dbb7ded7bb71dc9d3bdfd303cc59568a829ded2c8f3b03ae675d64fa`  
		Last Modified: Wed, 05 Sep 2018 13:29:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc8e075cb3b18caf8492020c06fd7be80317425b00a717f0ee6f28556c25426`  
		Last Modified: Wed, 05 Sep 2018 13:32:46 GMT  
		Size: 73.2 MB (73214433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

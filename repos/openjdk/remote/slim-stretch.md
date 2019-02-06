## `openjdk:slim-stretch`

```console
$ docker pull openjdk@sha256:60e2aff0fcf757251fe6602ce27f0348e4bc8cf682846f081ebf6363ceb31ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:slim-stretch` - linux; amd64

```console
$ docker pull openjdk@sha256:56df13c881827697b434618a2133c1fd71ddaf50a55956cccccbdeee9c695273
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.1 MB (294078371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20be262dd659edfe7430a4ce90f0ad414b98f4fa1c167882ffbf38f38ce4d971`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:25:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:25:35 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 06 Feb 2019 08:25:35 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:25:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:25:37 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:25:37 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 08:25:38 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 06 Feb 2019 08:25:38 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 06 Feb 2019 08:26:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 08:26:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187061ad2a2978b8c52f307ede3a915e9134a3bb8f6ea795e67ad31524381cdd`  
		Last Modified: Wed, 06 Feb 2019 08:51:41 GMT  
		Size: 454.9 KB (454874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e07dee1e7e6bfded60c645d3d9e45bcebe2f8b44e74bf72e08dc1e4fb8c43a`  
		Last Modified: Wed, 06 Feb 2019 08:51:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9703bd99cc4e2d2c93c7346046d96e5ca406f66233267e835c3bee7591a8b092`  
		Last Modified: Wed, 06 Feb 2019 08:51:41 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0990bb7f893767d87d3ccbed0f56dbfe766648ac7231b2c36b1a9a4d109a35`  
		Last Modified: Wed, 06 Feb 2019 08:51:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:436d3fc2ae9e8ef9c8dc0711d6afe85f903f656c395684024839aa15fffd16a3`  
		Last Modified: Wed, 06 Feb 2019 08:52:06 GMT  
		Size: 271.1 MB (271122609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:slim-stretch` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:1e776da9f8dd08daa334fd180128f037e19502f2fd9a98c6c4f46cb3d108a1ca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.6 MB (269598957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3587b7b54d49807e615c22614e9a212c370d94d636eabc0bb8c78e90852e5131`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:59:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 11:59:55 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 06 Feb 2019 11:59:56 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 11:59:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:00:00 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 12:00:01 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 12:00:02 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 06 Feb 2019 12:00:03 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 06 Feb 2019 12:02:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 12:02:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c857c9abd17ad597c20509970fbf55c7260550d870bd68c188e4aef3de5e7e24`  
		Last Modified: Wed, 06 Feb 2019 12:37:08 GMT  
		Size: 440.9 KB (440887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fe57e2461f417a84f0c7e2947efdd70a8c4cb6160ef633e0a7339e7ffe4493`  
		Last Modified: Wed, 06 Feb 2019 12:37:08 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5367174f3991bc5ec196a7b0f0c3e286312013447067b8bdabdf6a0065fae7db`  
		Last Modified: Wed, 06 Feb 2019 12:37:08 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af31ad7097de4851a24eb3e01ad2178ccf7e4906fdd5b00c935ceb50ec99937`  
		Last Modified: Wed, 06 Feb 2019 12:37:08 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7b6368ed09518aaf8cb329a8a13ec9b495a8667ecf61c5d1682c6e6e4f3b2b`  
		Last Modified: Wed, 06 Feb 2019 12:37:55 GMT  
		Size: 248.8 MB (248807305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:slim-stretch` - linux; 386

```console
$ docker pull openjdk@sha256:7d5a8ea7f9efddce914e614c56e1f0f258f97eaeb417da2222835feda11ff2ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.0 MB (357007321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74f707bb28435a9f72b71ed260b2ed0b9069fbc16022c3c58f431bb4b008da77`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 13:16:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 13:16:38 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 06 Feb 2019 13:16:38 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:16:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:16:41 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 13:16:41 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 13:16:41 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 06 Feb 2019 13:16:42 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 06 Feb 2019 13:18:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 13:18:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708aa004e8e8a109b6c6d8294b4dcbf5c50576fb117f1e102a8631294a99214f`  
		Last Modified: Wed, 06 Feb 2019 13:38:42 GMT  
		Size: 463.5 KB (463543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6207b113fc820e3d0bc7061d7fef6879277c1edd1450a2b0cb036d0071d8830`  
		Last Modified: Wed, 06 Feb 2019 13:38:42 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41790b91d08649bde073b7cddbd61bbce6793c1346d8fc3ab2e802406cda4a53`  
		Last Modified: Wed, 06 Feb 2019 13:38:42 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad497dcd14a08f52865d834e4d33ca49d3ec413dcd56cb6c360505c63292eb2`  
		Last Modified: Wed, 06 Feb 2019 13:38:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441ba679dee16733033f5d9d98bb82f26a7d86e553bbbdfd808be35c917d752e`  
		Last Modified: Wed, 06 Feb 2019 13:39:55 GMT  
		Size: 333.4 MB (333396208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:slim-stretch` - linux; ppc64le

```console
$ docker pull openjdk@sha256:433366e7877a34d268b2fd7a8b29eab5dc648c37602a5c2d89ce8a2da67e3d9c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.3 MB (262275559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1581d0ff53758cabbb3a0be35759e6bdf5db029cc0bc02f022b950aa831635c`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:22:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 11:23:04 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 06 Feb 2019 11:23:05 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 11:23:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 11:23:12 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 11:23:13 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 11:23:15 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 06 Feb 2019 11:23:17 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 06 Feb 2019 11:24:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 11:24:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29dc20b3ce8c37688658ff595852548d704112b0ebb0d3af8f062192264d7928`  
		Last Modified: Wed, 06 Feb 2019 11:36:54 GMT  
		Size: 449.8 KB (449778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5736af875eb3850d160e7d2c24ea14c08fb1e3b06dde71026d8ac8e54a89f012`  
		Last Modified: Wed, 06 Feb 2019 11:36:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd18ada0624ffb7ed06521f45402c317d320dd620a0666a63439dec7e19a588`  
		Last Modified: Wed, 06 Feb 2019 11:36:54 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b18bcfcf1e2b8c8c8af44316bfa0362952cccc0478d88a28bf29c604c775b3`  
		Last Modified: Wed, 06 Feb 2019 11:36:54 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e43f348a81f7e3f7a2a7ba5289c1e165eb5599b1b101a6e4520a0c90422c6f`  
		Last Modified: Wed, 06 Feb 2019 11:37:25 GMT  
		Size: 239.1 MB (239069783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:slim-stretch` - linux; s390x

```console
$ docker pull openjdk@sha256:8ab0bb44a7d41d2140fd0ff82255307e3b386589b229db70907256bc2dbc89f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.1 MB (262108698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:842712c3e25c11f33cfa9d8eda51f827458a025d70a3145d86fb3d2479e987fb`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 13:17:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 13:17:35 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 06 Feb 2019 13:17:35 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:17:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:17:36 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 13:17:37 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 13:17:37 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 06 Feb 2019 13:17:37 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 06 Feb 2019 13:18:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 13:18:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c438cc50f33a89006d37f9ee58571a62bf167eff7389eff6777b14be5377e640`  
		Last Modified: Wed, 06 Feb 2019 13:22:43 GMT  
		Size: 465.8 KB (465790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd393d6a0d5b33467105251857c9a7c106db438558822f7838cc5302a1ddbcd7`  
		Last Modified: Wed, 06 Feb 2019 13:22:45 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9d378ec16036c9c56a8a47887bd16124e85b3eb75fbd0e3c59b41e0bdf17e`  
		Last Modified: Wed, 06 Feb 2019 13:22:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6043df0aaf4abf4492efdc0f20ef7027d817d8d71b4e3741253f8246a66d226a`  
		Last Modified: Wed, 06 Feb 2019 13:22:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1311021d5f6b6463e88b11761905559a8900c4b522943040da1ab59bcaf892`  
		Last Modified: Wed, 06 Feb 2019 13:23:01 GMT  
		Size: 239.3 MB (239288971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

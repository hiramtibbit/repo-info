## `openjdk:jre-stretch`

```console
$ docker pull openjdk@sha256:2ba9725ecccce3fd7076d0cf5dae69362bc895aee849bb32142674105ff952ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:jre-stretch` - linux; amd64

```console
$ docker pull openjdk@sha256:01dd94d13cf8421ebf2062a9ccac4454107e860998e7ddd7041c2604a6cf0b78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.6 MB (192634088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c8b7f0ab84caf4910610ac3317bca41f6ac93d5a30981109776baf7919fd870`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 04:01:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:01:50 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Tue, 05 Mar 2019 04:01:50 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:01:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:01:52 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:01:53 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 04:01:53 GMT
ENV JAVA_VERSION=11.0.2
# Tue, 05 Mar 2019 04:01:53 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Tue, 05 Mar 2019 04:02:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afad9c4aba6cc6f5b4e85b14e0a16c4807fdcc8a5e4c43a532d6aa06f5d5664`  
		Last Modified: Tue, 05 Mar 2019 04:25:25 GMT  
		Size: 852.9 KB (852890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1519e9297a977488ae8ff5c877840e630c7acff7bd56e8154f56e9fe5431f7`  
		Last Modified: Tue, 05 Mar 2019 04:25:24 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50db805a2e2130e23d677452a9392d29dc9cd1ae0676e5b31dba0fd23b4ccae8`  
		Last Modified: Tue, 05 Mar 2019 04:25:24 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ba6d94bd68e7f0bb4379800050adffad946ba2400b8ed23807487a0e5df1f4`  
		Last Modified: Tue, 05 Mar 2019 04:25:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:164c583a133ddf8aa4645ba59439e769e8374fb84032bce5b0ccb1355560ba3a`  
		Last Modified: Tue, 05 Mar 2019 04:25:55 GMT  
		Size: 131.3 MB (131315965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-stretch` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:18abafdb9203eeeb7887b29f31154604f076468c2711ec882931b7fba60b1cb5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.5 MB (173532932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9296762f34adf74030754a76ae7adae12a45998f8dbb0d565460adf4ed4a9fbf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:54:45 GMT
ADD file:0d24c375e856f1e75f5cb0a6766b22665902b1a6940a87d2c7fc0e61f658e944 in / 
# Tue, 05 Mar 2019 09:54:46 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:33:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:33:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 11:17:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:17:15 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Tue, 05 Mar 2019 11:17:16 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 11:17:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 11:17:18 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 11:17:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 11:17:19 GMT
ENV JAVA_VERSION=11.0.2
# Tue, 05 Mar 2019 11:17:19 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Tue, 05 Mar 2019 11:18:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:35963a726ee5d52a496a31b3c1f6accaf90ad61bf0e1e0bd8aad2cf66ab8cdb3`  
		Last Modified: Tue, 05 Mar 2019 10:02:26 GMT  
		Size: 44.0 MB (44029811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:088a52eee835f09abb5e08bfd27b8cf0960dbcd0d3f28aa0e602654df58ce922`  
		Last Modified: Tue, 05 Mar 2019 10:43:14 GMT  
		Size: 9.9 MB (9851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2616673f78baa6ea1b22951cb4a50ea0c9db5f109d098f00b5bf86b3e29a7b51`  
		Last Modified: Tue, 05 Mar 2019 10:43:12 GMT  
		Size: 4.2 MB (4158962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29e62902178d17f798c00d2c12d1ce2afa56979e692b609138a6d0fce78bfbe`  
		Last Modified: Tue, 05 Mar 2019 11:39:23 GMT  
		Size: 845.9 KB (845894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5545ca615db06983c9e0b580ca2e1aaa62e026f718255577fe15cf8ca7ee3c`  
		Last Modified: Tue, 05 Mar 2019 11:39:23 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e17ab52dcd695dda55e6e47ac5ecc335314eee70515c8eb1de3f9729c4a6386`  
		Last Modified: Tue, 05 Mar 2019 11:39:23 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67dc455cdbdd8038e744e3846ec0d4536b55925aba27af2e0b3a592cf18081ba`  
		Last Modified: Tue, 05 Mar 2019 11:39:23 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b957e323f10317e368624b4c0e635f6aee288bee4cad96f5c84189ab8e3848d8`  
		Last Modified: Tue, 05 Mar 2019 11:39:53 GMT  
		Size: 114.6 MB (114645704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-stretch` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:fcf5a19669e654bc8b638eb4b3fb4a69976073c6d07d4ef9169464a11a75fff5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.7 MB (179678185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcda5a20d138ed644730c2f7d600f6b25001dfe327f15db8c14a0ab3c5cb8e2d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 12:02:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:02:43 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 06 Feb 2019 12:02:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:02:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:02:47 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 12:02:48 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 12:02:50 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 06 Feb 2019 12:02:51 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 06 Feb 2019 12:10:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f6528b47c72f6dd5aabc947e8db01aa470adc3fdb4bbbcf052f9c3ad6ae8e`  
		Last Modified: Wed, 06 Feb 2019 10:52:36 GMT  
		Size: 9.7 MB (9728878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b5f3607713f2dab247e619fafcffd7c9edf4aaffc9e701660a76ccf324b742`  
		Last Modified: Wed, 06 Feb 2019 10:52:28 GMT  
		Size: 4.1 MB (4093098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f78a9a3946c048cd1989adcb19ce142726814f9404f8ba27e6f67109ffbbcb4`  
		Last Modified: Wed, 06 Feb 2019 12:38:38 GMT  
		Size: 839.2 KB (839181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728a1a214916eb4a509ab6c7284ffb2344b51a370d254df297f6a1d765144075`  
		Last Modified: Wed, 06 Feb 2019 12:38:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d5fd32d26abfb2ff62eadb06426d7184037b72279f240b11e9317cdf0ffe45`  
		Last Modified: Wed, 06 Feb 2019 12:38:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a30f22e14ed678de92bba013ac8a02d03bad43b02b10a5e505a8d893a6d05dd`  
		Last Modified: Wed, 06 Feb 2019 12:38:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa999a42823c7394284a925e6beb791129f931e6e5e9eb1ec9afa6dbe02bd37`  
		Last Modified: Wed, 06 Feb 2019 12:39:23 GMT  
		Size: 121.9 MB (121891447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-stretch` - linux; 386

```console
$ docker pull openjdk@sha256:0bf6286e7a9003b152f6bfa6c4baa22505e7c8527c7f380674d6941b7a5384ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.7 MB (198651072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea15aef07a654e1a4d92c7ed6900a7f91c9e8f0f73d509094d1da5217c600d68`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:07 GMT
ADD file:70c26933810136bdb5c394bab98ac1119dd6ab650db410d21a0a16098b8a6ae2 in / 
# Wed, 06 Feb 2019 12:01:08 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:49:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:49:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 06:21:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 06:21:49 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Thu, 07 Feb 2019 06:21:49 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 06:21:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 06:21:50 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 06:21:50 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 07 Feb 2019 06:21:51 GMT
ENV JAVA_VERSION=11.0.2
# Thu, 07 Feb 2019 06:21:51 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Thu, 07 Feb 2019 06:22:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:56c1dc1a93dfeb7eb66abd8197c3fdfe7d7393c9757be0a44ca2f624b6e5c684`  
		Last Modified: Wed, 06 Feb 2019 12:07:42 GMT  
		Size: 46.1 MB (46069815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d401cb48eb9dd4b814e64479a4a5e9150a56d439c01778f0b95ff0689f82cd17`  
		Last Modified: Thu, 07 Feb 2019 02:03:03 GMT  
		Size: 10.8 MB (10799008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c068a67acc556d25d2fd2dc13d5929a34ee0395cd208b418f73bf15fc17e0955`  
		Last Modified: Thu, 07 Feb 2019 02:03:02 GMT  
		Size: 4.6 MB (4560874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404daee469e7110f87d6cff18a56b702c9a559f4ed1a9dbfc19dd4b7f467a8f6`  
		Last Modified: Thu, 07 Feb 2019 06:39:52 GMT  
		Size: 861.8 KB (861782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485a88101bd3bac4d9996fc573ac38d13cbcc047dd0399d55d3be0bf0f3b88bd`  
		Last Modified: Thu, 07 Feb 2019 06:39:51 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c722e5a788ece8ebf15d8f9aa8bd003eaaef8297bd4b6fdb4e31d2d48aab18a3`  
		Last Modified: Thu, 07 Feb 2019 06:39:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cacd2a35903e7de34f1af1aa31dc8b4068e69df9d2db1b6acce0f007e0d2c6d`  
		Last Modified: Thu, 07 Feb 2019 06:39:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2f1ef3bf48c3a6f39317b17207da4bf03b7fdaf1927607d5e8e44acf51f848`  
		Last Modified: Thu, 07 Feb 2019 06:40:20 GMT  
		Size: 136.4 MB (136358991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-stretch` - linux; ppc64le

```console
$ docker pull openjdk@sha256:5900e1f3b2c377af0988ea0d4f53282ccc207ef426c31be308714a50978f9e09
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.2 MB (180191721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae9c6348c7a506a8c26855136e6a0d2ec5e59ab5b431afbd03d02f92903472bb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:33 GMT
ADD file:dbc825fea111271dd16d8443e8df30f00e4bfb82365f49430e4b697866955e25 in / 
# Wed, 06 Feb 2019 09:26:35 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 19:08:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:08:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 20:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:22:13 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 06 Feb 2019 20:22:17 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 20:22:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 20:22:30 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 20:22:34 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 20:22:39 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 06 Feb 2019 20:22:42 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 06 Feb 2019 20:26:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:3c6e73e1f3f727588bd1de44f5524879a3591bba13b256a67f0a03adbb788322`  
		Last Modified: Wed, 06 Feb 2019 09:30:55 GMT  
		Size: 45.6 MB (45616945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31cd7008a155452b9ece7c7dab0d6e7567ef8c55f2df5ff999e45c309031982`  
		Last Modified: Wed, 06 Feb 2019 19:28:30 GMT  
		Size: 10.0 MB (9986460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f96c2690a341be01eb7e79a7624948d65549f3a26a1adc1b9a5a669523505ea`  
		Last Modified: Wed, 06 Feb 2019 19:28:28 GMT  
		Size: 4.3 MB (4295659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f20bf77b1e398ca4193dcade8311e979631c9beebc1553ccb5b6209e93c223`  
		Last Modified: Wed, 06 Feb 2019 20:39:19 GMT  
		Size: 848.3 KB (848322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a83c5c7b66403c94de8e3541c3d87b1b419e40f3e93d3841d03451090b66341`  
		Last Modified: Wed, 06 Feb 2019 20:39:19 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6870abfb3914790676e136d9b59c3b0205d7c5be3d7ec0e46b93d7ff972ad9`  
		Last Modified: Wed, 06 Feb 2019 20:39:19 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e30474f32a61fc58d9b82b72563bf7df099cc09a31e6869241e12300f8466c8`  
		Last Modified: Wed, 06 Feb 2019 20:39:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786130e937d60bb5c02df653677c679c8df62533f5ce186daacf83b534eb9794`  
		Last Modified: Wed, 06 Feb 2019 20:39:41 GMT  
		Size: 119.4 MB (119443731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-stretch` - linux; s390x

```console
$ docker pull openjdk@sha256:90e41e0ec46b59296da8cc0f0f07a11a56480dbf21a36824b893ee298ff27dc7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.9 MB (179895277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41ffc92526dcc0f8dbafca72b21428706ae8a30e9c76215ce16e11dcd89cfa83`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:08 GMT
ADD file:8c452240b3657ec4cc6568239a4d933bc75fd958464a3950f67912097968fff8 in / 
# Wed, 06 Feb 2019 12:43:08 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 15:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:27:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 17:55:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 17:55:19 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 06 Feb 2019 17:55:19 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 17:55:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 17:55:20 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 17:55:20 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 17:55:20 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 06 Feb 2019 17:55:21 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 06 Feb 2019 17:55:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:e6786603fdb9e4ea361b73be3870f1118d3882c1619dfbbf9dec4d483fa32e76`  
		Last Modified: Wed, 06 Feb 2019 12:46:43 GMT  
		Size: 45.2 MB (45214898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac487c4bc63f07da92ff3259ca4d0fb30f86c5647f775010d11e6d51131b848`  
		Last Modified: Wed, 06 Feb 2019 15:34:22 GMT  
		Size: 10.3 MB (10312678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e9925f73763aaae5f9ccd2b0c87ae90efbee12ee8698074a1056e25c2e6360`  
		Last Modified: Wed, 06 Feb 2019 15:34:21 GMT  
		Size: 4.4 MB (4371900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2286c2cd611562cb26ce49eda3f9ff0c0f161921a76086ce7329a049505a18e1`  
		Last Modified: Wed, 06 Feb 2019 17:59:15 GMT  
		Size: 863.6 KB (863650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc921fa65cc04f4b5bbd1bf4e3e0d2db9a5582fa9cc67141c2a69050d555ec2a`  
		Last Modified: Wed, 06 Feb 2019 17:59:15 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7037f77e1cb98a8424fdc8f1bb4cdb34579db7ef60efe2a38525a66a54d00f`  
		Last Modified: Wed, 06 Feb 2019 17:59:15 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e939048949b18e9e4335baaf3d82b9feaf002a0c6875d305cc7c3946a3cbda`  
		Last Modified: Wed, 06 Feb 2019 17:59:15 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf07e8487ffc75ca65688f3bae1d696a9ed7ba8e3f510a5e55cdcd5f75bbf91`  
		Last Modified: Wed, 06 Feb 2019 17:59:32 GMT  
		Size: 119.1 MB (119131549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

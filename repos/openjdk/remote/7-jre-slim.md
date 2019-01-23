## `openjdk:7-jre-slim`

```console
$ docker pull openjdk@sha256:4fd9d1645b58cd95e682c1fc3ec78e71a55081f8d81228ce2f6ebd3a35d90d35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7-jre-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:64c864ec77d2a51cfe19b9dbf2db1de0d317fff73d1e98274b28f8192b270d62
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.3 MB (92272562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13447460db7d479367d98262ea5b6aeabde455b2b8d67c9864b88a12b8a1620b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:24:52 GMT
ADD file:e1259aaf5127eb984e8800180bcdf23aae11a476ace06567c5e0571cba94552d in / 
# Tue, 22 Jan 2019 19:24:52 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 21:26:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:26:47 GMT
ENV LANG=C.UTF-8
# Tue, 22 Jan 2019 21:26:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 22 Jan 2019 21:26:49 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 22 Jan 2019 21:34:15 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 22 Jan 2019 21:34:16 GMT
ENV JAVA_VERSION=7u181
# Tue, 22 Jan 2019 21:34:16 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Tue, 22 Jan 2019 21:36:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:a82c8be864555402cbecf293fa92a8b392e48065b42c509fc1bfbb79a2e0d951`  
		Last Modified: Tue, 22 Jan 2019 19:34:49 GMT  
		Size: 30.2 MB (30152186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2a842500aa98eb09fa7bdcbcf935e84151aadb2696605f1a0675c73cc92d0d`  
		Last Modified: Tue, 22 Jan 2019 21:44:11 GMT  
		Size: 463.8 KB (463803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c661eb0136918cabd559d95e10ea28f432c641a57b3df6cabf771a7cccbbfb73`  
		Last Modified: Tue, 22 Jan 2019 21:44:11 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1e3aee7f84190f45eafedd7808f317ae5a3f504087822db6aa44a29cee6794`  
		Last Modified: Tue, 22 Jan 2019 21:44:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ecb1a5af8f9eb2861e6abba16da4528f0cb7b6974e479e021560b47d532852`  
		Last Modified: Tue, 22 Jan 2019 21:45:19 GMT  
		Size: 61.7 MB (61656198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:0da4480b9806e5d2cedbbf4ba7de19f956efc202bab5cb3ae64db0b07477b06e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80381326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de9e569a0f35e6987e771d1fe2859694f454ae392dbd956c24664c95be0fd8ec`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:34 GMT
ADD file:d56fba3965a9434864a05fce7731cbec09ec6c3ea34b8a3e72a65a597ee52931 in / 
# Wed, 23 Jan 2019 09:50:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:57:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:57:50 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:57:55 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 13:02:54 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 23 Jan 2019 13:02:54 GMT
ENV JAVA_VERSION=7u181
# Wed, 23 Jan 2019 13:02:55 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 23 Jan 2019 13:04:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:e3950d1cc969b5b5674e279562ac17636104e44548e2dea0efcd3c7cc5867616`  
		Last Modified: Wed, 23 Jan 2019 09:59:24 GMT  
		Size: 28.5 MB (28459288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3763d98ea03ee233f604940ead709a70e0bc8a3dabe82c963d4cf3736f42e7`  
		Last Modified: Wed, 23 Jan 2019 13:12:26 GMT  
		Size: 456.5 KB (456522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83436a113941dd48780aff3dd0570f3a52e62cabd10f7dfcc7abb6f531fd4504`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9b39f7f31bf1d27cf03a6c8c8064f2aa83d493e3e99f894051099f04a62060`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12f0b9ce0515c655100e4796b5cacb4799edd6c1c071e27a0f2babc0b1d0c37`  
		Last Modified: Wed, 23 Jan 2019 13:13:27 GMT  
		Size: 51.5 MB (51465139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:4049f85b6eaa055504ae1cb0b014f0ea5a2e51a46dc7de40f211aaf3c86192f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77065195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da75ff82a061f8323e60445f194be8e217883f10a5b8b0f9c9ee8669f7b07069`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:59:55 GMT
ADD file:19631047950a3f9967d7d8cbea3b84a0cddf79ddd9f60830bfc47d72d64cc7f9 in / 
# Wed, 23 Jan 2019 12:59:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:56:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:56:17 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 14:56:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 14:56:20 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 15:01:53 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 23 Jan 2019 15:01:53 GMT
ENV JAVA_VERSION=7u181
# Wed, 23 Jan 2019 15:01:54 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 23 Jan 2019 15:03:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:885c59d73b75e3d8332a6700e65477f75827110d7f375fa1fc28b4d7a4d59d8c`  
		Last Modified: Wed, 23 Jan 2019 13:09:36 GMT  
		Size: 26.3 MB (26304841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9320cb2a494bcd30a4da6384309ddc8849a542a19d38849ceb94ccdcc493f392`  
		Last Modified: Wed, 23 Jan 2019 15:08:46 GMT  
		Size: 432.4 KB (432391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bce4a964da349309f930489c9c4d010256c71763b089025fb92983d34b68cc0`  
		Last Modified: Wed, 23 Jan 2019 15:08:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050ea0c13ba346f87a98ab39b9e890e58640a84bf81ff659777950ba92676f3b`  
		Last Modified: Wed, 23 Jan 2019 15:08:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:531a821adad38cfdec29c39253913357483d32946e45ddeee07657a7cdc0f108`  
		Last Modified: Wed, 23 Jan 2019 15:09:50 GMT  
		Size: 50.3 MB (50327586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-slim` - linux; 386

```console
$ docker pull openjdk@sha256:86b8974a2d6699dbc6a68bbf5660814ace72eecdc825099ba71964b73c122a33
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (104025410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66dab59a4baefe53efeea1e84e02070877c8f1e1924d46b1d0d45cc48555e20f`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:44:18 GMT
ADD file:1a212513c2c6d6c2ebcdd2881510fd0e2497570f41edeea42cc4def19dfc6dcf in / 
# Sat, 29 Dec 2018 11:44:19 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:05:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:05:12 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 21:05:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 21:05:13 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 21:15:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 21:15:09 GMT
ENV JAVA_VERSION=7u181
# Sat, 29 Dec 2018 21:15:09 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Sat, 29 Dec 2018 21:18:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ff487be3b1881d864168a704e636a085151c5b169d9417e82a6370e2b4423a9d`  
		Last Modified: Sat, 29 Dec 2018 12:06:40 GMT  
		Size: 30.3 MB (30298094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb3fc7f47bf20412e3f6ec9a5aa56bcf8843c3330fb3f53f9091b06b806718c`  
		Last Modified: Sat, 29 Dec 2018 21:24:43 GMT  
		Size: 466.3 KB (466335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9090822fd4d3611ef4919d18c33365183943507df89b1fe2fec9528f2b67469`  
		Last Modified: Sat, 29 Dec 2018 21:24:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25930c678a2f712d3547b7ea3da6ff7118eb2a0d2a1e2df4dd6c3c98b589a9a8`  
		Last Modified: Sat, 29 Dec 2018 21:24:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f6e6a4b850f4c946ae3abb295800f175b3b9a8811684019d8fe00c5d20f66a`  
		Last Modified: Sat, 29 Dec 2018 21:25:44 GMT  
		Size: 73.3 MB (73260604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

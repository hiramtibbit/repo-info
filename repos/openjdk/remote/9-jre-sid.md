## `openjdk:9-jre-sid`

```console
$ docker pull openjdk@sha256:bb3f8bedf7b64fd2e4bb5f272b37849374f46f2afc5f7123ffccef420f6edc6e
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

### `openjdk:9-jre-sid` - linux; amd64

```console
$ docker pull openjdk@sha256:89f0cf7f569004a5573b689834be114d8d78b836a9892c1f7c2034bceb06a375
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.5 MB (281547414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cec6d75e346df5ba8b315fce63107246e187452a96bf3778321457ee8759aed0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 09:47:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:29:04 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:29:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:29:06 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:29:06 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 14 Mar 2018 10:29:07 GMT
ENV JAVA_VERSION=9.0.1+11
# Wed, 14 Mar 2018 10:29:07 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Wed, 14 Mar 2018 10:29:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404c3612208cc3bd4dd7897653dbfa0565f4b23ff6631362c2e5e397140ea217`  
		Last Modified: Wed, 14 Mar 2018 11:41:28 GMT  
		Size: 855.5 KB (855513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258506b48a3e472f55b5be344d0f6eb6bc34ccfde90530cc1494e795c49b2541`  
		Last Modified: Wed, 14 Mar 2018 12:27:24 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ae0883616aff821c45d47fc4bc07477840dbfad2d20d2bceca679a20b09e91`  
		Last Modified: Wed, 14 Mar 2018 12:27:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c1b07e925a4db8b009088648f6c2ab61d321897bb3e94474fc1cfa535a4dec`  
		Last Modified: Wed, 14 Mar 2018 12:28:06 GMT  
		Size: 214.9 MB (214893054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre-sid` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:a7f62ac5caadffcae666d19eb00548162a034df43accd9701fcf03ab88c4ef19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.8 MB (260792731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34e3f955e133e36465e78dff33d3f1c01b0bfb7ebba0a702c3c7558f7ba3405b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 19:58:54 GMT
ADD file:0c259893711fbbb74d52158310e6405ffafee1cf80df0c5023f0f262fedaae44 in / 
# Wed, 14 Mar 2018 19:58:55 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:43:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:43:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 22:36:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:40:25 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:40:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:40:27 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:40:27 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 14 Mar 2018 22:40:27 GMT
ENV JAVA_VERSION=9.0.1+11
# Wed, 14 Mar 2018 22:40:27 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Wed, 14 Mar 2018 22:42:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:709e01ad8801f6d1fc3e64805651a95479961d03211125705eadb61df54191e9`  
		Last Modified: Wed, 14 Mar 2018 20:10:21 GMT  
		Size: 46.1 MB (46055043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cabfe63914ea326825c026f366ea50e79289864c2497b91e2974b96bc934f1`  
		Last Modified: Wed, 14 Mar 2018 20:54:36 GMT  
		Size: 7.8 MB (7806745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1e862bd65c86e50e663d9f9f50f85f442d2c632cf810c672f7898ce71d7e69`  
		Last Modified: Wed, 14 Mar 2018 20:54:37 GMT  
		Size: 8.8 MB (8849409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479c8eaca26b883896099b721f406d8c23d9ffcf395a69de7b432a33906408b1`  
		Last Modified: Wed, 14 Mar 2018 22:59:31 GMT  
		Size: 848.7 KB (848681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3064eef53cd7cfe648e35b8272644335f9fa3ac8abdb29a1bfde4a2e4b9994f`  
		Last Modified: Wed, 14 Mar 2018 22:59:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14efb27b120b1c9e5c2b274670bc6e98ed89e62875b783bb3913416f2356303`  
		Last Modified: Wed, 14 Mar 2018 22:59:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98021c819c0693107039a638827b0e02d40656b5cde008fc6e0e2f2944ee7ac2`  
		Last Modified: Wed, 14 Mar 2018 23:00:18 GMT  
		Size: 197.2 MB (197232485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre-sid` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:22bc22904827cb8d56847964db1e6c3b8a23b8eaadf80f26247e8fe78d481fd6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255837633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:162d13c47a092aa1dd5703afb9be731db5b34a0da190347a05f32bdcdccd6962`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:30:24 GMT
ADD file:cf4220476786ea80d7a6f84bd9dc94b6d6ac8945750c25c3bfaacd81d179ad18 in / 
# Wed, 14 Mar 2018 12:30:25 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:16:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:16:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:47:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:54:49 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 13:54:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 13:55:00 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 13:55:09 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 14 Mar 2018 13:55:10 GMT
ENV JAVA_VERSION=9.0.1+11
# Wed, 14 Mar 2018 13:55:10 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Wed, 14 Mar 2018 13:56:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:4bebe725acb1248d8ff52284d58dd16fdca68548a367bc396431ad7bc5d34cdd`  
		Last Modified: Wed, 14 Mar 2018 12:42:11 GMT  
		Size: 44.0 MB (43986557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0693f5a3991162a5990e13b166d617b8f1fe371f4d92a04086448d19f61284b`  
		Last Modified: Wed, 14 Mar 2018 13:28:33 GMT  
		Size: 7.5 MB (7530551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56df267e9bb7c177688d09890d4bb7057540af666c61d9a1e741b8e886ece4cb`  
		Last Modified: Wed, 14 Mar 2018 13:28:33 GMT  
		Size: 8.6 MB (8563576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b317a57a53e9c7e93d0d2e70ad0c468c7bea6d2685d7ab5392e405ac845dd138`  
		Last Modified: Wed, 14 Mar 2018 14:17:03 GMT  
		Size: 832.5 KB (832484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ca5b46315a89268c7f2d27c633a3acb4328d293ea86ff4d724d30bc4e50714`  
		Last Modified: Wed, 14 Mar 2018 14:26:18 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7fd824274eefef4ecb5024aa0b9a6d4c5ac591a97c4b0a93a9c553afdb7c6b`  
		Last Modified: Wed, 14 Mar 2018 14:26:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aaa307f2ea9f9430bbcdb386cadda98161421e43f2536fbc9bb73a43199f54e`  
		Last Modified: Wed, 14 Mar 2018 14:27:01 GMT  
		Size: 194.9 MB (194924095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre-sid` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:dd51992916cc5919effefc789656c8af421c9fa68db2d5bd38ac05c12d133d16
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.3 MB (261319833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac9b510a02c8564d44e0be7522289ce674966a8f8db2a2f580d920bf8458ca65`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:27:51 GMT
ADD file:c8a410dfd7a3136f565a9b629d0a835719a68ad80b782a9281d1759c6eb8f4ef in / 
# Wed, 14 Mar 2018 17:27:52 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:36:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:37:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 19:45:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:13:10 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:13:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:13:15 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:13:15 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 14 Mar 2018 20:13:16 GMT
ENV JAVA_VERSION=9.0.1+11
# Wed, 14 Mar 2018 20:13:18 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Wed, 14 Mar 2018 20:20:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:885529e16b447a9a1d0e77e83ee5f3a4ded117a603fc735a386b40c6af050fd4`  
		Last Modified: Wed, 14 Mar 2018 17:42:26 GMT  
		Size: 45.4 MB (45374529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af181fc68ef0c1305345dda1947e4560354a950ca8826a733d8ff9b4f123be4`  
		Last Modified: Wed, 14 Mar 2018 19:02:58 GMT  
		Size: 7.9 MB (7852691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77236b6977166cb08e885fe34b4cd11cd8ca232506de32b79dc0261614f26e4e`  
		Last Modified: Wed, 14 Mar 2018 19:02:58 GMT  
		Size: 8.8 MB (8837983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd967c195a58b4160a36d10921a9bdecf0a94995387b18e229834dc81138507`  
		Last Modified: Wed, 14 Mar 2018 21:01:19 GMT  
		Size: 842.0 KB (841957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3da01c912257f44a69ed438d5bcb67ff68f70524414e5c1a4a122ccd3d04ec`  
		Last Modified: Wed, 14 Mar 2018 21:18:51 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec3498b774f08e2bad5cc50adae6a77dc956b8013338c598b0b389fc7ace704`  
		Last Modified: Wed, 14 Mar 2018 21:18:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef4f3f36b85061018e2fe9c72e0c25b6451bcb47df853e4fa0770de021fdb55`  
		Last Modified: Wed, 14 Mar 2018 21:19:51 GMT  
		Size: 198.4 MB (198412306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre-sid` - linux; 386

```console
$ docker pull openjdk@sha256:14aeb6eb13efc0609d04fc1bd13ad76b3f9be9335cd6144195bc9f3726df7b50
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.2 MB (292191509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6adbb08ad53268c0e2b7db8be86b9727d9d659ef5c6404fc815e9c45956cecb8`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 16:36:13 GMT
ADD file:cf035e5110d165962eb9d4449482cb8d6b0f7749539aa1e8fc6e6a66531d2106 in / 
# Thu, 15 Feb 2018 16:36:13 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 08:24:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 08:24:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 14:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 16:43:44 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 16:43:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 16:50:56 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 16:55:34 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 16:55:34 GMT
ENV JAVA_VERSION=9.0.1+11
# Fri, 16 Feb 2018 16:55:34 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Fri, 16 Feb 2018 16:57:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:313ea93a0d5246207e1ed7ff3833d7115bb13cbbbdfbb9fe6209ae0aca4de0da`  
		Last Modified: Thu, 15 Feb 2018 01:08:34 GMT  
		Size: 48.8 MB (48836165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d4fbe871849ec9eabbd42c66b6c1c7b1b7d725a5203103e36d3381d8ad08a3`  
		Last Modified: Fri, 16 Feb 2018 11:10:04 GMT  
		Size: 8.6 MB (8607351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14345a4d6f1e739fc3a5dfbf921d32d03cb87a160025d7181e792427a8523282`  
		Last Modified: Fri, 16 Feb 2018 11:10:03 GMT  
		Size: 9.3 MB (9344637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5168c2f8c3b89017971cdfdf67659f9a98883e6b79f3c30f9c93230fee7bec38`  
		Last Modified: Fri, 16 Feb 2018 18:49:50 GMT  
		Size: 864.3 KB (864258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1304169c538914ef35bad2fa0cb4351c6657009e6688fd861e09e9ae52f82730`  
		Last Modified: Sat, 17 Feb 2018 00:42:30 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195db6ea061ed19854ded8700d16ce0f333f9101b3c4b0a220d3155ce878b01d`  
		Last Modified: Sat, 17 Feb 2018 00:42:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee71e1f15b430a1eb9f101bef47ad11cd251b966deea95e2dc2f16853614b404`  
		Last Modified: Sat, 17 Feb 2018 00:43:35 GMT  
		Size: 224.5 MB (224538730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre-sid` - linux; ppc64le

```console
$ docker pull openjdk@sha256:f6eb27698cd775d583a319f6bea58780f65cb11f1d297d74adf1ce72dc611bff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272617021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fb1be2dcbdfc31e4f72f8b13887c48810b751245cfe14c7794962cc82500b77`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 00:33:40 GMT
ADD file:fd074388a1e87afa5199386a81dd5480d59e87c99744d1503003e1cf82eeeeaa in / 
# Wed, 14 Mar 2018 00:33:42 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 01:55:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:01:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:06:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:07:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:07:06 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:07:07 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Mar 2018 04:07:08 GMT
ENV JAVA_VERSION=9.0.1+11
# Thu, 15 Mar 2018 04:07:10 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Thu, 15 Mar 2018 04:17:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:caeed743812fb8916f058220350e305c0e940ed0a62904c7cd30f479de34194c`  
		Last Modified: Wed, 14 Mar 2018 00:41:02 GMT  
		Size: 49.5 MB (49465766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1aaececf1154f36498af71895dbfe2455b71b0652ce6a3048ac81822992106d`  
		Last Modified: Thu, 15 Mar 2018 02:30:41 GMT  
		Size: 8.2 MB (8210793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9a71fba1af38f62545037942242f7cc1e558fa18154f937e68d6d61ed9d625`  
		Last Modified: Thu, 15 Mar 2018 02:30:41 GMT  
		Size: 9.3 MB (9339565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8042c3be66cfffb01cd7f60865d7816cd497858ae104e5fe48048b1e3a90e2`  
		Last Modified: Thu, 15 Mar 2018 05:58:26 GMT  
		Size: 851.5 KB (851520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440550fe34cc35a8c2ee83f95560addb3ffe5792d725790a3d0aae92b1877002`  
		Last Modified: Thu, 15 Mar 2018 05:58:26 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed65865c9efa444a18f963f9986529dd7b4d396bd3387448196e7fcec9a70fc`  
		Last Modified: Thu, 15 Mar 2018 05:58:26 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997374b3f7ec36d91ea0df03f3ac3bcd49e80201bce6d351f01de7ceb8770953`  
		Last Modified: Thu, 15 Mar 2018 05:59:08 GMT  
		Size: 204.7 MB (204749006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:9-jre-sid` - linux; s390x

```console
$ docker pull openjdk@sha256:9db9b57752cb12fbc79f7f5a9325c5c13a336a5006c00ed6da05ca6d359ccf47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246664468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:616f2440104ee97606efdeae61c2fffa76fc8c77496776b8ed712fa3da8a88d4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:22:56 GMT
ADD file:5a60fa1a91bb2b727d8bfee18b5c3fe6523121a4b58861a0ba668058347acd7d in / 
# Wed, 14 Mar 2018 05:22:56 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:52:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:52:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 06:33:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:38:55 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 06:38:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 06:38:56 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 06:38:56 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 14 Mar 2018 06:38:56 GMT
ENV JAVA_VERSION=9.0.1+11
# Wed, 14 Mar 2018 06:38:56 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Wed, 14 Mar 2018 06:39:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:86f40742baf992f423224f64973e576104b2523ae049a44d7574dda9869d0735`  
		Last Modified: Wed, 14 Mar 2018 05:27:34 GMT  
		Size: 47.2 MB (47214668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a246e96e1e744b60e0cc0af03037b01bf7646f969863ef6a65410d8296981b2`  
		Last Modified: Wed, 14 Mar 2018 05:59:43 GMT  
		Size: 8.2 MB (8166746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a4f67084db30235359962de1d5608135e8a73048a898619ce995fd58947477`  
		Last Modified: Wed, 14 Mar 2018 05:59:42 GMT  
		Size: 9.1 MB (9075240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7c63638ce23161dc3e0ca6fe205c72a0ad230b223b4e8c92a681f0e9cc11c6`  
		Last Modified: Wed, 14 Mar 2018 06:48:22 GMT  
		Size: 865.8 KB (865785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa8dbed95c4ce7399b80864c90718321ccdbca3d50653141e4fd34ba01ec3191`  
		Last Modified: Wed, 14 Mar 2018 06:52:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a40db8ef115bf2368667f2070f99802d8ecad50265d733663b372795e669a7`  
		Last Modified: Wed, 14 Mar 2018 06:52:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b524f74ac7d93e14806ab825c54264d08f17549938bf4ea07483bfeea138851d`  
		Last Modified: Wed, 14 Mar 2018 06:52:42 GMT  
		Size: 181.3 MB (181341661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

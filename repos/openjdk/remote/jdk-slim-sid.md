## `openjdk:jdk-slim-sid`

```console
$ docker pull openjdk@sha256:db4577c0f456a87c091852dce663166b57405027d24f86d2054804cd9b991554
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

### `openjdk:jdk-slim-sid` - linux; amd64

```console
$ docker pull openjdk@sha256:0c5bde437c22337009cae00da3019c322fe14fcfa7345a69e81641243f215e79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.7 MB (322722814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88969e86e213011dca8a4d338cc39dff8ce983b009a420b7e37cf7385ca35670`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 15 Oct 2018 23:23:12 GMT
ADD file:8934168eda55976e44a0e80932dc79e1433f1c2ee5a90ed28ba2b8b55b60b7db in / 
# Mon, 15 Oct 2018 23:23:12 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:17:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:17:31 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:17:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:17:33 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:17:33 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:17:33 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 05:17:34 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Tue, 16 Oct 2018 05:18:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 05:18:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cca8b8cf2f157d13678401181406e5baf05ab424a04fb8190f9e3816c5db1e29`  
		Last Modified: Mon, 15 Oct 2018 23:32:22 GMT  
		Size: 26.3 MB (26284346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cf705e89452ccf724ae251641ad26bc6e8162141b3a88b688c959d8872f905`  
		Last Modified: Tue, 16 Oct 2018 05:38:56 GMT  
		Size: 460.6 KB (460644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f6961c9eb5dddcc3a449439adc5c4a03e716794daec2a41900f7fda4fb492a`  
		Last Modified: Tue, 16 Oct 2018 05:38:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805a6a4d0333bf4fa32e15672a04b71ef96caa25e163e085b4bd72831d2792b0`  
		Last Modified: Tue, 16 Oct 2018 05:38:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76670a8a120790c3cb2d506c31013ece14a6cbd4a0a5b66973e457684e3e611c`  
		Last Modified: Tue, 16 Oct 2018 05:39:21 GMT  
		Size: 296.0 MB (295977454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk-slim-sid` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:2a003973e466c0fa8b23fd32a04f606e68945d18250ee0b6efc082c1556a5a3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.8 MB (248822866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1b1878265f0c5d8b4289671571894de2675a9c4c4c5dcf24d4a5b1200581853`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 16 Oct 2018 08:53:37 GMT
ADD file:570ffab8651ae2f95dabaf4118be374c3024032a1baee5b1a2bcc74eb193120a in / 
# Tue, 16 Oct 2018 08:53:40 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:09:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:09:19 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 09:09:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 09:09:22 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 09:09:22 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 09:09:23 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 09:09:23 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Tue, 16 Oct 2018 09:10:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 09:10:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0dc1d0ed8db290aadec5576efe18a0adcaf918c852134583731d227ddf80a2f0`  
		Last Modified: Tue, 16 Oct 2018 09:02:45 GMT  
		Size: 24.1 MB (24051457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b86907a04515df0ed5fa03ed01f311d9b37aef035b26e4cb22b16fd2c84be0cd`  
		Last Modified: Tue, 16 Oct 2018 09:20:37 GMT  
		Size: 452.5 KB (452526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14a9409761fd777958d0c1a55090920b613d3204c40b30d5f65359bf11dd876`  
		Last Modified: Tue, 16 Oct 2018 09:20:37 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22031b689bbc2e748ea0f850bfe940e07c0b42fa22fae3e13c76cd6dd26282c`  
		Last Modified: Tue, 16 Oct 2018 09:20:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9157ecc0cdb59327dfa7332b3d5f366e4b7fafa920247134653cf63b1bce6f`  
		Last Modified: Tue, 16 Oct 2018 09:21:12 GMT  
		Size: 224.3 MB (224318514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk-slim-sid` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:79b10edd187c5f2c58e3c4e359cc6432633c3c86c5f26bcb51a415bd4a3b10a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271418544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f97b69dc7c627fd5b0baaa02e08107152bc671607747a0798d4e604c81615837`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 05 Sep 2018 12:02:34 GMT
ADD file:d966b641bd0795de9f6442fec893e1b9449c978d22fd9094d193b1535602d0a2 in / 
# Wed, 05 Sep 2018 12:02:35 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:10:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:10:13 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:10:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 13:10:16 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 13:10:18 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 12:00:19 GMT
ENV JAVA_VERSION=11
# Fri, 05 Oct 2018 11:59:34 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Sat, 06 Oct 2018 12:01:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 06 Oct 2018 12:01:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ba8445defddd24c3f2ac1eee6211fd2c3b937fa4fb76c2b8e6cff179fd515555`  
		Last Modified: Wed, 05 Sep 2018 12:11:44 GMT  
		Size: 22.0 MB (21986557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7054fed937aa9eb213be249c9e83d066ebfc81075a7ac56b5fcc5ea9db7df2bf`  
		Last Modified: Wed, 05 Sep 2018 13:36:34 GMT  
		Size: 435.3 KB (435302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c9fa9b089781c7e685cb03827f255eaddb539c9ca57b5a62119f11f2f48816`  
		Last Modified: Wed, 05 Sep 2018 13:36:33 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b4a4356e4985fd665b9c4ac6b65f0c326a47b37393268d7a132a1a9d8510b7`  
		Last Modified: Sat, 08 Sep 2018 12:22:45 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90454c622bdd56a56da9501c2d10db1aa13620c0056268562507b5aa1142284f`  
		Last Modified: Sat, 06 Oct 2018 12:17:34 GMT  
		Size: 249.0 MB (248996316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk-slim-sid` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:c268ffdbd032f5d441622e09b24497f5ecda7a3329c2bcf8b4592a1497674e02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.7 MB (303654559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb2b87bc546132375fdd75f13dadb63f6fb2820d7fd57fc2dcbdc6b227af266c`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 16 Oct 2018 08:41:46 GMT
ADD file:d0688d9602a1b4a4b7d76b9bef8e7642a9d7c9ec232bc531f7ed22bcf934a194 in / 
# Tue, 16 Oct 2018 08:41:47 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:08:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:08:10 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 09:08:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 09:08:14 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 09:08:14 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 09:08:15 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 09:08:16 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Tue, 16 Oct 2018 09:10:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 09:10:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:740c5c114e1ef0446d23c842ba1b2ae124f77e56cc972b34e1d7b8054530feae`  
		Last Modified: Tue, 16 Oct 2018 08:47:56 GMT  
		Size: 24.6 MB (24597774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b84f3fc009d97c128e0f09549ee7e5473d477e2dc4338fad214ef475e540233f`  
		Last Modified: Tue, 16 Oct 2018 09:24:18 GMT  
		Size: 446.7 KB (446685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf99f9a7918309f4245a7de721e2f8b352b140fc264eaf04ce2534f43ef572e`  
		Last Modified: Tue, 16 Oct 2018 09:24:18 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bee06d5cca74158790b60b98594bc63b08457eec590f7b8f2d14db53aa433e4`  
		Last Modified: Tue, 16 Oct 2018 09:24:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e83c45d67f5dda801e299258cd618ea2c70352b7c56e4ff3bc7ed6b62bdcc7`  
		Last Modified: Tue, 16 Oct 2018 09:25:07 GMT  
		Size: 278.6 MB (278609730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk-slim-sid` - linux; 386

```console
$ docker pull openjdk@sha256:a10b35ff2078eb16bbc3624b10f2ecd2dbb693c86f98aece6c6ac08a024174d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.0 MB (400049031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e6fcc877bb94377395fc4c8f0227e585876e3d310d7f757ad7261a894b095f7`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 16 Oct 2018 10:46:11 GMT
ADD file:de1ede4d258303cc898beaef52403a45e336767a5efcfee2e497c8ff2b09bf4f in / 
# Tue, 16 Oct 2018 10:46:11 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:27:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:27:29 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 11:27:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 11:27:31 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 11:27:32 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 11:27:32 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 11:27:32 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Tue, 16 Oct 2018 11:29:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 11:29:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8081280a76deef5332a8b69838e8a401e3bada1d5a8daf36a23f8af2f073d917`  
		Last Modified: Tue, 16 Oct 2018 11:02:27 GMT  
		Size: 26.9 MB (26856248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3ccb230308bbb498c4e46d9efaa4597ceb0bf410784d54013b20430a0321ea`  
		Last Modified: Tue, 16 Oct 2018 11:41:18 GMT  
		Size: 469.5 KB (469503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fdfe326205ae151a1b42c81e7531e2261f16a61846bd8fe88d816f2d4972e18`  
		Last Modified: Tue, 16 Oct 2018 11:41:18 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fd19fa27617fb253f177ca4e4579785ce7a25a17b68ca8e0aa8d30c81b44b2`  
		Last Modified: Tue, 16 Oct 2018 11:41:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca67c3b9bd5143a263424490a56f49fdded555be1779137529491248e22847e`  
		Last Modified: Tue, 16 Oct 2018 11:42:34 GMT  
		Size: 372.7 MB (372722910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk-slim-sid` - linux; ppc64le

```console
$ docker pull openjdk@sha256:494f35ddd4839be2bea26fc0f6504ef3abf5906eb65efd7da3e7754469319656
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.2 MB (294248108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2faec6bbd86b3fe566710db3e59528a57849a2037c46e4da0d9ade50b8ab6d7`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 16 Oct 2018 08:19:22 GMT
ADD file:4a1102b2046efdcd1f4cb19c398f25da11638c8c49a1827f1b881ad6867ebbff in / 
# Tue, 16 Oct 2018 08:19:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:31:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:31:56 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 08:31:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 08:32:01 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 08:32:02 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 08:32:03 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 08:32:04 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Tue, 16 Oct 2018 08:33:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 08:33:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6dc81b3f9d79f32bf47395e83047b0ed1a4f50dd5b0bd0146639a798ebd8ebec`  
		Last Modified: Tue, 16 Oct 2018 08:28:04 GMT  
		Size: 29.0 MB (28969507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c487affc920bad5b2490584dee0d79473af49a42b6e1b9e2ee30314571db800`  
		Last Modified: Tue, 16 Oct 2018 08:49:17 GMT  
		Size: 458.2 KB (458191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7718a9ec1678427ab65cc2d2d4b98fa730ceab793bea6cd818926d342f5ba6e0`  
		Last Modified: Tue, 16 Oct 2018 08:49:16 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42a68c07dc7718af9889cf436ed2a9d27d042c40779db9696d226da87bc1f6f`  
		Last Modified: Tue, 16 Oct 2018 08:49:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:634e8d4c39287264c46aef7d8d72e7dce49f8d9424facff3b49d64f7599fdd9a`  
		Last Modified: Tue, 16 Oct 2018 08:49:54 GMT  
		Size: 264.8 MB (264820040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk-slim-sid` - linux; s390x

```console
$ docker pull openjdk@sha256:63fe064ad9938dd54586df2e318f1edef856541795350a0b75f71e0a36799e00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.7 MB (285678301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c34a31db27b80d2df60ec2f9dc614508e1870f17c151ee5cb02dcc298016be4`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:06 GMT
ADD file:62a57ce13803527510a159dec3878e0707d3e939029a993efddd4bee35a7df4d in / 
# Tue, 16 Oct 2018 11:42:06 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:48:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:48:42 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 11:48:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 11:48:43 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 11:48:43 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 11:48:43 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 11:48:43 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Tue, 16 Oct 2018 11:49:29 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 11:49:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:76f5ebafa73fb12b78ff445aeb469bac1bdc591f1244e3059c3f61e2a5e6362d`  
		Last Modified: Tue, 16 Oct 2018 11:44:54 GMT  
		Size: 24.9 MB (24911339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17c7826f5495310992281eba0a0d306a002d8aa46b3f244b2d73eacec0df197`  
		Last Modified: Tue, 16 Oct 2018 11:52:58 GMT  
		Size: 469.6 KB (469641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013090cc4546c9a956574c0854191efd3a5ac57b96420985df6104a73cde7e35`  
		Last Modified: Tue, 16 Oct 2018 11:52:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb207e5a8bd48780201a4f5d394ee9ed515f63c334ae5707f54fe56d33c3021`  
		Last Modified: Tue, 16 Oct 2018 11:52:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7367f39d9e7367d706b4070bde24cf4ecdf6db0d17a7943060dac325864255dd`  
		Last Modified: Tue, 16 Oct 2018 11:53:46 GMT  
		Size: 260.3 MB (260296952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

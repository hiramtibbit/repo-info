## `clojure:tools-deps`

```console
$ docker pull clojure@sha256:a86fc70d202c92d950b35dfa7a88e7e911a39ccdeebe0cf9ad548f3252c6985c
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

### `clojure:tools-deps` - linux; amd64

```console
$ docker pull clojure@sha256:f8d93af4a0d91a738246698090024a9b75dc06c89da8435669d63920b0da70a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.1 MB (269068738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb838500e6731a716dba84fb2abfc2717b881da9d6ea02a6730579f2ba5ccbb8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:27:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:27:23 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:27:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:27:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:27:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 26 Jun 2018 23:27:25 GMT
ENV JAVA_VERSION=8u171
# Tue, 26 Jun 2018 23:27:25 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 26 Jun 2018 23:27:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 26 Jun 2018 23:28:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Jun 2018 23:28:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 05:38:59 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Wed, 27 Jun 2018 05:38:59 GMT
ENV CLOJURE_VERSION=1.9.0.381
# Wed, 27 Jun 2018 05:38:59 GMT
WORKDIR /tmp
# Wed, 27 Jun 2018 05:39:02 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 27 Jun 2018 05:39:07 GMT
RUN clojure -e "(clojure-version)"
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7ad5906a7580677bdf8a8d57749814520c2c6a2054604c115ba6e8646363aa`  
		Last Modified: Tue, 26 Jun 2018 22:30:55 GMT  
		Size: 50.1 MB (50062264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a71f22008abf7300e45f82d714c898896e400c7b5083d383008f59dc9fcfdfad`  
		Last Modified: Tue, 26 Jun 2018 23:48:36 GMT  
		Size: 892.5 KB (892524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56f7360809fd2f9ec806c8b26553a9c597fe8fc8e9ce805d14ef9171b39425c`  
		Last Modified: Tue, 26 Jun 2018 23:48:36 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1832923672a83c01fe74fc3162182e5f9beee423124705d618d708376c5b579`  
		Last Modified: Tue, 26 Jun 2018 23:48:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb1c4b78c423b292bc24a99c562613ad885c4439b6ab3144adbba1b9acbcb1b`  
		Last Modified: Tue, 26 Jun 2018 23:48:59 GMT  
		Size: 134.0 MB (133972601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c723e720bda13faf9b26176e2bc7654ed72ca953d77cc3b4ed3bae991cc6c87`  
		Last Modified: Tue, 26 Jun 2018 23:48:37 GMT  
		Size: 272.1 KB (272101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a00e7424b4c3fff2124f8cd077c25638b25fa9e2eabbac7e9f27c79f572ba63a`  
		Last Modified: Wed, 27 Jun 2018 05:43:14 GMT  
		Size: 19.5 MB (19547952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba8cf47cc6b35e37472200a1526e77612e7e9a7f1568a007447b990d7e675754`  
		Last Modified: Wed, 27 Jun 2018 05:43:13 GMT  
		Size: 3.9 MB (3891372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps` - linux; arm variant v5

```console
$ docker pull clojure@sha256:67e069876652547bb2baa6730960391137717ae7b91d40d850ecd31ff2830812
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252210304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e786b3e0524eaba26d1b4cc4a49e8210e8415cb61a4fed94133b39c969bf902`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:53:37 GMT
ADD file:d4d15d0259f3c83403f3d0565cbcd5c1d54e80367c46d9a05af1454c0d0e13ac in / 
# Wed, 27 Jun 2018 08:53:37 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:38:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:38:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 09:38:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:33:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:33:04 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:33:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:33:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:33:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 12:33:08 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 12:33:08 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 12:33:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 12:34:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 12:34:20 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 15:21:42 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Wed, 27 Jun 2018 15:21:43 GMT
ENV CLOJURE_VERSION=1.9.0.381
# Wed, 27 Jun 2018 15:21:43 GMT
WORKDIR /tmp
# Wed, 27 Jun 2018 15:21:46 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 27 Jun 2018 15:22:43 GMT
RUN clojure -e "(clojure-version)"
```

-	Layers:
	-	`sha256:d8a10c27f1911457fcf0131342ab203c0d98290ccb8731364e7f57f489cadcd4`  
		Last Modified: Wed, 27 Jun 2018 09:02:36 GMT  
		Size: 44.0 MB (44040132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac190b263215d7b1af43574c289285d9adca5216b1188d00cd5d71104d352db2`  
		Last Modified: Wed, 27 Jun 2018 09:48:30 GMT  
		Size: 9.8 MB (9842587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2324a9fd4ad44784b0c5e6d4b25dd11d1cdb7ed900fbcf69c5aa74391a37a10`  
		Last Modified: Wed, 27 Jun 2018 09:48:29 GMT  
		Size: 4.2 MB (4153804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66256cabdbc7741d09f42298fe50050b54a4c15b5961aba608f067ab0ef1de7`  
		Last Modified: Wed, 27 Jun 2018 09:49:04 GMT  
		Size: 48.3 MB (48262675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d30a64dd4efa1965d8eba16d58622309e89bc7bc341e87d4b7da4b11590f61`  
		Last Modified: Wed, 27 Jun 2018 12:53:16 GMT  
		Size: 884.8 KB (884771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178af86db29166d3a14dee3c51aa64cdc3425bc8885a52389f6bf45d997a3d17`  
		Last Modified: Wed, 27 Jun 2018 12:53:16 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d786eb29711a6246e3903e279cf2105ab5d5b2f26e1a57ee649c36ec19088b5e`  
		Last Modified: Wed, 27 Jun 2018 12:53:16 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0d6567a1cba1958fabd4792124c6bda49aaa9219fc6839e35ae43fe460b518`  
		Last Modified: Wed, 27 Jun 2018 12:53:45 GMT  
		Size: 121.3 MB (121314260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2543d2de99506c467b67f2206d2316aaf96230c550f258610b879bd2253c0cc6`  
		Last Modified: Wed, 27 Jun 2018 12:53:16 GMT  
		Size: 272.2 KB (272193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4887fc1aa10213946d3c8c2ca6f8eeb6d7961b05de918b30146d8d835f82e81`  
		Last Modified: Wed, 27 Jun 2018 15:24:13 GMT  
		Size: 19.5 MB (19548027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abcae0bd7ff9bd47e40ae0199efe39582e319957f327415e1ac6d6ae5f2f5dcd`  
		Last Modified: Wed, 27 Jun 2018 15:24:12 GMT  
		Size: 3.9 MB (3891478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps` - linux; arm variant v7

```console
$ docker pull clojure@sha256:619e8035738212158793a08988ee6cf51f3bc795b0689531b351866eb89a1809
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.9 MB (280936119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7187a527578a753376ba18a001472420fb48e02cc713a3747d0b5a1a21b0d01`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:14:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:02:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:02:21 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 13:02:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 13:02:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 13:02:24 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 13:02:24 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 13:02:25 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 13:02:25 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:03:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:03:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 15:52:55 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Sat, 02 Jun 2018 11:59:22 GMT
ENV CLOJURE_VERSION=1.9.0.381
# Sat, 02 Jun 2018 11:59:22 GMT
WORKDIR /tmp
# Sat, 02 Jun 2018 11:59:25 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Sat, 02 Jun 2018 11:59:33 GMT
RUN clojure -e "(clojure-version)"
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10d0f9a54b8549a5831d24a81b301ee1e1112ba6045a85ab02050edbbeb9e96`  
		Last Modified: Sat, 05 May 2018 12:36:20 GMT  
		Size: 46.4 MB (46351195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9cf2597c5534c6b8fa92e7c2ccefb5f8d61e783c3ee00f9a42f08acdd0732e0`  
		Last Modified: Sat, 05 May 2018 13:30:34 GMT  
		Size: 867.9 KB (867879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f50a3154b114c80552aa6550bc5f76d6fc6922fb46c71c09723410e47c3a61f`  
		Last Modified: Sat, 05 May 2018 13:30:33 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a276ab88cf860d6a3819c09c09c71b847abe2606d322863776761f5bb0267332`  
		Last Modified: Sat, 05 May 2018 13:30:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a81ce76fdab6754bfcb98f674951b3eb2b338caf570a9df6a8afabaccdd438`  
		Last Modified: Sat, 05 May 2018 13:31:20 GMT  
		Size: 154.6 MB (154556031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16abac704ab259ff7bac79f8aa82dc45cae282ef903099a1c696bce2f0a91ab`  
		Last Modified: Sat, 05 May 2018 13:30:33 GMT  
		Size: 272.1 KB (272067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a0b27ecfa2d068d64de8e45e986061e681404e4e32b8f09ba3464d3e362db8`  
		Last Modified: Sat, 02 Jun 2018 11:59:59 GMT  
		Size: 19.5 MB (19548061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5e80a51145db9109b1948df7ad36528893592817321df3b85c2622cc8f570a`  
		Last Modified: Sat, 02 Jun 2018 11:59:56 GMT  
		Size: 3.9 MB (3891460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:89f81d1c602b2f12a77b1b0d59de14ac8c422d3a877b8ca4e8c6626a240df77a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 MB (251697835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2124ebd79e1833630ad624195ca7daab8024c231b0bd2151a3328565855f5e0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:38:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:39:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:40:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:14:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:14:09 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:14:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:14:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:14:18 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 12:14:20 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:14:21 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:14:22 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 10:04:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 10:05:07 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 14:22:15 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Sat, 02 Jun 2018 08:40:19 GMT
ENV CLOJURE_VERSION=1.9.0.381
# Sat, 02 Jun 2018 08:40:20 GMT
WORKDIR /tmp
# Sat, 02 Jun 2018 08:40:26 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Sat, 02 Jun 2018 08:40:42 GMT
RUN clojure -e "(clojure-version)"
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd3e9bbb1f760ff8cab41817920c5822422ba1eaab36a233c8f43348791e03d`  
		Last Modified: Sat, 05 May 2018 10:29:53 GMT  
		Size: 9.7 MB (9722189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534647756e8399143ad6e1639b6433b9a3364809ac4520f62199ea46e638a2e`  
		Last Modified: Sat, 05 May 2018 10:29:50 GMT  
		Size: 4.1 MB (4088086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9236e2af68c9ae98f323593e7a832808ed6be16d6a198b45e06d42c26d5da`  
		Last Modified: Sat, 05 May 2018 10:31:01 GMT  
		Size: 48.0 MB (47986386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223cb7070547c589a9938d8095409c3e2028ce59826b67444710059c1f1beacb`  
		Last Modified: Sat, 05 May 2018 13:04:23 GMT  
		Size: 877.6 KB (877635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded8c39202caa0f53225389347da925133b2acf9d7e904044dd13bd12b1213ea`  
		Last Modified: Sat, 05 May 2018 13:04:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3212969d5c76f0046cd15128b34aca2f924c402abe15876e7b4af1fc52604319`  
		Last Modified: Sat, 05 May 2018 13:04:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040c6a364e18bde16447984bcbc76f9f04d3dc8702e9b0d0ce7dbad52323ba2e`  
		Last Modified: Tue, 15 May 2018 11:04:39 GMT  
		Size: 122.2 MB (122202299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf501b32796c19d43b56ab9bb6aca3b3bdb3ef707b66ed45ad003003596b3fa7`  
		Last Modified: Tue, 15 May 2018 11:04:00 GMT  
		Size: 272.1 KB (272144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab10961ba9875001e44abd2bf74bdb51545e91f9879c66d57f5c561265355f52`  
		Last Modified: Sat, 02 Jun 2018 08:41:09 GMT  
		Size: 19.5 MB (19547973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61d202bcbad508d92bc2b341fc6ec695a6aa80e0e6407cffde386c8d5407cee`  
		Last Modified: Sat, 02 Jun 2018 08:41:07 GMT  
		Size: 3.9 MB (3891397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps` - linux; 386

```console
$ docker pull clojure@sha256:570fb55ea735699edc3659f24ce958f758992f6b300a1dc4a4410d1ef4313c6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271621421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c164301e30c20b3aa10c632fa616da16bc65c22d7ae982a007c0240da159d73`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:42:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:28:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:28:05 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 13:28:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 13:28:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 13:28:06 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 13:28:07 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 13:28:07 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 13:28:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 13:29:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 13:29:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 15:25:58 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Wed, 06 Jun 2018 15:25:58 GMT
ENV CLOJURE_VERSION=1.9.0.381
# Wed, 06 Jun 2018 15:25:58 GMT
WORKDIR /tmp
# Wed, 06 Jun 2018 15:26:05 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 06 Jun 2018 15:26:14 GMT
RUN clojure -e "(clojure-version)"
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1af01b2a73367b29b158a599b31f1a8d0e0e964f8ba899158fe801dca9aa54f`  
		Last Modified: Wed, 06 Jun 2018 12:18:38 GMT  
		Size: 51.6 MB (51593154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2904964ccebba6fb4b44cdc0fc48ed3cba667c104bd3418d8364f6a073c782e8`  
		Last Modified: Wed, 06 Jun 2018 13:56:12 GMT  
		Size: 900.1 KB (900106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3fded8d8b20587143139608c99e097919cf777fed7760d46851956fed14d5e`  
		Last Modified: Wed, 06 Jun 2018 13:56:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b45addecb383b5fd97496c587c884d9a93732302e781825340004ceecb538c1`  
		Last Modified: Wed, 06 Jun 2018 13:56:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3748c71ca1596fc810d3677935a06ac9e7957f2c114291c9ed2b75a5759de88`  
		Last Modified: Wed, 06 Jun 2018 13:56:50 GMT  
		Size: 134.0 MB (134031743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dc03dc5a7cb62dfeef2aabdd340c8b08b0cf4471a669a46c6d6c15e662ba6e`  
		Last Modified: Wed, 06 Jun 2018 13:56:13 GMT  
		Size: 272.1 KB (272088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79c924908b5e24276c4abd5041a775d127b62e86a7e0087b06af08dbf88c617`  
		Last Modified: Wed, 06 Jun 2018 15:28:15 GMT  
		Size: 19.5 MB (19547971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f68156e68c568eb730ae342031c868d316e599f786810b02ca4bbc956ea8a3`  
		Last Modified: Wed, 06 Jun 2018 15:28:08 GMT  
		Size: 3.9 MB (3891391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps` - linux; ppc64le

```console
$ docker pull clojure@sha256:e474c5f67288439d9077cf2e4d6345502732935f82b179dca0fd6d68438f787d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.6 MB (258555502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a99d01ad9c1cf16761c5aad92c4b14ff25fd926d505ac6481ac120bd5f4f17`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:30 GMT
ADD file:ae8b79396496eb2731c9fe7f159d6f3086ec59dd9c418c6d93780fc8cb685d2b in / 
# Sat, 28 Apr 2018 08:20:31 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:39:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:40:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:41:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 14:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 14:32:45 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 14:32:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 14:32:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 14:32:51 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 14:32:51 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 14:32:53 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 14:32:54 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 09:00:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:00:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 10:38:40 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Sat, 02 Jun 2018 08:17:06 GMT
ENV CLOJURE_VERSION=1.9.0.381
# Sat, 02 Jun 2018 08:17:07 GMT
WORKDIR /tmp
# Sat, 02 Jun 2018 08:17:18 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Sat, 02 Jun 2018 08:17:30 GMT
RUN clojure -e "(clojure-version)"
```

-	Layers:
	-	`sha256:5c65288cd974eda27ef2a891c3b15c52c38c5a1c74befed7d569db78cbcb88b4`  
		Last Modified: Sat, 28 Apr 2018 08:29:36 GMT  
		Size: 45.6 MB (45590843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49669ce29c6ff5b318515a879172199a17519151b56113a98648e4e5b813e9b0`  
		Last Modified: Sat, 05 May 2018 11:03:44 GMT  
		Size: 10.0 MB (9975625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f38ff4299d23fa1e29678b39bfeb1549f444a54368faf8f03460a72b6951e8`  
		Last Modified: Sat, 05 May 2018 11:03:41 GMT  
		Size: 4.3 MB (4289600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe44d1ddd947a837b5faf3133ee67533bc10e5762c7abc5606ed72dea959632f`  
		Last Modified: Sat, 05 May 2018 11:04:41 GMT  
		Size: 50.0 MB (50028981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f108972424e64270dd3513c82fbceacd9b85ac95e1e99e43cb5140e2d4ed6a21`  
		Last Modified: Sat, 05 May 2018 15:13:06 GMT  
		Size: 886.1 KB (886098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285fd4b68faacbc88d600ef509b7228255381b631448443d508df4713e6b6fe8`  
		Last Modified: Sat, 05 May 2018 15:13:05 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2a94501130de72b5470e06ed1e7516bc34b6bb7fa400dbf49bb34f8f5a514d`  
		Last Modified: Sat, 05 May 2018 15:13:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0356d4e9531743ac3cc25d716fe318611d9d96c66d14f4b99a5bc2741b63342`  
		Last Modified: Tue, 15 May 2018 09:44:00 GMT  
		Size: 124.1 MB (124072333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1333145b576488a1f978a8224418bb0539556b1d9a6a9f8be06821475a8771b`  
		Last Modified: Tue, 15 May 2018 09:43:16 GMT  
		Size: 272.1 KB (272118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9261132d486a3834055dced16a902376c24c4f2bb9360f57c8c25f7f0141d30`  
		Last Modified: Sat, 02 Jun 2018 08:17:51 GMT  
		Size: 19.5 MB (19548064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5beaaacd23b767f18a4fd387feb16c85761abb370ed802bde9a31c9b1c34e7a5`  
		Last Modified: Sat, 02 Jun 2018 08:17:50 GMT  
		Size: 3.9 MB (3891459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps` - linux; s390x

```console
$ docker pull clojure@sha256:9c03b3ddf222a332bcd8f5ff67ec52286bb62913910df16433d04f86da13c7a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.6 MB (258620848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:759e5a16bd7a8cbb44d9e255c47839223b362242403e2c0b9701432f8f10fd80`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:36 GMT
ADD file:75083687b6ec1b46a3ccf759184d7da7ea89555c516ec0b9fe7307869e6e068d in / 
# Wed, 27 Jun 2018 11:48:36 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:20:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:20:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:20:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:55:42 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:55:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:55:43 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:55:44 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 13:55:44 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 13:55:44 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 13:55:44 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 13:56:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:56:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 17:58:29 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Wed, 27 Jun 2018 17:58:29 GMT
ENV CLOJURE_VERSION=1.9.0.381
# Wed, 27 Jun 2018 17:58:29 GMT
WORKDIR /tmp
# Wed, 27 Jun 2018 17:58:31 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 27 Jun 2018 17:58:58 GMT
RUN clojure -e "(clojure-version)"
```

-	Layers:
	-	`sha256:879ec09c190353266c9e5cb180d35fce7e1d21e2ed3f577f2708dba824290cec`  
		Last Modified: Wed, 27 Jun 2018 11:53:15 GMT  
		Size: 45.2 MB (45181422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4cd1564a39a86ccb42d24db5044f7c0fc4f4057eb7acae6f1b7b2e4c582cd5a`  
		Last Modified: Wed, 27 Jun 2018 12:25:12 GMT  
		Size: 10.3 MB (10301218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d677b03f5d7f43f597f3ca3119cce61767eafd68c1cd48fd083dc3eae703de`  
		Last Modified: Wed, 27 Jun 2018 12:25:11 GMT  
		Size: 4.4 MB (4367019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db908d0308fa64224122e4e37c21ce2473cb5be8b9ac64a32dd006a61e947783`  
		Last Modified: Wed, 27 Jun 2018 12:25:37 GMT  
		Size: 50.5 MB (50478409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc44e536824d692bd5e334f320bc22b679aa61c3ef1c2839e9bda97f6a4db46`  
		Last Modified: Wed, 27 Jun 2018 14:05:25 GMT  
		Size: 903.6 KB (903565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7f81aef9d86a3b05d5ef81d4fd8e881971171c48081d0f991a8fb54b4cb3db`  
		Last Modified: Wed, 27 Jun 2018 14:05:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:932dff910f763bd6d55b8f6b201391ae394065696f9875dd82c0ace08b468359`  
		Last Modified: Wed, 27 Jun 2018 14:05:24 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d566866d0521ffd595150abd6a525a1009a2735fb697105c796ae981ce731be`  
		Last Modified: Wed, 27 Jun 2018 14:05:45 GMT  
		Size: 123.7 MB (123677282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3dcf5784fc499c80267cf25937352f84cef64df7eef8a68d3add11a1f42a3`  
		Last Modified: Wed, 27 Jun 2018 14:05:25 GMT  
		Size: 272.2 KB (272184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daa7e6f8878ab4618c68b3a996f6607dd7f25a9853366c72c37315156b74675`  
		Last Modified: Wed, 27 Jun 2018 18:00:01 GMT  
		Size: 19.5 MB (19547975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be32fa0dda93d086f23bf11cb1d08a0f954e19fa028f94336f5aff86abea901`  
		Last Modified: Wed, 27 Jun 2018 17:59:59 GMT  
		Size: 3.9 MB (3891395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

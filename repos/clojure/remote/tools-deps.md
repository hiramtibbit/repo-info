## `clojure:tools-deps`

```console
$ docker pull clojure@sha256:c8d2d776015a19c716db3ee329c1c6075d822eb66310d2a48239f426d6004358
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
$ docker pull clojure@sha256:61482750ad90c275524fc18bf9d0593a43c548e9dc50f1d969cd252a12f97092
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.2 MB (282237612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00e9a53642c025099701bc66202d45ef907e298c4cf7e7de9ac36edd4674d8dd`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 00:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:56:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:56:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:57:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 10:24:02 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Mon, 07 Jan 2019 21:19:36 GMT
ENV CLOJURE_VERSION=1.10.0.411
# Mon, 07 Jan 2019 21:19:36 GMT
WORKDIR /tmp
# Mon, 07 Jan 2019 21:19:41 GMT
RUN apt-get update && apt-get install -y rlwrap
# Mon, 07 Jan 2019 21:19:43 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Mon, 07 Jan 2019 21:19:52 GMT
RUN clojure -e "(clojure-version)"
# Mon, 07 Jan 2019 21:19:52 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045b51e26e750443c84216071a1367a7aae0b76245800629dc04934628b4b1ea`  
		Last Modified: Sat, 29 Dec 2018 00:22:00 GMT  
		Size: 50.1 MB (50062697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e50f3a5916063721a472d949e4708f7ef54cd00ea07336c43cc1b192f5a30c`  
		Last Modified: Sat, 29 Dec 2018 03:21:36 GMT  
		Size: 892.3 KB (892281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c546cdc7ce4fc7024f36d943e72738660870cf6eddd1491e1f7afe7739ea9d`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b0460146c0de06889859885b2591dbb2c6b8d29b4163c3d9d0782b8b3e360b`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428095c4a908303a8f98178b90d393c8b4cddaafa1b67d50e71d369adc680294`  
		Last Modified: Sat, 29 Dec 2018 03:24:53 GMT  
		Size: 134.0 MB (133975764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4399927a0e9d44da60b365ce7dc5191c08496af7e98e7a199af0e1f7b0ff741`  
		Last Modified: Mon, 07 Jan 2019 21:20:54 GMT  
		Size: 13.0 MB (12997132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a7477d153bfc4be6391bdf01d8ae093d614ff0c2b96dbd4fbfd818789ab121`  
		Last Modified: Mon, 07 Jan 2019 21:20:55 GMT  
		Size: 19.8 MB (19761924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c40e89aee56975ee6b2e2340fc7e64953ecb60785c3bd09fef583fb500a8f8`  
		Last Modified: Mon, 07 Jan 2019 21:20:54 GMT  
		Size: 4.1 MB (4102709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps` - linux; arm variant v5

```console
$ docker pull clojure@sha256:6c818eef3be46495e83ce6a476bc9d04e326271f107a080ac1a0b14fbb52bbd1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265546227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9922fea72d24d5b14f0ddcfa47f61e16288359f36c1a154d37a99cfab06b6779`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:03 GMT
ADD file:fa1f49edfa12ade0f591321a690ba7f35361226e174e1a6506ef39f93b34da73 in / 
# Sat, 29 Dec 2018 09:55:04 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:33:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:33:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:34:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:54:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:59:12 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:59:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 14:59:16 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 14:59:16 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 14:59:17 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 14:59:17 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 15:00:29 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 04 Jan 2019 09:53:22 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Fri, 04 Jan 2019 09:53:22 GMT
ENV CLOJURE_VERSION=1.10.0.408
# Fri, 04 Jan 2019 09:53:22 GMT
WORKDIR /tmp
# Fri, 04 Jan 2019 09:53:33 GMT
RUN apt-get update && apt-get install -y rlwrap
# Fri, 04 Jan 2019 09:53:36 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Fri, 04 Jan 2019 09:54:37 GMT
RUN clojure -e "(clojure-version)"
# Fri, 04 Jan 2019 09:54:38 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:aa4a25a876e256fe4408a465d97b4481c83e18aec91fbd5b6d29f32693918f71`  
		Last Modified: Sat, 29 Dec 2018 10:02:57 GMT  
		Size: 44.0 MB (44029352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a6e95dd88ea73fb3b023bdff0d683b8d2a86166db152da68c590c50f206520`  
		Last Modified: Sat, 29 Dec 2018 10:43:47 GMT  
		Size: 9.8 MB (9849207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee16d7106d19a9889450a5b8b48589591479d902b372b2fb937217426ea0c0cc`  
		Last Modified: Sat, 29 Dec 2018 10:43:45 GMT  
		Size: 4.2 MB (4158586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e50ab6e04718487c035baec36607ee0f681738f3e10b676886ae304733839bc3`  
		Last Modified: Sat, 29 Dec 2018 10:44:12 GMT  
		Size: 48.3 MB (48284780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0376dc8ad1c279341c4b12866c00d9e6bbd8370324b817feea667c280b45945a`  
		Last Modified: Sat, 29 Dec 2018 15:03:19 GMT  
		Size: 884.7 KB (884656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454bc754349e6e3a28bc8c936eea2bc14eb45eb54f69a0d7cb1cdc077ec6a9e8`  
		Last Modified: Sat, 29 Dec 2018 15:05:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b5913a88cfc5f22a51584dda0ad161c3f668c9e5dff9b67ffda06297904361`  
		Last Modified: Sat, 29 Dec 2018 15:05:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db3e289a063f9a1ad6bd4ecd7a9674837d0255a3299f336719eb887300fa0ee`  
		Last Modified: Sat, 29 Dec 2018 15:06:06 GMT  
		Size: 121.4 MB (121363219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4231bbb30c6f9cd5f17df0f149b0c487b639ceb905e2a09f3997d4bf8e5cfa03`  
		Last Modified: Fri, 04 Jan 2019 10:03:21 GMT  
		Size: 13.1 MB (13111324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4eaa88dc28e895fcf2df0912c72a7e8ea1ef9a8dba6c77bd35ad7193cc4da5`  
		Last Modified: Fri, 04 Jan 2019 10:03:21 GMT  
		Size: 19.8 MB (19761909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c26da9bc48219a26023fc6148c267c955c76af36ac2635423f81be2e1429a6a`  
		Last Modified: Fri, 04 Jan 2019 10:03:19 GMT  
		Size: 4.1 MB (4102816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps` - linux; arm variant v7

```console
$ docker pull clojure@sha256:44a64114a920f19c74b66ec12959beefbaedbf14059b97399b21709f88f5a44d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.6 MB (294552315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ba1119d526b340482998dafa7dd2a26e67dde1dbd0d4f1dcf439c8408cf74f`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

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
# Fri, 04 Jan 2019 12:57:33 GMT
ENV CLOJURE_VERSION=1.10.0.408
# Fri, 04 Jan 2019 12:57:33 GMT
WORKDIR /tmp
# Fri, 04 Jan 2019 12:57:46 GMT
RUN apt-get update && apt-get install -y rlwrap
# Fri, 04 Jan 2019 12:57:49 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Fri, 04 Jan 2019 12:58:01 GMT
RUN clojure -e "(clojure-version)"
# Fri, 04 Jan 2019 12:58:02 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:b0acab214af09e6a41772264f37b423b159c788368751b9f72b7294f71424c33`  
		Last Modified: Fri, 04 Jan 2019 13:00:35 GMT  
		Size: 13.2 MB (13191063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d487e8e68ee6687ebb3993f4758736a4b380dd7b1f56eef14f9617153f1d0778`  
		Last Modified: Fri, 04 Jan 2019 13:00:44 GMT  
		Size: 19.8 MB (19761873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc73283ddb0d3e370dd115a9e3847ab011f20c305398f1be9ad722b4f69c024`  
		Last Modified: Fri, 04 Jan 2019 13:00:33 GMT  
		Size: 4.1 MB (4102781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:49490daf9321fda6a13d73c59d7486505f9980663a4cf66d6f9579307f4a4cdd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.7 MB (264665938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a402255c18253f1c01002dcd77941fb3eb245a372ccc9f66d4ccb86f04e5356a`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 16:48:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:05:47 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 17:05:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 17:05:52 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 17:05:53 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 17:05:54 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 17:05:55 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 17:11:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 03:02:33 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Fri, 04 Jan 2019 09:39:49 GMT
ENV CLOJURE_VERSION=1.10.0.408
# Fri, 04 Jan 2019 09:39:50 GMT
WORKDIR /tmp
# Fri, 04 Jan 2019 09:40:05 GMT
RUN apt-get update && apt-get install -y rlwrap
# Fri, 04 Jan 2019 09:40:12 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Fri, 04 Jan 2019 09:40:32 GMT
RUN clojure -e "(clojure-version)"
# Fri, 04 Jan 2019 09:40:32 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3909cbce85809e95cb66a5b6e819717d1857f55a876c03fa1d9e885c2b0d9a2`  
		Last Modified: Sat, 29 Dec 2018 13:33:57 GMT  
		Size: 48.0 MB (48005935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedf4b2485f04f7796ce3a83b666ea83c2a12d4b3083903ca2f229c058c30839`  
		Last Modified: Sat, 29 Dec 2018 17:22:35 GMT  
		Size: 877.7 KB (877728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e96100bd64d92c3e42995209cd063d9b3b289f3a3e4efe4642e9b08b85587b2`  
		Last Modified: Sat, 29 Dec 2018 17:27:48 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a244fa793ad4b554313ed169a3d2e70d5dad521fd51e81d0e87359b80abaf231`  
		Last Modified: Sat, 29 Dec 2018 17:27:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25736c9efdc040c45d5f62aeab519a667ab62820d066a479c173a66516cb742f`  
		Last Modified: Sat, 29 Dec 2018 17:28:29 GMT  
		Size: 122.3 MB (122277446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816ef133cd54d78c76794485419557f65c354c67eef215cde30c1c62e0db292f`  
		Last Modified: Fri, 04 Jan 2019 09:42:25 GMT  
		Size: 12.7 MB (12701588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc704e9649812945e39117aed2033577a4687b0d79757a291022df90212dd4af`  
		Last Modified: Fri, 04 Jan 2019 09:42:25 GMT  
		Size: 19.8 MB (19761820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ec92fcf8119ff5e4ab6bc828a2d80fd1bcc5e2b7550ec92115fb65b0938251`  
		Last Modified: Fri, 04 Jan 2019 09:42:23 GMT  
		Size: 4.1 MB (4102717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps` - linux; 386

```console
$ docker pull clojure@sha256:acc1d96d4e7ee26e47ecc360523e23b4c904f049906d5a66c0ff4da669771e79
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.3 MB (285325623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a9b99dcf92fb8f9263af25e36ec480d5189edafe72e50c66845d7f9af2599e2`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Sat, 29 Dec 2018 11:54:44 GMT
ADD file:a8ddd3477d8cfd5a18fe1d2537e62c16161f296e912e5a65a7bde0331af35639 in / 
# Sat, 29 Dec 2018 11:54:45 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:01:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 13:01:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 20:49:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 20:53:34 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 20:53:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 20:53:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 20:53:35 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 20:53:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 20:53:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 20:54:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 06:47:27 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Fri, 04 Jan 2019 11:40:24 GMT
ENV CLOJURE_VERSION=1.10.0.408
# Fri, 04 Jan 2019 11:40:24 GMT
WORKDIR /tmp
# Fri, 04 Jan 2019 11:40:32 GMT
RUN apt-get update && apt-get install -y rlwrap
# Fri, 04 Jan 2019 11:40:34 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Fri, 04 Jan 2019 11:40:42 GMT
RUN clojure -e "(clojure-version)"
# Fri, 04 Jan 2019 11:40:42 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:df99e535d2dfef98a9b50153edf9ab40b4355b1e30018358c90bb2ac742ea9c5`  
		Last Modified: Sat, 29 Dec 2018 12:10:19 GMT  
		Size: 46.1 MB (46057290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85ebddf711af5a5d00c3ec70830e1b0e199d81dcfa089912a1a93e7d75c7b91`  
		Last Modified: Sat, 29 Dec 2018 13:28:20 GMT  
		Size: 10.8 MB (10799001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0903d64cc922323fd00f382d7845c5313498fa2eaaa23e5b0508f38f2b4a4a76`  
		Last Modified: Sat, 29 Dec 2018 13:28:17 GMT  
		Size: 4.6 MB (4560876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b2ba2c27428f2220acf820364de7c867d7c3a1f30bda626a606427618c2840`  
		Last Modified: Sat, 29 Dec 2018 13:28:54 GMT  
		Size: 51.6 MB (51593679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c448f002468cb76456c9be7a70b27bc36eea0d7ddad039e9b4a602fee560d5a`  
		Last Modified: Sat, 29 Dec 2018 21:19:20 GMT  
		Size: 900.0 KB (899987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61daff4277b3655c31b2fc51fd9f9b7d94a6fd6e15b4b3bde19814f490465f8`  
		Last Modified: Sat, 29 Dec 2018 21:22:20 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0a126163b9d67dd7f633eb4a0bf8d42d2629c05d89491716335cbe0206be02`  
		Last Modified: Sat, 29 Dec 2018 21:22:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e336a3afa01ed1a5a8450770d3b0aa435c0e14dc87561f2729a0ce1830f31e`  
		Last Modified: Sat, 29 Dec 2018 21:22:55 GMT  
		Size: 134.1 MB (134089449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e5991f090f5f2c6634104ed2e9b68cb04c882a91b3d7f2d801c924dec33a2`  
		Last Modified: Fri, 04 Jan 2019 11:41:23 GMT  
		Size: 13.5 MB (13460456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6723db88680cda60e57d8ddad6415a5ffbb840d7c688f6dd7f2525bdfc17fb9a`  
		Last Modified: Fri, 04 Jan 2019 11:41:24 GMT  
		Size: 19.8 MB (19761801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc450bbb89e87955e1dcac71adef1106f313e6f1d26074292f15ae8c938608a`  
		Last Modified: Fri, 04 Jan 2019 11:41:22 GMT  
		Size: 4.1 MB (4102705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps` - linux; ppc64le

```console
$ docker pull clojure@sha256:f61ad7647542b7971aa6324ecd3a4bb56a5fdfec5c9a7d136d37d7dca9d6ff8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271495734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50289acd6670bbce8a9438b7da8b1609c6167a177856945d7184932765f71d11`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:40:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:40:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:19:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:34:16 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:34:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 12:34:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 12:34:34 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 12:34:37 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 12:34:40 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 12:40:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 17:49:14 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Fri, 04 Jan 2019 09:17:32 GMT
ENV CLOJURE_VERSION=1.10.0.408
# Fri, 04 Jan 2019 09:17:38 GMT
WORKDIR /tmp
# Fri, 04 Jan 2019 09:18:00 GMT
RUN apt-get update && apt-get install -y rlwrap
# Fri, 04 Jan 2019 09:18:09 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Fri, 04 Jan 2019 09:18:24 GMT
RUN clojure -e "(clojure-version)"
# Fri, 04 Jan 2019 09:18:26 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f635fa148b382c93885cce85133b6f1ba33b1a391347329805ce973d3061d42`  
		Last Modified: Sat, 29 Dec 2018 11:18:00 GMT  
		Size: 10.0 MB (9986429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c0099cf676e2655012d38610077379647258d6af103b65ff34d91637631fc6`  
		Last Modified: Sat, 29 Dec 2018 11:17:59 GMT  
		Size: 4.3 MB (4295725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac453cf9be4657ff3c6bbb021d7e64057957b45d1f84550e3655ba5cdcd0f58b`  
		Last Modified: Sat, 29 Dec 2018 11:18:38 GMT  
		Size: 50.1 MB (50064531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b146ea60af943e531634711eeb85e5f21bb365e1fac66849b36e4090cdf178a4`  
		Last Modified: Sat, 29 Dec 2018 12:53:14 GMT  
		Size: 886.0 KB (885979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bc338c64611a253104b517cb49cd07208e8dbf62db0a97db83138d812d4b34`  
		Last Modified: Sat, 29 Dec 2018 12:58:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b3f9bbacb138a21d4dd5c24c30954f21c2ffce5a9cd4629138ae346640ac45f`  
		Last Modified: Sat, 29 Dec 2018 12:58:31 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40928f221c80dc29fa5d9b4cf70c5ad91e3b9ecab39ded05553a22a013de30f9`  
		Last Modified: Sat, 29 Dec 2018 12:59:17 GMT  
		Size: 124.1 MB (124112721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878665024405da6898e5196135d4c8c031c096336b5116c903cc20e2c970af90`  
		Last Modified: Fri, 04 Jan 2019 09:20:14 GMT  
		Size: 12.7 MB (12679612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2158c39843027bafde2945251cd989b48b3aa92e6669aeb89682610e24ccbd6`  
		Last Modified: Fri, 04 Jan 2019 09:20:14 GMT  
		Size: 19.8 MB (19761877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824f284685cce46d0621cc796551246a972c8d6fc85304955940f42d9af2d339`  
		Last Modified: Fri, 04 Jan 2019 09:20:13 GMT  
		Size: 4.1 MB (4102785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps` - linux; s390x

```console
$ docker pull clojure@sha256:5c822742a71ab3188b215f0f2c68eada6ca2246a28ca8c3c2aa496f68a46b8fb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270885095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac7f292774c74648c6379065c7587e314b7c72d6c94015f4a37e55d2f83cecc1`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Sat, 29 Dec 2018 12:43:32 GMT
ADD file:77b66e4dfb1b6be05fbe0809b73dba123a7c18a1f16751d165a43a9d6d7e8c42 in / 
# Sat, 29 Dec 2018 12:43:33 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:15:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:15:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 13:16:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:23:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:27:25 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:27:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 14:27:26 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 14:27:27 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 14:27:27 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 14:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 14:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 17:42:57 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Fri, 04 Jan 2019 12:41:35 GMT
ENV CLOJURE_VERSION=1.10.0.408
# Fri, 04 Jan 2019 12:41:35 GMT
WORKDIR /tmp
# Fri, 04 Jan 2019 12:41:40 GMT
RUN apt-get update && apt-get install -y rlwrap
# Fri, 04 Jan 2019 12:41:41 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Fri, 04 Jan 2019 12:42:09 GMT
RUN clojure -e "(clojure-version)"
# Fri, 04 Jan 2019 12:42:09 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:c5e4ba148bd18e885706d64bd30df16338c81bebed6fd5ef73479d4ac92a7249`  
		Last Modified: Sat, 29 Dec 2018 12:46:37 GMT  
		Size: 45.2 MB (45206162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ab879437b7ffa94dbf20c17fff26c665632ba45fe169c1234acdfc98235ea4`  
		Last Modified: Sat, 29 Dec 2018 13:25:05 GMT  
		Size: 10.3 MB (10312640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26d08cd769086cf57f94597710a8e83155b78206b639c049f55a8c4c2896ce2`  
		Last Modified: Sat, 29 Dec 2018 13:25:04 GMT  
		Size: 4.4 MB (4371853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dfbcf77830b9f550dbf3b3cb64574c5b4efd23d0e4d5607d36922028f4c25a`  
		Last Modified: Sat, 29 Dec 2018 13:25:22 GMT  
		Size: 50.5 MB (50488007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f92dbd48441dd77018658382901652d708ab431dffeed3de82eb78c85467ec8`  
		Last Modified: Sat, 29 Dec 2018 14:30:50 GMT  
		Size: 903.4 KB (903386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81849c56b2a6aa180c351ac3ba9aa7a327aa53b89f52f7af32110d7c3ea1c043`  
		Last Modified: Sat, 29 Dec 2018 14:33:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc94d40d3e3e7439a023553f5416e3861f53ee3030b1d42b8da56a930ff45a2`  
		Last Modified: Sat, 29 Dec 2018 14:33:17 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9133bc6f14d6dd16c863e847cd83c6f73209875b5bd9955b6201c12eb115d521`  
		Last Modified: Sat, 29 Dec 2018 14:33:35 GMT  
		Size: 123.7 MB (123736677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4424a4e9d6e8e2cb6a0130480af13239d226fdedf3f49972eb2ed55d4272e9cd`  
		Last Modified: Fri, 04 Jan 2019 12:42:52 GMT  
		Size: 12.0 MB (12001431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4744a5cdadbf2bcfa4cedd970417e402a96c5e60410e69df1aee9cda5cf6c5b6`  
		Last Modified: Fri, 04 Jan 2019 12:42:52 GMT  
		Size: 19.8 MB (19761801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd62ac6f9793d37b4ba9e68ea30bb03a708ef27e58b26612b48cc1ec539fd24`  
		Last Modified: Fri, 04 Jan 2019 12:42:51 GMT  
		Size: 4.1 MB (4102758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

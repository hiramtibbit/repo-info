## `clojure:openjdk-8-tools-deps`

```console
$ docker pull clojure@sha256:f362f1cf5a70aee1f65f15811475ecbad2208bac6404d14584bf5f8e2cf6a4f4
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

### `clojure:openjdk-8-tools-deps` - linux; amd64

```console
$ docker pull clojure@sha256:a57b5b75168c521646104c297bb9f81b5474e2847cd322b0d129a05ba2bb4ac5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.3 MB (282267766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27013f50c27d9d4358178453fc294c5840cd8a1fe46ee774e5f4925bef21b2c`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:06:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:11:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:16:38 GMT
ENV LANG=C.UTF-8
# Tue, 22 Jan 2019 21:16:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 22 Jan 2019 21:16:40 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 22 Jan 2019 21:16:40 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 22 Jan 2019 21:16:41 GMT
ENV JAVA_VERSION=8u181
# Tue, 22 Jan 2019 21:16:41 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 22 Jan 2019 21:17:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 05:50:57 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Wed, 23 Jan 2019 05:50:57 GMT
ENV CLOJURE_VERSION=1.10.0.411
# Wed, 23 Jan 2019 05:50:57 GMT
WORKDIR /tmp
# Wed, 23 Jan 2019 05:51:06 GMT
RUN apt-get update && apt-get install -y rlwrap
# Wed, 23 Jan 2019 05:51:08 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 23 Jan 2019 05:51:23 GMT
RUN clojure -e "(clojure-version)"
# Wed, 23 Jan 2019 05:51:23 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dd648b5ade2bbdfe77fa94424b0314100b58fb5f6a98486538c2126e08e2f`  
		Last Modified: Tue, 22 Jan 2019 20:13:28 GMT  
		Size: 50.1 MB (50062800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f886e483d6dc67cd1f7c19ed3e45348f3b1af49fe9b5f40fdfca2043281b76`  
		Last Modified: Tue, 22 Jan 2019 21:38:45 GMT  
		Size: 892.4 KB (892370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4346341d3c496637595bfdaad3837beba171fb2194b1abf1f5d0c898a2d2d477`  
		Last Modified: Tue, 22 Jan 2019 21:41:18 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006f2208d67a691a10ab1deab2f6dfbf600f087b0f6df94f8dc6cde9fc3928fe`  
		Last Modified: Tue, 22 Jan 2019 21:41:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb85cf26717dc607155f9ea8b38b0d89ca987fbfd5786b4639afc2062176fd10`  
		Last Modified: Tue, 22 Jan 2019 21:41:51 GMT  
		Size: 134.0 MB (133975924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620a351f47753c45dfffa342caed67a19849d5e40847a3a25ffcc9ec9a0aa265`  
		Last Modified: Wed, 23 Jan 2019 05:54:15 GMT  
		Size: 13.0 MB (13005873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b053ff9e00d818653966cb9b2f8256b4f1c28af298f4cb2686155695a310881`  
		Last Modified: Wed, 23 Jan 2019 05:54:15 GMT  
		Size: 19.8 MB (19761920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93afb01e2dfbbd94ffabeb2558b9bcf2b97fc89048461b9a40de41c40f61df12`  
		Last Modified: Wed, 23 Jan 2019 05:54:13 GMT  
		Size: 4.1 MB (4102720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-8-tools-deps` - linux; arm variant v5

```console
$ docker pull clojure@sha256:0ac7575f2cece56bb7dc0d8061bd29d8f1ddcdfa29d0dc2cea12f46be5131c8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265579944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21cbe8b706fe239cc66966442b1b79b0805b2e0410e0273cb4417d79110ef3d8`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:27 GMT
ADD file:8ba047ef6412ca91461f1c03e2571c0760c1e7ce294814ec3523055f0b453994 in / 
# Wed, 23 Jan 2019 09:54:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:38:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:38:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:39:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:38:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:49:00 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:49:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:49:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 12:49:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 12:49:03 GMT
ENV JAVA_VERSION=8u181
# Wed, 23 Jan 2019 12:49:03 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 23 Jan 2019 12:50:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 16:24:54 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Wed, 23 Jan 2019 16:24:54 GMT
ENV CLOJURE_VERSION=1.10.0.411
# Wed, 23 Jan 2019 16:24:55 GMT
WORKDIR /tmp
# Wed, 23 Jan 2019 16:25:05 GMT
RUN apt-get update && apt-get install -y rlwrap
# Wed, 23 Jan 2019 16:25:09 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 23 Jan 2019 16:26:11 GMT
RUN clojure -e "(clojure-version)"
# Wed, 23 Jan 2019 16:26:11 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:4fa85838ca92a72d64f970f6d43c23ad625e644e7d2d6088bfccfc6b05f2ce41`  
		Last Modified: Wed, 23 Jan 2019 10:02:01 GMT  
		Size: 44.1 MB (44053619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc93c97f4e63346ff22fa9f2a1f468f1211ae4e1c468f823078577fe992699ba`  
		Last Modified: Wed, 23 Jan 2019 10:49:24 GMT  
		Size: 9.8 MB (9849321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0e54fcc14b17f4209b661fb8a20deeb88c9b3153c5fac3c35d0367633f22f2`  
		Last Modified: Wed, 23 Jan 2019 10:49:23 GMT  
		Size: 4.2 MB (4158594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6e26dbd21ee93841f4c5c8d7e525447c626a675158cbe405e12ca3b58e889d`  
		Last Modified: Wed, 23 Jan 2019 10:49:47 GMT  
		Size: 48.3 MB (48284691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca1368d326f91b24abea9c9404aab902ace0ec2c0347eb2114fb9b0db70d2a1`  
		Last Modified: Wed, 23 Jan 2019 13:05:27 GMT  
		Size: 884.7 KB (884660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c654a00220740dfc8a14bd572404fca1436940baa58c55c7e38beae4cf1d66`  
		Last Modified: Wed, 23 Jan 2019 13:09:16 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a3d222dc3eac81d0150948f5e53e455719b37d7d78fa7879cf45eb2353482a`  
		Last Modified: Wed, 23 Jan 2019 13:09:16 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63bd4407820c3d06dd546cb5f1f4eab385a181e58c304ddd13c1edcbee6549d`  
		Last Modified: Wed, 23 Jan 2019 13:09:51 GMT  
		Size: 121.4 MB (121363114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b045c4652141eb310ad643b9b3f95b0acbfd1a3dd4520ef9783d34ebfc84ba8`  
		Last Modified: Wed, 23 Jan 2019 16:35:04 GMT  
		Size: 13.1 MB (13120718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b84d9512355e1bdcebd69acb79f1d1c8dc17615a4218bf426e7aa31b09263b88`  
		Last Modified: Wed, 23 Jan 2019 16:35:02 GMT  
		Size: 19.8 MB (19762042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5623f8113083bb4c306caf84937a47ec6493c8e0971dfb09005a4232de9b2588`  
		Last Modified: Wed, 23 Jan 2019 16:35:00 GMT  
		Size: 4.1 MB (4102808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-8-tools-deps` - linux; arm variant v7

```console
$ docker pull clojure@sha256:08963792a5454a7d5bc8f3ce65c4c8eac5fb0c7a073faaa3083cc0d1e93402e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.6 MB (294552484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:284f9c6ae456f0809592e80db02b15c00cfd22e2cb73dda9c1c01222a4a11ace`
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
# Tue, 08 Jan 2019 12:57:24 GMT
ENV CLOJURE_VERSION=1.10.0.411
# Tue, 08 Jan 2019 12:57:25 GMT
WORKDIR /tmp
# Tue, 08 Jan 2019 12:57:33 GMT
RUN apt-get update && apt-get install -y rlwrap
# Tue, 08 Jan 2019 12:57:35 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 08 Jan 2019 12:57:44 GMT
RUN clojure -e "(clojure-version)"
# Tue, 08 Jan 2019 12:57:45 GMT
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
	-	`sha256:d1d6119c979539a744b8bf30de22fd8750a0fa0f50c9d542d2fb6a0bad5df5f1`  
		Last Modified: Tue, 08 Jan 2019 12:58:41 GMT  
		Size: 13.2 MB (13191066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af07891f1a64977fcbd7a7e5beff4749691ab6d8b8650cbd3b135fbf335d709b`  
		Last Modified: Tue, 08 Jan 2019 12:58:42 GMT  
		Size: 19.8 MB (19762037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3761d776d7b3bb20785c9449b409c6248e22906cce96ae940d0dcd8f645b042b`  
		Last Modified: Tue, 08 Jan 2019 12:58:40 GMT  
		Size: 4.1 MB (4102783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-8-tools-deps` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:402e6770f70ae30973b7feb63e3f15e571b28ff0e72ef56abc56b72e792e8e4d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.7 MB (264665994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5917256651aec19937f1e662ea12840c75019b24fd4e7fd236c811d5c2b50d8`
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
# Tue, 08 Jan 2019 09:39:36 GMT
ENV CLOJURE_VERSION=1.10.0.411
# Tue, 08 Jan 2019 09:39:37 GMT
WORKDIR /tmp
# Tue, 08 Jan 2019 09:39:50 GMT
RUN apt-get update && apt-get install -y rlwrap
# Tue, 08 Jan 2019 09:39:54 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 08 Jan 2019 09:40:09 GMT
RUN clojure -e "(clojure-version)"
# Tue, 08 Jan 2019 09:40:09 GMT
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
	-	`sha256:60b30efa966a81e7ae6c8ec4e0bec40529c1637d68734238a42a949470cd1578`  
		Last Modified: Tue, 08 Jan 2019 09:41:28 GMT  
		Size: 12.7 MB (12701554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06087a2a01d46e7f63f8cc0c4311db66067528981153d00cab77e90b051df02`  
		Last Modified: Tue, 08 Jan 2019 09:41:28 GMT  
		Size: 19.8 MB (19761932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f16cc898673dcf443e75f2098446783a216b8a9161a7594447c90602cb75c49`  
		Last Modified: Tue, 08 Jan 2019 09:41:26 GMT  
		Size: 4.1 MB (4102695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-8-tools-deps` - linux; 386

```console
$ docker pull clojure@sha256:b8455f9a8660629ad9cf06693bff39f75532e9a358e3aefa87c716b9a7d85f3b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.3 MB (285325738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6ec57ba5babfa083f5aeb06250979512a551b7192dfefa1bcbe1b2baec4d18f`
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
# Tue, 08 Jan 2019 11:38:24 GMT
ENV CLOJURE_VERSION=1.10.0.411
# Tue, 08 Jan 2019 11:38:24 GMT
WORKDIR /tmp
# Tue, 08 Jan 2019 11:38:30 GMT
RUN apt-get update && apt-get install -y rlwrap
# Tue, 08 Jan 2019 11:38:32 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 08 Jan 2019 11:38:40 GMT
RUN clojure -e "(clojure-version)"
# Tue, 08 Jan 2019 11:38:40 GMT
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
	-	`sha256:a6da4404414874300d710270ffd2d3752b5473fdf58480e2d62b6d96ca191ee7`  
		Last Modified: Tue, 08 Jan 2019 11:39:20 GMT  
		Size: 13.5 MB (13460426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc1ebe51a576c60f0ac4082198fb484564d287eda90ad6c71acd78123b7156e`  
		Last Modified: Tue, 08 Jan 2019 11:39:21 GMT  
		Size: 19.8 MB (19761908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc331634b4bd15b9f170f10431272035d2931dcafe0ade56252e0768154da4a5`  
		Last Modified: Tue, 08 Jan 2019 11:39:19 GMT  
		Size: 4.1 MB (4102743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-8-tools-deps` - linux; ppc64le

```console
$ docker pull clojure@sha256:1b501e8fb6f506c0921d823351b32558c9b7221a41623119359d2b8cd4a1b672
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271515054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f1e0ecbd66a9b8bf2cb18dec1367fbc667de4352252ef235553869e9c2480e`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Wed, 23 Jan 2019 09:26:55 GMT
ADD file:607fec07098dd44504d39967b200ef4c80d3c31eb3524c99a522d779f8a48785 in / 
# Wed, 23 Jan 2019 09:26:58 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:01:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:02:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 11:04:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:14:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:27:20 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:27:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:27:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 12:27:39 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 12:27:42 GMT
ENV JAVA_VERSION=8u181
# Wed, 23 Jan 2019 12:27:44 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 23 Jan 2019 12:30:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 18:32:37 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Wed, 23 Jan 2019 18:32:41 GMT
ENV CLOJURE_VERSION=1.10.0.411
# Wed, 23 Jan 2019 18:32:46 GMT
WORKDIR /tmp
# Wed, 23 Jan 2019 18:32:57 GMT
RUN apt-get update && apt-get install -y rlwrap
# Wed, 23 Jan 2019 18:33:03 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 23 Jan 2019 18:33:16 GMT
RUN clojure -e "(clojure-version)"
# Wed, 23 Jan 2019 18:33:19 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:ce16bf3279cca6ab2d1b46a272b57d4c1e11cbe13e3a52148fceb9cc07eb0b37`  
		Last Modified: Wed, 23 Jan 2019 09:33:00 GMT  
		Size: 45.6 MB (45616894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b9074895469b770a2456cb2377047c95c405f79e3b04ceca45935caf814e40`  
		Last Modified: Wed, 23 Jan 2019 11:48:50 GMT  
		Size: 10.0 MB (9986574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc9d854b31c2198e3a6cc80e64e62531a2e63cf2b43ff8b40f03224abe9ee36`  
		Last Modified: Wed, 23 Jan 2019 11:48:48 GMT  
		Size: 4.3 MB (4295774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48ba7f7793013080ce168066b3989515bc218c081a99c9626e919fab4089b85`  
		Last Modified: Wed, 23 Jan 2019 11:49:34 GMT  
		Size: 50.1 MB (50065120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6531482d2ad7e5231b5486c26ef61212d3a395ee72ba0a526c33e3c5597b10f6`  
		Last Modified: Wed, 23 Jan 2019 12:41:06 GMT  
		Size: 886.1 KB (886101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa666852bf1b60821b2c16f136e41153cbd238c59da4e1060652cd0143d8798`  
		Last Modified: Wed, 23 Jan 2019 12:46:23 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88296da8aa5c76352f60edb5ea523443361478ce1c3dab4173d9b6d3eeb224d8`  
		Last Modified: Wed, 23 Jan 2019 12:46:23 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15331ed705cf4a6c6008b83d5c57f7b01ef018f14f7a101a830b71d9a1e4d3a7`  
		Last Modified: Wed, 23 Jan 2019 12:47:06 GMT  
		Size: 124.1 MB (124112878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54df60d6770816b864832ad77c527420d3baa5f3d46dcfeb3a028130dda1fb3`  
		Last Modified: Wed, 23 Jan 2019 18:38:06 GMT  
		Size: 12.7 MB (12686511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fcaa65730909eae9f88cf5ee1ac6b0e8777ffe0c3fa0670205c63b10f1dca85`  
		Last Modified: Wed, 23 Jan 2019 18:38:06 GMT  
		Size: 19.8 MB (19762036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c816fbf2d0534f10cfefc5d2a9146fc98a813cae300e50098406a4af6025d3aa`  
		Last Modified: Wed, 23 Jan 2019 18:38:05 GMT  
		Size: 4.1 MB (4102787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-8-tools-deps` - linux; s390x

```console
$ docker pull clojure@sha256:f65109b285581ac1c38f95b396462f70c94f3b28751eee470858c91873c1a834
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270885177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5b51a2bc310c8b34a523d78a78195d8d8b0f666a0cbec4c154dec1a3d3a7795`
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
# Tue, 08 Jan 2019 12:41:38 GMT
ENV CLOJURE_VERSION=1.10.0.411
# Tue, 08 Jan 2019 12:41:38 GMT
WORKDIR /tmp
# Tue, 08 Jan 2019 12:41:44 GMT
RUN apt-get update && apt-get install -y rlwrap
# Tue, 08 Jan 2019 12:41:46 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 08 Jan 2019 12:42:14 GMT
RUN clojure -e "(clojure-version)"
# Tue, 08 Jan 2019 12:42:15 GMT
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
	-	`sha256:ff8c87b3f4317cef071f0f135649a35a32ac53dca24c50a5bb263cd1aa8b9fc5`  
		Last Modified: Tue, 08 Jan 2019 12:43:05 GMT  
		Size: 12.0 MB (12001402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7fbd3f7e3a9f33c22d0e7cb4773923324a6a8fd5441b807c03ddb599ea8b87`  
		Last Modified: Tue, 08 Jan 2019 12:43:07 GMT  
		Size: 19.8 MB (19761916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241eb946bcf18a790dee94b9fcf5f886144dabb10f678a8ec0c7ccda26af77f0`  
		Last Modified: Tue, 08 Jan 2019 12:43:04 GMT  
		Size: 4.1 MB (4102754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

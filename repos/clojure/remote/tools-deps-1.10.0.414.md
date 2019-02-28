## `clojure:tools-deps-1.10.0.414`

```console
$ docker pull clojure@sha256:c0746b3f73c88b828a025225db9dc482e13bc97b434b72e3d1964a3b3664fad3
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

### `clojure:tools-deps-1.10.0.414` - linux; amd64

```console
$ docker pull clojure@sha256:a5ad0d8e3d057d2ba5ced752a4909395950e68e3bc1c0c8fac832e6206d40a5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.3 MB (282276790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f816b45de5698b0143fafc6d8f9bf5b7da2acbd5f8252f7c0428055c7d7083b`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 05:51:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:24:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:28:29 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:28:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:28:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:28:31 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 08:28:31 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:28:31 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:29:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 15:24:26 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Wed, 27 Feb 2019 23:20:51 GMT
ENV CLOJURE_VERSION=1.10.0.414
# Wed, 27 Feb 2019 23:20:51 GMT
WORKDIR /tmp
# Wed, 27 Feb 2019 23:20:56 GMT
RUN apt-get update && apt-get install -y rlwrap
# Wed, 27 Feb 2019 23:20:58 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 27 Feb 2019 23:21:06 GMT
RUN clojure -e "(clojure-version)"
# Wed, 27 Feb 2019 23:21:06 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0334c36886bd4619e8d05ccf68003e53b0b6098b2166a216bd009dba678ed8`  
		Last Modified: Wed, 06 Feb 2019 06:02:14 GMT  
		Size: 50.1 MB (50063121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa29d9cbdbf5eff98907d574c79da86d6123e841a32d7c285b723393b9865a92`  
		Last Modified: Wed, 06 Feb 2019 08:50:45 GMT  
		Size: 892.4 KB (892400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54d29f744131db0b44cf31e1c59e6320b17d5127afe41ffc745e6400b2f97c5`  
		Last Modified: Wed, 06 Feb 2019 08:53:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5b24cf4e1f1b9b16619a147fafe74bf61004e00035c6f62c9f02b5a9885662`  
		Last Modified: Wed, 06 Feb 2019 08:53:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5edfd6c9b4758084121024a24ed4b3721c12387bdfb6a87c6efea3e9a090bd51`  
		Last Modified: Wed, 06 Feb 2019 08:53:48 GMT  
		Size: 134.0 MB (133975246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:567f279fbf22092d2afcf52f19fc78a3beb41bbeb8eaa98070d5fe3d63293f93`  
		Last Modified: Wed, 27 Feb 2019 23:22:53 GMT  
		Size: 13.0 MB (13015402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f21c0248755fd974aa42f4f497de5a414fc5709757d1fee3307cc1f606f5827`  
		Last Modified: Wed, 27 Feb 2019 23:22:53 GMT  
		Size: 19.8 MB (19762089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12392c14a38cade69b93050f5845dd83834520703b05af43904cbc9386c2f9ca`  
		Last Modified: Wed, 27 Feb 2019 23:22:52 GMT  
		Size: 4.1 MB (4102718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps-1.10.0.414` - linux; arm variant v5

```console
$ docker pull clojure@sha256:3f9f36e3a9b0f4d4ebdf1d5a21af991daba261a907a6a9e928dd70ccbb700a75
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265588531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bd6ee64c854b6aca6f05f369d80ec51549bfafe70391dfdf4be575405c295d9`
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
# Thu, 28 Feb 2019 09:49:43 GMT
ENV CLOJURE_VERSION=1.10.0.414
# Thu, 28 Feb 2019 09:49:43 GMT
WORKDIR /tmp
# Thu, 28 Feb 2019 09:49:58 GMT
RUN apt-get update && apt-get install -y rlwrap
# Thu, 28 Feb 2019 09:50:01 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Thu, 28 Feb 2019 09:51:03 GMT
RUN clojure -e "(clojure-version)"
# Thu, 28 Feb 2019 09:51:04 GMT
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
	-	`sha256:7fa736913cdb970c456f7befa2d77adaed6a708a2ef1615a604e55a7d8c74712`  
		Last Modified: Thu, 28 Feb 2019 09:53:25 GMT  
		Size: 13.1 MB (13129216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814c6f6b5f80626831bebad31d6443f5bd50e06be9ab7c278ab79943e6db3d4b`  
		Last Modified: Thu, 28 Feb 2019 09:53:26 GMT  
		Size: 19.8 MB (19762137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15898f6e5aa54c7dc6072413f503d752c3a5279f91b65b9d2fc6e3b0446a468c`  
		Last Modified: Thu, 28 Feb 2019 09:53:24 GMT  
		Size: 4.1 MB (4102802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps-1.10.0.414` - linux; arm variant v7

```console
$ docker pull clojure@sha256:97ef680e37184fbbb22d0f5429808e713c0d1ba3d3d6d5786fd631c116531f9f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259615494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f58747b8a847a7fde77c2e65823bdfb86e134971be145f21c2ecaa31ce68e16`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 15:38:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 16:19:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 16:21:40 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 16:21:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 16:21:43 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 16:21:43 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 07 Feb 2019 16:21:44 GMT
ENV JAVA_VERSION=8u181
# Thu, 07 Feb 2019 16:21:44 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 26 Feb 2019 13:01:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Feb 2019 14:00:47 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Tue, 26 Feb 2019 14:00:48 GMT
ENV CLOJURE_VERSION=1.10.0.411
# Tue, 26 Feb 2019 14:00:48 GMT
WORKDIR /tmp
# Tue, 26 Feb 2019 14:00:56 GMT
RUN apt-get update && apt-get install -y rlwrap
# Tue, 26 Feb 2019 14:01:00 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 26 Feb 2019 14:01:08 GMT
RUN clojure -e "(clojure-version)"
# Tue, 26 Feb 2019 14:01:09 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:54d7f221ed1ab7644f6a88a953847270cd864b5ebc4f343bfa28876a2715031f`  
		Last Modified: Thu, 07 Feb 2019 02:04:53 GMT  
		Size: 42.1 MB (42086927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fea5bcc599e31c6fb6e38ce89618c27f24be54ed9ac9b53f4fcbed58f9d619d`  
		Last Modified: Thu, 07 Feb 2019 15:52:17 GMT  
		Size: 9.5 MB (9480760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ac22707ead8a14ad6ae745a4c231538e6215c7a702ccad147b5251b3ea66c`  
		Last Modified: Thu, 07 Feb 2019 15:52:16 GMT  
		Size: 3.9 MB (3918458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5565830197f8831e23db2438cc94b7a2c5b37186bfa8adc7d45c22ef585b48`  
		Last Modified: Thu, 07 Feb 2019 15:52:41 GMT  
		Size: 46.4 MB (46384822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a65b399b4cddddddd1d370b13e1f92549645477536d861517e1d7bdf566cdd`  
		Last Modified: Tue, 26 Feb 2019 13:04:58 GMT  
		Size: 867.8 KB (867848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1000680632749a02f1510fc9d8271e4e84a458f9b13350200ca45153fb453ad`  
		Last Modified: Tue, 26 Feb 2019 13:04:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f2fd97df151b072ea09334833eb28e231a6f065e8d02abc43d00c4d8413966`  
		Last Modified: Tue, 26 Feb 2019 13:04:58 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc553af7226d9a90510eabd4cf1706def5bb1b028bfd6251e9ab53cecadd01c`  
		Last Modified: Tue, 26 Feb 2019 13:05:33 GMT  
		Size: 119.8 MB (119822421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36865657f7dd6e0fa08539c5360cc63145a22fca7e5d3577bb1ecb2651716697`  
		Last Modified: Tue, 26 Feb 2019 14:02:07 GMT  
		Size: 13.2 MB (13189049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87eec67ab8e964995ba86847c5e98bc0b1057c9edadf1c3728168e4de0052cdd`  
		Last Modified: Tue, 26 Feb 2019 14:02:07 GMT  
		Size: 19.8 MB (19762042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752eaafd6e408a0a8d2bcc0f411c9058e294bbd6c7088c745908b06cd6e70b7b`  
		Last Modified: Tue, 26 Feb 2019 14:02:05 GMT  
		Size: 4.1 MB (4102787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps-1.10.0.414` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8416f89767b7fe1c7a9731dd9c94e84e56d734430a51a513a3612e772bae7810
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.7 MB (264690407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a88ad72726c9c22b5ce1a70e34c43f55e5bdd06b8a04f709ba1cd49b685ae9fa`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 10:39:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 11:55:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:12:41 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:12:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:12:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 12:12:51 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 12:12:54 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 12:12:55 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 12:18:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 06:36:38 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Thu, 28 Feb 2019 09:40:36 GMT
ENV CLOJURE_VERSION=1.10.0.414
# Thu, 28 Feb 2019 09:40:36 GMT
WORKDIR /tmp
# Thu, 28 Feb 2019 09:40:51 GMT
RUN apt-get update && apt-get install -y rlwrap
# Thu, 28 Feb 2019 09:40:55 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Thu, 28 Feb 2019 09:41:09 GMT
RUN clojure -e "(clojure-version)"
# Thu, 28 Feb 2019 09:41:10 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:5001a1d2fe2f54da8dbdfca56862dd05d37d1a2aab69599bcc2a130ea4fcd7f5`  
		Last Modified: Wed, 06 Feb 2019 10:52:48 GMT  
		Size: 48.0 MB (48005411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dced00d8f10be6119c18314ca53aacc160f92164d25ad89d5485db0b2361f28b`  
		Last Modified: Wed, 06 Feb 2019 12:35:39 GMT  
		Size: 877.6 KB (877571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c380bc1c79217d7541268db82fe3fc747ab41ca5c594c97335e81d96412300c8`  
		Last Modified: Wed, 06 Feb 2019 12:40:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119bcad690221f65a017d3c04d6d2c370f262b96abb1db1d70b1da114dd01a1b`  
		Last Modified: Wed, 06 Feb 2019 12:40:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:232d0fd3810fef1eb24fe4fb182ff44e7a7697ed75265db12e1e96721799aa38`  
		Last Modified: Wed, 06 Feb 2019 12:41:38 GMT  
		Size: 122.3 MB (122278152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf14e04e9ae741288404e0409c17126cdbb7f5f0b32a1189da6a724ce7c5bac`  
		Last Modified: Thu, 28 Feb 2019 09:43:46 GMT  
		Size: 12.7 MB (12717165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce9215307e6b5c8a4fcdf82beac7d0624306c5588b11bebdd1c8fcc89a7d16f`  
		Last Modified: Thu, 28 Feb 2019 09:43:44 GMT  
		Size: 19.8 MB (19762060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6bfa2937fa5df9ae8003cb6be1376bfb7b6b580213f390bfb24b37ada1ae09`  
		Last Modified: Thu, 28 Feb 2019 09:43:41 GMT  
		Size: 4.1 MB (4102717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps-1.10.0.414` - linux; 386

```console
$ docker pull clojure@sha256:335286dd8cdbbdd70ebbadcd71e93b694cb18e71513580fe962f7db326baf52a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.4 MB (285358751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f517998122a8d3b24ff1a333c2566dc5952e5e0c4a106bf97217a3605ceab6c5`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:07 GMT
ADD file:70c26933810136bdb5c394bab98ac1119dd6ab650db410d21a0a16098b8a6ae2 in / 
# Wed, 06 Feb 2019 12:01:08 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:49:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:49:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 01:50:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 06:20:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 06:22:49 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 06:22:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 06:22:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 06:22:50 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 07 Feb 2019 06:22:51 GMT
ENV JAVA_VERSION=8u181
# Thu, 07 Feb 2019 06:22:51 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Thu, 07 Feb 2019 06:23:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 06:51:59 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Thu, 07 Feb 2019 06:51:59 GMT
ENV CLOJURE_VERSION=1.10.0.411
# Thu, 07 Feb 2019 06:52:00 GMT
WORKDIR /tmp
# Thu, 07 Feb 2019 06:52:05 GMT
RUN apt-get update && apt-get install -y rlwrap
# Thu, 07 Feb 2019 06:52:07 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Thu, 07 Feb 2019 06:52:14 GMT
RUN clojure -e "(clojure-version)"
# Thu, 07 Feb 2019 06:52:14 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:a009f6fe22ae181ab29d9455c5e577e663191ee6f4a9a0483ab44d91e775d853`  
		Last Modified: Thu, 07 Feb 2019 02:03:23 GMT  
		Size: 51.6 MB (51593479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbab22e197060bebd348807811ba262b7984ac7ad029fa6a70eb28d982bb9b8`  
		Last Modified: Thu, 07 Feb 2019 06:38:54 GMT  
		Size: 900.0 KB (899974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9c4a7701163eacf47fe82a74275b58870bbf56e8158c9562051b8d87d9be7c`  
		Last Modified: Thu, 07 Feb 2019 06:40:30 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d997ea7565d6ca639de19fdddf53f9ecc0348df5d9420cc068a4e992f33e6284`  
		Last Modified: Thu, 07 Feb 2019 06:40:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b3cea66ea80e5377c481d471ad9c8fe5d4208a27eb06a26560ff40ba048f3a`  
		Last Modified: Thu, 07 Feb 2019 06:40:56 GMT  
		Size: 134.1 MB (134090192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24d9e4a0523585fa045f0a5da2f60c5add04b5003f21deec89eda7b482b6385`  
		Last Modified: Thu, 07 Feb 2019 06:54:18 GMT  
		Size: 13.5 MB (13480347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8d7c43e87c4c1aec0847f245b7bdb045bdbecf0fee5113d193a8f1444cfdee`  
		Last Modified: Thu, 07 Feb 2019 06:54:19 GMT  
		Size: 19.8 MB (19761941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e47be92fd8ce052250ec65e26fefca0d3aed3b02220544ec3f531c07c4c684`  
		Last Modified: Thu, 07 Feb 2019 06:54:17 GMT  
		Size: 4.1 MB (4102743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps-1.10.0.414` - linux; ppc64le

```console
$ docker pull clojure@sha256:5f56992e7fe137bf0a870611911a9783d39d806d6f6d0d0bc5bcac6c6b7a0a59
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271523486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c189188a8ea9c97136c042a19f57c471d6cb70554592355786b84d9ed9d041d`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:33 GMT
ADD file:dbc825fea111271dd16d8443e8df30f00e4bfb82365f49430e4b697866955e25 in / 
# Wed, 06 Feb 2019 09:26:35 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 19:08:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:08:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 19:10:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:16:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:26:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 20:26:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 20:26:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 20:26:58 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 20:27:03 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 20:27:06 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 20:31:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 00:43:48 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Thu, 28 Feb 2019 09:18:18 GMT
ENV CLOJURE_VERSION=1.10.0.414
# Thu, 28 Feb 2019 09:18:24 GMT
WORKDIR /tmp
# Thu, 28 Feb 2019 09:18:55 GMT
RUN apt-get update && apt-get install -y rlwrap
# Thu, 28 Feb 2019 09:19:02 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Thu, 28 Feb 2019 09:19:26 GMT
RUN clojure -e "(clojure-version)"
# Thu, 28 Feb 2019 09:19:31 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:809222cf915d3e4f6467ca885b8fd6119aac0d5b2dfc37e9ea338ee407314063`  
		Last Modified: Wed, 06 Feb 2019 19:29:02 GMT  
		Size: 50.1 MB (50065346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3ad83917132c544d75d731b070adbbcbeb03528e5e840ab3681daac49a753d`  
		Last Modified: Wed, 06 Feb 2019 20:38:05 GMT  
		Size: 886.0 KB (886000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9f69a4304568e266d7d1e3f607002ff2a164823e26429d5d71adcec2d7f82c`  
		Last Modified: Wed, 06 Feb 2019 20:40:00 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6421cf099705e32adf6b0d6696662c61c884ddadb2bfc5340f50dd5b794589a7`  
		Last Modified: Wed, 06 Feb 2019 20:40:00 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61931d158eb52ec3e9edb4ef607b46ec0b07b6741a2c101bc01681d673080489`  
		Last Modified: Wed, 06 Feb 2019 20:40:22 GMT  
		Size: 124.1 MB (124112823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9d7b56f79c3337c3f5db414ee5fbd395c665d917a352c7407f1cfaf32dfb24`  
		Last Modified: Thu, 28 Feb 2019 09:22:23 GMT  
		Size: 12.7 MB (12694954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7281d8baceaddb70222eef1f3afb485f3f41e661cf8e47d9ae5dc29badfa3eac`  
		Last Modified: Thu, 28 Feb 2019 09:22:23 GMT  
		Size: 19.8 MB (19762143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275b76b82c92cb322c787b03e667821fb81226cfd9621c943d503804f9a34b82`  
		Last Modified: Thu, 28 Feb 2019 09:22:23 GMT  
		Size: 4.1 MB (4102775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps-1.10.0.414` - linux; s390x

```console
$ docker pull clojure@sha256:42dd9cf33700359b801248622e7d188aa978e455e7f047b3df4a6b83768145d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270912255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8adcdb6147c76456eafbfd752addd9fb6cc87552a7245130f660f603a9582da`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:08 GMT
ADD file:8c452240b3657ec4cc6568239a4d933bc75fd958464a3950f67912097968fff8 in / 
# Wed, 06 Feb 2019 12:43:08 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 15:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:27:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 15:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 17:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 17:56:08 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 17:56:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 17:56:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 17:56:09 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 17:56:09 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 17:56:10 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 17:56:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 18:37:42 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Wed, 06 Feb 2019 18:37:42 GMT
ENV CLOJURE_VERSION=1.10.0.411
# Wed, 06 Feb 2019 18:37:42 GMT
WORKDIR /tmp
# Wed, 06 Feb 2019 18:37:46 GMT
RUN apt-get update && apt-get install -y rlwrap
# Wed, 06 Feb 2019 18:37:47 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 06 Feb 2019 18:38:15 GMT
RUN clojure -e "(clojure-version)"
# Wed, 06 Feb 2019 18:38:15 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:9cf6b44fbf659d16c99bbf57d1ee87ae0e6827f8aaa82012f87f1f031f655da5`  
		Last Modified: Wed, 06 Feb 2019 15:34:38 GMT  
		Size: 50.5 MB (50487526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64c2dc7f2b1cf6a4164c2a26840d7168df78eaeb8fea4357fc52a75ac1f917b`  
		Last Modified: Wed, 06 Feb 2019 17:58:31 GMT  
		Size: 903.4 KB (903393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1051dacf8ce2286e373526759942803d8d105e4fbd2e4a27a9324caa17184825`  
		Last Modified: Wed, 06 Feb 2019 17:59:40 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd0364d3796418608294f20809df654bf457aa06d9b1a84a9465b811b546d19`  
		Last Modified: Wed, 06 Feb 2019 17:59:40 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b755a5753df9f48655899d9e39f89c848354cad15e7f34550ea86827ac1f762`  
		Last Modified: Wed, 06 Feb 2019 17:59:58 GMT  
		Size: 123.7 MB (123736189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6da36d5cec26d9378c89a18f5abc359a6d73e144f499e2fc70b8607d1031eeb`  
		Last Modified: Wed, 06 Feb 2019 18:40:12 GMT  
		Size: 12.0 MB (12020596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e1442990b34238dbd8e87bbfb52ec62c1ff65e3edf13cadc0c098e1e2707fe`  
		Last Modified: Wed, 06 Feb 2019 18:40:12 GMT  
		Size: 19.8 MB (19761942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad63c28f94a2b8229e5c926ffe04137374f35c8621cf55181033fc2ac33c1f9`  
		Last Modified: Wed, 06 Feb 2019 18:40:11 GMT  
		Size: 4.1 MB (4102754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:tools-deps`

```console
$ docker pull clojure@sha256:1238ceff13b2fbeb886d4f315036995e0edc439477664b407dc4978074feb9f9
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

### `clojure:tools-deps` - linux; arm variant v5

```console
$ docker pull clojure@sha256:9945e0d155551e2564795a22faa7a195a92c47fc6c2438b2094dfd77bce76ca2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265596514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06b8537f086a2b5635d1a26a6ec5fa78cf03cf59ef355aef2f3c4b0d41e656d6`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Wed, 06 Feb 2019 09:55:21 GMT
ADD file:cde688211f1222c7310b330ab44ca3a7040b0f81757aa06eb186f342f9002e9e in / 
# Wed, 06 Feb 2019 09:55:23 GMT
CMD ["bash"]
# Sat, 02 Mar 2019 09:58:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 09:58:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 02 Mar 2019 09:59:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 10:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 11:03:36 GMT
ENV LANG=C.UTF-8
# Sat, 02 Mar 2019 11:03:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 02 Mar 2019 11:03:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 02 Mar 2019 11:03:39 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 02 Mar 2019 11:03:39 GMT
ENV JAVA_VERSION=8u181
# Sat, 02 Mar 2019 11:03:40 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 02 Mar 2019 11:04:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 02 Mar 2019 12:21:19 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Sat, 02 Mar 2019 12:21:19 GMT
ENV CLOJURE_VERSION=1.10.0.414
# Sat, 02 Mar 2019 12:21:20 GMT
WORKDIR /tmp
# Sat, 02 Mar 2019 12:21:30 GMT
RUN apt-get update && apt-get install -y rlwrap
# Sat, 02 Mar 2019 12:21:34 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Sat, 02 Mar 2019 12:22:34 GMT
RUN clojure -e "(clojure-version)"
# Sat, 02 Mar 2019 12:22:34 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:64cbc7a69a80c9845c477fed607dbdc662a2e90c861ea5e3ede337e672e7235a`  
		Last Modified: Wed, 06 Feb 2019 10:03:29 GMT  
		Size: 44.1 MB (44050880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4134cc1b13a896b7996124760d484efd7aecc2c58a704688b99722f4ddd6fb`  
		Last Modified: Sat, 02 Mar 2019 10:08:11 GMT  
		Size: 9.9 MB (9851916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26306a44df68f962e0c10b777285eb2942cbaa049ba33077bb17925e8a7749ba`  
		Last Modified: Sat, 02 Mar 2019 10:08:09 GMT  
		Size: 4.2 MB (4159040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ab7d0147573c7e612d2583610491c6656ce5e63e0f336f8291aece5a77bffb`  
		Last Modified: Sat, 02 Mar 2019 10:08:34 GMT  
		Size: 48.3 MB (48284855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f156937c572e26160947ca368750fb05236a408618521e5962099d9b843e6266`  
		Last Modified: Sat, 02 Mar 2019 11:07:38 GMT  
		Size: 884.7 KB (884725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc68ab9e372991e0a3e811a05d549811fd34560f964a8072ddbaa13bac7047c8`  
		Last Modified: Sat, 02 Mar 2019 11:09:40 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4746a8d3178603e8b9f3b2938d0ae9b7abaac71c27bbfcf76bcc3535b4d09ad9`  
		Last Modified: Sat, 02 Mar 2019 11:09:40 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7729098710d7f778c82e9dd84aeb3ce3b3f8bde87e678626e85e9f0f3c4a6b`  
		Last Modified: Sat, 02 Mar 2019 11:10:11 GMT  
		Size: 121.4 MB (121367977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f9d23f2db1d0e182cca2cac8dbd3678a5ea52a64e84a258c9a2de20cff024f`  
		Last Modified: Sat, 02 Mar 2019 12:30:35 GMT  
		Size: 13.1 MB (13131799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91a0212dbd981e1051985e23ce2e44add513089c8b5f00e54620ba326b22ade`  
		Last Modified: Sat, 02 Mar 2019 12:30:36 GMT  
		Size: 19.8 MB (19762140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c237c64740202997997dd6286335d05405b382f75e5a4d1c430edce3d96a332`  
		Last Modified: Sat, 02 Mar 2019 12:30:33 GMT  
		Size: 4.1 MB (4102803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps` - linux; arm variant v7

```console
$ docker pull clojure@sha256:379578891a9f35cdcfe4d96ee1822bfe6a5e43b11d4e796dc10b90750ad6560f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259615577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:666c1752912b410e40d109447f030d308a704001c0c33470cfbce65b04ce49c7`
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
# Thu, 28 Feb 2019 12:59:24 GMT
ENV CLOJURE_VERSION=1.10.0.414
# Thu, 28 Feb 2019 12:59:24 GMT
WORKDIR /tmp
# Thu, 28 Feb 2019 12:59:34 GMT
RUN apt-get update && apt-get install -y rlwrap
# Thu, 28 Feb 2019 12:59:43 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Thu, 28 Feb 2019 12:59:54 GMT
RUN clojure -e "(clojure-version)"
# Thu, 28 Feb 2019 12:59:54 GMT
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
	-	`sha256:c1d12b20fd32585ccabed935b792e66346befd9bf06254f09b4a19c1a5a86877`  
		Last Modified: Thu, 28 Feb 2019 13:01:30 GMT  
		Size: 13.2 MB (13189030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6148ebb7c04ddf5245aa7c0c1fa353e5aa8293e7627e17ddcdfd24684ba37aab`  
		Last Modified: Thu, 28 Feb 2019 13:01:31 GMT  
		Size: 19.8 MB (19762131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596816028ad54c5a43d16d4956177e469662ae73383b3f5d5bcaee24b379ef81`  
		Last Modified: Thu, 28 Feb 2019 13:01:28 GMT  
		Size: 4.1 MB (4102800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps` - linux; arm64 variant v8

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

### `clojure:tools-deps` - linux; 386

```console
$ docker pull clojure@sha256:0563ea186e0186fb5753c4119930dead716077f644d116a5b82b2a59a932e412
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.4 MB (285355144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b04cb825919fd689fbc9ce8a174fea081a8414de981bab700b8780e803a6fafa`
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
# Thu, 28 Feb 2019 11:38:36 GMT
ENV CLOJURE_VERSION=1.10.0.414
# Thu, 28 Feb 2019 11:38:37 GMT
WORKDIR /tmp
# Thu, 28 Feb 2019 11:38:42 GMT
RUN apt-get update && apt-get install -y rlwrap
# Thu, 28 Feb 2019 11:38:44 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Thu, 28 Feb 2019 11:38:51 GMT
RUN clojure -e "(clojure-version)"
# Thu, 28 Feb 2019 11:38:51 GMT
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
	-	`sha256:6d3dbfc77d8ed02f0c7301b786f5c05778fdfd5d9733c697aeb0b5b6a96e95f7`  
		Last Modified: Thu, 28 Feb 2019 11:39:49 GMT  
		Size: 13.5 MB (13476643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9602099fd42532f60c2955490428e42d0ecd0aaa7958c3e8764cb955092f4d29`  
		Last Modified: Thu, 28 Feb 2019 11:39:50 GMT  
		Size: 19.8 MB (19762062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66dc7f892cc26cc21d9438a7fc687e29905b7bdac9edf6df64dce26c9aa9d01b`  
		Last Modified: Thu, 28 Feb 2019 11:39:48 GMT  
		Size: 4.1 MB (4102719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:tools-deps` - linux; ppc64le

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

### `clojure:tools-deps` - linux; s390x

```console
$ docker pull clojure@sha256:3e9c1a9aace784d32c809308e78c70e938e38ad1d4a3d8108e819de92fbe5b1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270908444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8739a2dfb9c424081520d83e986570e7b293989bf8d38cbe18e590c093a5aac`
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
# Thu, 28 Feb 2019 12:42:56 GMT
ENV CLOJURE_VERSION=1.10.0.414
# Thu, 28 Feb 2019 12:42:56 GMT
WORKDIR /tmp
# Thu, 28 Feb 2019 12:43:02 GMT
RUN apt-get update && apt-get install -y rlwrap
# Thu, 28 Feb 2019 12:43:03 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Thu, 28 Feb 2019 12:43:32 GMT
RUN clojure -e "(clojure-version)"
# Thu, 28 Feb 2019 12:43:32 GMT
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
	-	`sha256:65450880c2d8f9d243b22fd998257fe5685c1ae48a58f394f0539ceb370b9172`  
		Last Modified: Thu, 28 Feb 2019 12:44:18 GMT  
		Size: 12.0 MB (12016660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfeb9f39c2669d86aae72edaf17d013230f27a366cdd1ff8452e76b2440e7728`  
		Last Modified: Thu, 28 Feb 2019 12:44:18 GMT  
		Size: 19.8 MB (19762061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efabc7f029f5f22f75ec5d6b0f75c4cb61d0f80050b8ee7557d7b70a7836599`  
		Last Modified: Thu, 28 Feb 2019 12:44:17 GMT  
		Size: 4.1 MB (4102760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

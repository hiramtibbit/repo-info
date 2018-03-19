## `openjdk:10-ea-46-jre`

```console
$ docker pull openjdk@sha256:0f4091f24698f3513ff57fffa4209cc5ab6a6f74d03be955dffcc233432f1cca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7

### `openjdk:10-ea-46-jre` - linux; amd64

```console
$ docker pull openjdk@sha256:7e1e6e76bf9e432e71d70c7b92527ca186023eb4ad3a8371af3c7319b126267f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266770271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c29ab5595e60f6fe12536e745687e9ccb6fa50646e2f5462ed9ff2c71746332`
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
# Wed, 14 Mar 2018 09:47:46 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 09:47:46 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 09:47:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 09:47:47 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 09:47:48 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:39:21 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:00:16 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:01:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:3fa2dfef6bbebfbdccc98f6330f807a45449e7263662180f4bb0d69b35adbed8`  
		Last Modified: Wed, 14 Mar 2018 11:41:28 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9579e74f80c54815655f2ab2f9b8f480a893dc9f598425db4e1d7342992328f`  
		Last Modified: Wed, 14 Mar 2018 11:41:28 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:290ed77cd3ee1fdaf1686581b218472f4740f96339df0886183a53fbb8012da4`  
		Last Modified: Wed, 14 Mar 2018 11:41:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4647793012c7497e3b66bee02a7118ab0e65cb3f31183f5d04c84eed108a16f1`  
		Last Modified: Mon, 19 Mar 2018 21:54:40 GMT  
		Size: 200.1 MB (200115690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-46-jre` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:bc29b4f9d3ddf1cfaf227f8fb800f010ef968aba388f2626595de051dd56808b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.2 MB (245206826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c99650e6eb9b1f869f2229b576d7306d29d14a434494db506bf5465c01b75e94`
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
# Wed, 14 Mar 2018 22:36:34 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 22:36:35 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:36:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:36:37 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:36:37 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 08:04:33 GMT
ENV JAVA_VERSION=10-ea+46
# Fri, 16 Mar 2018 08:04:34 GMT
ENV JAVA_DEBIAN_VERSION=10~46-1
# Fri, 16 Mar 2018 08:05:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:3f623e34f2974c12b052041117b71304f54826fb718a65ad55a5c8a60309a581`  
		Last Modified: Fri, 16 Mar 2018 08:11:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff08f6ca31da58a3b9d9dea62dbb210f6a9236f33e3d7aee7ecaee0de7ed5910`  
		Last Modified: Fri, 16 Mar 2018 08:11:34 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8350fa5575e2f085b0775c1917f4e8a6d60dce343db10669d1f084cda692fb`  
		Last Modified: Fri, 16 Mar 2018 08:11:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e25a21f1b4e22ede984af9ff2322246e5825857b7e1a1915233039066b073c4`  
		Last Modified: Fri, 16 Mar 2018 08:12:20 GMT  
		Size: 181.6 MB (181646354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-46-jre` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:1f509e018608e99f900e4f77e8fabbcf4a8fd49241a3acb4a234864e9db73827
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.2 MB (240241347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb5b43b638318fe1f5e908780df649ad64234f2577f922bd11999432d11b507`
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
# Wed, 14 Mar 2018 13:47:47 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 13:47:47 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 13:47:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 13:47:50 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 13:47:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 01:24:15 GMT
ENV JAVA_VERSION=10-ea+46
# Fri, 16 Mar 2018 01:24:15 GMT
ENV JAVA_DEBIAN_VERSION=10~46-1
# Fri, 16 Mar 2018 01:25:18 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:47949d7e9cabe454a5ab9c982d6e3c2d7f6ee198fe2e4e12ff99608b28571eae`  
		Last Modified: Wed, 14 Mar 2018 14:17:03 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171cd0d5b3fbd768ccd665d55b256fdf54692f0b63cdb38ff679d4f77313a4e6`  
		Last Modified: Wed, 14 Mar 2018 14:17:03 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc34032a7a81a1d2926ad7d85c9bce0733939be51079e7c84b1c88e712d4901`  
		Last Modified: Wed, 14 Mar 2018 14:17:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83abb34fa3238f3c1e7abbca6a17901fa79e291f22c03f21a8ca8f7a49edfbb4`  
		Last Modified: Fri, 16 Mar 2018 01:35:32 GMT  
		Size: 179.3 MB (179327590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

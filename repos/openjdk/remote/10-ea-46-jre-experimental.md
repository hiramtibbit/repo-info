## `openjdk:10-ea-46-jre-experimental`

```console
$ docker pull openjdk@sha256:1c7b4a652c2f9440307acd3111998e9bc4e4c4eac6dcbadcea92958a5053db31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `openjdk:10-ea-46-jre-experimental` - linux; amd64

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

### `openjdk:10-ea-46-jre-experimental` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:2c050ab80d91d8b23e806c93753ac6c4c2a038390669202903031b0d6c841ff9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.4 MB (245440955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9abe135f2d0e23dfda0c2edb5cc24066e641c0914a42d1169a201506a405de7f`
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
# Tue, 20 Mar 2018 09:55:58 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Tue, 20 Mar 2018 09:57:39 GMT
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
	-	`sha256:4b30c43d4f224ae7a8794040621ee8ceaada7401e4578c576f57421ca6e643af`  
		Last Modified: Tue, 20 Mar 2018 10:14:31 GMT  
		Size: 181.9 MB (181880483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-46-jre-experimental` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:f33732d0b81cefa85b50b36af96c1ffbb7bb566397c6f281fedab936e2542621
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.5 MB (240470735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2a693ab42d02c0985efa9c5f4910f58ac05d2457cd74e1a54a5841c059da15c`
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
# Tue, 20 Mar 2018 01:24:20 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Tue, 20 Mar 2018 01:25:29 GMT
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
	-	`sha256:113f986efd1dc2b407eba1cc9187c228a27f49072f6dd344cacda0ebbba85516`  
		Last Modified: Tue, 20 Mar 2018 01:41:02 GMT  
		Size: 179.6 MB (179556978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-46-jre-experimental` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:d681d4a8a387d5c050ab12fd762c42d186b627cdb4df4826eef911eed3d1f98f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.0 MB (245958692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca14de2ed191d9aa9f1e719f7471c6c8f421f0db03632b1c6930b20b003ae9fc`
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
# Wed, 14 Mar 2018 19:45:33 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 19:45:34 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 19:45:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 19:45:40 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 19:45:41 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 10:49:12 GMT
ENV JAVA_VERSION=10-ea+46
# Tue, 20 Mar 2018 10:02:39 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Tue, 20 Mar 2018 10:07:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:53dadc800bcda8922b275524218436ec2cd970733af0942fa116308beef25f43`  
		Last Modified: Wed, 14 Mar 2018 21:01:19 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2dcafe18e8465b06a37e8f743f767c1381b53d5f51d2358e40d2d1eedf290a0`  
		Last Modified: Wed, 14 Mar 2018 21:01:19 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f54153f492b5689cd108db963c8ff71cefeec41b3ce962f5ad8362ce2aa87d`  
		Last Modified: Wed, 14 Mar 2018 21:01:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a07d5a29d65cac3b1b8878439b4d6dcf2d898b1228923150aaa55fc874cf841`  
		Last Modified: Tue, 20 Mar 2018 11:17:47 GMT  
		Size: 183.1 MB (183050940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-46-jre-experimental` - linux; ppc64le

```console
$ docker pull openjdk@sha256:2fe98f202302f2f46a82a1d4451e16de56141e355d34926d729d50d98949f52e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257364261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4510dfd79aecee85faf89034a38a4ac0105d9d30cca3d659d38133563d7730b0`
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
# Thu, 15 Mar 2018 04:01:27 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Mar 2018 04:01:30 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:01:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:01:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:01:52 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 10:48:14 GMT
ENV JAVA_VERSION=10-ea+46
# Tue, 20 Mar 2018 10:48:16 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Tue, 20 Mar 2018 10:57:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:5e7f45f47884a0112c496a95f472fe76bfcf82a0fc7da07291f40a0cfd8f4f28`  
		Last Modified: Tue, 20 Mar 2018 12:02:17 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02debe73016bfa20bf6a57e527b558b9c2530c53457f53271a3fd9a08ea03824`  
		Last Modified: Tue, 20 Mar 2018 12:02:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346bb476445efe745578638263490b9695dded63f779920ac06ff8f2198c9f9b`  
		Last Modified: Tue, 20 Mar 2018 12:02:16 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d259aa3c78b9dbb8404b03595d09d4be80142c566b8ac385da06fb2956ad11`  
		Last Modified: Tue, 20 Mar 2018 12:02:59 GMT  
		Size: 189.5 MB (189496023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

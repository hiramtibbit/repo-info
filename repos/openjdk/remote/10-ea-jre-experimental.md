## `openjdk:10-ea-jre-experimental`

```console
$ docker pull openjdk@sha256:e545fc44ead51fcd16c86569b5ed5c049b241f54efe3c44cdf74e6ef20b84152
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

### `openjdk:10-ea-jre-experimental` - linux; amd64

```console
$ docker pull openjdk@sha256:58e53a779a8435dc8c7e884c2cba3f7d75334208b8c62b61aa8b17283bc33438
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256875548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4637982de2d47a3155941d36ca2fa55fd64bb0e6729b41e9695173285a890df`
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
# Wed, 04 Apr 2018 18:29:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-4
# Wed, 04 Apr 2018 18:30:32 GMT
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
	-	`sha256:907cc35946fda8d1d05214ddec3c55b6fb6df101d41fc557ddd3b035154457ca`  
		Last Modified: Wed, 04 Apr 2018 20:18:49 GMT  
		Size: 190.2 MB (190220967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jre-experimental` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:fee949746c6a974cd1536a2ab973332286b6cbe2fe115bd64f3d775b24a11b02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.6 MB (235608496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de74816c3e188ac65d05393f2eb963f56a405f733cee6455be26639685ebf19b`
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
# Fri, 06 Apr 2018 17:58:26 GMT
ENV JAVA_DEBIAN_VERSION=10~46-4
# Fri, 06 Apr 2018 18:00:08 GMT
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
	-	`sha256:286218d55d0f1eece4d7fe8b70ffd5dda017c0032bae7acda7d964d205d39522`  
		Last Modified: Fri, 06 Apr 2018 18:11:42 GMT  
		Size: 172.0 MB (172048024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jre-experimental` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:25c14b939c28243e2359621ec7effaad1281aeafa3701294507481f53fcfb113
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230528042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af3374e1172be14f9e29b2823476b3966fb333b245b94bc9186d906b77520ce3`
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
# Wed, 28 Mar 2018 21:06:26 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 28 Mar 2018 21:06:26 GMT
ENV LANG=C.UTF-8
# Wed, 28 Mar 2018 21:06:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Mar 2018 21:06:29 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 28 Mar 2018 21:06:30 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 28 Mar 2018 21:06:30 GMT
ENV JAVA_VERSION=10-ea+46
# Fri, 06 Apr 2018 17:58:30 GMT
ENV JAVA_DEBIAN_VERSION=10~46-4
# Fri, 06 Apr 2018 17:59:45 GMT
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
	-	`sha256:02d08570185750db2f91ed782cdb0a307933b1dbf74808a80a6f0199ce5cdf74`  
		Last Modified: Wed, 28 Mar 2018 21:18:02 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c14fd615b85e5c72f10c36c2b67f279f21ab7f7c40779937585cc5e7445dd056`  
		Last Modified: Wed, 28 Mar 2018 21:18:02 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eadf2a085fb5318c4cdda1d4ebb9df39c0f7d4d133d961f5e9d83b3892a048e`  
		Last Modified: Wed, 28 Mar 2018 21:18:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9d40c70b123321eddc76e0f9287fea0fb99b3a707299d586254ab6cf69e417`  
		Last Modified: Fri, 06 Apr 2018 18:12:06 GMT  
		Size: 169.6 MB (169614284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jre-experimental` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:672fa0d07a44f09977a55618f6e050f47004d91dce161480c15be9257baa1f67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.1 MB (236078724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:508981bc74ad9ea725d05026c22a38d1a5b301446e1c52c38c7344565455b3ee`
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
# Fri, 06 Apr 2018 17:59:09 GMT
ENV JAVA_DEBIAN_VERSION=10~46-4
# Fri, 06 Apr 2018 18:06:44 GMT
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
	-	`sha256:49e878fbbe90953bac8acaa12570d18f87d6c26a012c083b64c511e0adb1c035`  
		Last Modified: Fri, 06 Apr 2018 19:02:46 GMT  
		Size: 173.2 MB (173170972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jre-experimental` - linux; 386

```console
$ docker pull openjdk@sha256:b35735f9718a948040afee156df13472b3e88b3db761b5973d863689a19f4aa9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266785962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a542f2c7caf59d17d4f5708231ef4bf8ef02856b3e64baaf8d537859bfeef69`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Mar 2018 15:19:02 GMT
ADD file:3a6a63b0b9425f04e46cf51ded918e18b0db615ed41661ca95b309dce2bd3ad1 in / 
# Tue, 27 Mar 2018 15:19:02 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:11:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:11:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 14 Apr 2018 02:45:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:45:22 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Sat, 14 Apr 2018 02:45:22 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 02:45:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 02:45:24 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 14 Apr 2018 02:45:24 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 14 Apr 2018 02:45:24 GMT
ENV JAVA_VERSION=10-ea+46
# Sat, 14 Apr 2018 02:45:24 GMT
ENV JAVA_DEBIAN_VERSION=10~46-4
# Sat, 14 Apr 2018 02:46:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:e8960ddf567e95d313a33100aba08d2853543b56dc972c34d9b0560911085e99`  
		Last Modified: Thu, 15 Mar 2018 01:13:58 GMT  
		Size: 48.8 MB (48829003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1849e2a92f3800668a6ffe52032b9f784151381571639c66745a3510e1a2a4`  
		Last Modified: Fri, 13 Apr 2018 22:30:05 GMT  
		Size: 8.6 MB (8592465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ecc172ef960d48b958d65a2fb24c557809479d8877b3346abe640dce556534`  
		Last Modified: Fri, 13 Apr 2018 22:30:04 GMT  
		Size: 9.4 MB (9387891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22d64a65417e920753fd42873267ed1fd3448eec7176366aceffd3e2cf4673a`  
		Last Modified: Sat, 14 Apr 2018 03:08:37 GMT  
		Size: 864.0 KB (864007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca878f895c58a4e88ab41e1b304c8980da3b350cf04eed84ffd7a81c0f101c90`  
		Last Modified: Sat, 14 Apr 2018 03:08:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8547d746817ac6c3d4f4bc73dd0af4e95565ab1ca8989e9bc837fa1727e5f2b`  
		Last Modified: Sat, 14 Apr 2018 03:08:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d588dd2d76d77e7c922c9dbf9e03ae4530516ef541f3a0c9577ac5dd87fb35f8`  
		Last Modified: Sat, 14 Apr 2018 03:08:36 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d7930ba8a87d060cff103a5355a4bbe5e5bdd2cfbda04e901307e179350841`  
		Last Modified: Sat, 14 Apr 2018 03:09:29 GMT  
		Size: 199.1 MB (199112000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jre-experimental` - linux; ppc64le

```console
$ docker pull openjdk@sha256:2a10bde52d2563fc54256794787b27454d2ec7a1a1ccc5eb8df05f72149746bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.5 MB (247518126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06d2d6638a346f584a8a039906c1f3813f97b7c2fb467bb182666507b5908776`
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
# Fri, 06 Apr 2018 17:58:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-4
# Fri, 06 Apr 2018 18:09:32 GMT
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
	-	`sha256:030538d69614ddf0228aa9db9fd1bc1441a0202e181a0eb080fa7907c5286072`  
		Last Modified: Fri, 06 Apr 2018 19:08:51 GMT  
		Size: 179.6 MB (179649888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-jre-experimental` - linux; s390x

```console
$ docker pull openjdk@sha256:80d7e772f4f7804f332fb0d47d73d2b74040ddc70a641ab294b7b201f1c92ff7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221105977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9178a271d5ce8dc8b3862da5a0591dfa87dfb353a29c01a7b5d30b704dcc874c`
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
# Wed, 14 Mar 2018 06:33:42 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 06:33:43 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 06:33:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 06:33:44 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 06:33:44 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 05:41:58 GMT
ENV JAVA_VERSION=10-ea+46
# Fri, 06 Apr 2018 17:58:35 GMT
ENV JAVA_DEBIAN_VERSION=10~46-4
# Fri, 06 Apr 2018 18:00:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:00e4f5af4b35c9e9fb3e2a7fdb5f8a32fb6b69b98784fb031ac1a2a326665f45`  
		Last Modified: Wed, 14 Mar 2018 06:48:21 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e0127aece783d237ea525fee1e3c75b187911f22dd2ad0306e10dfa741f97f`  
		Last Modified: Wed, 14 Mar 2018 06:48:21 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21433a2313afc2743bf0b833faee9bb1a9ce8abb6605033ec60cfb290b83f862`  
		Last Modified: Wed, 14 Mar 2018 06:48:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491461066a7b6ecb3cc75cf1a06bfb988e5762e28899bed36caecf3246ed19d5`  
		Last Modified: Fri, 06 Apr 2018 18:13:13 GMT  
		Size: 155.8 MB (155782948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

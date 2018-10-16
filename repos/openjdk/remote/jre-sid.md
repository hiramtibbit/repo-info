## `openjdk:jre-sid`

```console
$ docker pull openjdk@sha256:f5c97a6330261be8d495ff96c5142eee51fcc2dec3695befce43b4dee105f97d
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

### `openjdk:jre-sid` - linux; amd64

```console
$ docker pull openjdk@sha256:063edc848ae0c57ad5b36b41fc128ee4d1c4ed56c46e5a8166c7b1d3b216a74a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (234955126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d749bb1aa317ab9eff7606a24158d6742f8b19976b8e5eb4f1bec1e84160c56`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:22:53 GMT
ADD file:12e34cd91f24d3d0c4716498cdd87838722af59e568ba8c18c457c367a53a315 in / 
# Mon, 15 Oct 2018 23:22:53 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:58:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:18:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:18:46 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:18:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:18:48 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:18:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:18:48 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 05:18:49 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Tue, 16 Oct 2018 05:19:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:38517b3035164966f7e2b960f3e87e1f9178537d06992e6045fbd375b84cddfa`  
		Last Modified: Mon, 15 Oct 2018 23:31:59 GMT  
		Size: 49.1 MB (49107897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d518e0b86e7ef6483709500f0dc9be4abfd5336b2516ddb335a46601ebabbd3f`  
		Last Modified: Tue, 16 Oct 2018 01:10:56 GMT  
		Size: 7.4 MB (7366348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75323769698f687431e704e4c1f298f8e803cf5a000e24ccb08f94cbf4a7fda8`  
		Last Modified: Tue, 16 Oct 2018 01:10:55 GMT  
		Size: 9.8 MB (9779476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7961e608858b28edeca0c7c0088bf0a9f4e7d451d82f6e673e1538506a86f706`  
		Last Modified: Tue, 16 Oct 2018 05:40:58 GMT  
		Size: 847.9 KB (847862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08b11391f09f57b188e77665b517a3682a810faded1984ca4c765f68852d3a7`  
		Last Modified: Tue, 16 Oct 2018 05:40:57 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a077d7622476130b714ad4c885aad16dda281c06653d9c581f5a2821779cebd3`  
		Last Modified: Tue, 16 Oct 2018 05:40:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40afc1c89f7ac269d2b495dee46b0b19830d642ce5594ebf0d0a1a3206bbe42`  
		Last Modified: Tue, 16 Oct 2018 05:41:38 GMT  
		Size: 167.9 MB (167853173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-sid` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:bb499297f80c586e1a2684cac0e11c7824c74ffa6429f68e10e1bcefb14a0183
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.4 MB (212402477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4df876d7165f6ba065b4c8fee5c8bdb25dbc3deb11e59c720af1bdaa74f6caf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:53:05 GMT
ADD file:197405a6e437f7755c9e1eaaeffa366cbbed5d22b6433e8985fc72c0399c9741 in / 
# Wed, 05 Sep 2018 08:53:10 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:55:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:55:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 14:19:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:19:55 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 14:19:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 14:19:58 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 14:19:58 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 08:50:51 GMT
ENV JAVA_VERSION=11
# Fri, 05 Oct 2018 09:03:50 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Fri, 05 Oct 2018 09:05:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:d249ae748c1383631885fe6ef102c9f4763c974c7e2ed31cbd7b8ec3b469b01e`  
		Last Modified: Wed, 05 Sep 2018 09:02:23 GMT  
		Size: 46.8 MB (46817101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd45a59e2fb41f181140d262402692b7bb09adb957eecafdeb3c8a5534ab243`  
		Last Modified: Wed, 05 Sep 2018 10:09:53 GMT  
		Size: 6.9 MB (6917036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02fe315336f45a33182829fb9bc3dd66b77a0251800dc947f7872e4abb3393a9`  
		Last Modified: Wed, 05 Sep 2018 10:09:53 GMT  
		Size: 9.0 MB (9043599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89603f24ce5c0f85e0514a68828b4c36c8259bec559ce089f842408f228dcce`  
		Last Modified: Wed, 05 Sep 2018 14:36:32 GMT  
		Size: 841.3 KB (841304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7c3075c301304422493bfd51b56532c4b5c53d744426e93e514a09c8d1af05`  
		Last Modified: Wed, 05 Sep 2018 14:36:32 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb3d2d1616c611a4db153bc0b68a45c329fdd5974c881b85372944e977f6eb2`  
		Last Modified: Sat, 08 Sep 2018 09:03:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5326929c59c4273cdae820fadd029b4d0c652a1867e14c4b948c924a9e1689ba`  
		Last Modified: Fri, 05 Oct 2018 09:12:04 GMT  
		Size: 148.8 MB (148783068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-sid` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:23d52d2e724363928d983560a5ef59af3d18e204b85b9556895f62486bf31010
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.7 MB (207656898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:008a4f7da9a2e4863e491916d69054c50ac5334cad2b2cc31b7e770e027e34da`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:02:03 GMT
ADD file:6bce3a6eaae154a74bd434bc6087c35774f3ca30b31179bd9d3a8ccc883e6356 in / 
# Wed, 05 Sep 2018 12:02:08 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:41:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:41:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 13:11:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:11:05 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:11:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 13:11:07 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 13:11:08 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 12:01:40 GMT
ENV JAVA_VERSION=11
# Fri, 05 Oct 2018 12:00:55 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Sat, 06 Oct 2018 12:02:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:41ac34bbb663ff9b66612cbe07ba88955dbe37f15f0732d7438ed9d75ffef0c9`  
		Last Modified: Wed, 05 Sep 2018 12:11:20 GMT  
		Size: 44.7 MB (44660481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4a6a41cc4abd0bf494829b7c229c8b0332e0fa15e4070e51e196a72e0e9f8f`  
		Last Modified: Wed, 05 Sep 2018 12:55:10 GMT  
		Size: 6.7 MB (6684465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff85737d1afda4a28ad503d9827b69fbb9a8cb0c387134d95a9099dea0d22d0e`  
		Last Modified: Wed, 05 Sep 2018 12:55:10 GMT  
		Size: 8.8 MB (8752299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:097656e3ab94abaa1a2c1ea83bc9f56482aa61b0c3cb374632c6aa969737fd93`  
		Last Modified: Wed, 05 Sep 2018 13:40:06 GMT  
		Size: 824.1 KB (824058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b401d1e0b418148f23e8539bffa24853c8c1c3e8f24cde975385729cd87216e9`  
		Last Modified: Wed, 05 Sep 2018 13:40:05 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25234f7390029a262202fc6633b3d980590c6a70616a0246d5ea2a5115795cc`  
		Last Modified: Sat, 08 Sep 2018 12:24:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aab287d6b3e8f290d5463f9d8981f94c508143d970db2722b384c46a13489c4`  
		Last Modified: Sat, 06 Oct 2018 12:19:05 GMT  
		Size: 146.7 MB (146735227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-sid` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:65c468de181735baeeae4d80649072f3ef552aad7d9f09b7e02db65581301686
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.3 MB (223322084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2972c080ff127fd09895dde9d36b6a17bd3a4280065cbbd556d8aa780c4d5c76`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:44:44 GMT
ADD file:cac51be1621603e67cd0c6a08ff297ca705beef482ba784194fe06790776dda8 in / 
# Wed, 05 Sep 2018 08:44:45 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:48:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:48:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 13:00:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:00:03 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:00:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 15 Sep 2018 10:21:42 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 15 Sep 2018 10:21:44 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 08:58:51 GMT
ENV JAVA_VERSION=11
# Fri, 05 Oct 2018 09:31:06 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Fri, 05 Oct 2018 09:36:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ff5ead7611ad86204643cd46d308599be45fefaca7a358aa65ccab791156f31f`  
		Last Modified: Wed, 05 Sep 2018 09:02:06 GMT  
		Size: 47.2 MB (47246205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b9b5a56863c55df9af02f6c80c86602c59da911f5cae6082cd55967a1e138c`  
		Last Modified: Wed, 05 Sep 2018 10:21:41 GMT  
		Size: 7.1 MB (7127800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6977204ca040a8a731305a3c0e13830646c7649eec3fec0e6cbed16c6de0eb0`  
		Last Modified: Wed, 05 Sep 2018 10:21:41 GMT  
		Size: 9.2 MB (9238554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62a75f076c5e110119dbb63d26808ed53b5eb687b1f8c7ac0eb5153b3fd93be6`  
		Last Modified: Wed, 05 Sep 2018 13:59:57 GMT  
		Size: 836.1 KB (836089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe2217b537ec556c6842e4ed0c1ba7099d95e6779401bae464ac5c94f53a076`  
		Last Modified: Wed, 05 Sep 2018 13:59:57 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4fd963213b26740dfd76e4d3bad639b4a6813fc3e5ea78bda3656b58e892902`  
		Last Modified: Sat, 15 Sep 2018 10:44:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44db331e2b1a7040c341ec2e363cc2c2759df2c8be81c4d43b5c339bcabb4318`  
		Last Modified: Fri, 05 Oct 2018 09:44:46 GMT  
		Size: 158.9 MB (158873067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-sid` - linux; 386

```console
$ docker pull openjdk@sha256:0523aa73134b6d11f66287816c2a3a03834b84851612fc53e055b517b7bd8914
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.3 MB (244273409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d67c70951858156ca6d09269261fb43f2fcdfbb0902c3ccf1a538e8e7a5de4b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:42:05 GMT
ADD file:8de67e0fc0d437844f80c43c2040a020c9b920f19c3af0645d06ad1f79099fd9 in / 
# Wed, 05 Sep 2018 10:42:06 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:36:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:36:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:47:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:47:21 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:47:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 12:47:23 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 12:47:24 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 10:50:51 GMT
ENV JAVA_VERSION=11
# Fri, 05 Oct 2018 11:09:08 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Fri, 05 Oct 2018 11:10:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:c5ab6b8677b80e3d03b9cf7f6d60c5ea5e55c3ef5201228d2a1e02348632bc3b`  
		Last Modified: Wed, 05 Sep 2018 10:50:26 GMT  
		Size: 49.8 MB (49764498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3334592e8df26ecd8135ae4d98e26ee5c2152c588781fdbcb617525eab00347d`  
		Last Modified: Wed, 05 Sep 2018 12:05:57 GMT  
		Size: 7.5 MB (7502763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22424c58e25912b79ad47701b7d26c1644849d325d1095b43486c45357dce9e`  
		Last Modified: Wed, 05 Sep 2018 12:05:57 GMT  
		Size: 9.6 MB (9583883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddd1a5705448b4e32fb193ec8c818e3d26cfa66751c9002f8d9b34b78e6f16b`  
		Last Modified: Wed, 05 Sep 2018 13:21:04 GMT  
		Size: 857.2 KB (857237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612f5f98521d28e29fc0885b77ca54d7c73675a379d9f52d0c522f1112c9ea37`  
		Last Modified: Wed, 05 Sep 2018 13:21:03 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9001a596621cdb05cdae509417a677fd2cf8cf5cfd3e8f94c3100e61ebce496a`  
		Last Modified: Sat, 08 Sep 2018 18:30:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f8a5f642312a6b34f41e7e39ebc8534a86abf24c7019baa824a81447e0abe8`  
		Last Modified: Fri, 05 Oct 2018 11:15:58 GMT  
		Size: 176.6 MB (176564659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-sid` - linux; ppc64le

```console
$ docker pull openjdk@sha256:caacc11d3dcc46fe786948bfa2c14f913c0bdb49090622690276d1156ea9db76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233028960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac2a679a6a0d09a0ad10ffc9de762984eb3957aa35e65b82f32b664d928f87d4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:17:51 GMT
ADD file:74cafd19c9f92f0bcf0ebf8af7c5fab91202cd413254da05d5a2b9191ecbee2d in / 
# Wed, 05 Sep 2018 08:17:53 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:56:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 08:56:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:47:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:47:33 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 11:47:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 11:47:50 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 11:48:05 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 08:26:58 GMT
ENV JAVA_VERSION=11
# Fri, 05 Oct 2018 09:08:56 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Fri, 05 Oct 2018 09:13:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:88839b4f566005ace21b4fb23e56b4a9638df137ee204c622d554444045423e4`  
		Last Modified: Wed, 05 Sep 2018 08:23:23 GMT  
		Size: 51.8 MB (51843930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5080e7dd5658ca43e5ab2c481fd673297ba9af3c9873b12896d7b0afb50375be`  
		Last Modified: Wed, 05 Sep 2018 09:15:01 GMT  
		Size: 7.6 MB (7623087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d33c3810da3865f1a4b8e646406ec32e5b89f1595d3a9b780139a5aa99ca1e`  
		Last Modified: Wed, 05 Sep 2018 09:15:00 GMT  
		Size: 9.9 MB (9854750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bafc64e62b7a5199521b4a32b0ff3fc6db9d889ecf2ba0af01d8a557a5ff390`  
		Last Modified: Wed, 05 Sep 2018 12:28:14 GMT  
		Size: 847.6 KB (847577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9919577262db6d45f094d763c34fe43dadd83c151d5cb25e870c2d4d76d779`  
		Last Modified: Wed, 05 Sep 2018 12:28:13 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a18ac51b0b223f8f6a803785a3374a0d9fd0cd81a1f58505a4f0201ec0246e1`  
		Last Modified: Sat, 08 Sep 2018 09:44:17 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8080c043c010bacad5f6782623b37c91cb238c77bc943cbdbd780a14669a78`  
		Last Modified: Fri, 05 Oct 2018 09:32:18 GMT  
		Size: 162.9 MB (162859245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-sid` - linux; s390x

```console
$ docker pull openjdk@sha256:c3afa6e3a6a3c74df7d44fa7cfc92ea152553b062b1e88a842953f3e615739ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.8 MB (194819567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4b922dddb61ae32449b07e76461b158185bb9a716fcc42f2cc82731ef22a7e8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:42:29 GMT
ADD file:832b68a7f8033560aa3536d9163f28d197490633c05d49240dd2bed266d9504e in / 
# Wed, 05 Sep 2018 11:42:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:42:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:42:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 18:10:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:10:01 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 18:10:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 18:10:03 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 18:10:03 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 12:00:15 GMT
ENV JAVA_VERSION=11
# Fri, 05 Oct 2018 12:05:48 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Fri, 05 Oct 2018 12:06:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:b9886f96c1f9394ba76a75262b09bb6ad6b8100a8d94cf87089d43cb2068efe3`  
		Last Modified: Wed, 05 Sep 2018 11:47:17 GMT  
		Size: 47.7 MB (47670424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203b1cc1f2b55f95ed71809ae9ea5d67d78156f617f3321574955a3bf2c43e96`  
		Last Modified: Wed, 05 Sep 2018 12:48:44 GMT  
		Size: 7.1 MB (7059600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b11d48b0ceace2a58877479a5838ea5f51cbc6bd1e0b4f5823e44e519817de19`  
		Last Modified: Wed, 05 Sep 2018 12:48:44 GMT  
		Size: 9.2 MB (9222100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29dd9eda9e5788e824150a2131fa23cd6c5819cb343557b6b1947c785007c341`  
		Last Modified: Wed, 05 Sep 2018 18:25:09 GMT  
		Size: 858.3 KB (858281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6ea79ac7e28de297a7a34b7f76a849a66ce4ef6b226eb1fd31212fdecf5cf3`  
		Last Modified: Wed, 05 Sep 2018 18:25:09 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca9812ba7e4fc8a70adc48c98d1ac5a884f8ca9a53ed4cf00cacd6f12c68546`  
		Last Modified: Sat, 08 Sep 2018 12:16:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21266e033c50e2687cb179f7713b1198fb6461a611835d8b456de621265b05b9`  
		Last Modified: Fri, 05 Oct 2018 12:11:05 GMT  
		Size: 130.0 MB (130008792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

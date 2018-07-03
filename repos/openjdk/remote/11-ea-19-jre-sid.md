## `openjdk:11-ea-19-jre-sid`

```console
$ docker pull openjdk@sha256:b5cf287b3db9c2ac1173e0e57a9c1cba2c0a3a3f46317c8c4b8955b03d237ad2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `openjdk:11-ea-19-jre-sid` - linux; amd64

```console
$ docker pull openjdk@sha256:38cac3cf9847c65ade619b93944fac546a24f8c0bad5d30fefc24d28a999db14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.2 MB (246227602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a1cc9432b431252158aecad67958f1dea836470d198ced30de9ddfc2a7906a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:23:26 GMT
ADD file:10ef22e92828bf2e3e64f0617e248ec4f9885da94b826c950bdc8416d67d96cd in / 
# Tue, 26 Jun 2018 21:23:26 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:14:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 23:20:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:20:23 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:20:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:20:25 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:20:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 03 Jul 2018 00:58:08 GMT
ENV JAVA_VERSION=11-ea+19
# Tue, 03 Jul 2018 00:58:08 GMT
ENV JAVA_DEBIAN_VERSION=11~19-1
# Tue, 03 Jul 2018 00:59:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:26254fbb7f1ecf87788ab9644ed2990fda0f5efe4ce585efa529013e3e61b8f3`  
		Last Modified: Tue, 26 Jun 2018 21:34:18 GMT  
		Size: 48.6 MB (48648929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb95abe62cf617072cd93a562dd3c073f8fabba929bb1aa8f0573971554b41a5`  
		Last Modified: Tue, 26 Jun 2018 22:27:31 GMT  
		Size: 7.0 MB (7033853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dbb6315c68fc7776b3dd34584b03f3a00f3e9fcd9058dbed42208d2843b593`  
		Last Modified: Tue, 26 Jun 2018 22:27:31 GMT  
		Size: 9.2 MB (9245186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f563a46814efa01419e07fc08d159913791a167f783f9cff6788d256ccd7e7ad`  
		Last Modified: Tue, 26 Jun 2018 23:45:08 GMT  
		Size: 846.3 KB (846308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b360bf052f04eddb1d4e4deaaf2a68a7fcd2c47f255c14e620f4c92cb0e891`  
		Last Modified: Tue, 26 Jun 2018 23:45:08 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917022829fa1b52343fdf5d3d484fc7f1ed4a6872a433b4fc5090499e491ebb5`  
		Last Modified: Tue, 03 Jul 2018 01:05:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc2dfc39b49e6977863dee127d4f4c13492dc024f1975cfbdc9fe827af70914`  
		Last Modified: Tue, 03 Jul 2018 01:06:21 GMT  
		Size: 180.5 MB (180452960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-19-jre-sid` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:5b96f797cee0bf486096724d4971e25e0362cab2a7a512ab0b146e503a760ab2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.6 MB (224566719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58de7bfb7b69d74eaa25ba701fcac59f8d8411b26dcda974214fb147af21384`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:52:05 GMT
ADD file:ff4224e770f51d0f3be1aecc1f129a7f389ab6fb2a02c33f71754bcecaa8eed6 in / 
# Wed, 27 Jun 2018 08:52:06 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:35:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:35:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:26:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:26:18 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:26:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:26:21 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:26:22 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 03 Jul 2018 08:59:25 GMT
ENV JAVA_VERSION=11-ea+19
# Tue, 03 Jul 2018 08:59:25 GMT
ENV JAVA_DEBIAN_VERSION=11~19-1
# Tue, 03 Jul 2018 09:00:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:7decc6d2fc57efa1361d37f5ad2c7aa7c3781d38053c8cbb4f5f4f0efb8f6509`  
		Last Modified: Wed, 27 Jun 2018 09:01:05 GMT  
		Size: 46.6 MB (46603040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9691ec6c700eaec782847d7533f59b108859f65b19cbf9fdba233042347c72f2`  
		Last Modified: Wed, 27 Jun 2018 09:46:46 GMT  
		Size: 6.6 MB (6626612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b974f70f947561f9652d18f74b53b01eae62f2eff92385378a0fefb51f2ae8a1`  
		Last Modified: Wed, 27 Jun 2018 09:46:46 GMT  
		Size: 9.0 MB (8986694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b31b9a38d72ee3cf5871b60186e821553afdbcdaa1dcc7c046da0f8a84f43f`  
		Last Modified: Wed, 27 Jun 2018 12:50:12 GMT  
		Size: 839.5 KB (839473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7914c14345db4edde697db2130f5f5bb3256b55afabd5509f54b6e83c86f4710`  
		Last Modified: Wed, 27 Jun 2018 12:50:11 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82cb2e605276b5e0ad59407531e0ecc7e215ce11636531d3d948db2c17cd2828`  
		Last Modified: Tue, 03 Jul 2018 09:04:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61c975e52595277d5bbe59a95440a47745be364557d88ff43fe98773576e188`  
		Last Modified: Tue, 03 Jul 2018 09:05:42 GMT  
		Size: 161.5 MB (161510532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-19-jre-sid` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:2e77bb03784e5f0ad1d24509cd16c439621522de329fb4ad91083d2fb7f89392
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229314386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527e0b8cb2dba90f01379dfcd65ba59f2e876e755c2420dbf1f80f2fddffe28e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:44:47 GMT
ADD file:9e83f24b861895e4f5c52e8dac4324df28bc9245b0cb01fd8ab8e69858eba017 in / 
# Wed, 27 Jun 2018 08:44:48 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:34:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:35:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 19:02:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 19:02:27 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 19:02:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 19:02:44 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 19:02:47 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 03 Jul 2018 09:39:49 GMT
ENV JAVA_VERSION=11-ea+19
# Tue, 03 Jul 2018 09:39:51 GMT
ENV JAVA_DEBIAN_VERSION=11~19-1
# Tue, 03 Jul 2018 09:45:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:264fde3494f7596520730fbecb89582dbd098f0eb089f29cf391f225a07585c1`  
		Last Modified: Wed, 27 Jun 2018 08:55:23 GMT  
		Size: 45.9 MB (45932394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45413e1b68a065bfe89257f57035e36b4322754fb55ab4f3e39317b70c439659`  
		Last Modified: Wed, 27 Jun 2018 11:04:05 GMT  
		Size: 6.6 MB (6645906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49df4ded335c4959233bf629857422273bbb98855b17f0ddfd19a53d17c2c95`  
		Last Modified: Wed, 27 Jun 2018 11:04:05 GMT  
		Size: 9.0 MB (8980525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e3b99e46a76fb6a5b4de21521ebbdf0e6625b5ea3d1aa66bb59373c6f646bc`  
		Last Modified: Tue, 03 Jul 2018 10:09:32 GMT  
		Size: 831.2 KB (831163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e29b7297914011b0b3290d37e8d4d4c94b4c61aeacaa15cc7cc9bd4ab587908`  
		Last Modified: Tue, 03 Jul 2018 10:09:32 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c873a6cbb5bf2319333f79611f2204baa6d8abf524c6a0a88584fcfccf4ad00`  
		Last Modified: Tue, 03 Jul 2018 10:09:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa089c4dd98ea043f6354215e0d8f1f9d1662538e5d6f25541b5b191c388acb5`  
		Last Modified: Tue, 03 Jul 2018 10:10:23 GMT  
		Size: 166.9 MB (166924030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-19-jre-sid` - linux; ppc64le

```console
$ docker pull openjdk@sha256:fec7f3e58b6b4e2352fb6f3582b8280ae1291c563675453811ab819b8240998a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.1 MB (237101597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:212b87996751b4404f7c1ae3f883bbfb23c379a00ebc69ce018cdda520a281f8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:19:22 GMT
ADD file:2290834b1e0a2945693bb58e4627798b949f493e7041453e398114cbfba8d224 in / 
# Wed, 27 Jun 2018 08:19:24 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:59:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 13:11:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:11:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:11:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:11:13 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:11:15 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 03 Jul 2018 08:45:30 GMT
ENV JAVA_VERSION=11-ea+19
# Tue, 03 Jul 2018 08:45:31 GMT
ENV JAVA_DEBIAN_VERSION=11~19-1
# Tue, 03 Jul 2018 08:52:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:b01a63a902832a614dcb8b935dd9404b1ae8932297cbba3e28949a6027626e87`  
		Last Modified: Wed, 27 Jun 2018 08:28:47 GMT  
		Size: 50.1 MB (50116795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cafec902fddf0414f78aeec5b7010de3851b5c2154d22465a9d16a11f5bdc57`  
		Last Modified: Wed, 27 Jun 2018 10:26:36 GMT  
		Size: 6.9 MB (6874206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d7ffceef9b2678d017627071cd185ba2ab411812b48be8a3fdb04bdfd50a33`  
		Last Modified: Wed, 27 Jun 2018 10:26:36 GMT  
		Size: 9.5 MB (9494113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fdff3e7ba135463a1a2174f74c95863f1e040469abf920b56f38dd7055c1615`  
		Last Modified: Wed, 27 Jun 2018 14:04:12 GMT  
		Size: 840.8 KB (840779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8033f45d3394e2264fa7f749c494ee848b18d9b34d2bc15f633012613af24a3`  
		Last Modified: Wed, 27 Jun 2018 14:04:11 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:183c529282aca903d970e690341c60e264684d80e3100fee5648a51b4b7bf2fd`  
		Last Modified: Tue, 03 Jul 2018 09:11:03 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86fb086f1570c064d53dfea2d7acedbe59df84b484a54db2621b894263f6530`  
		Last Modified: Tue, 03 Jul 2018 09:11:42 GMT  
		Size: 169.8 MB (169775335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

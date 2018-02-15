## `openjdk:8u151-slim-stretch`

```console
$ docker pull openjdk@sha256:349e7b7b11108888f7e3456d84fcc065ca054687a7aef9022760bede9c20d625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:8u151-slim-stretch` - linux; amd64

```console
$ docker pull openjdk@sha256:53dce04d2798b0e248fb2dd1b47ea384e7870f4f3a6f7028331eb6a5a2d1d3ae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.9 MB (90878632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0b853332a64f7750f0495129e6d76f57eb519a4a7aec7907c3f5a8d817e33a4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:34:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 05:34:55 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 05:34:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 05:34:56 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 05:34:57 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 05:34:57 GMT
ENV JAVA_VERSION=8u151
# Tue, 12 Dec 2017 05:34:57 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Tue, 12 Dec 2017 05:34:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Dec 2017 05:35:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 05:35:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3a7df1b51f6278abe3864a0d83f04c9b9d4885b4d64cf68cb40ac650f91a5`  
		Last Modified: Tue, 12 Dec 2017 05:49:02 GMT  
		Size: 454.8 KB (454819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c98005fcff8d144c0e901a6f8b6c20f7aab34f1c93f9d8679f342cd4640c5c`  
		Last Modified: Tue, 12 Dec 2017 05:49:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39dcc90226db797991bfa856bcbec2e3a60afa66c263912ec507073813bbe945`  
		Last Modified: Tue, 12 Dec 2017 05:49:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23649b2102b013e3493311cafe0d31f68b2057584f631154722e6b2b74a7202d`  
		Last Modified: Tue, 12 Dec 2017 05:49:14 GMT  
		Size: 67.7 MB (67665559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6f0e3cd819e2fa1e5e82ece54f3a80242398bd69b658a8123c1ec054eff071`  
		Last Modified: Tue, 12 Dec 2017 05:49:01 GMT  
		Size: 272.2 KB (272156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u151-slim-stretch` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:0895873043c8acea52ec853014bfad17d88da9aedbd9b039d589998d5b3170ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77904148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f845395f4c99f5260c07a30cdcc6a67d26fb72d4bcad3805b54831134facbb2f`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:31 GMT
ADD file:a4ff4a71be86566d946378fcdcdf8a581533429c77852d0a52919a736ec535bc in / 
# Thu, 15 Feb 2018 21:00:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:41:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:41:02 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 21:41:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 21:41:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 21:42:10 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 21:42:10 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 21:42:10 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 21:42:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 21:42:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 21:42:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:d4fd25f13e1d4f6be6bd3e1a90bebc4f1ba9d950a6a33b46c42850a4c1d2d1b2`  
		Last Modified: Thu, 15 Feb 2018 21:11:11 GMT  
		Size: 21.2 MB (21175030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dae2ed473b274806b6b49fb4790f79066c45610feb6af2cee29743cec60ed4f`  
		Last Modified: Thu, 15 Feb 2018 21:58:44 GMT  
		Size: 447.7 KB (447654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d47e0563e184d12b23741cb9795c53a36b40320f6cd0cad696f643b08ec59c0`  
		Last Modified: Thu, 15 Feb 2018 21:58:43 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72048ef552e0b8ff7c855763de1e4195eabc1ec8c38afc55c17d7ff94969ecbd`  
		Last Modified: Thu, 15 Feb 2018 21:58:43 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27daa55cb6cda081a3a1afc9e29e8d042784d7a037b4ad7d782ca42f5b342d4`  
		Last Modified: Thu, 15 Feb 2018 22:00:01 GMT  
		Size: 56.0 MB (56008895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d5646a6f0355295d70de460ca73cd5cbee76a15198e6226447d93425e78da9`  
		Last Modified: Thu, 15 Feb 2018 21:59:47 GMT  
		Size: 272.2 KB (272190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u151-slim-stretch` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:d8b24f50ace53b4f9139249a239e016a649a06ea9e6b3be394e85a0678c554ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.5 MB (78465218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a387eab5a6d2fda5f24a2833bf5d97c72cd1144aa2e3461e342aedd1e9baa7ad`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 02:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 02:17:38 GMT
ENV LANG=C.UTF-8
# Wed, 13 Dec 2017 02:17:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 13 Dec 2017 02:17:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 13 Dec 2017 02:17:58 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 13 Dec 2017 02:18:14 GMT
ENV JAVA_VERSION=8u151
# Wed, 13 Dec 2017 02:18:15 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Wed, 13 Dec 2017 02:18:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 13 Dec 2017 02:19:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 13 Dec 2017 02:19:50 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c64863fb48f3c775969ad8bd727b09f3c8f60396a469d5c70006c3ba2a3aa5`  
		Last Modified: Wed, 13 Dec 2017 02:27:43 GMT  
		Size: 440.8 KB (440783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bc6f700f2b94cbba0ece43bb24936ab2e94ceae7f46573d3373c9551bbf7fe`  
		Last Modified: Wed, 13 Dec 2017 02:27:43 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba1aa71856da230cafe9c4121837cf6fd0f5c2c17d9c98ac22c767e7cf6e668`  
		Last Modified: Wed, 13 Dec 2017 02:27:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d50e0c36bbc55f6e97bb3949542e2b7b728a8d2b7eeb862ba6c29a9110b45d`  
		Last Modified: Wed, 13 Dec 2017 02:28:01 GMT  
		Size: 57.4 MB (57420690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1daa48e4cad17c61427d44b0e57df85d98d968111fd10906090afe029497fa26`  
		Last Modified: Wed, 13 Dec 2017 02:27:43 GMT  
		Size: 272.1 KB (272096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u151-slim-stretch` - linux; 386

```console
$ docker pull openjdk@sha256:41e635ff2116cb682c46ac1f081ff81887396639cdb54c93c3c89951448637cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90684933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df7a0532c205b5e688c8c5366c7f852849b0428610b6ab61db42493c423b4163`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 18:49:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:49:16 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 18:49:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 18:49:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 18:49:26 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 18:49:26 GMT
ENV JAVA_VERSION=8u151
# Tue, 12 Dec 2017 18:49:26 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Tue, 12 Dec 2017 18:49:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Dec 2017 18:49:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 18:50:01 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594d2ff3a2959654cb056a6cc499d910f29f37321940fdb0f60d119c31528ac6`  
		Last Modified: Tue, 12 Dec 2017 19:38:43 GMT  
		Size: 463.5 KB (463470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32efb0ce68171bdf8e5e876db66fc50811b491dabc077b3d35172f1286b4793a`  
		Last Modified: Tue, 12 Dec 2017 19:38:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02613bb9328128d056d071d315402c64aedb2c7b730cf211f79713ce7415e73`  
		Last Modified: Tue, 12 Dec 2017 19:38:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d59d15f943d5862977a0fb6232629cb579ea6792a18b6fa807105269e8282a3`  
		Last Modified: Tue, 12 Dec 2017 19:39:01 GMT  
		Size: 66.8 MB (66826472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ebaace5af5a12278fc2e0fc17e414de033172e7065d4d9083f8fdb6505e0a1`  
		Last Modified: Tue, 12 Dec 2017 19:38:43 GMT  
		Size: 272.2 KB (272156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u151-slim-stretch` - linux; ppc64le

```console
$ docker pull openjdk@sha256:8576216cd9fa2248f1081fd639f31a6fa8bba7ee6e0b216ba4dc2343e13bf4e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81430249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d61f27c111a9e05e3721a11815130ceaa73c60475e9c82370ab5460ba2c820a2`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:47:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:48:00 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 03:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 03:48:12 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 03:54:10 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 03:54:11 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 03:54:12 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 03:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 03:58:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 03:58:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db1eeca3bf1292993653ef54f89c085f0b33fd3db68eca1e8f4657565618b9d`  
		Last Modified: Thu, 15 Feb 2018 04:38:26 GMT  
		Size: 449.8 KB (449803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa77403ca9aa744a957e13337b03002f2cdc936bd9d47b0f0ebb37e2be5cd5a`  
		Last Modified: Thu, 15 Feb 2018 04:38:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfac90f183e02ebd54abdfdc0f57da55be8fb19f3f1d1fd6e9f41a19cbc2b68`  
		Last Modified: Thu, 15 Feb 2018 04:38:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db0b5c0c56a820154b0f8346cf68f693459b7535918482fb488988fb71186a0`  
		Last Modified: Thu, 15 Feb 2018 04:39:30 GMT  
		Size: 58.0 MB (57954935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4fb7130a5ce7a2d1ec8695936756fec7dc92c822622dbdec65d2dfcc515a4d`  
		Last Modified: Thu, 15 Feb 2018 04:39:18 GMT  
		Size: 272.0 KB (272032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u151-slim-stretch` - linux; s390x

```console
$ docker pull openjdk@sha256:671c1de3ac95ad3dbaae3db30bfbc6356e5977346bb2b3cdc0a515d0a17ad806
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80217220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae0b0fde2a2e6559a572f84c215877963f4fafa2bff3d7fdd8033eba437f5bb`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:21 GMT
ADD file:8260e9ae960fb51db5129dd52203404076c40abd098cb2b6be7c9fe82821306f in / 
# Thu, 15 Feb 2018 06:24:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 08:22:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:22:20 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 08:22:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 08:22:21 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 08:24:13 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 08:24:13 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 08:24:13 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 08:24:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 08:24:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 08:24:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:100c28096d510c9b0ea02579fd330b972463c7d39f30611f118c107310254130`  
		Last Modified: Thu, 15 Feb 2018 01:20:39 GMT  
		Size: 22.3 MB (22348821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d67d172c9321aa49eb0a1d6d567589ebbb43ae06cb60946c8c790f0b23af5a`  
		Last Modified: Thu, 15 Feb 2018 08:41:51 GMT  
		Size: 465.7 KB (465704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3845a6b44aa77b11f0301052f645fa81073ac3c5d5f847ded838e49fa24afbf`  
		Last Modified: Thu, 15 Feb 2018 08:41:50 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ad6593d36edf37f2b65e87eecaafacc190f019fc017a58f7e41377680146dc`  
		Last Modified: Thu, 15 Feb 2018 08:41:50 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52db04bad48ebb9e5799593b3d9f88fb0b06b2c084a7fee6fc22c0804d849b90`  
		Last Modified: Thu, 15 Feb 2018 08:43:28 GMT  
		Size: 57.1 MB (57130160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b12a286f3e938acee6764fc7718b00d78c1059fdd23484da8f70a5976b592c`  
		Last Modified: Thu, 15 Feb 2018 08:43:20 GMT  
		Size: 272.2 KB (272155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

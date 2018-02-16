## `openjdk:8-slim-stretch`

```console
$ docker pull openjdk@sha256:d75368af3c8bf2c47768232884c5c0d322809ac3f1151c36f77cc075291392b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:8-slim-stretch` - linux; amd64

```console
$ docker pull openjdk@sha256:2ba102f4ad571324df5d6de83246729032df3b849126f19b749726d1b3b0fcfd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.9 MB (90889813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52de5d98a41dddf34c9ac064361dadc44e8fa229f29a4910633eebd0a3d525ac`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 18:59:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:59:08 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:59:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:59:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:59:54 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 18:59:54 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:59:54 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:59:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 19:00:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 19:00:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2208661344b796f10a95853ee16808d1db921c94e10662cb33bf1f3dbd214e9c`  
		Last Modified: Fri, 16 Feb 2018 19:01:37 GMT  
		Size: 454.8 KB (454821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f28966f0b283d9e15f6d213f61d367003587b871594068f8238d3459585b5d`  
		Last Modified: Fri, 16 Feb 2018 19:01:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e991b55a806516fd0175d291b5cdb1e9a0833f247f5f0c508b44a4509713a7bf`  
		Last Modified: Fri, 16 Feb 2018 19:01:40 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee568884a8497712a7857f9db1993127ca4c4a774e08026d00fb5670f631d59`  
		Last Modified: Fri, 16 Feb 2018 19:04:25 GMT  
		Size: 67.7 MB (67665708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b6b371c215acf5c9f5cc165c77578d92108bf27bb003726e32977c5c08b350`  
		Last Modified: Fri, 16 Feb 2018 19:04:15 GMT  
		Size: 272.1 KB (272139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-slim-stretch` - linux; arm variant v5

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

### `openjdk:8-slim-stretch` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:43e736bcaea5a21d330a34b6fe3d7e70a0cd8dd95673b94d8e8391d542d2b662
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.5 MB (78481966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ef45fdf022b4b3a62378b427fecfc699c0f08a1ad3e3ec39f12046cbfe9b398`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:32:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:32:11 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:32:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:32:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 22:41:27 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 22:41:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 22:41:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 22:43:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:43:42 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7076879d0019e63bae1939408a25e7089e3834fe8b7f43fbec922417699658c8`  
		Last Modified: Thu, 15 Feb 2018 23:20:08 GMT  
		Size: 440.8 KB (440785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28c6ebdeed04fe1032dcf717b07169a264a1d774d768a70ad2900ad90d4668e`  
		Last Modified: Thu, 15 Feb 2018 23:20:08 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fc4224fc2980672920da99764337cf5ab1110ddad0b0ef8e4a15a78afcb77d`  
		Last Modified: Thu, 15 Feb 2018 23:20:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d736d9ec8d0bf50a1141318bbac55543c6a06050f0f2bb2e0aeb10961367dfc9`  
		Last Modified: Thu, 15 Feb 2018 23:25:30 GMT  
		Size: 57.4 MB (57421272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d733eaf25f112b24a57808b6994f2d017d744a3a5b625249582caa3de64506`  
		Last Modified: Thu, 15 Feb 2018 23:25:13 GMT  
		Size: 272.1 KB (272104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-slim-stretch` - linux; 386

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

### `openjdk:8-slim-stretch` - linux; ppc64le

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

### `openjdk:8-slim-stretch` - linux; s390x

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

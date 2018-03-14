## `openjdk:slim-stretch`

```console
$ docker pull openjdk@sha256:6adab4d631285c92a01749ccfa2e0b303f76c112c7fcc2246d0e672c6245cbb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:slim-stretch` - linux; amd64

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

### `openjdk:slim-stretch` - linux; arm variant v5

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

### `openjdk:slim-stretch` - linux; arm64 variant v8

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

### `openjdk:slim-stretch` - linux; 386

```console
$ docker pull openjdk@sha256:9e80afe482fcff0864e25cee280cb4862386fc647b2f3c2d3530ba45b02d7628
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90697658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0b0bdff98657b56ab4ce5f6cc4ccd605f92545e1e8f525171a611852c47ab4b`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:56:40 GMT
ADD file:46f3ea038ddbb2713695c8891a22675f7355211fecac25807c95590f5a5d4bfa in / 
# Thu, 15 Feb 2018 19:04:20 GMT
CMD ["bash"]
# Tue, 20 Feb 2018 18:10:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Feb 2018 18:10:10 GMT
ENV LANG=C.UTF-8
# Tue, 20 Feb 2018 18:10:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Feb 2018 18:10:12 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 20 Feb 2018 18:12:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Feb 2018 18:12:18 GMT
ENV JAVA_VERSION=8u151
# Tue, 20 Feb 2018 18:12:18 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Tue, 20 Feb 2018 18:12:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Feb 2018 18:12:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Feb 2018 18:12:46 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:5a3bef8a5a8dcf8e6b5914993862777a98536514aedf43f0a604d87764970d8a`  
		Last Modified: Thu, 15 Feb 2018 01:16:16 GMT  
		Size: 23.1 MB (23135027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b868361b518dcc6fb2c7859ac8e0443e6f443c7b452b68b8d9e7728ced6d547`  
		Last Modified: Tue, 20 Feb 2018 18:43:00 GMT  
		Size: 463.5 KB (463456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a27ef0695ed4aa42a3529db326cc4880f4a549da4942a731e2c37efec5138b`  
		Last Modified: Tue, 20 Feb 2018 18:42:59 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58beaf51181ff8f485479cd306573d135d85f527e884049db1b46205adc8040b`  
		Last Modified: Tue, 20 Feb 2018 18:42:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df1892a14fec13ddae74cd96e2a280e7deee891c1c2d87c85fb91b1e6d07c3b`  
		Last Modified: Tue, 20 Feb 2018 19:07:20 GMT  
		Size: 66.8 MB (66826649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a0e326ea8294f15969343f9e684e69155d1488a218860d02c0649659802907`  
		Last Modified: Tue, 20 Feb 2018 19:07:03 GMT  
		Size: 272.1 KB (272147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:slim-stretch` - linux; ppc64le

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

### `openjdk:slim-stretch` - linux; s390x

```console
$ docker pull openjdk@sha256:1c002eb6b5f49e3b39529b43c2269977cd04d7a45764e09d6871f8c81d5042ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80208575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3275fa841398e7e9f103250ed3eb4eece2c15a30a5687196cd14e548d496c330`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:43:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:43:19 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 06:43:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 06:43:20 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 06:44:56 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 14 Mar 2018 06:44:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 14 Mar 2018 06:44:57 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Wed, 14 Mar 2018 06:44:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 14 Mar 2018 06:45:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 14 Mar 2018 06:45:18 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512c47784c512985a2f670e2a9aebfa09511f48279b95d9891a337a558a3ad3a`  
		Last Modified: Wed, 14 Mar 2018 06:57:32 GMT  
		Size: 465.7 KB (465722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc17c7b5f20c51c5f2c4f4d919514f4d98fd1056c2f72b08ab8a805bcacec06`  
		Last Modified: Wed, 14 Mar 2018 06:57:32 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7342609907d585fc4e70d60bdbe4417280ca389d6d95b71e976510cad8cecc9c`  
		Last Modified: Wed, 14 Mar 2018 06:57:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53025f19820d59efae308fa89634e3df37da281daff86f380b792ab378ae88f1`  
		Last Modified: Wed, 14 Mar 2018 06:59:23 GMT  
		Size: 57.1 MB (57129835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d552373abd85ad3f07f0ea7e3f925fba62ec929a420a48bcb4436390861e48a5`  
		Last Modified: Wed, 14 Mar 2018 06:59:13 GMT  
		Size: 272.2 KB (272160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

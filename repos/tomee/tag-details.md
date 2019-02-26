<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `tomee`

-	[`tomee:8-jre-1.7.5-jaxrs`](#tomee8-jre-175-jaxrs)
-	[`tomee:8-jre-1.7.5-plume`](#tomee8-jre-175-plume)
-	[`tomee:8-jre-1.7.5-plus`](#tomee8-jre-175-plus)
-	[`tomee:8-jre-1.7.5-webprofile`](#tomee8-jre-175-webprofile)
-	[`tomee:8-jre-7.0.4-plume`](#tomee8-jre-704-plume)
-	[`tomee:8-jre-7.0.4-plus`](#tomee8-jre-704-plus)
-	[`tomee:8-jre-7.0.4-webprofile`](#tomee8-jre-704-webprofile)
-	[`tomee:8-jre-7.0.5-plume`](#tomee8-jre-705-plume)
-	[`tomee:8-jre-7.0.5-plus`](#tomee8-jre-705-plus)
-	[`tomee:8-jre-7.0.5-webprofile`](#tomee8-jre-705-webprofile)
-	[`tomee:8-jre-7.1.0-microprofile`](#tomee8-jre-710-microprofile)
-	[`tomee:8-jre-7.1.0-plume`](#tomee8-jre-710-plume)
-	[`tomee:8-jre-7.1.0-plus`](#tomee8-jre-710-plus)
-	[`tomee:8-jre-7.1.0-webprofile`](#tomee8-jre-710-webprofile)
-	[`tomee:8-jre-8.0.0-M2-microprofile`](#tomee8-jre-800-m2-microprofile)
-	[`tomee:8-jre-8.0.0-M2-plume`](#tomee8-jre-800-m2-plume)
-	[`tomee:8-jre-8.0.0-M2-plus`](#tomee8-jre-800-m2-plus)
-	[`tomee:8-jre-8.0.0-M2-webprofile`](#tomee8-jre-800-m2-webprofile)
-	[`tomee:latest`](#tomeelatest)

## `tomee:8-jre-1.7.5-jaxrs`

```console
$ docker pull tomee@sha256:e5d9602622c2aea6f27391f7662beb91dae6b9be53b0bb257e0b8ee0e00b53fa
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

### `tomee:8-jre-1.7.5-jaxrs` - linux; amd64

```console
$ docker pull tomee@sha256:e1d4364b4495b9f11ecceb788cc4980d2cb91d3af968dcc7d9a27399809c3bc9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218071744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f25ac764a1db4fefc7194d3b77633b46a01710ee94e776f7ddbe108de6ecc4`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:28:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:28:06 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:28:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:28:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:30:29 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:30:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:31:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:31:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 05:31:41 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 05:31:42 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 05:31:42 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 05:31:43 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 05:31:46 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 30 Oct 2018 05:31:51 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 05:31:52 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 05:31:52 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21441932c53a4078f379c7c6d299370a6eaee79c862a29db2e25fec39106779`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 852.9 KB (852895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa76b0d2509232e863931fc1743f1ca2dba3bebdf5f72b4280fae59536303ce7`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346fd8610875e8ba7753030b5c197ad56fe76aa4e45d1e70e4b58366e93177c3`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca5d6af9022c9c3b436792a01c58dd29490430d28b04f70385f308e3bdae8a6`  
		Last Modified: Mon, 29 Oct 2018 23:40:07 GMT  
		Size: 122.1 MB (122121999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06cfa2cea32b36c8f5dcc8605166d1f8b72cf02e44163dbf7d14e0379286b55`  
		Last Modified: Mon, 29 Oct 2018 23:39:44 GMT  
		Size: 246.7 KB (246728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c094b3bc8129299958e3103ea5962297e112f8623257dd6d3d72fd739b4ed2dc`  
		Last Modified: Tue, 30 Oct 2018 05:44:37 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328f724458c52511f60f1a73f15845118f6573614490da79dce3f5b352af1129`  
		Last Modified: Tue, 30 Oct 2018 05:44:36 GMT  
		Size: 26.8 KB (26823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11125dcfab3b3f9c8920a0733d3099f5110760f709791bb717c038fab270bdb`  
		Last Modified: Tue, 30 Oct 2018 05:44:39 GMT  
		Size: 34.4 MB (34436765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-jaxrs` - linux; arm variant v5

```console
$ docker pull tomee@sha256:b0ad5ddcb97c9f812616b7812886c648dbfdda1858071b12daeb0e537a677364
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.5 MB (205461818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9f825281dfd8d398571b7032c194049665822e50cba5064db81d390595935cd`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:59 GMT
ADD file:9400a194c6dcf24f439664aab3a28cb7dbf93753b71d2756dbaf872d294fbb8e in / 
# Tue, 16 Oct 2018 08:55:00 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:00:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:00:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:47:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 12:47:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 12:47:32 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 10:04:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 10:04:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 10:05:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 10:06:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:39:10 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:39:11 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:39:11 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:39:11 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:39:16 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 31 Oct 2018 10:39:43 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:39:44 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:39:44 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:67cd7720dfa3de15234643bf308008813fd129e03429f026775738064b364e24`  
		Last Modified: Tue, 16 Oct 2018 09:04:05 GMT  
		Size: 44.0 MB (44033067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd276b766fa97ab74e113c92ed57093015cfc9c9030be8ba22b5e752cd8e8877`  
		Last Modified: Tue, 16 Oct 2018 10:09:36 GMT  
		Size: 9.8 MB (9810396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b000ac5a1a22a2dea4538586726677f91c42079cf289a8eb88fdf9c65fda7f6`  
		Last Modified: Tue, 16 Oct 2018 10:09:35 GMT  
		Size: 4.2 MB (4153754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cbc8dc4eb12ea31f2f137322dcd35e379750d13318d6521d7d557989a9c73e`  
		Last Modified: Tue, 16 Oct 2018 12:56:57 GMT  
		Size: 845.9 KB (845906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a97950afff8d9b7263a96992060b43bf115f908bd1f262de6f93c0418cc9817`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693401423272c67e47e2c164426ccd8a7f7c84c1aaa9ccf0db49f23cf10ece20`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa4cd8ea842cbf55631460424eebe375e8955fa33375ba756948f3200aa260b`  
		Last Modified: Wed, 31 Oct 2018 09:18:50 GMT  
		Size: 111.9 MB (111907574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2f5878cb92f7b7cabd53ba68c69652be468fe7e00b7a82ecff33496f1357c7`  
		Last Modified: Wed, 31 Oct 2018 09:18:21 GMT  
		Size: 246.7 KB (246748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7fe3f0758a210ee8428de088c4f9d16e74526003cd6f0e98c680a75db3a4ef`  
		Last Modified: Wed, 31 Oct 2018 10:47:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803d1cd4c5eb68afd59888c8331c88ab25f73430e7b291d2163a14360697f710`  
		Last Modified: Wed, 31 Oct 2018 10:47:52 GMT  
		Size: 26.9 KB (26850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6135cf8130cde8ee35676603e681f422028774db6e21ea91d9a38b403caf0a`  
		Last Modified: Wed, 31 Oct 2018 10:47:57 GMT  
		Size: 34.4 MB (34436961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-jaxrs` - linux; arm variant v7

```console
$ docker pull tomee@sha256:3380592f24bc1a51d44db9f835f21f36fd416e1a3a02157763a9dba7e4ddc249
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230517647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27c597aa428e747fa0677c56e5dbe37bc090c987c9ad225d6d860b35bbf7924d`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:59:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:59:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:59:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:59:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:59:27 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:59:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:00:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:00:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 15:31:33 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 05 May 2018 15:31:34 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 05 May 2018 15:31:34 GMT
WORKDIR /usr/local/tomee
# Sat, 05 May 2018 15:31:35 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 05 May 2018 15:31:39 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Sat, 05 May 2018 15:31:44 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 23 Jan 2019 19:10:06 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 19:10:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df26ddf71ea9e82f175e400809b8f06871dd0937c5a90f4ffe95286544a9f719`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 830.3 KB (830332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c21322a9c89724512d6ea5faa10299c60c8a605d6f563c84c28177db8d2770`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2270f04a4be61f52577232813fff92e797d3fc190d52f71411afc26b0911f8e4`  
		Last Modified: Sat, 05 May 2018 13:29:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dc1aba58c8cd285639cac6b03c823e5fcdb91aa8922652e7d9387aaca6fa4`  
		Last Modified: Sat, 05 May 2018 13:29:37 GMT  
		Size: 139.5 MB (139501760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02869ec2bb3864b06abd435610eb6849d5c62426517de1a603ef6fe43c7d3815`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 272.1 KB (272082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b2945e8eb5c51597eeaa0b9140cd51356fdea2bdbc0e85b10b3004a32453fc`  
		Last Modified: Sat, 05 May 2018 15:39:04 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50677ccf4d3bf28f894c2b3e1b114ba522dfb82efd8068fb1536596aa68749a`  
		Last Modified: Sat, 05 May 2018 15:39:04 GMT  
		Size: 26.9 KB (26854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e385d435394f25cefb9f576e38e5037e7a6e08e7368f5a9b8b96d78821d57d9f`  
		Last Modified: Sat, 05 May 2018 15:39:10 GMT  
		Size: 34.4 MB (34437013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-jaxrs` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:39352cf2107491feccfcbe98d62718b1d2cd28062952d9157124b4ed9cfb483f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205206178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74ec3b956220e0485702b028dcb9e7fe80b674a83cc26f6ddf3b08ac3a32b21a`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 22:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:09:34 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 22:09:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 22:09:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 22:09:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 22:09:44 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:07:32 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:07:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:13:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:13:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 15:02:52 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 15:02:53 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 15:02:54 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 15:02:55 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 15:03:01 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 30 Oct 2018 15:03:27 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 15:03:28 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 15:03:28 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec37afe1ce9c80cab1c8fdc0d193c9f92f61adf7c60d6bdbc2b01735eac25b6`  
		Last Modified: Tue, 16 Oct 2018 22:27:18 GMT  
		Size: 839.2 KB (839157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776d8d23f1b98b1595b31f6da89774c22c62b8aaebfd909efc61ceb1ed261422`  
		Last Modified: Tue, 16 Oct 2018 22:27:15 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0423ae79bd292339ac64d511157cd27daa8549a458b0458dc17973fbee24f728`  
		Last Modified: Tue, 16 Oct 2018 22:27:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f621179e148c9684831eb304357c88f80f0b271af7ed9ca445ab04fbb1290f`  
		Last Modified: Tue, 30 Oct 2018 09:25:17 GMT  
		Size: 112.8 MB (112753824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65fac7cd4cedf9a714652ad15dccbc910e8c233062e70e577ceda149579218bd`  
		Last Modified: Tue, 30 Oct 2018 09:24:14 GMT  
		Size: 246.7 KB (246684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:658f45b64802a49fa3968aded05068fcceea176e7764bfc44f75538819b46bda`  
		Last Modified: Tue, 30 Oct 2018 15:17:24 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd865f359e9c5e04185fad16d893071c6af945d16cd80615bf873152f0720ad8`  
		Last Modified: Tue, 30 Oct 2018 15:17:25 GMT  
		Size: 26.8 KB (26840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98eb9f2b6d906afaf62efd02ea4988c23396b56acfa360f546b4b051a1c3e1c`  
		Last Modified: Tue, 30 Oct 2018 15:17:30 GMT  
		Size: 34.4 MB (34436742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-jaxrs` - linux; 386

```console
$ docker pull tomee@sha256:9ff7eb57f5db34265a70deff7c0fd7dc2b2e01958bab6d08bcd789b3ae8bddde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.5 MB (219529155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c627e00e6c8500f1c2ebd48640d8814ed6096be4f2af5346f0dae2e7f128d53a`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:30:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 03:36:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 03:36:44 GMT
ENV LANG=C.UTF-8
# Wed, 17 Oct 2018 03:36:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 17 Oct 2018 03:36:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 11:09:42 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 11:09:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 11:10:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 11:10:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:04:12 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:04:13 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:04:13 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:04:14 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:04:17 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 30 Oct 2018 14:04:23 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:04:23 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:04:24 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d8b973c47bc2b9e663e0405a9b6c4923e7edd886f9352807642bd012741c7b`  
		Last Modified: Tue, 16 Oct 2018 21:46:21 GMT  
		Size: 10.8 MB (10752717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc96b1bed2761a443ab819cbb860219f45d0a8bd03334cd84a81ee97399ee0`  
		Last Modified: Tue, 16 Oct 2018 21:46:19 GMT  
		Size: 4.6 MB (4555326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf8ff73b0a24a2d2c5ebfbcc6b8301349388a2562b5b1832e7db1ac71ae3d96`  
		Last Modified: Wed, 17 Oct 2018 03:51:09 GMT  
		Size: 861.8 KB (861772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a50ad6c047d63f8288897510a2551fec276a69dd76441d34df7ae5dbfbc757`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba1dba5b34132ca34ccd824ca39c484e958be83902abb87c823d8aa6965e7da`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2582ffd7014adc4b600f142afd34bd45a6f1084200f83de9372ac5541e2802`  
		Last Modified: Tue, 30 Oct 2018 11:16:02 GMT  
		Size: 122.6 MB (122609361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849a60206ec57d15465bf6d6ac94195db298a6ca94f0e961c2cef7dd8e6f67f5`  
		Last Modified: Tue, 30 Oct 2018 11:15:38 GMT  
		Size: 246.7 KB (246683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91148153248302d0db1f1ee32a9c6394bf20b9338edcd6f16f83d6db8dc1976`  
		Last Modified: Tue, 30 Oct 2018 14:11:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06e05aa7c6d7ac985d7fe74cf6ea0525de148f3f0085766586b9627695f2aba`  
		Last Modified: Tue, 30 Oct 2018 14:11:28 GMT  
		Size: 26.8 KB (26812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d80155f4a6d30aa58d0a5172c773ede7c7327d177775d52ac94046812db22a5b`  
		Last Modified: Tue, 30 Oct 2018 14:11:31 GMT  
		Size: 34.4 MB (34436734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-jaxrs` - linux; ppc64le

```console
$ docker pull tomee@sha256:9e658035ca9f198f93604ef47a47bd9742c27bc63bc8922b83f5d9cfc8d8e304
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.9 MB (209936852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ffd9b1046570d00637b44cea049eaae27060a8c3971a03a52502593f5f130d4`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:21:55 GMT
ADD file:a59c24e738306d5a76eda32c17347983843a394953e466fc10b997cf1398c4ed in / 
# Tue, 16 Oct 2018 08:21:57 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:48:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:48:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 15:15:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:15:24 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 15:15:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 15:15:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 15:15:44 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 15:15:52 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:43:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:43:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:47:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:47:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:30:20 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:30:23 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:30:24 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:30:25 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:30:31 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 31 Oct 2018 10:30:40 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:30:41 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:30:42 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:93d83403cab11249f38bea785ef4fc2d2b4cf9dd1295ad181f3c457ab4d4ea4b`  
		Last Modified: Tue, 16 Oct 2018 08:30:05 GMT  
		Size: 45.6 MB (45595514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ec9429d785df2991e77ea98b51ceeaa4ba80bcb51ce5d583e298525463146a`  
		Last Modified: Tue, 16 Oct 2018 11:06:51 GMT  
		Size: 9.9 MB (9943336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2367a02f5abb1557873986462bae2faef06a1b1fc0bd094d8f2a1dfdae33798e`  
		Last Modified: Tue, 16 Oct 2018 11:06:48 GMT  
		Size: 4.3 MB (4289821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19512a51eca885874336832af8357c995b28646c233136ff5a484d748af437a`  
		Last Modified: Tue, 16 Oct 2018 15:34:57 GMT  
		Size: 848.3 KB (848330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009ac02b22eca01c54f895f29b03222f698522307cb6a3fcbe1e55b97e123ed9`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea4543ef0daeccff13d600a6def3496001fdcc344ec2c9a6d63621c9a1dce0f`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050d1332dd2b829ac78cf297c3c9b062cb9f00311fcf7c43022310fe8737e3e2`  
		Last Modified: Wed, 31 Oct 2018 08:20:04 GMT  
		Size: 114.5 MB (114548674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2385b91212622165daaa25696049c403a6a3c312ae1e51388f930ff39a7956`  
		Last Modified: Wed, 31 Oct 2018 08:19:30 GMT  
		Size: 246.8 KB (246772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe2fc2806b97676673ae4f61d5e0076d04d6769cc0657b595cb42066197590a`  
		Last Modified: Wed, 31 Oct 2018 10:40:47 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5089ea374c810a8fa46a343591f73671d550669f445583f2dc527a4e2642b29b`  
		Last Modified: Wed, 31 Oct 2018 10:40:47 GMT  
		Size: 26.9 KB (26855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0067c395db201f4fe26154514296f219a6c93c934bbd70f029cd12a9dcd0891`  
		Last Modified: Wed, 31 Oct 2018 10:40:52 GMT  
		Size: 34.4 MB (34436988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-jaxrs` - linux; s390x

```console
$ docker pull tomee@sha256:e7716478c7fa1fafce0d4b3b56f21e214e4437ad082a6c9f85c44185380a1ff2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.5 MB (209546093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ac08c207b2156467d41b41047c660613c116a7e95ec423ad77e0c7808846d3e`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 13:06:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:06:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:06:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 12:09:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 12:09:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 12:09:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 12:09:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:13:58 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:13:58 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:13:59 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:14:01 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:14:05 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 30 Oct 2018 14:14:11 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:14:11 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:14:12 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadb55fe60f3a83b7078ad97271acf0fd19b4414edf56bfbb07929744d5f7dce`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 863.7 KB (863652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecb5fac3a19302c69f5ee9494fd6c23d3d5dd418d59b9ea6a400cde0b0ae69e`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3565def30ebfc0c8c4a44f336ec11f69a92101319367ead0b1272905de65b629`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d108ec790a13528613333148f37b0b32735ca046ddfe165916fbbdaa536b9e`  
		Last Modified: Tue, 30 Oct 2018 12:13:07 GMT  
		Size: 114.1 MB (114137466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae3dd31465d93acd9f4060b71c585db6d729f83ab4ed961ec9a5356a4b80d3`  
		Last Modified: Tue, 30 Oct 2018 12:12:49 GMT  
		Size: 246.7 KB (246718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29f8d77836e77bcb36fb3d909583bf4af2d3cc4007daa9a9dedb4422b5449cc`  
		Last Modified: Tue, 30 Oct 2018 14:18:18 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7d8f6ea0e36ede702a1d32923b66f7faae5092560e40a90d9f2a2080d5655b`  
		Last Modified: Tue, 30 Oct 2018 14:18:19 GMT  
		Size: 26.8 KB (26823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2531d9d560a1ee9d2ede32e946625a5838ba455ecf85ff93c1aaceb0d1d6eb30`  
		Last Modified: Tue, 30 Oct 2018 14:18:22 GMT  
		Size: 34.4 MB (34436741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:8-jre-1.7.5-plume`

```console
$ docker pull tomee@sha256:73e156ae322aaf4cb8d9be27d6bd3a9402022010a10348d5798f4e3f509eaf90
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

### `tomee:8-jre-1.7.5-plume` - linux; amd64

```console
$ docker pull tomee@sha256:435722e8a120f52fc9d471c9426438d4758fd4171d9d881bf2ceab640f74468c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.6 MB (235559177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f31dccdef99ead3dbbcc1eca76df760c1331c7399e071389f5b954275584ebe5`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:28:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:28:06 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:28:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:28:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:30:29 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:30:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:31:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:31:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 05:31:41 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 05:31:42 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 05:31:42 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 05:31:43 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 05:31:46 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 30 Oct 2018 05:32:22 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 05:32:23 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 05:32:23 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21441932c53a4078f379c7c6d299370a6eaee79c862a29db2e25fec39106779`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 852.9 KB (852895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa76b0d2509232e863931fc1743f1ca2dba3bebdf5f72b4280fae59536303ce7`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346fd8610875e8ba7753030b5c197ad56fe76aa4e45d1e70e4b58366e93177c3`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca5d6af9022c9c3b436792a01c58dd29490430d28b04f70385f308e3bdae8a6`  
		Last Modified: Mon, 29 Oct 2018 23:40:07 GMT  
		Size: 122.1 MB (122121999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06cfa2cea32b36c8f5dcc8605166d1f8b72cf02e44163dbf7d14e0379286b55`  
		Last Modified: Mon, 29 Oct 2018 23:39:44 GMT  
		Size: 246.7 KB (246728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c094b3bc8129299958e3103ea5962297e112f8623257dd6d3d72fd739b4ed2dc`  
		Last Modified: Tue, 30 Oct 2018 05:44:37 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328f724458c52511f60f1a73f15845118f6573614490da79dce3f5b352af1129`  
		Last Modified: Tue, 30 Oct 2018 05:44:36 GMT  
		Size: 26.8 KB (26823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba47beca5b77e2e6c5981575c5daf25cd7d74ef92dc7471cbbba503753b34bc`  
		Last Modified: Tue, 30 Oct 2018 05:44:59 GMT  
		Size: 51.9 MB (51924198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-plume` - linux; arm variant v5

```console
$ docker pull tomee@sha256:38a90033cfeef900c8a39f11963c0a6fb5a90e3356e08ad975c8d13e654fddfd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.9 MB (222949280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e43c441b7f2ded669d06ee1c60c1910f20566410ee45a2b1245c13a05d130de8`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:59 GMT
ADD file:9400a194c6dcf24f439664aab3a28cb7dbf93753b71d2756dbaf872d294fbb8e in / 
# Tue, 16 Oct 2018 08:55:00 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:00:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:00:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:47:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 12:47:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 12:47:32 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 10:04:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 10:04:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 10:05:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 10:06:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:39:10 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:39:11 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:39:11 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:39:11 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:39:16 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 31 Oct 2018 10:40:32 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:40:32 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:40:32 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:67cd7720dfa3de15234643bf308008813fd129e03429f026775738064b364e24`  
		Last Modified: Tue, 16 Oct 2018 09:04:05 GMT  
		Size: 44.0 MB (44033067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd276b766fa97ab74e113c92ed57093015cfc9c9030be8ba22b5e752cd8e8877`  
		Last Modified: Tue, 16 Oct 2018 10:09:36 GMT  
		Size: 9.8 MB (9810396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b000ac5a1a22a2dea4538586726677f91c42079cf289a8eb88fdf9c65fda7f6`  
		Last Modified: Tue, 16 Oct 2018 10:09:35 GMT  
		Size: 4.2 MB (4153754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cbc8dc4eb12ea31f2f137322dcd35e379750d13318d6521d7d557989a9c73e`  
		Last Modified: Tue, 16 Oct 2018 12:56:57 GMT  
		Size: 845.9 KB (845906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a97950afff8d9b7263a96992060b43bf115f908bd1f262de6f93c0418cc9817`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693401423272c67e47e2c164426ccd8a7f7c84c1aaa9ccf0db49f23cf10ece20`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa4cd8ea842cbf55631460424eebe375e8955fa33375ba756948f3200aa260b`  
		Last Modified: Wed, 31 Oct 2018 09:18:50 GMT  
		Size: 111.9 MB (111907574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2f5878cb92f7b7cabd53ba68c69652be468fe7e00b7a82ecff33496f1357c7`  
		Last Modified: Wed, 31 Oct 2018 09:18:21 GMT  
		Size: 246.7 KB (246748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7fe3f0758a210ee8428de088c4f9d16e74526003cd6f0e98c680a75db3a4ef`  
		Last Modified: Wed, 31 Oct 2018 10:47:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803d1cd4c5eb68afd59888c8331c88ab25f73430e7b291d2163a14360697f710`  
		Last Modified: Wed, 31 Oct 2018 10:47:52 GMT  
		Size: 26.9 KB (26850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136a8285596bf8cb534cd132b730c760b88245ba6c017a7274347e11e4fbb87a`  
		Last Modified: Wed, 31 Oct 2018 10:48:15 GMT  
		Size: 51.9 MB (51924423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-plume` - linux; arm variant v7

```console
$ docker pull tomee@sha256:6e2627f84651a7e040dc7d8b631bf58b198ced790ccfac56b1b6c6a58ec62579
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.0 MB (248005036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c7036785779d69b3df48ee3ceb1e5df2786e17f14eac06b4af6229d19cd7da3`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:59:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:59:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:59:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:59:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:59:27 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:59:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:00:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:00:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 15:31:33 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 05 May 2018 15:31:34 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 05 May 2018 15:31:34 GMT
WORKDIR /usr/local/tomee
# Sat, 05 May 2018 15:31:35 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 05 May 2018 15:31:39 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Sat, 05 May 2018 15:32:05 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 23 Jan 2019 19:10:12 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 19:10:13 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df26ddf71ea9e82f175e400809b8f06871dd0937c5a90f4ffe95286544a9f719`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 830.3 KB (830332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c21322a9c89724512d6ea5faa10299c60c8a605d6f563c84c28177db8d2770`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2270f04a4be61f52577232813fff92e797d3fc190d52f71411afc26b0911f8e4`  
		Last Modified: Sat, 05 May 2018 13:29:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dc1aba58c8cd285639cac6b03c823e5fcdb91aa8922652e7d9387aaca6fa4`  
		Last Modified: Sat, 05 May 2018 13:29:37 GMT  
		Size: 139.5 MB (139501760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02869ec2bb3864b06abd435610eb6849d5c62426517de1a603ef6fe43c7d3815`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 272.1 KB (272082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b2945e8eb5c51597eeaa0b9140cd51356fdea2bdbc0e85b10b3004a32453fc`  
		Last Modified: Sat, 05 May 2018 15:39:04 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50677ccf4d3bf28f894c2b3e1b114ba522dfb82efd8068fb1536596aa68749a`  
		Last Modified: Sat, 05 May 2018 15:39:04 GMT  
		Size: 26.9 KB (26854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c56f199b0d9769fa63e1a1cc539904b4ecede7960ec8ffbda2ce88c58aa8d1b`  
		Last Modified: Sat, 05 May 2018 15:39:29 GMT  
		Size: 51.9 MB (51924402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-plume` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:b5f4365175a9a11fe14fa288726d4ad80cbd8eba3eed9eb766367747bdf5553f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.7 MB (222693627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f777cebac87cc02b4d01404f8f718d3b99d40fc46de8aa1062e8bf5499c52b18`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 22:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:09:34 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 22:09:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 22:09:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 22:09:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 22:09:44 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:07:32 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:07:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:13:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:13:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 15:02:52 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 15:02:53 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 15:02:54 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 15:02:55 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 15:03:01 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 30 Oct 2018 15:04:45 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 15:04:47 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 15:04:48 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec37afe1ce9c80cab1c8fdc0d193c9f92f61adf7c60d6bdbc2b01735eac25b6`  
		Last Modified: Tue, 16 Oct 2018 22:27:18 GMT  
		Size: 839.2 KB (839157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776d8d23f1b98b1595b31f6da89774c22c62b8aaebfd909efc61ceb1ed261422`  
		Last Modified: Tue, 16 Oct 2018 22:27:15 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0423ae79bd292339ac64d511157cd27daa8549a458b0458dc17973fbee24f728`  
		Last Modified: Tue, 16 Oct 2018 22:27:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f621179e148c9684831eb304357c88f80f0b271af7ed9ca445ab04fbb1290f`  
		Last Modified: Tue, 30 Oct 2018 09:25:17 GMT  
		Size: 112.8 MB (112753824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65fac7cd4cedf9a714652ad15dccbc910e8c233062e70e577ceda149579218bd`  
		Last Modified: Tue, 30 Oct 2018 09:24:14 GMT  
		Size: 246.7 KB (246684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:658f45b64802a49fa3968aded05068fcceea176e7764bfc44f75538819b46bda`  
		Last Modified: Tue, 30 Oct 2018 15:17:24 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd865f359e9c5e04185fad16d893071c6af945d16cd80615bf873152f0720ad8`  
		Last Modified: Tue, 30 Oct 2018 15:17:25 GMT  
		Size: 26.8 KB (26840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62952ee843d0a896837eafb516f1125526136f63174551cdb06e79d78b26874`  
		Last Modified: Tue, 30 Oct 2018 15:17:57 GMT  
		Size: 51.9 MB (51924191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-plume` - linux; 386

```console
$ docker pull tomee@sha256:cf3e342f81bf82cee01853f00a6b61e9fd84f56426fca6ab0b9393c6d7ed58cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.0 MB (237016618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e8449c3b3bcb1e0d0ce0d2f46c18a2970ae1ebb0789a7673d034ee97fd42fd7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:30:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 03:36:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 03:36:44 GMT
ENV LANG=C.UTF-8
# Wed, 17 Oct 2018 03:36:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 17 Oct 2018 03:36:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 11:09:42 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 11:09:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 11:10:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 11:10:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:04:12 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:04:13 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:04:13 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:04:14 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:04:17 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 30 Oct 2018 14:04:45 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:04:46 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:04:46 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d8b973c47bc2b9e663e0405a9b6c4923e7edd886f9352807642bd012741c7b`  
		Last Modified: Tue, 16 Oct 2018 21:46:21 GMT  
		Size: 10.8 MB (10752717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc96b1bed2761a443ab819cbb860219f45d0a8bd03334cd84a81ee97399ee0`  
		Last Modified: Tue, 16 Oct 2018 21:46:19 GMT  
		Size: 4.6 MB (4555326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf8ff73b0a24a2d2c5ebfbcc6b8301349388a2562b5b1832e7db1ac71ae3d96`  
		Last Modified: Wed, 17 Oct 2018 03:51:09 GMT  
		Size: 861.8 KB (861772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a50ad6c047d63f8288897510a2551fec276a69dd76441d34df7ae5dbfbc757`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba1dba5b34132ca34ccd824ca39c484e958be83902abb87c823d8aa6965e7da`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2582ffd7014adc4b600f142afd34bd45a6f1084200f83de9372ac5541e2802`  
		Last Modified: Tue, 30 Oct 2018 11:16:02 GMT  
		Size: 122.6 MB (122609361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849a60206ec57d15465bf6d6ac94195db298a6ca94f0e961c2cef7dd8e6f67f5`  
		Last Modified: Tue, 30 Oct 2018 11:15:38 GMT  
		Size: 246.7 KB (246683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91148153248302d0db1f1ee32a9c6394bf20b9338edcd6f16f83d6db8dc1976`  
		Last Modified: Tue, 30 Oct 2018 14:11:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06e05aa7c6d7ac985d7fe74cf6ea0525de148f3f0085766586b9627695f2aba`  
		Last Modified: Tue, 30 Oct 2018 14:11:28 GMT  
		Size: 26.8 KB (26812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f2e880a3b130bfbbac927883231f9e3d339bbcdf441e07d8e7aec709f0ed55`  
		Last Modified: Tue, 30 Oct 2018 14:11:48 GMT  
		Size: 51.9 MB (51924197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-plume` - linux; ppc64le

```console
$ docker pull tomee@sha256:5e643ebc2b4a63663b5698cc6cd6e07fa00990b84452554113824ff4d0c31f41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.4 MB (227424295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a039958f6d7a7f6a4ca130d7a42333eccfc21e603ea6ec24cf855ba0ebb7d36`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:21:55 GMT
ADD file:a59c24e738306d5a76eda32c17347983843a394953e466fc10b997cf1398c4ed in / 
# Tue, 16 Oct 2018 08:21:57 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:48:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:48:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 15:15:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:15:24 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 15:15:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 15:15:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 15:15:44 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 15:15:52 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:43:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:43:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:47:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:47:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:30:20 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:30:23 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:30:24 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:30:25 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:30:31 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 31 Oct 2018 10:31:06 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:31:08 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:31:09 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:93d83403cab11249f38bea785ef4fc2d2b4cf9dd1295ad181f3c457ab4d4ea4b`  
		Last Modified: Tue, 16 Oct 2018 08:30:05 GMT  
		Size: 45.6 MB (45595514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ec9429d785df2991e77ea98b51ceeaa4ba80bcb51ce5d583e298525463146a`  
		Last Modified: Tue, 16 Oct 2018 11:06:51 GMT  
		Size: 9.9 MB (9943336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2367a02f5abb1557873986462bae2faef06a1b1fc0bd094d8f2a1dfdae33798e`  
		Last Modified: Tue, 16 Oct 2018 11:06:48 GMT  
		Size: 4.3 MB (4289821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19512a51eca885874336832af8357c995b28646c233136ff5a484d748af437a`  
		Last Modified: Tue, 16 Oct 2018 15:34:57 GMT  
		Size: 848.3 KB (848330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009ac02b22eca01c54f895f29b03222f698522307cb6a3fcbe1e55b97e123ed9`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea4543ef0daeccff13d600a6def3496001fdcc344ec2c9a6d63621c9a1dce0f`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050d1332dd2b829ac78cf297c3c9b062cb9f00311fcf7c43022310fe8737e3e2`  
		Last Modified: Wed, 31 Oct 2018 08:20:04 GMT  
		Size: 114.5 MB (114548674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2385b91212622165daaa25696049c403a6a3c312ae1e51388f930ff39a7956`  
		Last Modified: Wed, 31 Oct 2018 08:19:30 GMT  
		Size: 246.8 KB (246772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe2fc2806b97676673ae4f61d5e0076d04d6769cc0657b595cb42066197590a`  
		Last Modified: Wed, 31 Oct 2018 10:40:47 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5089ea374c810a8fa46a343591f73671d550669f445583f2dc527a4e2642b29b`  
		Last Modified: Wed, 31 Oct 2018 10:40:47 GMT  
		Size: 26.9 KB (26855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555cfb7a11f47374d85548d7986efeb4562781525c738ddeb94dd80c1caeac1d`  
		Last Modified: Wed, 31 Oct 2018 10:41:18 GMT  
		Size: 51.9 MB (51924431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-plume` - linux; s390x

```console
$ docker pull tomee@sha256:2cfe83dc798adea982234783598a6290991910944b6e2e055e956bbc01395a4f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.0 MB (227033542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71855690840be56b03a5cf05ce28faf44eaa9f955ba820cc364e50cb48b68367`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 13:06:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:06:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:06:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 12:09:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 12:09:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 12:09:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 12:09:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:13:58 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:13:58 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:13:59 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:14:01 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:14:05 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 30 Oct 2018 14:14:29 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:14:30 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:14:30 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadb55fe60f3a83b7078ad97271acf0fd19b4414edf56bfbb07929744d5f7dce`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 863.7 KB (863652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecb5fac3a19302c69f5ee9494fd6c23d3d5dd418d59b9ea6a400cde0b0ae69e`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3565def30ebfc0c8c4a44f336ec11f69a92101319367ead0b1272905de65b629`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d108ec790a13528613333148f37b0b32735ca046ddfe165916fbbdaa536b9e`  
		Last Modified: Tue, 30 Oct 2018 12:13:07 GMT  
		Size: 114.1 MB (114137466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae3dd31465d93acd9f4060b71c585db6d729f83ab4ed961ec9a5356a4b80d3`  
		Last Modified: Tue, 30 Oct 2018 12:12:49 GMT  
		Size: 246.7 KB (246718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29f8d77836e77bcb36fb3d909583bf4af2d3cc4007daa9a9dedb4422b5449cc`  
		Last Modified: Tue, 30 Oct 2018 14:18:18 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7d8f6ea0e36ede702a1d32923b66f7faae5092560e40a90d9f2a2080d5655b`  
		Last Modified: Tue, 30 Oct 2018 14:18:19 GMT  
		Size: 26.8 KB (26823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492baecf8ef81e608aab477df2ca8a7bb8d434cdb0d34090a34ee81edbba640f`  
		Last Modified: Tue, 30 Oct 2018 14:18:33 GMT  
		Size: 51.9 MB (51924190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:8-jre-1.7.5-plus`

```console
$ docker pull tomee@sha256:2357508ae1abc06b3b4d2890e7fd88b72f2cb6a321f2cefb46c6789da9d1ad91
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

### `tomee:8-jre-1.7.5-plus` - linux; amd64

```console
$ docker pull tomee@sha256:472fe2ecea8604cf89045a3da336859500ee3bcbfad7323589d20d153b59eae4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.9 MB (227900661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea040f12c5812e26a3b32e3e47ea2df4cf14fac7ee172d76296131a2d79f2e4e`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:28:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:28:06 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:28:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:28:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:30:29 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:30:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:31:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:31:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 05:31:41 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 05:31:42 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 05:31:42 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 05:31:43 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 05:31:46 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 30 Oct 2018 05:33:03 GMT
RUN set -x 	&& curl -fSL http://repo.maven.apache.org/maven2/org/apache/openejb/apache-tomee/1.7.5/apache-tomee-1.7.5-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://repo.maven.apache.org/maven2/org/apache/openejb/apache-tomee/1.7.5/apache-tomee-1.7.5-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 05:33:03 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 05:33:03 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21441932c53a4078f379c7c6d299370a6eaee79c862a29db2e25fec39106779`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 852.9 KB (852895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa76b0d2509232e863931fc1743f1ca2dba3bebdf5f72b4280fae59536303ce7`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346fd8610875e8ba7753030b5c197ad56fe76aa4e45d1e70e4b58366e93177c3`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca5d6af9022c9c3b436792a01c58dd29490430d28b04f70385f308e3bdae8a6`  
		Last Modified: Mon, 29 Oct 2018 23:40:07 GMT  
		Size: 122.1 MB (122121999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06cfa2cea32b36c8f5dcc8605166d1f8b72cf02e44163dbf7d14e0379286b55`  
		Last Modified: Mon, 29 Oct 2018 23:39:44 GMT  
		Size: 246.7 KB (246728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c094b3bc8129299958e3103ea5962297e112f8623257dd6d3d72fd739b4ed2dc`  
		Last Modified: Tue, 30 Oct 2018 05:44:37 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328f724458c52511f60f1a73f15845118f6573614490da79dce3f5b352af1129`  
		Last Modified: Tue, 30 Oct 2018 05:44:36 GMT  
		Size: 26.8 KB (26823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d77f8872e6b4e3b41a0347f8b8a188389dfd2705407f9ea5a2c47c90af73dd31`  
		Last Modified: Tue, 30 Oct 2018 05:45:18 GMT  
		Size: 44.3 MB (44265682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-plus` - linux; arm variant v5

```console
$ docker pull tomee@sha256:85a338c270f283ae143a9640cc799bb9e0c135b441ed80cbe750437f420f5f27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.3 MB (215290775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7031459dce91d0bc4a421f5710cc07fa92058f42aa6269765bd1f21fb3b697e9`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:59 GMT
ADD file:9400a194c6dcf24f439664aab3a28cb7dbf93753b71d2756dbaf872d294fbb8e in / 
# Tue, 16 Oct 2018 08:55:00 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:00:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:00:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:47:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 12:47:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 12:47:32 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 10:04:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 10:04:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 10:05:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 10:06:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:39:10 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:39:11 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:39:11 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:39:11 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:39:16 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 31 Oct 2018 10:40:59 GMT
RUN set -x 	&& curl -fSL http://repo.maven.apache.org/maven2/org/apache/openejb/apache-tomee/1.7.5/apache-tomee-1.7.5-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://repo.maven.apache.org/maven2/org/apache/openejb/apache-tomee/1.7.5/apache-tomee-1.7.5-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:41:00 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:41:00 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:67cd7720dfa3de15234643bf308008813fd129e03429f026775738064b364e24`  
		Last Modified: Tue, 16 Oct 2018 09:04:05 GMT  
		Size: 44.0 MB (44033067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd276b766fa97ab74e113c92ed57093015cfc9c9030be8ba22b5e752cd8e8877`  
		Last Modified: Tue, 16 Oct 2018 10:09:36 GMT  
		Size: 9.8 MB (9810396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b000ac5a1a22a2dea4538586726677f91c42079cf289a8eb88fdf9c65fda7f6`  
		Last Modified: Tue, 16 Oct 2018 10:09:35 GMT  
		Size: 4.2 MB (4153754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cbc8dc4eb12ea31f2f137322dcd35e379750d13318d6521d7d557989a9c73e`  
		Last Modified: Tue, 16 Oct 2018 12:56:57 GMT  
		Size: 845.9 KB (845906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a97950afff8d9b7263a96992060b43bf115f908bd1f262de6f93c0418cc9817`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693401423272c67e47e2c164426ccd8a7f7c84c1aaa9ccf0db49f23cf10ece20`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa4cd8ea842cbf55631460424eebe375e8955fa33375ba756948f3200aa260b`  
		Last Modified: Wed, 31 Oct 2018 09:18:50 GMT  
		Size: 111.9 MB (111907574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2f5878cb92f7b7cabd53ba68c69652be468fe7e00b7a82ecff33496f1357c7`  
		Last Modified: Wed, 31 Oct 2018 09:18:21 GMT  
		Size: 246.7 KB (246748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7fe3f0758a210ee8428de088c4f9d16e74526003cd6f0e98c680a75db3a4ef`  
		Last Modified: Wed, 31 Oct 2018 10:47:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803d1cd4c5eb68afd59888c8331c88ab25f73430e7b291d2163a14360697f710`  
		Last Modified: Wed, 31 Oct 2018 10:47:52 GMT  
		Size: 26.9 KB (26850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f7fe4a78240aa80cc2be0f8935f87cccb43287fd8989a55945c44ec65834e8`  
		Last Modified: Wed, 31 Oct 2018 10:48:33 GMT  
		Size: 44.3 MB (44265918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-plus` - linux; arm variant v7

```console
$ docker pull tomee@sha256:756a4a13e50a0765a09f014312e23c949bbe49f32a3be8f705bdd6ce96e26994
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.3 MB (240346541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc494374b29f7cd76d465491c77a42bc36d62865d96e1c322f56c8642d2bfc6`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:59:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:59:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:59:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:59:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:59:27 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:59:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:00:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:00:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 15:31:33 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 05 May 2018 15:31:34 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 05 May 2018 15:31:34 GMT
WORKDIR /usr/local/tomee
# Sat, 05 May 2018 15:31:35 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 05 May 2018 15:31:39 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Sat, 05 May 2018 15:32:38 GMT
RUN set -x 	&& curl -fSL http://repo.maven.apache.org/maven2/org/apache/openejb/apache-tomee/1.7.5/apache-tomee-1.7.5-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://repo.maven.apache.org/maven2/org/apache/openejb/apache-tomee/1.7.5/apache-tomee-1.7.5-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 23 Jan 2019 19:10:18 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 19:10:19 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df26ddf71ea9e82f175e400809b8f06871dd0937c5a90f4ffe95286544a9f719`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 830.3 KB (830332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c21322a9c89724512d6ea5faa10299c60c8a605d6f563c84c28177db8d2770`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2270f04a4be61f52577232813fff92e797d3fc190d52f71411afc26b0911f8e4`  
		Last Modified: Sat, 05 May 2018 13:29:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dc1aba58c8cd285639cac6b03c823e5fcdb91aa8922652e7d9387aaca6fa4`  
		Last Modified: Sat, 05 May 2018 13:29:37 GMT  
		Size: 139.5 MB (139501760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02869ec2bb3864b06abd435610eb6849d5c62426517de1a603ef6fe43c7d3815`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 272.1 KB (272082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b2945e8eb5c51597eeaa0b9140cd51356fdea2bdbc0e85b10b3004a32453fc`  
		Last Modified: Sat, 05 May 2018 15:39:04 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50677ccf4d3bf28f894c2b3e1b114ba522dfb82efd8068fb1536596aa68749a`  
		Last Modified: Sat, 05 May 2018 15:39:04 GMT  
		Size: 26.9 KB (26854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378210a621c561f0e0f6103acdd6491c67118d16bd5a95c91852795cc9c44c2f`  
		Last Modified: Sat, 05 May 2018 15:39:54 GMT  
		Size: 44.3 MB (44265907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-plus` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:81369537ae4db780a20293f4cf9672eac1d7c1a438b494d98297bd04cf732cfa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.0 MB (215035135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16b62944fa66fcd7819003df2d27dc6d9ba27eafd03d6e84874b6f6ebb60489`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 22:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:09:34 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 22:09:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 22:09:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 22:09:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 22:09:44 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:07:32 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:07:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:13:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:13:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 15:02:52 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 15:02:53 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 15:02:54 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 15:02:55 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 15:03:01 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 30 Oct 2018 15:05:30 GMT
RUN set -x 	&& curl -fSL http://repo.maven.apache.org/maven2/org/apache/openejb/apache-tomee/1.7.5/apache-tomee-1.7.5-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://repo.maven.apache.org/maven2/org/apache/openejb/apache-tomee/1.7.5/apache-tomee-1.7.5-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 15:05:35 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 15:05:36 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec37afe1ce9c80cab1c8fdc0d193c9f92f61adf7c60d6bdbc2b01735eac25b6`  
		Last Modified: Tue, 16 Oct 2018 22:27:18 GMT  
		Size: 839.2 KB (839157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776d8d23f1b98b1595b31f6da89774c22c62b8aaebfd909efc61ceb1ed261422`  
		Last Modified: Tue, 16 Oct 2018 22:27:15 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0423ae79bd292339ac64d511157cd27daa8549a458b0458dc17973fbee24f728`  
		Last Modified: Tue, 16 Oct 2018 22:27:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f621179e148c9684831eb304357c88f80f0b271af7ed9ca445ab04fbb1290f`  
		Last Modified: Tue, 30 Oct 2018 09:25:17 GMT  
		Size: 112.8 MB (112753824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65fac7cd4cedf9a714652ad15dccbc910e8c233062e70e577ceda149579218bd`  
		Last Modified: Tue, 30 Oct 2018 09:24:14 GMT  
		Size: 246.7 KB (246684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:658f45b64802a49fa3968aded05068fcceea176e7764bfc44f75538819b46bda`  
		Last Modified: Tue, 30 Oct 2018 15:17:24 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd865f359e9c5e04185fad16d893071c6af945d16cd80615bf873152f0720ad8`  
		Last Modified: Tue, 30 Oct 2018 15:17:25 GMT  
		Size: 26.8 KB (26840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7c0c93145fee424a6ed83ec49548af9904d7ca411316c7887f540f26774b1e`  
		Last Modified: Tue, 30 Oct 2018 15:18:23 GMT  
		Size: 44.3 MB (44265699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-plus` - linux; 386

```console
$ docker pull tomee@sha256:3a75cc416d7b2395409b77c6a7541831d33ed471a7358b02a579b6b0ef45b77b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.4 MB (229358090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1696b5eba214a83a860b50f5c6a8e7b30a135d6ba492a30b01d5af9c101fe42a`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:30:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 03:36:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 03:36:44 GMT
ENV LANG=C.UTF-8
# Wed, 17 Oct 2018 03:36:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 17 Oct 2018 03:36:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 11:09:42 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 11:09:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 11:10:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 11:10:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:04:12 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:04:13 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:04:13 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:04:14 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:04:17 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 30 Oct 2018 14:05:04 GMT
RUN set -x 	&& curl -fSL http://repo.maven.apache.org/maven2/org/apache/openejb/apache-tomee/1.7.5/apache-tomee-1.7.5-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://repo.maven.apache.org/maven2/org/apache/openejb/apache-tomee/1.7.5/apache-tomee-1.7.5-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:05:04 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:05:05 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d8b973c47bc2b9e663e0405a9b6c4923e7edd886f9352807642bd012741c7b`  
		Last Modified: Tue, 16 Oct 2018 21:46:21 GMT  
		Size: 10.8 MB (10752717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc96b1bed2761a443ab819cbb860219f45d0a8bd03334cd84a81ee97399ee0`  
		Last Modified: Tue, 16 Oct 2018 21:46:19 GMT  
		Size: 4.6 MB (4555326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf8ff73b0a24a2d2c5ebfbcc6b8301349388a2562b5b1832e7db1ac71ae3d96`  
		Last Modified: Wed, 17 Oct 2018 03:51:09 GMT  
		Size: 861.8 KB (861772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a50ad6c047d63f8288897510a2551fec276a69dd76441d34df7ae5dbfbc757`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba1dba5b34132ca34ccd824ca39c484e958be83902abb87c823d8aa6965e7da`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2582ffd7014adc4b600f142afd34bd45a6f1084200f83de9372ac5541e2802`  
		Last Modified: Tue, 30 Oct 2018 11:16:02 GMT  
		Size: 122.6 MB (122609361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849a60206ec57d15465bf6d6ac94195db298a6ca94f0e961c2cef7dd8e6f67f5`  
		Last Modified: Tue, 30 Oct 2018 11:15:38 GMT  
		Size: 246.7 KB (246683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91148153248302d0db1f1ee32a9c6394bf20b9338edcd6f16f83d6db8dc1976`  
		Last Modified: Tue, 30 Oct 2018 14:11:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06e05aa7c6d7ac985d7fe74cf6ea0525de148f3f0085766586b9627695f2aba`  
		Last Modified: Tue, 30 Oct 2018 14:11:28 GMT  
		Size: 26.8 KB (26812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5779376658ee5fdec3a4249d8e00f93ff4eb81814367023c8e3d0d47d4924417`  
		Last Modified: Tue, 30 Oct 2018 14:12:06 GMT  
		Size: 44.3 MB (44265669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-plus` - linux; ppc64le

```console
$ docker pull tomee@sha256:8d32a3f45ba8d4766b440c770e6052fa8c17df783c8929e3c3a795429b5d6208
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.8 MB (219765781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af4989d15d3e8e4fcf907f7e53dd2e81238d2eec6dc7144b8fe3d7d7a60e82bf`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:21:55 GMT
ADD file:a59c24e738306d5a76eda32c17347983843a394953e466fc10b997cf1398c4ed in / 
# Tue, 16 Oct 2018 08:21:57 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:48:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:48:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 15:15:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:15:24 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 15:15:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 15:15:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 15:15:44 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 15:15:52 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:43:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:43:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:47:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:47:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:30:20 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:30:23 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:30:24 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:30:25 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:30:31 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 31 Oct 2018 10:31:31 GMT
RUN set -x 	&& curl -fSL http://repo.maven.apache.org/maven2/org/apache/openejb/apache-tomee/1.7.5/apache-tomee-1.7.5-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://repo.maven.apache.org/maven2/org/apache/openejb/apache-tomee/1.7.5/apache-tomee-1.7.5-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:31:32 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:31:33 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:93d83403cab11249f38bea785ef4fc2d2b4cf9dd1295ad181f3c457ab4d4ea4b`  
		Last Modified: Tue, 16 Oct 2018 08:30:05 GMT  
		Size: 45.6 MB (45595514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ec9429d785df2991e77ea98b51ceeaa4ba80bcb51ce5d583e298525463146a`  
		Last Modified: Tue, 16 Oct 2018 11:06:51 GMT  
		Size: 9.9 MB (9943336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2367a02f5abb1557873986462bae2faef06a1b1fc0bd094d8f2a1dfdae33798e`  
		Last Modified: Tue, 16 Oct 2018 11:06:48 GMT  
		Size: 4.3 MB (4289821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19512a51eca885874336832af8357c995b28646c233136ff5a484d748af437a`  
		Last Modified: Tue, 16 Oct 2018 15:34:57 GMT  
		Size: 848.3 KB (848330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009ac02b22eca01c54f895f29b03222f698522307cb6a3fcbe1e55b97e123ed9`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea4543ef0daeccff13d600a6def3496001fdcc344ec2c9a6d63621c9a1dce0f`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050d1332dd2b829ac78cf297c3c9b062cb9f00311fcf7c43022310fe8737e3e2`  
		Last Modified: Wed, 31 Oct 2018 08:20:04 GMT  
		Size: 114.5 MB (114548674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2385b91212622165daaa25696049c403a6a3c312ae1e51388f930ff39a7956`  
		Last Modified: Wed, 31 Oct 2018 08:19:30 GMT  
		Size: 246.8 KB (246772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe2fc2806b97676673ae4f61d5e0076d04d6769cc0657b595cb42066197590a`  
		Last Modified: Wed, 31 Oct 2018 10:40:47 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5089ea374c810a8fa46a343591f73671d550669f445583f2dc527a4e2642b29b`  
		Last Modified: Wed, 31 Oct 2018 10:40:47 GMT  
		Size: 26.9 KB (26855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340814e3a418171c3a76de78ea44a3d17dc1688e8286c43a921489e8f16dee7e`  
		Last Modified: Wed, 31 Oct 2018 10:41:38 GMT  
		Size: 44.3 MB (44265917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-plus` - linux; s390x

```console
$ docker pull tomee@sha256:74f8dc7eeeb4ae00043847172875db3d81cbacc733088e703d9922ded5e4ae31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.4 MB (219375047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94620ccd6616acd8b59587ae635cecca3ba8bcece704bac212ab798a3e767ed3`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 13:06:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:06:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:06:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 12:09:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 12:09:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 12:09:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 12:09:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:13:58 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:13:58 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:13:59 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:14:01 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:14:05 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 30 Oct 2018 14:14:42 GMT
RUN set -x 	&& curl -fSL http://repo.maven.apache.org/maven2/org/apache/openejb/apache-tomee/1.7.5/apache-tomee-1.7.5-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://repo.maven.apache.org/maven2/org/apache/openejb/apache-tomee/1.7.5/apache-tomee-1.7.5-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:14:43 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:14:43 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadb55fe60f3a83b7078ad97271acf0fd19b4414edf56bfbb07929744d5f7dce`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 863.7 KB (863652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecb5fac3a19302c69f5ee9494fd6c23d3d5dd418d59b9ea6a400cde0b0ae69e`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3565def30ebfc0c8c4a44f336ec11f69a92101319367ead0b1272905de65b629`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d108ec790a13528613333148f37b0b32735ca046ddfe165916fbbdaa536b9e`  
		Last Modified: Tue, 30 Oct 2018 12:13:07 GMT  
		Size: 114.1 MB (114137466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae3dd31465d93acd9f4060b71c585db6d729f83ab4ed961ec9a5356a4b80d3`  
		Last Modified: Tue, 30 Oct 2018 12:12:49 GMT  
		Size: 246.7 KB (246718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29f8d77836e77bcb36fb3d909583bf4af2d3cc4007daa9a9dedb4422b5449cc`  
		Last Modified: Tue, 30 Oct 2018 14:18:18 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7d8f6ea0e36ede702a1d32923b66f7faae5092560e40a90d9f2a2080d5655b`  
		Last Modified: Tue, 30 Oct 2018 14:18:19 GMT  
		Size: 26.8 KB (26823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef91e3cb0c8bc36ec53b7bcec485438643da420b96c0bc9ccd77cadf244ffae0`  
		Last Modified: Tue, 30 Oct 2018 14:18:44 GMT  
		Size: 44.3 MB (44265695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:8-jre-1.7.5-webprofile`

```console
$ docker pull tomee@sha256:38de3e41092bdf4a2ffb8a5ae0bc9ce1a71313da3db794f0f1a66d165f20f324
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

### `tomee:8-jre-1.7.5-webprofile` - linux; amd64

```console
$ docker pull tomee@sha256:fe0b4e1c475bfb8e0c9ddca29f4afd93fbef9d51a6554c0fd7dd6129ffa1caaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.6 MB (214628170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abd43ec77967ab8c338242334ad42ed056a7f3d10db734a1b8857c2786b1e2c0`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:28:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:28:06 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:28:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:28:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:30:29 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:30:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:31:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:31:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 05:31:41 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 05:31:42 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 05:31:42 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 05:31:43 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 05:31:46 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 30 Oct 2018 05:34:09 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 05:34:09 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 05:34:10 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21441932c53a4078f379c7c6d299370a6eaee79c862a29db2e25fec39106779`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 852.9 KB (852895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa76b0d2509232e863931fc1743f1ca2dba3bebdf5f72b4280fae59536303ce7`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346fd8610875e8ba7753030b5c197ad56fe76aa4e45d1e70e4b58366e93177c3`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca5d6af9022c9c3b436792a01c58dd29490430d28b04f70385f308e3bdae8a6`  
		Last Modified: Mon, 29 Oct 2018 23:40:07 GMT  
		Size: 122.1 MB (122121999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06cfa2cea32b36c8f5dcc8605166d1f8b72cf02e44163dbf7d14e0379286b55`  
		Last Modified: Mon, 29 Oct 2018 23:39:44 GMT  
		Size: 246.7 KB (246728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c094b3bc8129299958e3103ea5962297e112f8623257dd6d3d72fd739b4ed2dc`  
		Last Modified: Tue, 30 Oct 2018 05:44:37 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328f724458c52511f60f1a73f15845118f6573614490da79dce3f5b352af1129`  
		Last Modified: Tue, 30 Oct 2018 05:44:36 GMT  
		Size: 26.8 KB (26823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a926f25c30fa9f64641d3684186242a635e4f5fed5173460a8ab8b64b4b1e23`  
		Last Modified: Tue, 30 Oct 2018 05:45:36 GMT  
		Size: 31.0 MB (30993191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-webprofile` - linux; arm variant v5

```console
$ docker pull tomee@sha256:e9202a4eefeb443745aac94d8b7937f00a71408bc8478a255586ddae8ab3dd1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 MB (202018310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7b28f7d06d9623bc482e6e2ec62a02628df32b87cc79d7612e2df347880a178`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:59 GMT
ADD file:9400a194c6dcf24f439664aab3a28cb7dbf93753b71d2756dbaf872d294fbb8e in / 
# Tue, 16 Oct 2018 08:55:00 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:00:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:00:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:47:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 12:47:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 12:47:32 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 10:04:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 10:04:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 10:05:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 10:06:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:39:10 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:39:11 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:39:11 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:39:11 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:39:16 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 31 Oct 2018 10:41:44 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:41:45 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:41:46 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:67cd7720dfa3de15234643bf308008813fd129e03429f026775738064b364e24`  
		Last Modified: Tue, 16 Oct 2018 09:04:05 GMT  
		Size: 44.0 MB (44033067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd276b766fa97ab74e113c92ed57093015cfc9c9030be8ba22b5e752cd8e8877`  
		Last Modified: Tue, 16 Oct 2018 10:09:36 GMT  
		Size: 9.8 MB (9810396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b000ac5a1a22a2dea4538586726677f91c42079cf289a8eb88fdf9c65fda7f6`  
		Last Modified: Tue, 16 Oct 2018 10:09:35 GMT  
		Size: 4.2 MB (4153754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cbc8dc4eb12ea31f2f137322dcd35e379750d13318d6521d7d557989a9c73e`  
		Last Modified: Tue, 16 Oct 2018 12:56:57 GMT  
		Size: 845.9 KB (845906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a97950afff8d9b7263a96992060b43bf115f908bd1f262de6f93c0418cc9817`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693401423272c67e47e2c164426ccd8a7f7c84c1aaa9ccf0db49f23cf10ece20`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa4cd8ea842cbf55631460424eebe375e8955fa33375ba756948f3200aa260b`  
		Last Modified: Wed, 31 Oct 2018 09:18:50 GMT  
		Size: 111.9 MB (111907574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2f5878cb92f7b7cabd53ba68c69652be468fe7e00b7a82ecff33496f1357c7`  
		Last Modified: Wed, 31 Oct 2018 09:18:21 GMT  
		Size: 246.7 KB (246748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7fe3f0758a210ee8428de088c4f9d16e74526003cd6f0e98c680a75db3a4ef`  
		Last Modified: Wed, 31 Oct 2018 10:47:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803d1cd4c5eb68afd59888c8331c88ab25f73430e7b291d2163a14360697f710`  
		Last Modified: Wed, 31 Oct 2018 10:47:52 GMT  
		Size: 26.9 KB (26850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0bb5a5cedbf5e37a6c934bd31da9c868e162e3d812a045d35e90d53ee674b46`  
		Last Modified: Wed, 31 Oct 2018 10:48:47 GMT  
		Size: 31.0 MB (30993453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-webprofile` - linux; arm variant v7

```console
$ docker pull tomee@sha256:c8b919ef0efd7aac1dab08f351a0a4b0f60e4345559bd5293a6947422c58c689
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.1 MB (227074087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:310d8af2df8addecbaceec974548ee33f0c01c693a56ffdee1decb4467e215dd`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:59:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:59:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:59:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:59:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:59:27 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:59:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:00:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:00:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 15:31:33 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 05 May 2018 15:31:34 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 05 May 2018 15:31:34 GMT
WORKDIR /usr/local/tomee
# Sat, 05 May 2018 15:31:35 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 05 May 2018 15:31:39 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Sat, 05 May 2018 15:32:55 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 23 Jan 2019 19:10:24 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 19:10:24 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df26ddf71ea9e82f175e400809b8f06871dd0937c5a90f4ffe95286544a9f719`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 830.3 KB (830332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c21322a9c89724512d6ea5faa10299c60c8a605d6f563c84c28177db8d2770`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2270f04a4be61f52577232813fff92e797d3fc190d52f71411afc26b0911f8e4`  
		Last Modified: Sat, 05 May 2018 13:29:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dc1aba58c8cd285639cac6b03c823e5fcdb91aa8922652e7d9387aaca6fa4`  
		Last Modified: Sat, 05 May 2018 13:29:37 GMT  
		Size: 139.5 MB (139501760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02869ec2bb3864b06abd435610eb6849d5c62426517de1a603ef6fe43c7d3815`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 272.1 KB (272082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b2945e8eb5c51597eeaa0b9140cd51356fdea2bdbc0e85b10b3004a32453fc`  
		Last Modified: Sat, 05 May 2018 15:39:04 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50677ccf4d3bf28f894c2b3e1b114ba522dfb82efd8068fb1536596aa68749a`  
		Last Modified: Sat, 05 May 2018 15:39:04 GMT  
		Size: 26.9 KB (26854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75eee0176f6e54d4c6ea6ebe21126077c3ca484f14eeb58f664484b36b2e802`  
		Last Modified: Sat, 05 May 2018 15:40:11 GMT  
		Size: 31.0 MB (30993453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-webprofile` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:8ca0c84a0b75af57f33ae37ec8f7790addb5a2e4982bd4df8a4ed1a1982a6509
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 MB (201762636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2ded4825412b1c602520febd1252bf1732306bdd8bea4516abf4974431b9faf`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 22:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:09:34 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 22:09:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 22:09:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 22:09:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 22:09:44 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:07:32 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:07:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:13:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:13:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 15:02:52 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 15:02:53 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 15:02:54 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 15:02:55 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 15:03:01 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 30 Oct 2018 15:06:26 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 15:06:33 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 15:06:34 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec37afe1ce9c80cab1c8fdc0d193c9f92f61adf7c60d6bdbc2b01735eac25b6`  
		Last Modified: Tue, 16 Oct 2018 22:27:18 GMT  
		Size: 839.2 KB (839157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776d8d23f1b98b1595b31f6da89774c22c62b8aaebfd909efc61ceb1ed261422`  
		Last Modified: Tue, 16 Oct 2018 22:27:15 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0423ae79bd292339ac64d511157cd27daa8549a458b0458dc17973fbee24f728`  
		Last Modified: Tue, 16 Oct 2018 22:27:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f621179e148c9684831eb304357c88f80f0b271af7ed9ca445ab04fbb1290f`  
		Last Modified: Tue, 30 Oct 2018 09:25:17 GMT  
		Size: 112.8 MB (112753824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65fac7cd4cedf9a714652ad15dccbc910e8c233062e70e577ceda149579218bd`  
		Last Modified: Tue, 30 Oct 2018 09:24:14 GMT  
		Size: 246.7 KB (246684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:658f45b64802a49fa3968aded05068fcceea176e7764bfc44f75538819b46bda`  
		Last Modified: Tue, 30 Oct 2018 15:17:24 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd865f359e9c5e04185fad16d893071c6af945d16cd80615bf873152f0720ad8`  
		Last Modified: Tue, 30 Oct 2018 15:17:25 GMT  
		Size: 26.8 KB (26840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18078f91949bb806fa7a0115be9fe812c9f99f85c95e6b995b10c49eddfa0acb`  
		Last Modified: Tue, 30 Oct 2018 15:19:10 GMT  
		Size: 31.0 MB (30993200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-webprofile` - linux; 386

```console
$ docker pull tomee@sha256:8884fbf7d69f26a316a06025fb53bd5e025ebc459641ac5d68fa7e9396e1d029
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.1 MB (216085616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55e6f960f2dee8521319229bdfda530e65a287fc5d00b590b0ecef4fa3c5f83d`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:30:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 03:36:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 03:36:44 GMT
ENV LANG=C.UTF-8
# Wed, 17 Oct 2018 03:36:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 17 Oct 2018 03:36:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 11:09:42 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 11:09:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 11:10:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 11:10:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:04:12 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:04:13 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:04:13 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:04:14 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:04:17 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 30 Oct 2018 14:05:25 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:05:25 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:05:25 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d8b973c47bc2b9e663e0405a9b6c4923e7edd886f9352807642bd012741c7b`  
		Last Modified: Tue, 16 Oct 2018 21:46:21 GMT  
		Size: 10.8 MB (10752717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc96b1bed2761a443ab819cbb860219f45d0a8bd03334cd84a81ee97399ee0`  
		Last Modified: Tue, 16 Oct 2018 21:46:19 GMT  
		Size: 4.6 MB (4555326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf8ff73b0a24a2d2c5ebfbcc6b8301349388a2562b5b1832e7db1ac71ae3d96`  
		Last Modified: Wed, 17 Oct 2018 03:51:09 GMT  
		Size: 861.8 KB (861772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a50ad6c047d63f8288897510a2551fec276a69dd76441d34df7ae5dbfbc757`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba1dba5b34132ca34ccd824ca39c484e958be83902abb87c823d8aa6965e7da`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2582ffd7014adc4b600f142afd34bd45a6f1084200f83de9372ac5541e2802`  
		Last Modified: Tue, 30 Oct 2018 11:16:02 GMT  
		Size: 122.6 MB (122609361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849a60206ec57d15465bf6d6ac94195db298a6ca94f0e961c2cef7dd8e6f67f5`  
		Last Modified: Tue, 30 Oct 2018 11:15:38 GMT  
		Size: 246.7 KB (246683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91148153248302d0db1f1ee32a9c6394bf20b9338edcd6f16f83d6db8dc1976`  
		Last Modified: Tue, 30 Oct 2018 14:11:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06e05aa7c6d7ac985d7fe74cf6ea0525de148f3f0085766586b9627695f2aba`  
		Last Modified: Tue, 30 Oct 2018 14:11:28 GMT  
		Size: 26.8 KB (26812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:104dfe284588a2da1b1633a4bf48fc6137f884fc0b777979c21c4bbe947f9771`  
		Last Modified: Tue, 30 Oct 2018 14:12:22 GMT  
		Size: 31.0 MB (30993195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-webprofile` - linux; ppc64le

```console
$ docker pull tomee@sha256:2175ca2888d880d87a14e3411c7046a9fd38f5c388f311c8acdab225115affeb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.5 MB (206493320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f3122e46f78bf1ff1ec540610016e2490a38a3202e5540d304b128e53c480cb`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:21:55 GMT
ADD file:a59c24e738306d5a76eda32c17347983843a394953e466fc10b997cf1398c4ed in / 
# Tue, 16 Oct 2018 08:21:57 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:48:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:48:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 15:15:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:15:24 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 15:15:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 15:15:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 15:15:44 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 15:15:52 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:43:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:43:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:47:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:47:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:30:20 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:30:23 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:30:24 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:30:25 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:30:31 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 31 Oct 2018 10:31:54 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:31:55 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:31:56 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:93d83403cab11249f38bea785ef4fc2d2b4cf9dd1295ad181f3c457ab4d4ea4b`  
		Last Modified: Tue, 16 Oct 2018 08:30:05 GMT  
		Size: 45.6 MB (45595514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ec9429d785df2991e77ea98b51ceeaa4ba80bcb51ce5d583e298525463146a`  
		Last Modified: Tue, 16 Oct 2018 11:06:51 GMT  
		Size: 9.9 MB (9943336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2367a02f5abb1557873986462bae2faef06a1b1fc0bd094d8f2a1dfdae33798e`  
		Last Modified: Tue, 16 Oct 2018 11:06:48 GMT  
		Size: 4.3 MB (4289821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19512a51eca885874336832af8357c995b28646c233136ff5a484d748af437a`  
		Last Modified: Tue, 16 Oct 2018 15:34:57 GMT  
		Size: 848.3 KB (848330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009ac02b22eca01c54f895f29b03222f698522307cb6a3fcbe1e55b97e123ed9`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea4543ef0daeccff13d600a6def3496001fdcc344ec2c9a6d63621c9a1dce0f`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050d1332dd2b829ac78cf297c3c9b062cb9f00311fcf7c43022310fe8737e3e2`  
		Last Modified: Wed, 31 Oct 2018 08:20:04 GMT  
		Size: 114.5 MB (114548674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2385b91212622165daaa25696049c403a6a3c312ae1e51388f930ff39a7956`  
		Last Modified: Wed, 31 Oct 2018 08:19:30 GMT  
		Size: 246.8 KB (246772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe2fc2806b97676673ae4f61d5e0076d04d6769cc0657b595cb42066197590a`  
		Last Modified: Wed, 31 Oct 2018 10:40:47 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5089ea374c810a8fa46a343591f73671d550669f445583f2dc527a4e2642b29b`  
		Last Modified: Wed, 31 Oct 2018 10:40:47 GMT  
		Size: 26.9 KB (26855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac8f33fe2285d5803206761c447a502d55dd7305692ac5612307f27ffbdd8a4`  
		Last Modified: Wed, 31 Oct 2018 10:41:59 GMT  
		Size: 31.0 MB (30993456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-webprofile` - linux; s390x

```console
$ docker pull tomee@sha256:665d6684a6db74efa5a669956921a5bddb47279c45398451be8a06158117a4ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.1 MB (206102584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b342bca62e6ff2116ca54bfee9590750956175267ff3f7fe8bee51c3035721`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 13:06:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:06:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:06:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 12:09:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 12:09:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 12:09:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 12:09:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:13:58 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:13:58 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:13:59 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:14:01 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:14:05 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 30 Oct 2018 14:14:56 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:14:56 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:14:56 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadb55fe60f3a83b7078ad97271acf0fd19b4414edf56bfbb07929744d5f7dce`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 863.7 KB (863652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecb5fac3a19302c69f5ee9494fd6c23d3d5dd418d59b9ea6a400cde0b0ae69e`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3565def30ebfc0c8c4a44f336ec11f69a92101319367ead0b1272905de65b629`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d108ec790a13528613333148f37b0b32735ca046ddfe165916fbbdaa536b9e`  
		Last Modified: Tue, 30 Oct 2018 12:13:07 GMT  
		Size: 114.1 MB (114137466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae3dd31465d93acd9f4060b71c585db6d729f83ab4ed961ec9a5356a4b80d3`  
		Last Modified: Tue, 30 Oct 2018 12:12:49 GMT  
		Size: 246.7 KB (246718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29f8d77836e77bcb36fb3d909583bf4af2d3cc4007daa9a9dedb4422b5449cc`  
		Last Modified: Tue, 30 Oct 2018 14:18:18 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7d8f6ea0e36ede702a1d32923b66f7faae5092560e40a90d9f2a2080d5655b`  
		Last Modified: Tue, 30 Oct 2018 14:18:19 GMT  
		Size: 26.8 KB (26823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccecd81fc8128400e1f5ef12fec309d791e814b759e080c9d2a4a7a10c6e4ea2`  
		Last Modified: Tue, 30 Oct 2018 14:18:58 GMT  
		Size: 31.0 MB (30993232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:8-jre-7.0.4-plume`

```console
$ docker pull tomee@sha256:7118c2d1958a8878ec829a96fb8f37b549b1c26adaab8496eed41e841580f834
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

### `tomee:8-jre-7.0.4-plume` - linux; amd64

```console
$ docker pull tomee@sha256:7dc752937269ceef97b001ba25b5cde12b79788b1eca8014ba232949a4095bbd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.4 MB (247437330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02a4aa91822815c83fd0a16e3da052679f10223c36a193d298837b9c978a5953`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:28:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:28:06 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:28:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:28:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:30:29 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:30:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:31:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:31:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 05:31:41 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 05:31:42 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 05:31:42 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 05:34:45 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 05:34:50 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 05:34:56 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.0.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.0.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 05:34:56 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 05:34:56 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21441932c53a4078f379c7c6d299370a6eaee79c862a29db2e25fec39106779`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 852.9 KB (852895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa76b0d2509232e863931fc1743f1ca2dba3bebdf5f72b4280fae59536303ce7`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346fd8610875e8ba7753030b5c197ad56fe76aa4e45d1e70e4b58366e93177c3`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca5d6af9022c9c3b436792a01c58dd29490430d28b04f70385f308e3bdae8a6`  
		Last Modified: Mon, 29 Oct 2018 23:40:07 GMT  
		Size: 122.1 MB (122121999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06cfa2cea32b36c8f5dcc8605166d1f8b72cf02e44163dbf7d14e0379286b55`  
		Last Modified: Mon, 29 Oct 2018 23:39:44 GMT  
		Size: 246.7 KB (246728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c094b3bc8129299958e3103ea5962297e112f8623257dd6d3d72fd739b4ed2dc`  
		Last Modified: Tue, 30 Oct 2018 05:44:37 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0eb5d22768e01d3ae538541bbef24179c0f6bcabe15824faa85c70579403e0`  
		Last Modified: Tue, 30 Oct 2018 05:45:50 GMT  
		Size: 67.0 KB (66961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f92192c78ce26face5f85f7084d2a0ea8b65801e397da97e7441a211f8dc99`  
		Last Modified: Tue, 30 Oct 2018 05:45:55 GMT  
		Size: 63.8 MB (63762213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.4-plume` - linux; arm variant v5

```console
$ docker pull tomee@sha256:37ee8286fcd2c0a8d89f507c7e79a0883c71bc38f8a72923600bbc74c1648293
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.8 MB (234827314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f95edcb7a912043a063341fcf487fb95359d563b109db229c63bff084120ab2c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:59 GMT
ADD file:9400a194c6dcf24f439664aab3a28cb7dbf93753b71d2756dbaf872d294fbb8e in / 
# Tue, 16 Oct 2018 08:55:00 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:00:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:00:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:47:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 12:47:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 12:47:32 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 10:04:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 10:04:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 10:05:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 10:06:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:39:10 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:39:11 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:39:11 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:42:06 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:42:10 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 31 Oct 2018 10:42:23 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.0.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.0.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:42:24 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:42:24 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:67cd7720dfa3de15234643bf308008813fd129e03429f026775738064b364e24`  
		Last Modified: Tue, 16 Oct 2018 09:04:05 GMT  
		Size: 44.0 MB (44033067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd276b766fa97ab74e113c92ed57093015cfc9c9030be8ba22b5e752cd8e8877`  
		Last Modified: Tue, 16 Oct 2018 10:09:36 GMT  
		Size: 9.8 MB (9810396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b000ac5a1a22a2dea4538586726677f91c42079cf289a8eb88fdf9c65fda7f6`  
		Last Modified: Tue, 16 Oct 2018 10:09:35 GMT  
		Size: 4.2 MB (4153754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cbc8dc4eb12ea31f2f137322dcd35e379750d13318d6521d7d557989a9c73e`  
		Last Modified: Tue, 16 Oct 2018 12:56:57 GMT  
		Size: 845.9 KB (845906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a97950afff8d9b7263a96992060b43bf115f908bd1f262de6f93c0418cc9817`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693401423272c67e47e2c164426ccd8a7f7c84c1aaa9ccf0db49f23cf10ece20`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa4cd8ea842cbf55631460424eebe375e8955fa33375ba756948f3200aa260b`  
		Last Modified: Wed, 31 Oct 2018 09:18:50 GMT  
		Size: 111.9 MB (111907574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2f5878cb92f7b7cabd53ba68c69652be468fe7e00b7a82ecff33496f1357c7`  
		Last Modified: Wed, 31 Oct 2018 09:18:21 GMT  
		Size: 246.7 KB (246748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7fe3f0758a210ee8428de088c4f9d16e74526003cd6f0e98c680a75db3a4ef`  
		Last Modified: Wed, 31 Oct 2018 10:47:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a996192996ebfb224220a874f072e475829676d0085f8292f3f7ed91d851d6a6`  
		Last Modified: Wed, 31 Oct 2018 10:48:58 GMT  
		Size: 67.0 KB (66998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2322d503311cc232dadbd734f7428a502f069bb3802b6d1bd746ad1e598538a5`  
		Last Modified: Wed, 31 Oct 2018 10:49:07 GMT  
		Size: 63.8 MB (63762309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.4-plume` - linux; arm variant v7

```console
$ docker pull tomee@sha256:e13ba753189d55e62e1beaf9163c909e6b466dd988008d3d8c30c2459d72b78c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 MB (259883059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057b900a0327476d9c7382c0d0336fe70f6c927e37fdacd66658761afe55ceec`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:59:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:59:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:59:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:59:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:59:27 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:59:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:00:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:00:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 15:31:33 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 05 May 2018 15:31:34 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 05 May 2018 15:31:34 GMT
WORKDIR /usr/local/tomee
# Sat, 05 May 2018 15:33:15 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 05 May 2018 15:33:19 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Sat, 05 May 2018 15:37:55 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.0.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.0.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 23 Jan 2019 19:10:29 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 19:10:30 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df26ddf71ea9e82f175e400809b8f06871dd0937c5a90f4ffe95286544a9f719`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 830.3 KB (830332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c21322a9c89724512d6ea5faa10299c60c8a605d6f563c84c28177db8d2770`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2270f04a4be61f52577232813fff92e797d3fc190d52f71411afc26b0911f8e4`  
		Last Modified: Sat, 05 May 2018 13:29:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dc1aba58c8cd285639cac6b03c823e5fcdb91aa8922652e7d9387aaca6fa4`  
		Last Modified: Sat, 05 May 2018 13:29:37 GMT  
		Size: 139.5 MB (139501760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02869ec2bb3864b06abd435610eb6849d5c62426517de1a603ef6fe43c7d3815`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 272.1 KB (272082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b2945e8eb5c51597eeaa0b9140cd51356fdea2bdbc0e85b10b3004a32453fc`  
		Last Modified: Sat, 05 May 2018 15:39:04 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ea1b50ffe80218f2c1fa7833cc652669d1913cd0332790b2f7ee4518133965`  
		Last Modified: Sat, 05 May 2018 15:40:24 GMT  
		Size: 67.0 KB (66983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9be981d4ab9eb8f1769f4c2b8acfeebeca291d7cb9b19de8210b2ca3f3d1bc`  
		Last Modified: Sat, 05 May 2018 15:44:41 GMT  
		Size: 63.8 MB (63762296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.4-plume` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:b2304b0001df24fa1f73cd039a562fd6d3fc455840b0acdc217a3c8324932888
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v1+json`
-	Total Size: **234.6 MB (234571764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `d2f96fc719cc91894f1744c50dc386941bd6853d01b1ce04338ab80474a4aae2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 22:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:09:34 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 22:09:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 22:09:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 22:09:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 22:09:44 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:07:32 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:07:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:13:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:13:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 15:02:52 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 15:02:53 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 15:02:54 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 15:07:07 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 15:07:13 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 15:07:31 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.0.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.0.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 15:07:34 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 15:07:35 GMT
RUN ["\/bin\/sh","-c","#(nop) ","CMD [\"catalina.sh\" \"run\"]"]
```

-	Layers:
	-	`sha256:a3ed95caeb02ffe68cdd9fd84406680ae93d633cb16422d00e8a7c22955b46d4`  
		Last Modified: Sat, 14 Nov 2015 09:09:44 GMT  
		Size: 32.0 B  
		MIME: application/octet-stream
	-	`sha256:9de8fc951f946b2ffbc94ff33ed806eceecaf1ed51c2ee762790934a261815a9`  
		Last Modified: Tue, 30 Oct 2018 15:19:38 GMT  
		Size: 63.8 MB (63762159 bytes)  
		MIME: application/octet-stream
	-	`sha256:0b74c7ea210464c5b79f3489cbe43593dfe03dc099f9fa62c3018658bad80aec`  
		Last Modified: Tue, 30 Oct 2018 15:19:28 GMT  
		Size: 67.0 KB (66977 bytes)  
		MIME: application/octet-stream
	-	`sha256:658f45b64802a49fa3968aded05068fcceea176e7764bfc44f75538819b46bda`  
		Last Modified: Tue, 30 Oct 2018 15:17:24 GMT  
		Size: 151.0 B  
		MIME: application/octet-stream
	-	`sha256:65fac7cd4cedf9a714652ad15dccbc910e8c233062e70e577ceda149579218bd`  
		Last Modified: Tue, 30 Oct 2018 09:24:14 GMT  
		Size: 246.7 KB (246684 bytes)  
		MIME: application/octet-stream
	-	`sha256:d2f621179e148c9684831eb304357c88f80f0b271af7ed9ca445ab04fbb1290f`  
		Last Modified: Tue, 30 Oct 2018 09:25:17 GMT  
		Size: 112.8 MB (112753824 bytes)  
		MIME: application/octet-stream
	-	`sha256:0423ae79bd292339ac64d511157cd27daa8549a458b0458dc17973fbee24f728`  
		Last Modified: Tue, 16 Oct 2018 22:27:16 GMT  
		Size: 131.0 B  
		MIME: application/octet-stream
	-	`sha256:776d8d23f1b98b1595b31f6da89774c22c62b8aaebfd909efc61ceb1ed261422`  
		Last Modified: Tue, 16 Oct 2018 22:27:15 GMT  
		Size: 249.0 B  
		MIME: application/octet-stream
	-	`sha256:eec37afe1ce9c80cab1c8fdc0d193c9f92f61adf7c60d6bdbc2b01735eac25b6`  
		Last Modified: Tue, 16 Oct 2018 22:27:18 GMT  
		Size: 839.2 KB (839157 bytes)  
		MIME: application/octet-stream
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/octet-stream
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/octet-stream
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/octet-stream

### `tomee:8-jre-7.0.4-plume` - linux; 386

```console
$ docker pull tomee@sha256:bcde7db07e92591a5d20c36f97009b55e5aa5e98c6b958470a1eadce113e22c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248894717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be0508f1e9cc1b49625a51de2c35e794c0d455db379bce33b3f303d4272119e2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:30:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 03:36:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 03:36:44 GMT
ENV LANG=C.UTF-8
# Wed, 17 Oct 2018 03:36:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 17 Oct 2018 03:36:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 11:09:42 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 11:09:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 11:10:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 11:10:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:04:12 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:04:13 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:04:13 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:05:37 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:05:41 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 14:05:46 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.0.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.0.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:05:47 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:05:47 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d8b973c47bc2b9e663e0405a9b6c4923e7edd886f9352807642bd012741c7b`  
		Last Modified: Tue, 16 Oct 2018 21:46:21 GMT  
		Size: 10.8 MB (10752717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc96b1bed2761a443ab819cbb860219f45d0a8bd03334cd84a81ee97399ee0`  
		Last Modified: Tue, 16 Oct 2018 21:46:19 GMT  
		Size: 4.6 MB (4555326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf8ff73b0a24a2d2c5ebfbcc6b8301349388a2562b5b1832e7db1ac71ae3d96`  
		Last Modified: Wed, 17 Oct 2018 03:51:09 GMT  
		Size: 861.8 KB (861772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a50ad6c047d63f8288897510a2551fec276a69dd76441d34df7ae5dbfbc757`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba1dba5b34132ca34ccd824ca39c484e958be83902abb87c823d8aa6965e7da`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2582ffd7014adc4b600f142afd34bd45a6f1084200f83de9372ac5541e2802`  
		Last Modified: Tue, 30 Oct 2018 11:16:02 GMT  
		Size: 122.6 MB (122609361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849a60206ec57d15465bf6d6ac94195db298a6ca94f0e961c2cef7dd8e6f67f5`  
		Last Modified: Tue, 30 Oct 2018 11:15:38 GMT  
		Size: 246.7 KB (246683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91148153248302d0db1f1ee32a9c6394bf20b9338edcd6f16f83d6db8dc1976`  
		Last Modified: Tue, 30 Oct 2018 14:11:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413fcc578b4fe28671ae5d77e471037700e69039b49bf9f53472a5044cf3ef57`  
		Last Modified: Tue, 30 Oct 2018 14:12:34 GMT  
		Size: 66.9 KB (66943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89df26375fd32dda41e97f90eb4581d6645f505a72a96fec3b7a80374e1e3d2a`  
		Last Modified: Tue, 30 Oct 2018 14:12:40 GMT  
		Size: 63.8 MB (63762165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.4-plume` - linux; ppc64le

```console
$ docker pull tomee@sha256:3df22a9ca0bc8ee93e2110010bf8dc1d1558a2dbc53a7133f29ac39fcc7a086e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.3 MB (239302328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a22f5be7dfb31d8d3e9bb87f4772382e100435bd0791504bf4df6f61c74f3a7a`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:21:55 GMT
ADD file:a59c24e738306d5a76eda32c17347983843a394953e466fc10b997cf1398c4ed in / 
# Tue, 16 Oct 2018 08:21:57 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:48:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:48:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 15:15:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:15:24 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 15:15:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 15:15:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 15:15:44 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 15:15:52 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:43:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:43:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:47:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:47:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:30:20 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:30:23 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:30:24 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:32:06 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:32:12 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 31 Oct 2018 10:32:22 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.0.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.0.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:32:25 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:32:25 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:93d83403cab11249f38bea785ef4fc2d2b4cf9dd1295ad181f3c457ab4d4ea4b`  
		Last Modified: Tue, 16 Oct 2018 08:30:05 GMT  
		Size: 45.6 MB (45595514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ec9429d785df2991e77ea98b51ceeaa4ba80bcb51ce5d583e298525463146a`  
		Last Modified: Tue, 16 Oct 2018 11:06:51 GMT  
		Size: 9.9 MB (9943336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2367a02f5abb1557873986462bae2faef06a1b1fc0bd094d8f2a1dfdae33798e`  
		Last Modified: Tue, 16 Oct 2018 11:06:48 GMT  
		Size: 4.3 MB (4289821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19512a51eca885874336832af8357c995b28646c233136ff5a484d748af437a`  
		Last Modified: Tue, 16 Oct 2018 15:34:57 GMT  
		Size: 848.3 KB (848330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009ac02b22eca01c54f895f29b03222f698522307cb6a3fcbe1e55b97e123ed9`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea4543ef0daeccff13d600a6def3496001fdcc344ec2c9a6d63621c9a1dce0f`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050d1332dd2b829ac78cf297c3c9b062cb9f00311fcf7c43022310fe8737e3e2`  
		Last Modified: Wed, 31 Oct 2018 08:20:04 GMT  
		Size: 114.5 MB (114548674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2385b91212622165daaa25696049c403a6a3c312ae1e51388f930ff39a7956`  
		Last Modified: Wed, 31 Oct 2018 08:19:30 GMT  
		Size: 246.8 KB (246772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe2fc2806b97676673ae4f61d5e0076d04d6769cc0657b595cb42066197590a`  
		Last Modified: Wed, 31 Oct 2018 10:40:47 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c177061e19cd0ae03445c0259dc1096e15717f6e8763846c4d8281a1439fe1`  
		Last Modified: Wed, 31 Oct 2018 10:42:15 GMT  
		Size: 67.0 KB (66988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b82d54ed1571394b8188b3fe921f2d04db234445b7ac3a7ee8ceaec28da678a`  
		Last Modified: Wed, 31 Oct 2018 10:42:21 GMT  
		Size: 63.8 MB (63762331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.4-plume` - linux; s390x

```console
$ docker pull tomee@sha256:55a3cf0b2a212344be9916bcb95a450c40a1f1e851f3922fb0269faec9da028a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.9 MB (238911637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22aa7447cfda9782bc35a8fd0de4f4ea71a5d0d03fb3b3ab091fb52c2782a873`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 13:06:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:06:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:06:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 12:09:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 12:09:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 12:09:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 12:09:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:13:58 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:13:58 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:13:59 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:15:05 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:15:09 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 14:15:13 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.0.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.0.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:15:14 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:15:14 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadb55fe60f3a83b7078ad97271acf0fd19b4414edf56bfbb07929744d5f7dce`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 863.7 KB (863652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecb5fac3a19302c69f5ee9494fd6c23d3d5dd418d59b9ea6a400cde0b0ae69e`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3565def30ebfc0c8c4a44f336ec11f69a92101319367ead0b1272905de65b629`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d108ec790a13528613333148f37b0b32735ca046ddfe165916fbbdaa536b9e`  
		Last Modified: Tue, 30 Oct 2018 12:13:07 GMT  
		Size: 114.1 MB (114137466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae3dd31465d93acd9f4060b71c585db6d729f83ab4ed961ec9a5356a4b80d3`  
		Last Modified: Tue, 30 Oct 2018 12:12:49 GMT  
		Size: 246.7 KB (246718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29f8d77836e77bcb36fb3d909583bf4af2d3cc4007daa9a9dedb4422b5449cc`  
		Last Modified: Tue, 30 Oct 2018 14:18:18 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1613f2f9b03d2ffb208952ab90aec66974189f6f04dfebb898b8fbafa75886cf`  
		Last Modified: Tue, 30 Oct 2018 14:19:04 GMT  
		Size: 66.9 KB (66944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8acaa66dde2f9af153cec69c0426619ae7f453a1afebfc597ac93e636861c06`  
		Last Modified: Tue, 30 Oct 2018 14:19:10 GMT  
		Size: 63.8 MB (63762164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:8-jre-7.0.4-plus`

```console
$ docker pull tomee@sha256:f91d4678ed62278cf80c47ca3f0d60344ba9406de7a9ed801edc4087cb4043f6
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

### `tomee:8-jre-7.0.4-plus` - linux; amd64

```console
$ docker pull tomee@sha256:0fc1898d57aaa17b3fe55644d544b0fd882f8d5a50db53215a569f1b4ebd736b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.5 MB (240470945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a1bddf905206602e3650fb1d6fa0a010da8e5c7963a6174a5f19d4f800438a0`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:28:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:28:06 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:28:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:28:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:30:29 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:30:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:31:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:31:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 05:31:41 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 05:31:42 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 05:31:42 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 05:34:45 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 05:34:50 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 05:35:32 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.0.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.0.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 05:35:32 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 05:35:32 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21441932c53a4078f379c7c6d299370a6eaee79c862a29db2e25fec39106779`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 852.9 KB (852895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa76b0d2509232e863931fc1743f1ca2dba3bebdf5f72b4280fae59536303ce7`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346fd8610875e8ba7753030b5c197ad56fe76aa4e45d1e70e4b58366e93177c3`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca5d6af9022c9c3b436792a01c58dd29490430d28b04f70385f308e3bdae8a6`  
		Last Modified: Mon, 29 Oct 2018 23:40:07 GMT  
		Size: 122.1 MB (122121999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06cfa2cea32b36c8f5dcc8605166d1f8b72cf02e44163dbf7d14e0379286b55`  
		Last Modified: Mon, 29 Oct 2018 23:39:44 GMT  
		Size: 246.7 KB (246728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c094b3bc8129299958e3103ea5962297e112f8623257dd6d3d72fd739b4ed2dc`  
		Last Modified: Tue, 30 Oct 2018 05:44:37 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0eb5d22768e01d3ae538541bbef24179c0f6bcabe15824faa85c70579403e0`  
		Last Modified: Tue, 30 Oct 2018 05:45:50 GMT  
		Size: 67.0 KB (66961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aeb502bf4faa96a3c9bde983e5d371d295f5b71e63c2b3dfed951d0e2335250`  
		Last Modified: Tue, 30 Oct 2018 05:46:17 GMT  
		Size: 56.8 MB (56795828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.4-plus` - linux; arm variant v5

```console
$ docker pull tomee@sha256:5dafad48b800f61997bda8932faee71d4a2ede6aa0873ae7fcab04e649311e59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.9 MB (227860866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df42075de215b1587beef030382e1c737cea3cc9ded92916f645620f33e3eda5`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:59 GMT
ADD file:9400a194c6dcf24f439664aab3a28cb7dbf93753b71d2756dbaf872d294fbb8e in / 
# Tue, 16 Oct 2018 08:55:00 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:00:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:00:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:47:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 12:47:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 12:47:32 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 10:04:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 10:04:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 10:05:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 10:06:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:39:10 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:39:11 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:39:11 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:42:06 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:42:10 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 31 Oct 2018 10:42:51 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.0.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.0.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:42:52 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:42:52 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:67cd7720dfa3de15234643bf308008813fd129e03429f026775738064b364e24`  
		Last Modified: Tue, 16 Oct 2018 09:04:05 GMT  
		Size: 44.0 MB (44033067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd276b766fa97ab74e113c92ed57093015cfc9c9030be8ba22b5e752cd8e8877`  
		Last Modified: Tue, 16 Oct 2018 10:09:36 GMT  
		Size: 9.8 MB (9810396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b000ac5a1a22a2dea4538586726677f91c42079cf289a8eb88fdf9c65fda7f6`  
		Last Modified: Tue, 16 Oct 2018 10:09:35 GMT  
		Size: 4.2 MB (4153754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cbc8dc4eb12ea31f2f137322dcd35e379750d13318d6521d7d557989a9c73e`  
		Last Modified: Tue, 16 Oct 2018 12:56:57 GMT  
		Size: 845.9 KB (845906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a97950afff8d9b7263a96992060b43bf115f908bd1f262de6f93c0418cc9817`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693401423272c67e47e2c164426ccd8a7f7c84c1aaa9ccf0db49f23cf10ece20`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa4cd8ea842cbf55631460424eebe375e8955fa33375ba756948f3200aa260b`  
		Last Modified: Wed, 31 Oct 2018 09:18:50 GMT  
		Size: 111.9 MB (111907574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2f5878cb92f7b7cabd53ba68c69652be468fe7e00b7a82ecff33496f1357c7`  
		Last Modified: Wed, 31 Oct 2018 09:18:21 GMT  
		Size: 246.7 KB (246748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7fe3f0758a210ee8428de088c4f9d16e74526003cd6f0e98c680a75db3a4ef`  
		Last Modified: Wed, 31 Oct 2018 10:47:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a996192996ebfb224220a874f072e475829676d0085f8292f3f7ed91d851d6a6`  
		Last Modified: Wed, 31 Oct 2018 10:48:58 GMT  
		Size: 67.0 KB (66998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a89ba0010b0a2b517208363a3d68bfe6c6439b82fc5741b317720b77ca6f87`  
		Last Modified: Wed, 31 Oct 2018 10:49:26 GMT  
		Size: 56.8 MB (56795861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.4-plus` - linux; arm variant v7

```console
$ docker pull tomee@sha256:cd882e8a5ed062bca5a3d6b20821a49be3afa5bf32751674bea951f8f1a0a34c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252916689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7c9d666dc4cd7a07288562e83a1b4d2b8816da052744fc4f2756ad39e8a0de`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:59:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:59:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:59:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:59:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:59:27 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:59:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:00:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:00:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 15:31:33 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 05 May 2018 15:31:34 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 05 May 2018 15:31:34 GMT
WORKDIR /usr/local/tomee
# Sat, 05 May 2018 15:33:15 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 05 May 2018 15:33:19 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Sat, 05 May 2018 15:38:28 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.0.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.0.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 23 Jan 2019 19:10:35 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 19:10:36 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df26ddf71ea9e82f175e400809b8f06871dd0937c5a90f4ffe95286544a9f719`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 830.3 KB (830332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c21322a9c89724512d6ea5faa10299c60c8a605d6f563c84c28177db8d2770`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2270f04a4be61f52577232813fff92e797d3fc190d52f71411afc26b0911f8e4`  
		Last Modified: Sat, 05 May 2018 13:29:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dc1aba58c8cd285639cac6b03c823e5fcdb91aa8922652e7d9387aaca6fa4`  
		Last Modified: Sat, 05 May 2018 13:29:37 GMT  
		Size: 139.5 MB (139501760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02869ec2bb3864b06abd435610eb6849d5c62426517de1a603ef6fe43c7d3815`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 272.1 KB (272082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b2945e8eb5c51597eeaa0b9140cd51356fdea2bdbc0e85b10b3004a32453fc`  
		Last Modified: Sat, 05 May 2018 15:39:04 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ea1b50ffe80218f2c1fa7833cc652669d1913cd0332790b2f7ee4518133965`  
		Last Modified: Sat, 05 May 2018 15:40:24 GMT  
		Size: 67.0 KB (66983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d4544af45fabd7e6595e8c8f4ded2910646ff1300ed7077d49fa5b8c3d4ed5`  
		Last Modified: Sat, 05 May 2018 15:45:06 GMT  
		Size: 56.8 MB (56795926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.4-plus` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:c68d7b6b6170ec59aab3d09c5ae0bd96ac6368e0fc3a3fe3b8e123b2b43e04d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227605406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656e0b1acf230245707ece2991c7536adba6e25c971b3178e6d4f436325b3ea2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 22:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:09:34 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 22:09:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 22:09:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 22:09:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 22:09:44 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:07:32 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:07:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:13:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:13:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 15:02:52 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 15:02:53 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 15:02:54 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 15:07:07 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 15:07:13 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 15:08:16 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.0.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.0.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 15:08:20 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 15:08:20 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec37afe1ce9c80cab1c8fdc0d193c9f92f61adf7c60d6bdbc2b01735eac25b6`  
		Last Modified: Tue, 16 Oct 2018 22:27:18 GMT  
		Size: 839.2 KB (839157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776d8d23f1b98b1595b31f6da89774c22c62b8aaebfd909efc61ceb1ed261422`  
		Last Modified: Tue, 16 Oct 2018 22:27:15 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0423ae79bd292339ac64d511157cd27daa8549a458b0458dc17973fbee24f728`  
		Last Modified: Tue, 16 Oct 2018 22:27:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f621179e148c9684831eb304357c88f80f0b271af7ed9ca445ab04fbb1290f`  
		Last Modified: Tue, 30 Oct 2018 09:25:17 GMT  
		Size: 112.8 MB (112753824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65fac7cd4cedf9a714652ad15dccbc910e8c233062e70e577ceda149579218bd`  
		Last Modified: Tue, 30 Oct 2018 09:24:14 GMT  
		Size: 246.7 KB (246684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:658f45b64802a49fa3968aded05068fcceea176e7764bfc44f75538819b46bda`  
		Last Modified: Tue, 30 Oct 2018 15:17:24 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b74c7ea210464c5b79f3489cbe43593dfe03dc099f9fa62c3018658bad80aec`  
		Last Modified: Tue, 30 Oct 2018 15:19:28 GMT  
		Size: 67.0 KB (66977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7631aaadc492285e7458dc3f64f694a36c05d7decf129d384182892399edd3a7`  
		Last Modified: Tue, 30 Oct 2018 15:20:05 GMT  
		Size: 56.8 MB (56795833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.4-plus` - linux; 386

```console
$ docker pull tomee@sha256:0bffc7d5bc0228f541045d0ce877d98534c7801fe11c250602a5039fd8b48a69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241928369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c178c153d7bf70134480661917ed0df07c24d5173eeed93aa31dbe5812c5825`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:30:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 03:36:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 03:36:44 GMT
ENV LANG=C.UTF-8
# Wed, 17 Oct 2018 03:36:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 17 Oct 2018 03:36:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 11:09:42 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 11:09:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 11:10:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 11:10:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:04:12 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:04:13 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:04:13 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:05:37 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:05:41 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 14:06:05 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.0.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.0.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:06:06 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:06:06 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d8b973c47bc2b9e663e0405a9b6c4923e7edd886f9352807642bd012741c7b`  
		Last Modified: Tue, 16 Oct 2018 21:46:21 GMT  
		Size: 10.8 MB (10752717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc96b1bed2761a443ab819cbb860219f45d0a8bd03334cd84a81ee97399ee0`  
		Last Modified: Tue, 16 Oct 2018 21:46:19 GMT  
		Size: 4.6 MB (4555326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf8ff73b0a24a2d2c5ebfbcc6b8301349388a2562b5b1832e7db1ac71ae3d96`  
		Last Modified: Wed, 17 Oct 2018 03:51:09 GMT  
		Size: 861.8 KB (861772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a50ad6c047d63f8288897510a2551fec276a69dd76441d34df7ae5dbfbc757`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba1dba5b34132ca34ccd824ca39c484e958be83902abb87c823d8aa6965e7da`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2582ffd7014adc4b600f142afd34bd45a6f1084200f83de9372ac5541e2802`  
		Last Modified: Tue, 30 Oct 2018 11:16:02 GMT  
		Size: 122.6 MB (122609361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849a60206ec57d15465bf6d6ac94195db298a6ca94f0e961c2cef7dd8e6f67f5`  
		Last Modified: Tue, 30 Oct 2018 11:15:38 GMT  
		Size: 246.7 KB (246683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91148153248302d0db1f1ee32a9c6394bf20b9338edcd6f16f83d6db8dc1976`  
		Last Modified: Tue, 30 Oct 2018 14:11:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413fcc578b4fe28671ae5d77e471037700e69039b49bf9f53472a5044cf3ef57`  
		Last Modified: Tue, 30 Oct 2018 14:12:34 GMT  
		Size: 66.9 KB (66943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266f0b0340a5bcb51477c8496e954a5d449ca1a1fc776e23dc113cd7fe16dea3`  
		Last Modified: Tue, 30 Oct 2018 14:13:03 GMT  
		Size: 56.8 MB (56795817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.4-plus` - linux; ppc64le

```console
$ docker pull tomee@sha256:a95afe9c06d4c0683a57f6bb2c55ed27aa0f1bff0725b606b951e0105ef1f872
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.3 MB (232335876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:845c0fef3b007c4450e2f2db5090aad7d25db57513fa4d916b63d62a5c8765e0`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:21:55 GMT
ADD file:a59c24e738306d5a76eda32c17347983843a394953e466fc10b997cf1398c4ed in / 
# Tue, 16 Oct 2018 08:21:57 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:48:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:48:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 15:15:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:15:24 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 15:15:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 15:15:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 15:15:44 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 15:15:52 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:43:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:43:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:47:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:47:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:30:20 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:30:23 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:30:24 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:32:06 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:32:12 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 31 Oct 2018 10:32:51 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.0.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.0.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:32:52 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:32:53 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:93d83403cab11249f38bea785ef4fc2d2b4cf9dd1295ad181f3c457ab4d4ea4b`  
		Last Modified: Tue, 16 Oct 2018 08:30:05 GMT  
		Size: 45.6 MB (45595514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ec9429d785df2991e77ea98b51ceeaa4ba80bcb51ce5d583e298525463146a`  
		Last Modified: Tue, 16 Oct 2018 11:06:51 GMT  
		Size: 9.9 MB (9943336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2367a02f5abb1557873986462bae2faef06a1b1fc0bd094d8f2a1dfdae33798e`  
		Last Modified: Tue, 16 Oct 2018 11:06:48 GMT  
		Size: 4.3 MB (4289821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19512a51eca885874336832af8357c995b28646c233136ff5a484d748af437a`  
		Last Modified: Tue, 16 Oct 2018 15:34:57 GMT  
		Size: 848.3 KB (848330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009ac02b22eca01c54f895f29b03222f698522307cb6a3fcbe1e55b97e123ed9`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea4543ef0daeccff13d600a6def3496001fdcc344ec2c9a6d63621c9a1dce0f`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050d1332dd2b829ac78cf297c3c9b062cb9f00311fcf7c43022310fe8737e3e2`  
		Last Modified: Wed, 31 Oct 2018 08:20:04 GMT  
		Size: 114.5 MB (114548674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2385b91212622165daaa25696049c403a6a3c312ae1e51388f930ff39a7956`  
		Last Modified: Wed, 31 Oct 2018 08:19:30 GMT  
		Size: 246.8 KB (246772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe2fc2806b97676673ae4f61d5e0076d04d6769cc0657b595cb42066197590a`  
		Last Modified: Wed, 31 Oct 2018 10:40:47 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c177061e19cd0ae03445c0259dc1096e15717f6e8763846c4d8281a1439fe1`  
		Last Modified: Wed, 31 Oct 2018 10:42:15 GMT  
		Size: 67.0 KB (66988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12fe83479a192c4539a2e250143959bdba63a3b946c3f6988dd7ef73b1849c5`  
		Last Modified: Wed, 31 Oct 2018 10:42:42 GMT  
		Size: 56.8 MB (56795879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.4-plus` - linux; s390x

```console
$ docker pull tomee@sha256:b6c6b81e7c749af22c3c98c72305c839443ea21ece6612995962e203d6221375
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.9 MB (231945298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74a1541fcb22b66edfeb92758366fc6a41121b2a467398e30847fe8b0d5093c2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 13:06:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:06:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:06:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 12:09:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 12:09:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 12:09:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 12:09:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:13:58 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:13:58 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:13:59 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:15:05 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:15:09 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 14:15:24 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.0.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.0.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:15:24 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:15:24 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadb55fe60f3a83b7078ad97271acf0fd19b4414edf56bfbb07929744d5f7dce`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 863.7 KB (863652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecb5fac3a19302c69f5ee9494fd6c23d3d5dd418d59b9ea6a400cde0b0ae69e`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3565def30ebfc0c8c4a44f336ec11f69a92101319367ead0b1272905de65b629`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d108ec790a13528613333148f37b0b32735ca046ddfe165916fbbdaa536b9e`  
		Last Modified: Tue, 30 Oct 2018 12:13:07 GMT  
		Size: 114.1 MB (114137466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae3dd31465d93acd9f4060b71c585db6d729f83ab4ed961ec9a5356a4b80d3`  
		Last Modified: Tue, 30 Oct 2018 12:12:49 GMT  
		Size: 246.7 KB (246718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29f8d77836e77bcb36fb3d909583bf4af2d3cc4007daa9a9dedb4422b5449cc`  
		Last Modified: Tue, 30 Oct 2018 14:18:18 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1613f2f9b03d2ffb208952ab90aec66974189f6f04dfebb898b8fbafa75886cf`  
		Last Modified: Tue, 30 Oct 2018 14:19:04 GMT  
		Size: 66.9 KB (66944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc79e8db66849d347d042198e75ef85c2cb199c6202163781c20c9e18bde9b7`  
		Last Modified: Tue, 30 Oct 2018 14:19:21 GMT  
		Size: 56.8 MB (56795825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:8-jre-7.0.4-webprofile`

```console
$ docker pull tomee@sha256:e3dd8ba64ee5773087e1c1a0d112aec110d66d0163e226479f7dde2468cbbc98
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

### `tomee:8-jre-7.0.4-webprofile` - linux; amd64

```console
$ docker pull tomee@sha256:10f1f9865c5c8bbe812b20dd1e296604d1bd8962251fd40281b34d8528137ca4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 MB (223728432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38045d86714737d2c9b8aa35f27f7c4f47abbd450cbb366b71d5f9eb0b203164`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:28:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:28:06 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:28:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:28:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:30:29 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:30:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:31:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:31:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 05:31:41 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 05:31:42 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 05:31:42 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 05:34:45 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 05:34:50 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 05:35:59 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 05:35:59 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 05:35:59 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21441932c53a4078f379c7c6d299370a6eaee79c862a29db2e25fec39106779`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 852.9 KB (852895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa76b0d2509232e863931fc1743f1ca2dba3bebdf5f72b4280fae59536303ce7`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346fd8610875e8ba7753030b5c197ad56fe76aa4e45d1e70e4b58366e93177c3`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca5d6af9022c9c3b436792a01c58dd29490430d28b04f70385f308e3bdae8a6`  
		Last Modified: Mon, 29 Oct 2018 23:40:07 GMT  
		Size: 122.1 MB (122121999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06cfa2cea32b36c8f5dcc8605166d1f8b72cf02e44163dbf7d14e0379286b55`  
		Last Modified: Mon, 29 Oct 2018 23:39:44 GMT  
		Size: 246.7 KB (246728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c094b3bc8129299958e3103ea5962297e112f8623257dd6d3d72fd739b4ed2dc`  
		Last Modified: Tue, 30 Oct 2018 05:44:37 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0eb5d22768e01d3ae538541bbef24179c0f6bcabe15824faa85c70579403e0`  
		Last Modified: Tue, 30 Oct 2018 05:45:50 GMT  
		Size: 67.0 KB (66961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f736ffcf06548d7acf9772a1f184b6851ee797933ccd86aa876739c364c2bbc1`  
		Last Modified: Tue, 30 Oct 2018 05:46:37 GMT  
		Size: 40.1 MB (40053315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.4-webprofile` - linux; arm variant v5

```console
$ docker pull tomee@sha256:f515a804c4a0470d7a5cf604232a6d033df783098c6b09296a8e42b2e88446d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.1 MB (211118479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cbe03190f6cdcc5a617b219d0a7c4ff886a3ff7e269e4e595aa26b19ea9cadb`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:59 GMT
ADD file:9400a194c6dcf24f439664aab3a28cb7dbf93753b71d2756dbaf872d294fbb8e in / 
# Tue, 16 Oct 2018 08:55:00 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:00:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:00:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:47:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 12:47:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 12:47:32 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 10:04:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 10:04:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 10:05:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 10:06:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:39:10 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:39:11 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:39:11 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:42:06 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:42:10 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 31 Oct 2018 10:43:13 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:43:19 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:43:19 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:67cd7720dfa3de15234643bf308008813fd129e03429f026775738064b364e24`  
		Last Modified: Tue, 16 Oct 2018 09:04:05 GMT  
		Size: 44.0 MB (44033067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd276b766fa97ab74e113c92ed57093015cfc9c9030be8ba22b5e752cd8e8877`  
		Last Modified: Tue, 16 Oct 2018 10:09:36 GMT  
		Size: 9.8 MB (9810396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b000ac5a1a22a2dea4538586726677f91c42079cf289a8eb88fdf9c65fda7f6`  
		Last Modified: Tue, 16 Oct 2018 10:09:35 GMT  
		Size: 4.2 MB (4153754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cbc8dc4eb12ea31f2f137322dcd35e379750d13318d6521d7d557989a9c73e`  
		Last Modified: Tue, 16 Oct 2018 12:56:57 GMT  
		Size: 845.9 KB (845906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a97950afff8d9b7263a96992060b43bf115f908bd1f262de6f93c0418cc9817`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693401423272c67e47e2c164426ccd8a7f7c84c1aaa9ccf0db49f23cf10ece20`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa4cd8ea842cbf55631460424eebe375e8955fa33375ba756948f3200aa260b`  
		Last Modified: Wed, 31 Oct 2018 09:18:50 GMT  
		Size: 111.9 MB (111907574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2f5878cb92f7b7cabd53ba68c69652be468fe7e00b7a82ecff33496f1357c7`  
		Last Modified: Wed, 31 Oct 2018 09:18:21 GMT  
		Size: 246.7 KB (246748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7fe3f0758a210ee8428de088c4f9d16e74526003cd6f0e98c680a75db3a4ef`  
		Last Modified: Wed, 31 Oct 2018 10:47:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a996192996ebfb224220a874f072e475829676d0085f8292f3f7ed91d851d6a6`  
		Last Modified: Wed, 31 Oct 2018 10:48:58 GMT  
		Size: 67.0 KB (66998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e81c22992c714c6ae654c78c7dfe65574b8b2598af91b1f72fb212133a69df`  
		Last Modified: Wed, 31 Oct 2018 10:49:42 GMT  
		Size: 40.1 MB (40053474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.4-webprofile` - linux; arm variant v7

```console
$ docker pull tomee@sha256:35c228baeb7bc7251b067a20d950cfe6cd96ceee16be4eb11124c92a1d501be9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.2 MB (236174281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d03a3cce1ed235daa8c68a81e04c394175faafb39469b41c4f04fb5373583175`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:59:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:59:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:59:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:59:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:59:27 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:59:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:00:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:00:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 15:31:33 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 05 May 2018 15:31:34 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 05 May 2018 15:31:34 GMT
WORKDIR /usr/local/tomee
# Sat, 05 May 2018 15:33:15 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 05 May 2018 15:33:19 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Sat, 05 May 2018 15:38:43 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 23 Jan 2019 19:10:41 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 19:10:42 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df26ddf71ea9e82f175e400809b8f06871dd0937c5a90f4ffe95286544a9f719`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 830.3 KB (830332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c21322a9c89724512d6ea5faa10299c60c8a605d6f563c84c28177db8d2770`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2270f04a4be61f52577232813fff92e797d3fc190d52f71411afc26b0911f8e4`  
		Last Modified: Sat, 05 May 2018 13:29:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dc1aba58c8cd285639cac6b03c823e5fcdb91aa8922652e7d9387aaca6fa4`  
		Last Modified: Sat, 05 May 2018 13:29:37 GMT  
		Size: 139.5 MB (139501760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02869ec2bb3864b06abd435610eb6849d5c62426517de1a603ef6fe43c7d3815`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 272.1 KB (272082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b2945e8eb5c51597eeaa0b9140cd51356fdea2bdbc0e85b10b3004a32453fc`  
		Last Modified: Sat, 05 May 2018 15:39:04 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ea1b50ffe80218f2c1fa7833cc652669d1913cd0332790b2f7ee4518133965`  
		Last Modified: Sat, 05 May 2018 15:40:24 GMT  
		Size: 67.0 KB (66983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6281fc1313fee5079740a19607864484ef8f1bda51ed8cd607b7c7e469b1d61`  
		Last Modified: Sat, 05 May 2018 15:45:33 GMT  
		Size: 40.1 MB (40053518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.4-webprofile` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:74ae1068c1026a425d8b741dfbe5d13ba5a741e2f7a3b7e9898e39b1cbcff103
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.9 MB (210862886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:968a8b16912c193e98779cafd43d45dba2cc9964356c09d55ac9c0c033592adc`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 22:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:09:34 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 22:09:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 22:09:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 22:09:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 22:09:44 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:07:32 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:07:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:13:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:13:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 15:02:52 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 15:02:53 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 15:02:54 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 15:07:07 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 15:07:13 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 15:09:01 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 15:09:07 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 15:09:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec37afe1ce9c80cab1c8fdc0d193c9f92f61adf7c60d6bdbc2b01735eac25b6`  
		Last Modified: Tue, 16 Oct 2018 22:27:18 GMT  
		Size: 839.2 KB (839157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776d8d23f1b98b1595b31f6da89774c22c62b8aaebfd909efc61ceb1ed261422`  
		Last Modified: Tue, 16 Oct 2018 22:27:15 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0423ae79bd292339ac64d511157cd27daa8549a458b0458dc17973fbee24f728`  
		Last Modified: Tue, 16 Oct 2018 22:27:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f621179e148c9684831eb304357c88f80f0b271af7ed9ca445ab04fbb1290f`  
		Last Modified: Tue, 30 Oct 2018 09:25:17 GMT  
		Size: 112.8 MB (112753824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65fac7cd4cedf9a714652ad15dccbc910e8c233062e70e577ceda149579218bd`  
		Last Modified: Tue, 30 Oct 2018 09:24:14 GMT  
		Size: 246.7 KB (246684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:658f45b64802a49fa3968aded05068fcceea176e7764bfc44f75538819b46bda`  
		Last Modified: Tue, 30 Oct 2018 15:17:24 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b74c7ea210464c5b79f3489cbe43593dfe03dc099f9fa62c3018658bad80aec`  
		Last Modified: Tue, 30 Oct 2018 15:19:28 GMT  
		Size: 67.0 KB (66977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a02fb2807b161f3bbdf0346dbf8b6d7f08943675e188c8a739decbbb6b50dad`  
		Last Modified: Tue, 30 Oct 2018 15:20:30 GMT  
		Size: 40.1 MB (40053313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.4-webprofile` - linux; 386

```console
$ docker pull tomee@sha256:7e2e490373a6dac78f3b2b534b91496de99b9367699af8e65058386fc434b74b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.2 MB (225185859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e138db063ce30b18889c7359b4164bc44caa80145c6c5c9a86e84a5208cd8bdc`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:30:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 03:36:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 03:36:44 GMT
ENV LANG=C.UTF-8
# Wed, 17 Oct 2018 03:36:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 17 Oct 2018 03:36:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 11:09:42 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 11:09:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 11:10:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 11:10:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:04:12 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:04:13 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:04:13 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:05:37 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:05:41 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 14:06:27 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:06:27 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:06:27 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d8b973c47bc2b9e663e0405a9b6c4923e7edd886f9352807642bd012741c7b`  
		Last Modified: Tue, 16 Oct 2018 21:46:21 GMT  
		Size: 10.8 MB (10752717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc96b1bed2761a443ab819cbb860219f45d0a8bd03334cd84a81ee97399ee0`  
		Last Modified: Tue, 16 Oct 2018 21:46:19 GMT  
		Size: 4.6 MB (4555326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf8ff73b0a24a2d2c5ebfbcc6b8301349388a2562b5b1832e7db1ac71ae3d96`  
		Last Modified: Wed, 17 Oct 2018 03:51:09 GMT  
		Size: 861.8 KB (861772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a50ad6c047d63f8288897510a2551fec276a69dd76441d34df7ae5dbfbc757`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba1dba5b34132ca34ccd824ca39c484e958be83902abb87c823d8aa6965e7da`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2582ffd7014adc4b600f142afd34bd45a6f1084200f83de9372ac5541e2802`  
		Last Modified: Tue, 30 Oct 2018 11:16:02 GMT  
		Size: 122.6 MB (122609361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849a60206ec57d15465bf6d6ac94195db298a6ca94f0e961c2cef7dd8e6f67f5`  
		Last Modified: Tue, 30 Oct 2018 11:15:38 GMT  
		Size: 246.7 KB (246683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91148153248302d0db1f1ee32a9c6394bf20b9338edcd6f16f83d6db8dc1976`  
		Last Modified: Tue, 30 Oct 2018 14:11:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413fcc578b4fe28671ae5d77e471037700e69039b49bf9f53472a5044cf3ef57`  
		Last Modified: Tue, 30 Oct 2018 14:12:34 GMT  
		Size: 66.9 KB (66943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a772e0dcac0d13d7917a5039dcec9cffc62d924213d8317254284701967f5371`  
		Last Modified: Tue, 30 Oct 2018 14:13:19 GMT  
		Size: 40.1 MB (40053307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.4-webprofile` - linux; ppc64le

```console
$ docker pull tomee@sha256:f0a2a23a2a7bb5654cc8dc3ecd5cfb88172f7f160eb38c198cf908ec9bf7fa92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215593547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1c7f309af4a52099d9bd2a4cda6529b26c6d5e50a95226a41d6a742984d6883`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:21:55 GMT
ADD file:a59c24e738306d5a76eda32c17347983843a394953e466fc10b997cf1398c4ed in / 
# Tue, 16 Oct 2018 08:21:57 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:48:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:48:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 15:15:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:15:24 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 15:15:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 15:15:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 15:15:44 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 15:15:52 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:43:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:43:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:47:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:47:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:30:20 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:30:23 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:30:24 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:32:06 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:32:12 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 31 Oct 2018 10:33:11 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:33:12 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:33:14 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:93d83403cab11249f38bea785ef4fc2d2b4cf9dd1295ad181f3c457ab4d4ea4b`  
		Last Modified: Tue, 16 Oct 2018 08:30:05 GMT  
		Size: 45.6 MB (45595514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ec9429d785df2991e77ea98b51ceeaa4ba80bcb51ce5d583e298525463146a`  
		Last Modified: Tue, 16 Oct 2018 11:06:51 GMT  
		Size: 9.9 MB (9943336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2367a02f5abb1557873986462bae2faef06a1b1fc0bd094d8f2a1dfdae33798e`  
		Last Modified: Tue, 16 Oct 2018 11:06:48 GMT  
		Size: 4.3 MB (4289821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19512a51eca885874336832af8357c995b28646c233136ff5a484d748af437a`  
		Last Modified: Tue, 16 Oct 2018 15:34:57 GMT  
		Size: 848.3 KB (848330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009ac02b22eca01c54f895f29b03222f698522307cb6a3fcbe1e55b97e123ed9`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea4543ef0daeccff13d600a6def3496001fdcc344ec2c9a6d63621c9a1dce0f`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050d1332dd2b829ac78cf297c3c9b062cb9f00311fcf7c43022310fe8737e3e2`  
		Last Modified: Wed, 31 Oct 2018 08:20:04 GMT  
		Size: 114.5 MB (114548674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2385b91212622165daaa25696049c403a6a3c312ae1e51388f930ff39a7956`  
		Last Modified: Wed, 31 Oct 2018 08:19:30 GMT  
		Size: 246.8 KB (246772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe2fc2806b97676673ae4f61d5e0076d04d6769cc0657b595cb42066197590a`  
		Last Modified: Wed, 31 Oct 2018 10:40:47 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c177061e19cd0ae03445c0259dc1096e15717f6e8763846c4d8281a1439fe1`  
		Last Modified: Wed, 31 Oct 2018 10:42:15 GMT  
		Size: 67.0 KB (66988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3674c14f0fc7628a13bb4f8183b2c9f42b00e0cccb35da598ce8de8741222b17`  
		Last Modified: Wed, 31 Oct 2018 10:43:03 GMT  
		Size: 40.1 MB (40053550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.4-webprofile` - linux; s390x

```console
$ docker pull tomee@sha256:37155e16603dd384eaa0ddde79adf41e71e02e894996a0320ee4385215436752
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215202786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c6e18a10578c310f76fbada3c16954c89844c3993129d745351da4fd90bcf9c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 13:06:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:06:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:06:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 12:09:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 12:09:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 12:09:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 12:09:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:13:58 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:13:58 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:13:59 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:15:05 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:15:09 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 14:15:34 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:15:34 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:15:34 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadb55fe60f3a83b7078ad97271acf0fd19b4414edf56bfbb07929744d5f7dce`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 863.7 KB (863652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecb5fac3a19302c69f5ee9494fd6c23d3d5dd418d59b9ea6a400cde0b0ae69e`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3565def30ebfc0c8c4a44f336ec11f69a92101319367ead0b1272905de65b629`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d108ec790a13528613333148f37b0b32735ca046ddfe165916fbbdaa536b9e`  
		Last Modified: Tue, 30 Oct 2018 12:13:07 GMT  
		Size: 114.1 MB (114137466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae3dd31465d93acd9f4060b71c585db6d729f83ab4ed961ec9a5356a4b80d3`  
		Last Modified: Tue, 30 Oct 2018 12:12:49 GMT  
		Size: 246.7 KB (246718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29f8d77836e77bcb36fb3d909583bf4af2d3cc4007daa9a9dedb4422b5449cc`  
		Last Modified: Tue, 30 Oct 2018 14:18:18 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1613f2f9b03d2ffb208952ab90aec66974189f6f04dfebb898b8fbafa75886cf`  
		Last Modified: Tue, 30 Oct 2018 14:19:04 GMT  
		Size: 66.9 KB (66944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:606de20f75d3b439a35666ab861227de9561c96e084c0994dfd1628d6a2e35eb`  
		Last Modified: Tue, 30 Oct 2018 14:19:32 GMT  
		Size: 40.1 MB (40053313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:8-jre-7.0.5-plume`

```console
$ docker pull tomee@sha256:958ec3729e139c8629c2b7b4c8ef6a1c93f9359ee63b542d84c9a1eb67f36c8a
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

### `tomee:8-jre-7.0.5-plume` - linux; amd64

```console
$ docker pull tomee@sha256:e62e7422f7f03dc612e35a4ac51365ee3fe48a9aa9ba04213f254228ea7e5861
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.8 MB (247838706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41eab7a874e619edfe9fc0aaeb96c0b67de42e23457f68904ee1f792603110f7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:28:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:28:06 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:28:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:28:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:30:29 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:30:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:31:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:31:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 05:31:41 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 05:31:42 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 05:31:42 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 05:34:45 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 05:34:50 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 05:36:34 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.0.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.0.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 05:36:35 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 05:36:35 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21441932c53a4078f379c7c6d299370a6eaee79c862a29db2e25fec39106779`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 852.9 KB (852895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa76b0d2509232e863931fc1743f1ca2dba3bebdf5f72b4280fae59536303ce7`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346fd8610875e8ba7753030b5c197ad56fe76aa4e45d1e70e4b58366e93177c3`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca5d6af9022c9c3b436792a01c58dd29490430d28b04f70385f308e3bdae8a6`  
		Last Modified: Mon, 29 Oct 2018 23:40:07 GMT  
		Size: 122.1 MB (122121999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06cfa2cea32b36c8f5dcc8605166d1f8b72cf02e44163dbf7d14e0379286b55`  
		Last Modified: Mon, 29 Oct 2018 23:39:44 GMT  
		Size: 246.7 KB (246728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c094b3bc8129299958e3103ea5962297e112f8623257dd6d3d72fd739b4ed2dc`  
		Last Modified: Tue, 30 Oct 2018 05:44:37 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0eb5d22768e01d3ae538541bbef24179c0f6bcabe15824faa85c70579403e0`  
		Last Modified: Tue, 30 Oct 2018 05:45:50 GMT  
		Size: 67.0 KB (66961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5cddf33f5bbe567500f55fdde8e4d9b3729ddefcbdbf71ab79b6ed8af452e0`  
		Last Modified: Tue, 30 Oct 2018 05:47:01 GMT  
		Size: 64.2 MB (64163589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.5-plume` - linux; arm variant v5

```console
$ docker pull tomee@sha256:844e258d24a38d8019145804b6bd46b7a1ca81ef2b89122f1a9d9ee891796e45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235228753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b94efc3d812115bb2af252ea32fbac89d60482858f46a8892b532de097d645`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:59 GMT
ADD file:9400a194c6dcf24f439664aab3a28cb7dbf93753b71d2756dbaf872d294fbb8e in / 
# Tue, 16 Oct 2018 08:55:00 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:00:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:00:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:47:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 12:47:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 12:47:32 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 10:04:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 10:04:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 10:05:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 10:06:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:39:10 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:39:11 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:39:11 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:42:06 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:42:10 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 31 Oct 2018 10:43:38 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.0.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.0.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:43:39 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:43:39 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:67cd7720dfa3de15234643bf308008813fd129e03429f026775738064b364e24`  
		Last Modified: Tue, 16 Oct 2018 09:04:05 GMT  
		Size: 44.0 MB (44033067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd276b766fa97ab74e113c92ed57093015cfc9c9030be8ba22b5e752cd8e8877`  
		Last Modified: Tue, 16 Oct 2018 10:09:36 GMT  
		Size: 9.8 MB (9810396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b000ac5a1a22a2dea4538586726677f91c42079cf289a8eb88fdf9c65fda7f6`  
		Last Modified: Tue, 16 Oct 2018 10:09:35 GMT  
		Size: 4.2 MB (4153754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cbc8dc4eb12ea31f2f137322dcd35e379750d13318d6521d7d557989a9c73e`  
		Last Modified: Tue, 16 Oct 2018 12:56:57 GMT  
		Size: 845.9 KB (845906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a97950afff8d9b7263a96992060b43bf115f908bd1f262de6f93c0418cc9817`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693401423272c67e47e2c164426ccd8a7f7c84c1aaa9ccf0db49f23cf10ece20`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa4cd8ea842cbf55631460424eebe375e8955fa33375ba756948f3200aa260b`  
		Last Modified: Wed, 31 Oct 2018 09:18:50 GMT  
		Size: 111.9 MB (111907574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2f5878cb92f7b7cabd53ba68c69652be468fe7e00b7a82ecff33496f1357c7`  
		Last Modified: Wed, 31 Oct 2018 09:18:21 GMT  
		Size: 246.7 KB (246748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7fe3f0758a210ee8428de088c4f9d16e74526003cd6f0e98c680a75db3a4ef`  
		Last Modified: Wed, 31 Oct 2018 10:47:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a996192996ebfb224220a874f072e475829676d0085f8292f3f7ed91d851d6a6`  
		Last Modified: Wed, 31 Oct 2018 10:48:58 GMT  
		Size: 67.0 KB (66998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3084017865a4be1fd1950a0d66568d67994dce27496b7165051231be9ac7582e`  
		Last Modified: Wed, 31 Oct 2018 10:50:01 GMT  
		Size: 64.2 MB (64163748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.5-plume` - linux; arm variant v7

```console
$ docker pull tomee@sha256:ed762653c077e9b0b5d5aa12d8fac439a0bd980b6c94db20a2cf9b7f72ce0589
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.3 MB (260284524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7077851e3af7ee15e6086bae8034553cba570645eba57ab9b914001ed015107`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:59:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:59:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:59:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:59:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:59:27 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:59:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:00:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:00:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 15:31:33 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 05 May 2018 15:31:34 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 05 May 2018 15:31:34 GMT
WORKDIR /usr/local/tomee
# Sat, 05 May 2018 15:33:15 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 05 May 2018 15:33:19 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 25 Jul 2018 12:17:34 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.0.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.0.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 23 Jan 2019 19:10:47 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 19:10:47 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df26ddf71ea9e82f175e400809b8f06871dd0937c5a90f4ffe95286544a9f719`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 830.3 KB (830332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c21322a9c89724512d6ea5faa10299c60c8a605d6f563c84c28177db8d2770`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2270f04a4be61f52577232813fff92e797d3fc190d52f71411afc26b0911f8e4`  
		Last Modified: Sat, 05 May 2018 13:29:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dc1aba58c8cd285639cac6b03c823e5fcdb91aa8922652e7d9387aaca6fa4`  
		Last Modified: Sat, 05 May 2018 13:29:37 GMT  
		Size: 139.5 MB (139501760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02869ec2bb3864b06abd435610eb6849d5c62426517de1a603ef6fe43c7d3815`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 272.1 KB (272082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b2945e8eb5c51597eeaa0b9140cd51356fdea2bdbc0e85b10b3004a32453fc`  
		Last Modified: Sat, 05 May 2018 15:39:04 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ea1b50ffe80218f2c1fa7833cc652669d1913cd0332790b2f7ee4518133965`  
		Last Modified: Sat, 05 May 2018 15:40:24 GMT  
		Size: 67.0 KB (66983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f929be611fc7e41f99d5d6606a9ab843e81e7cc312852f48c3be8ee00050e12f`  
		Last Modified: Wed, 25 Jul 2018 12:18:55 GMT  
		Size: 64.2 MB (64163761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.5-plume` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:d5c52c38ca3240d1cbe16751db20c7ec7dc844dd9505bc08dea9439b01afc950
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (234969715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6943372e13f75dad8998851fabd17985601e472fda32b89759d8b8c199dfdea0`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 22:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:09:34 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 22:09:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 22:09:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 22:09:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 22:09:44 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 22:09:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 22:09:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 22:14:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 22:14:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 17 Oct 2018 00:21:25 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 Oct 2018 00:21:29 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 17 Oct 2018 00:21:31 GMT
WORKDIR /usr/local/tomee
# Wed, 17 Oct 2018 00:25:38 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 17 Oct 2018 00:25:50 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 17 Oct 2018 00:31:20 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.0.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.0.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 17 Oct 2018 00:31:23 GMT
EXPOSE 8080/tcp
# Wed, 17 Oct 2018 00:31:25 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec37afe1ce9c80cab1c8fdc0d193c9f92f61adf7c60d6bdbc2b01735eac25b6`  
		Last Modified: Tue, 16 Oct 2018 22:27:18 GMT  
		Size: 839.2 KB (839157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776d8d23f1b98b1595b31f6da89774c22c62b8aaebfd909efc61ceb1ed261422`  
		Last Modified: Tue, 16 Oct 2018 22:27:15 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0423ae79bd292339ac64d511157cd27daa8549a458b0458dc17973fbee24f728`  
		Last Modified: Tue, 16 Oct 2018 22:27:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da59a4d6de8a9133c1d6d9c0d1283e1b6682911896bc48cffaf18801fd8c68d`  
		Last Modified: Tue, 16 Oct 2018 22:27:50 GMT  
		Size: 112.8 MB (112750420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c91b7c05050703e9d49121afe5ddebf91c012d50ab889a63fe7c7794757223`  
		Last Modified: Tue, 16 Oct 2018 22:27:15 GMT  
		Size: 246.7 KB (246651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a692f1b9459cceca9b0c8f14f2e31f86946b729851dcc75b1d0daa3715ebd63e`  
		Last Modified: Wed, 17 Oct 2018 00:41:00 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b0baf97116352ab1c389adb3dcc3f3be9f025b9abd511c8fef29cacc9779c3`  
		Last Modified: Wed, 17 Oct 2018 00:42:25 GMT  
		Size: 67.0 KB (66966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbccb7dc1abdb80ec4c208ee086047c927a0ff24981604d4e4c502cad40eba17`  
		Last Modified: Wed, 17 Oct 2018 00:44:09 GMT  
		Size: 64.2 MB (64163591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.5-plume` - linux; 386

```console
$ docker pull tomee@sha256:c74d23af36aa41af2b70ff059560b4d8b5e67c37d55412aa2bddb4fca7c73337
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249296131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814360e5982698793bcd29d5402ca335880f25fdc4e3d14d72877e0fc17055c8`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:30:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 03:36:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 03:36:44 GMT
ENV LANG=C.UTF-8
# Wed, 17 Oct 2018 03:36:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 17 Oct 2018 03:36:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 11:09:42 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 11:09:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 11:10:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 11:10:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:04:12 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:04:13 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:04:13 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:05:37 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:05:41 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 14:06:51 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.0.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.0.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:06:51 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:06:52 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d8b973c47bc2b9e663e0405a9b6c4923e7edd886f9352807642bd012741c7b`  
		Last Modified: Tue, 16 Oct 2018 21:46:21 GMT  
		Size: 10.8 MB (10752717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc96b1bed2761a443ab819cbb860219f45d0a8bd03334cd84a81ee97399ee0`  
		Last Modified: Tue, 16 Oct 2018 21:46:19 GMT  
		Size: 4.6 MB (4555326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf8ff73b0a24a2d2c5ebfbcc6b8301349388a2562b5b1832e7db1ac71ae3d96`  
		Last Modified: Wed, 17 Oct 2018 03:51:09 GMT  
		Size: 861.8 KB (861772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a50ad6c047d63f8288897510a2551fec276a69dd76441d34df7ae5dbfbc757`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba1dba5b34132ca34ccd824ca39c484e958be83902abb87c823d8aa6965e7da`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2582ffd7014adc4b600f142afd34bd45a6f1084200f83de9372ac5541e2802`  
		Last Modified: Tue, 30 Oct 2018 11:16:02 GMT  
		Size: 122.6 MB (122609361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849a60206ec57d15465bf6d6ac94195db298a6ca94f0e961c2cef7dd8e6f67f5`  
		Last Modified: Tue, 30 Oct 2018 11:15:38 GMT  
		Size: 246.7 KB (246683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91148153248302d0db1f1ee32a9c6394bf20b9338edcd6f16f83d6db8dc1976`  
		Last Modified: Tue, 30 Oct 2018 14:11:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413fcc578b4fe28671ae5d77e471037700e69039b49bf9f53472a5044cf3ef57`  
		Last Modified: Tue, 30 Oct 2018 14:12:34 GMT  
		Size: 66.9 KB (66943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17d5f1fb6efbe2760e9e0e94edbd3a3ec7bf5c23e3fb3b29c2d058fcde41ab4`  
		Last Modified: Tue, 30 Oct 2018 14:13:38 GMT  
		Size: 64.2 MB (64163579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.5-plume` - linux; ppc64le

```console
$ docker pull tomee@sha256:01a278b718f062eb0ad95ead75998de35050a4219be7bac5680cdd80ac0d1e93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239703757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6570ee1725d2485471527ef0dfff751cbe6183bcaf0177eda132c9636da9fad0`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:21:55 GMT
ADD file:a59c24e738306d5a76eda32c17347983843a394953e466fc10b997cf1398c4ed in / 
# Tue, 16 Oct 2018 08:21:57 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:48:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:48:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 15:15:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:15:24 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 15:15:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 15:15:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 15:15:44 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 15:15:52 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:43:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:43:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:47:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:47:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:30:20 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:30:23 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:30:24 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:32:06 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:32:12 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 31 Oct 2018 10:33:32 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.0.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.0.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:33:33 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:33:41 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:93d83403cab11249f38bea785ef4fc2d2b4cf9dd1295ad181f3c457ab4d4ea4b`  
		Last Modified: Tue, 16 Oct 2018 08:30:05 GMT  
		Size: 45.6 MB (45595514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ec9429d785df2991e77ea98b51ceeaa4ba80bcb51ce5d583e298525463146a`  
		Last Modified: Tue, 16 Oct 2018 11:06:51 GMT  
		Size: 9.9 MB (9943336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2367a02f5abb1557873986462bae2faef06a1b1fc0bd094d8f2a1dfdae33798e`  
		Last Modified: Tue, 16 Oct 2018 11:06:48 GMT  
		Size: 4.3 MB (4289821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19512a51eca885874336832af8357c995b28646c233136ff5a484d748af437a`  
		Last Modified: Tue, 16 Oct 2018 15:34:57 GMT  
		Size: 848.3 KB (848330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009ac02b22eca01c54f895f29b03222f698522307cb6a3fcbe1e55b97e123ed9`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea4543ef0daeccff13d600a6def3496001fdcc344ec2c9a6d63621c9a1dce0f`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050d1332dd2b829ac78cf297c3c9b062cb9f00311fcf7c43022310fe8737e3e2`  
		Last Modified: Wed, 31 Oct 2018 08:20:04 GMT  
		Size: 114.5 MB (114548674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2385b91212622165daaa25696049c403a6a3c312ae1e51388f930ff39a7956`  
		Last Modified: Wed, 31 Oct 2018 08:19:30 GMT  
		Size: 246.8 KB (246772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe2fc2806b97676673ae4f61d5e0076d04d6769cc0657b595cb42066197590a`  
		Last Modified: Wed, 31 Oct 2018 10:40:47 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c177061e19cd0ae03445c0259dc1096e15717f6e8763846c4d8281a1439fe1`  
		Last Modified: Wed, 31 Oct 2018 10:42:15 GMT  
		Size: 67.0 KB (66988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4dea36d44147972d47c2f45d7c34dbc91655ccac5a3e7ff330b5c3f09a25ed`  
		Last Modified: Wed, 31 Oct 2018 10:43:25 GMT  
		Size: 64.2 MB (64163760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.5-plume` - linux; s390x

```console
$ docker pull tomee@sha256:6002e3dedcdf8eaf354dd2349fd1f581a6ee41feb3243a60daf7b992c1d1b4ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.3 MB (239313074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e959a70d17035cfa94c9b7984d5e3ee259a51d13e4def6d8cf9cfe849229907c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 13:06:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:06:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:06:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 12:09:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 12:09:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 12:09:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 12:09:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:13:58 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:13:58 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:13:59 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:15:05 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:15:09 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 14:15:45 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.0.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.0.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:15:45 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:15:46 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadb55fe60f3a83b7078ad97271acf0fd19b4414edf56bfbb07929744d5f7dce`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 863.7 KB (863652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecb5fac3a19302c69f5ee9494fd6c23d3d5dd418d59b9ea6a400cde0b0ae69e`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3565def30ebfc0c8c4a44f336ec11f69a92101319367ead0b1272905de65b629`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d108ec790a13528613333148f37b0b32735ca046ddfe165916fbbdaa536b9e`  
		Last Modified: Tue, 30 Oct 2018 12:13:07 GMT  
		Size: 114.1 MB (114137466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae3dd31465d93acd9f4060b71c585db6d729f83ab4ed961ec9a5356a4b80d3`  
		Last Modified: Tue, 30 Oct 2018 12:12:49 GMT  
		Size: 246.7 KB (246718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29f8d77836e77bcb36fb3d909583bf4af2d3cc4007daa9a9dedb4422b5449cc`  
		Last Modified: Tue, 30 Oct 2018 14:18:18 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1613f2f9b03d2ffb208952ab90aec66974189f6f04dfebb898b8fbafa75886cf`  
		Last Modified: Tue, 30 Oct 2018 14:19:04 GMT  
		Size: 66.9 KB (66944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358b284e0fb66c8ce337a99af7af62c7cda83011490d6aa9357cfd7aa20df16c`  
		Last Modified: Tue, 30 Oct 2018 14:19:45 GMT  
		Size: 64.2 MB (64163601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:8-jre-7.0.5-plus`

```console
$ docker pull tomee@sha256:c10bbc1a94d63a12febef2634ea445afc97ee7ecfbe81ff46120fb0a148beaeb
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

### `tomee:8-jre-7.0.5-plus` - linux; amd64

```console
$ docker pull tomee@sha256:193dcebf8b672c2fd14f4837815b9101be78c397dcd7805239a85c1e23852615
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.9 MB (240872487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cfd2bf25cb021ed8dd486175ba6a5fdbb8cc02ffd277e981d5ab21a91d2bb6f`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:28:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:28:06 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:28:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:28:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:30:29 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:30:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:31:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:31:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 05:31:41 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 05:31:42 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 05:31:42 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 05:34:45 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 05:34:50 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 05:37:06 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.0.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.0.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 05:37:06 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 05:37:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21441932c53a4078f379c7c6d299370a6eaee79c862a29db2e25fec39106779`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 852.9 KB (852895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa76b0d2509232e863931fc1743f1ca2dba3bebdf5f72b4280fae59536303ce7`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346fd8610875e8ba7753030b5c197ad56fe76aa4e45d1e70e4b58366e93177c3`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca5d6af9022c9c3b436792a01c58dd29490430d28b04f70385f308e3bdae8a6`  
		Last Modified: Mon, 29 Oct 2018 23:40:07 GMT  
		Size: 122.1 MB (122121999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06cfa2cea32b36c8f5dcc8605166d1f8b72cf02e44163dbf7d14e0379286b55`  
		Last Modified: Mon, 29 Oct 2018 23:39:44 GMT  
		Size: 246.7 KB (246728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c094b3bc8129299958e3103ea5962297e112f8623257dd6d3d72fd739b4ed2dc`  
		Last Modified: Tue, 30 Oct 2018 05:44:37 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0eb5d22768e01d3ae538541bbef24179c0f6bcabe15824faa85c70579403e0`  
		Last Modified: Tue, 30 Oct 2018 05:45:50 GMT  
		Size: 67.0 KB (66961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ba83b44e73c4e48e66587f93acce60b85257bfef97f04859ffb984053eb9fb`  
		Last Modified: Tue, 30 Oct 2018 05:47:22 GMT  
		Size: 57.2 MB (57197370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.5-plus` - linux; arm variant v5

```console
$ docker pull tomee@sha256:57958824421ea21d36948e9b2fd127dc0f8f89c88461f5b3d8d022198ee2dfa0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.3 MB (228262891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31af66ea04fc6fa440a7b379d2d9d95b890e9c31fa7934d3c482306c295b1c3`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:59 GMT
ADD file:9400a194c6dcf24f439664aab3a28cb7dbf93753b71d2756dbaf872d294fbb8e in / 
# Tue, 16 Oct 2018 08:55:00 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:00:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:00:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:47:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 12:47:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 12:47:32 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 10:04:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 10:04:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 10:05:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 10:06:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:39:10 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:39:11 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:39:11 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:42:06 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:42:10 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 31 Oct 2018 10:43:57 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.0.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.0.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:43:57 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:43:58 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:67cd7720dfa3de15234643bf308008813fd129e03429f026775738064b364e24`  
		Last Modified: Tue, 16 Oct 2018 09:04:05 GMT  
		Size: 44.0 MB (44033067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd276b766fa97ab74e113c92ed57093015cfc9c9030be8ba22b5e752cd8e8877`  
		Last Modified: Tue, 16 Oct 2018 10:09:36 GMT  
		Size: 9.8 MB (9810396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b000ac5a1a22a2dea4538586726677f91c42079cf289a8eb88fdf9c65fda7f6`  
		Last Modified: Tue, 16 Oct 2018 10:09:35 GMT  
		Size: 4.2 MB (4153754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cbc8dc4eb12ea31f2f137322dcd35e379750d13318d6521d7d557989a9c73e`  
		Last Modified: Tue, 16 Oct 2018 12:56:57 GMT  
		Size: 845.9 KB (845906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a97950afff8d9b7263a96992060b43bf115f908bd1f262de6f93c0418cc9817`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693401423272c67e47e2c164426ccd8a7f7c84c1aaa9ccf0db49f23cf10ece20`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa4cd8ea842cbf55631460424eebe375e8955fa33375ba756948f3200aa260b`  
		Last Modified: Wed, 31 Oct 2018 09:18:50 GMT  
		Size: 111.9 MB (111907574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2f5878cb92f7b7cabd53ba68c69652be468fe7e00b7a82ecff33496f1357c7`  
		Last Modified: Wed, 31 Oct 2018 09:18:21 GMT  
		Size: 246.7 KB (246748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7fe3f0758a210ee8428de088c4f9d16e74526003cd6f0e98c680a75db3a4ef`  
		Last Modified: Wed, 31 Oct 2018 10:47:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a996192996ebfb224220a874f072e475829676d0085f8292f3f7ed91d851d6a6`  
		Last Modified: Wed, 31 Oct 2018 10:48:58 GMT  
		Size: 67.0 KB (66998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6428cfe1f119ea09acfa6a41a8e76b4d6a73f355670da8926574d855840ef8`  
		Last Modified: Wed, 31 Oct 2018 10:50:19 GMT  
		Size: 57.2 MB (57197886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.5-plus` - linux; arm variant v7

```console
$ docker pull tomee@sha256:bd7fa2d65402c9828337476771feb277e9f3e82c083481a09369c9b7456a5614
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.3 MB (253318635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8243ce92dc99f9d8f76117a143a6125b4c8fd2fe6fd76f9de5d251bafe861daf`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:59:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:59:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:59:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:59:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:59:27 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:59:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:00:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:00:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 15:31:33 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 05 May 2018 15:31:34 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 05 May 2018 15:31:34 GMT
WORKDIR /usr/local/tomee
# Sat, 05 May 2018 15:33:15 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 05 May 2018 15:33:19 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 25 Jul 2018 12:18:05 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.0.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.0.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 23 Jan 2019 19:10:53 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 19:10:54 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df26ddf71ea9e82f175e400809b8f06871dd0937c5a90f4ffe95286544a9f719`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 830.3 KB (830332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c21322a9c89724512d6ea5faa10299c60c8a605d6f563c84c28177db8d2770`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2270f04a4be61f52577232813fff92e797d3fc190d52f71411afc26b0911f8e4`  
		Last Modified: Sat, 05 May 2018 13:29:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dc1aba58c8cd285639cac6b03c823e5fcdb91aa8922652e7d9387aaca6fa4`  
		Last Modified: Sat, 05 May 2018 13:29:37 GMT  
		Size: 139.5 MB (139501760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02869ec2bb3864b06abd435610eb6849d5c62426517de1a603ef6fe43c7d3815`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 272.1 KB (272082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b2945e8eb5c51597eeaa0b9140cd51356fdea2bdbc0e85b10b3004a32453fc`  
		Last Modified: Sat, 05 May 2018 15:39:04 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ea1b50ffe80218f2c1fa7833cc652669d1913cd0332790b2f7ee4518133965`  
		Last Modified: Sat, 05 May 2018 15:40:24 GMT  
		Size: 67.0 KB (66983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8600c7c21fdca1d5df2270ccc85256fa41a96c9c632f443ae1b9e039460e0dd`  
		Last Modified: Wed, 25 Jul 2018 12:19:17 GMT  
		Size: 57.2 MB (57197872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.5-plus` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:bb09c590fda768a2f866e209f572bced86bb525703db52f4abc57296ae224256
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.0 MB (228003548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eddf036ad7b5fada56ee95b8fc3c9502e1f974beacc3848ef3dcfbe486589927`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 22:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:09:34 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 22:09:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 22:09:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 22:09:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 22:09:44 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 22:09:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 22:09:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 22:14:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 22:14:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 17 Oct 2018 00:21:25 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 Oct 2018 00:21:29 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 17 Oct 2018 00:21:31 GMT
WORKDIR /usr/local/tomee
# Wed, 17 Oct 2018 00:25:38 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 17 Oct 2018 00:25:50 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 17 Oct 2018 00:32:02 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.0.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.0.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 17 Oct 2018 00:32:04 GMT
EXPOSE 8080/tcp
# Wed, 17 Oct 2018 00:32:06 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec37afe1ce9c80cab1c8fdc0d193c9f92f61adf7c60d6bdbc2b01735eac25b6`  
		Last Modified: Tue, 16 Oct 2018 22:27:18 GMT  
		Size: 839.2 KB (839157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776d8d23f1b98b1595b31f6da89774c22c62b8aaebfd909efc61ceb1ed261422`  
		Last Modified: Tue, 16 Oct 2018 22:27:15 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0423ae79bd292339ac64d511157cd27daa8549a458b0458dc17973fbee24f728`  
		Last Modified: Tue, 16 Oct 2018 22:27:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da59a4d6de8a9133c1d6d9c0d1283e1b6682911896bc48cffaf18801fd8c68d`  
		Last Modified: Tue, 16 Oct 2018 22:27:50 GMT  
		Size: 112.8 MB (112750420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c91b7c05050703e9d49121afe5ddebf91c012d50ab889a63fe7c7794757223`  
		Last Modified: Tue, 16 Oct 2018 22:27:15 GMT  
		Size: 246.7 KB (246651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a692f1b9459cceca9b0c8f14f2e31f86946b729851dcc75b1d0daa3715ebd63e`  
		Last Modified: Wed, 17 Oct 2018 00:41:00 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b0baf97116352ab1c389adb3dcc3f3be9f025b9abd511c8fef29cacc9779c3`  
		Last Modified: Wed, 17 Oct 2018 00:42:25 GMT  
		Size: 67.0 KB (66966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1673e0169a5329133d2b696f2f0d3b282cb32e28ff1fd2e9e05462ecc5c908de`  
		Last Modified: Wed, 17 Oct 2018 00:44:57 GMT  
		Size: 57.2 MB (57197424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.5-plus` - linux; 386

```console
$ docker pull tomee@sha256:85cde22f5227005c813323a3120e64bf16469e51c8d0b8f40316fa1e88f2c039
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.3 MB (242329902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66e9a2bec8de21269aa59054558cdfea9b3956914e92fad993c3bff2401b46ec`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:30:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 03:36:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 03:36:44 GMT
ENV LANG=C.UTF-8
# Wed, 17 Oct 2018 03:36:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 17 Oct 2018 03:36:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 11:09:42 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 11:09:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 11:10:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 11:10:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:04:12 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:04:13 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:04:13 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:05:37 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:05:41 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 14:07:10 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.0.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.0.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:07:10 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:07:10 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d8b973c47bc2b9e663e0405a9b6c4923e7edd886f9352807642bd012741c7b`  
		Last Modified: Tue, 16 Oct 2018 21:46:21 GMT  
		Size: 10.8 MB (10752717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc96b1bed2761a443ab819cbb860219f45d0a8bd03334cd84a81ee97399ee0`  
		Last Modified: Tue, 16 Oct 2018 21:46:19 GMT  
		Size: 4.6 MB (4555326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf8ff73b0a24a2d2c5ebfbcc6b8301349388a2562b5b1832e7db1ac71ae3d96`  
		Last Modified: Wed, 17 Oct 2018 03:51:09 GMT  
		Size: 861.8 KB (861772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a50ad6c047d63f8288897510a2551fec276a69dd76441d34df7ae5dbfbc757`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba1dba5b34132ca34ccd824ca39c484e958be83902abb87c823d8aa6965e7da`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2582ffd7014adc4b600f142afd34bd45a6f1084200f83de9372ac5541e2802`  
		Last Modified: Tue, 30 Oct 2018 11:16:02 GMT  
		Size: 122.6 MB (122609361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849a60206ec57d15465bf6d6ac94195db298a6ca94f0e961c2cef7dd8e6f67f5`  
		Last Modified: Tue, 30 Oct 2018 11:15:38 GMT  
		Size: 246.7 KB (246683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91148153248302d0db1f1ee32a9c6394bf20b9338edcd6f16f83d6db8dc1976`  
		Last Modified: Tue, 30 Oct 2018 14:11:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413fcc578b4fe28671ae5d77e471037700e69039b49bf9f53472a5044cf3ef57`  
		Last Modified: Tue, 30 Oct 2018 14:12:34 GMT  
		Size: 66.9 KB (66943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cceeba7aea15c8f2103a9d0ae6620a93e6dcca0bf22a47548901c051e7ca0b3`  
		Last Modified: Tue, 30 Oct 2018 14:13:58 GMT  
		Size: 57.2 MB (57197350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.5-plus` - linux; ppc64le

```console
$ docker pull tomee@sha256:f27694b716925a309166a514ca722fdeb7dc14a4b3e8903fb3c6bea1d58f143e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.7 MB (232737841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ce3e02de06a13a38568ab637a6c61f21f4b6efd411b024b580f22742e72ce3e`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:21:55 GMT
ADD file:a59c24e738306d5a76eda32c17347983843a394953e466fc10b997cf1398c4ed in / 
# Tue, 16 Oct 2018 08:21:57 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:48:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:48:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 15:15:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:15:24 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 15:15:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 15:15:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 15:15:44 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 15:15:52 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:43:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:43:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:47:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:47:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:30:20 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:30:23 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:30:24 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:32:06 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:32:12 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 31 Oct 2018 10:34:01 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.0.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.0.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:34:02 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:34:03 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:93d83403cab11249f38bea785ef4fc2d2b4cf9dd1295ad181f3c457ab4d4ea4b`  
		Last Modified: Tue, 16 Oct 2018 08:30:05 GMT  
		Size: 45.6 MB (45595514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ec9429d785df2991e77ea98b51ceeaa4ba80bcb51ce5d583e298525463146a`  
		Last Modified: Tue, 16 Oct 2018 11:06:51 GMT  
		Size: 9.9 MB (9943336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2367a02f5abb1557873986462bae2faef06a1b1fc0bd094d8f2a1dfdae33798e`  
		Last Modified: Tue, 16 Oct 2018 11:06:48 GMT  
		Size: 4.3 MB (4289821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19512a51eca885874336832af8357c995b28646c233136ff5a484d748af437a`  
		Last Modified: Tue, 16 Oct 2018 15:34:57 GMT  
		Size: 848.3 KB (848330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009ac02b22eca01c54f895f29b03222f698522307cb6a3fcbe1e55b97e123ed9`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea4543ef0daeccff13d600a6def3496001fdcc344ec2c9a6d63621c9a1dce0f`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050d1332dd2b829ac78cf297c3c9b062cb9f00311fcf7c43022310fe8737e3e2`  
		Last Modified: Wed, 31 Oct 2018 08:20:04 GMT  
		Size: 114.5 MB (114548674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2385b91212622165daaa25696049c403a6a3c312ae1e51388f930ff39a7956`  
		Last Modified: Wed, 31 Oct 2018 08:19:30 GMT  
		Size: 246.8 KB (246772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe2fc2806b97676673ae4f61d5e0076d04d6769cc0657b595cb42066197590a`  
		Last Modified: Wed, 31 Oct 2018 10:40:47 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c177061e19cd0ae03445c0259dc1096e15717f6e8763846c4d8281a1439fe1`  
		Last Modified: Wed, 31 Oct 2018 10:42:15 GMT  
		Size: 67.0 KB (66988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ace7730fc970b438457fcf087a8fda3ce8f688de192e5d7d0904f148f2ce19`  
		Last Modified: Wed, 31 Oct 2018 10:43:50 GMT  
		Size: 57.2 MB (57197844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.5-plus` - linux; s390x

```console
$ docker pull tomee@sha256:0a97683c1d1aca755c5684c07c2d05139ec91d84d409097155defb4499f5a8db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.3 MB (232346876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21be6a5ee660c007c78d395c0b65b878d1b2d8297a961eba3b30a0300bda3783`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 13:06:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:06:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:06:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 12:09:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 12:09:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 12:09:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 12:09:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:13:58 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:13:58 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:13:59 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:15:05 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:15:09 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 14:16:01 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.0.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.0.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:16:01 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:16:02 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadb55fe60f3a83b7078ad97271acf0fd19b4414edf56bfbb07929744d5f7dce`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 863.7 KB (863652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecb5fac3a19302c69f5ee9494fd6c23d3d5dd418d59b9ea6a400cde0b0ae69e`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3565def30ebfc0c8c4a44f336ec11f69a92101319367ead0b1272905de65b629`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d108ec790a13528613333148f37b0b32735ca046ddfe165916fbbdaa536b9e`  
		Last Modified: Tue, 30 Oct 2018 12:13:07 GMT  
		Size: 114.1 MB (114137466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae3dd31465d93acd9f4060b71c585db6d729f83ab4ed961ec9a5356a4b80d3`  
		Last Modified: Tue, 30 Oct 2018 12:12:49 GMT  
		Size: 246.7 KB (246718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29f8d77836e77bcb36fb3d909583bf4af2d3cc4007daa9a9dedb4422b5449cc`  
		Last Modified: Tue, 30 Oct 2018 14:18:18 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1613f2f9b03d2ffb208952ab90aec66974189f6f04dfebb898b8fbafa75886cf`  
		Last Modified: Tue, 30 Oct 2018 14:19:04 GMT  
		Size: 66.9 KB (66944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ec4ef68e876cbfdeee394de93fa55011e42ba2fb4f973da1e0144d61a5e438`  
		Last Modified: Tue, 30 Oct 2018 14:19:57 GMT  
		Size: 57.2 MB (57197403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:8-jre-7.0.5-webprofile`

```console
$ docker pull tomee@sha256:05e76d4afd006b0cf6e7f6aa94176b8f916b8eb890ae8f3b1438fb279448c531
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

### `tomee:8-jre-7.0.5-webprofile` - linux; amd64

```console
$ docker pull tomee@sha256:a54833a75b00fe3d4bb24b1eb68c3f1910a7ae755ab670d6c4c915b19dfed1eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.2 MB (224161815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb1103c5254f68602a9d9578ad953dc4d99cc10a2598cdb315a56ba93a4b0201`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:28:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:28:06 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:28:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:28:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:30:29 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:30:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:31:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:31:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 05:31:41 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 05:31:42 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 05:31:42 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 05:34:45 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 05:34:50 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 05:37:44 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 05:37:44 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 05:37:44 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21441932c53a4078f379c7c6d299370a6eaee79c862a29db2e25fec39106779`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 852.9 KB (852895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa76b0d2509232e863931fc1743f1ca2dba3bebdf5f72b4280fae59536303ce7`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346fd8610875e8ba7753030b5c197ad56fe76aa4e45d1e70e4b58366e93177c3`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca5d6af9022c9c3b436792a01c58dd29490430d28b04f70385f308e3bdae8a6`  
		Last Modified: Mon, 29 Oct 2018 23:40:07 GMT  
		Size: 122.1 MB (122121999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06cfa2cea32b36c8f5dcc8605166d1f8b72cf02e44163dbf7d14e0379286b55`  
		Last Modified: Mon, 29 Oct 2018 23:39:44 GMT  
		Size: 246.7 KB (246728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c094b3bc8129299958e3103ea5962297e112f8623257dd6d3d72fd739b4ed2dc`  
		Last Modified: Tue, 30 Oct 2018 05:44:37 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0eb5d22768e01d3ae538541bbef24179c0f6bcabe15824faa85c70579403e0`  
		Last Modified: Tue, 30 Oct 2018 05:45:50 GMT  
		Size: 67.0 KB (66961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c674b37135751dee8faa3e215710d17e2d9973bfaae8bb4c1ad2e4c87066d1`  
		Last Modified: Tue, 30 Oct 2018 05:47:42 GMT  
		Size: 40.5 MB (40486698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.5-webprofile` - linux; arm variant v5

```console
$ docker pull tomee@sha256:6c60098c7d4a8e44a1252a7d4ea00181eebfc94106b0eaecceb3453aac128e8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.6 MB (211551977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c8c4d88b9b3f13ac16d7f5d9cb2233f9f9f96bcd493388391a57b2aec4dc990`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:59 GMT
ADD file:9400a194c6dcf24f439664aab3a28cb7dbf93753b71d2756dbaf872d294fbb8e in / 
# Tue, 16 Oct 2018 08:55:00 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:00:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:00:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:47:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 12:47:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 12:47:32 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 10:04:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 10:04:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 10:05:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 10:06:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:39:10 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:39:11 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:39:11 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:42:06 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:42:10 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 31 Oct 2018 10:44:14 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:44:15 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:44:15 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:67cd7720dfa3de15234643bf308008813fd129e03429f026775738064b364e24`  
		Last Modified: Tue, 16 Oct 2018 09:04:05 GMT  
		Size: 44.0 MB (44033067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd276b766fa97ab74e113c92ed57093015cfc9c9030be8ba22b5e752cd8e8877`  
		Last Modified: Tue, 16 Oct 2018 10:09:36 GMT  
		Size: 9.8 MB (9810396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b000ac5a1a22a2dea4538586726677f91c42079cf289a8eb88fdf9c65fda7f6`  
		Last Modified: Tue, 16 Oct 2018 10:09:35 GMT  
		Size: 4.2 MB (4153754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cbc8dc4eb12ea31f2f137322dcd35e379750d13318d6521d7d557989a9c73e`  
		Last Modified: Tue, 16 Oct 2018 12:56:57 GMT  
		Size: 845.9 KB (845906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a97950afff8d9b7263a96992060b43bf115f908bd1f262de6f93c0418cc9817`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693401423272c67e47e2c164426ccd8a7f7c84c1aaa9ccf0db49f23cf10ece20`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa4cd8ea842cbf55631460424eebe375e8955fa33375ba756948f3200aa260b`  
		Last Modified: Wed, 31 Oct 2018 09:18:50 GMT  
		Size: 111.9 MB (111907574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2f5878cb92f7b7cabd53ba68c69652be468fe7e00b7a82ecff33496f1357c7`  
		Last Modified: Wed, 31 Oct 2018 09:18:21 GMT  
		Size: 246.7 KB (246748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7fe3f0758a210ee8428de088c4f9d16e74526003cd6f0e98c680a75db3a4ef`  
		Last Modified: Wed, 31 Oct 2018 10:47:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a996192996ebfb224220a874f072e475829676d0085f8292f3f7ed91d851d6a6`  
		Last Modified: Wed, 31 Oct 2018 10:48:58 GMT  
		Size: 67.0 KB (66998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25652c2a3f0b40e635d4ee8b45d2e555b6cc33749fce04ac56aa5ebcf1d32160`  
		Last Modified: Wed, 31 Oct 2018 10:50:35 GMT  
		Size: 40.5 MB (40486972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.5-webprofile` - linux; arm variant v7

```console
$ docker pull tomee@sha256:e08ddfb7ef3131768b82b3916c981b727de736f8cb1511dd09b595aa17f9645f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.6 MB (236607722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ef8f2d2a35b79bd2f601e332921b25b22cc171c29558f1f351984569e22d93`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:59:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:59:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:59:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:59:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:59:27 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:59:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:00:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:00:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 15:31:33 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 05 May 2018 15:31:34 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 05 May 2018 15:31:34 GMT
WORKDIR /usr/local/tomee
# Sat, 05 May 2018 15:33:15 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 05 May 2018 15:33:19 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 25 Jul 2018 12:18:22 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 23 Jan 2019 19:11:03 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 19:11:04 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df26ddf71ea9e82f175e400809b8f06871dd0937c5a90f4ffe95286544a9f719`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 830.3 KB (830332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c21322a9c89724512d6ea5faa10299c60c8a605d6f563c84c28177db8d2770`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2270f04a4be61f52577232813fff92e797d3fc190d52f71411afc26b0911f8e4`  
		Last Modified: Sat, 05 May 2018 13:29:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dc1aba58c8cd285639cac6b03c823e5fcdb91aa8922652e7d9387aaca6fa4`  
		Last Modified: Sat, 05 May 2018 13:29:37 GMT  
		Size: 139.5 MB (139501760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02869ec2bb3864b06abd435610eb6849d5c62426517de1a603ef6fe43c7d3815`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 272.1 KB (272082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b2945e8eb5c51597eeaa0b9140cd51356fdea2bdbc0e85b10b3004a32453fc`  
		Last Modified: Sat, 05 May 2018 15:39:04 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ea1b50ffe80218f2c1fa7833cc652669d1913cd0332790b2f7ee4518133965`  
		Last Modified: Sat, 05 May 2018 15:40:24 GMT  
		Size: 67.0 KB (66983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae84fe219a8ea51aba0f967de9d5e0db3270f53c720984f83a859ee7418f1377`  
		Last Modified: Wed, 25 Jul 2018 12:19:38 GMT  
		Size: 40.5 MB (40486959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.5-webprofile` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:8f314ef9c37ba716949eb0bf3fc224bb485fe9698d4d3cccbf89809cb82ac46a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211292846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ad0a802da5cb285bd33c63c3016093ba41ca041e2f22f87417d48b88913bf8`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 22:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:09:34 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 22:09:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 22:09:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 22:09:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 22:09:44 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 22:09:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 22:09:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 22:14:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 22:14:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 17 Oct 2018 00:21:25 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 Oct 2018 00:21:29 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 17 Oct 2018 00:21:31 GMT
WORKDIR /usr/local/tomee
# Wed, 17 Oct 2018 00:25:38 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 17 Oct 2018 00:25:50 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 17 Oct 2018 00:32:30 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 17 Oct 2018 00:32:35 GMT
EXPOSE 8080/tcp
# Wed, 17 Oct 2018 00:32:38 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec37afe1ce9c80cab1c8fdc0d193c9f92f61adf7c60d6bdbc2b01735eac25b6`  
		Last Modified: Tue, 16 Oct 2018 22:27:18 GMT  
		Size: 839.2 KB (839157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776d8d23f1b98b1595b31f6da89774c22c62b8aaebfd909efc61ceb1ed261422`  
		Last Modified: Tue, 16 Oct 2018 22:27:15 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0423ae79bd292339ac64d511157cd27daa8549a458b0458dc17973fbee24f728`  
		Last Modified: Tue, 16 Oct 2018 22:27:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da59a4d6de8a9133c1d6d9c0d1283e1b6682911896bc48cffaf18801fd8c68d`  
		Last Modified: Tue, 16 Oct 2018 22:27:50 GMT  
		Size: 112.8 MB (112750420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c91b7c05050703e9d49121afe5ddebf91c012d50ab889a63fe7c7794757223`  
		Last Modified: Tue, 16 Oct 2018 22:27:15 GMT  
		Size: 246.7 KB (246651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a692f1b9459cceca9b0c8f14f2e31f86946b729851dcc75b1d0daa3715ebd63e`  
		Last Modified: Wed, 17 Oct 2018 00:41:00 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b0baf97116352ab1c389adb3dcc3f3be9f025b9abd511c8fef29cacc9779c3`  
		Last Modified: Wed, 17 Oct 2018 00:42:25 GMT  
		Size: 67.0 KB (66966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47757d28eaf75474b406c48c77b73aa1437c79b5c85cb62dbb0ea9b46d0d4097`  
		Last Modified: Wed, 17 Oct 2018 00:45:18 GMT  
		Size: 40.5 MB (40486722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.5-webprofile` - linux; 386

```console
$ docker pull tomee@sha256:f3fa46759b125c2c811d926840fd583dc53cc7a149e2bd4d6bc0d4caca5cacdf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225619273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4323c787432bf169eaa7b530069a461add1a85a62337f72e74e3fe06d5ae545a`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:30:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 03:36:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 03:36:44 GMT
ENV LANG=C.UTF-8
# Wed, 17 Oct 2018 03:36:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 17 Oct 2018 03:36:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 11:09:42 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 11:09:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 11:10:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 11:10:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:04:12 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:04:13 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:04:13 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:05:37 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:05:41 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 14:07:26 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:07:26 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:07:27 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d8b973c47bc2b9e663e0405a9b6c4923e7edd886f9352807642bd012741c7b`  
		Last Modified: Tue, 16 Oct 2018 21:46:21 GMT  
		Size: 10.8 MB (10752717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc96b1bed2761a443ab819cbb860219f45d0a8bd03334cd84a81ee97399ee0`  
		Last Modified: Tue, 16 Oct 2018 21:46:19 GMT  
		Size: 4.6 MB (4555326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf8ff73b0a24a2d2c5ebfbcc6b8301349388a2562b5b1832e7db1ac71ae3d96`  
		Last Modified: Wed, 17 Oct 2018 03:51:09 GMT  
		Size: 861.8 KB (861772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a50ad6c047d63f8288897510a2551fec276a69dd76441d34df7ae5dbfbc757`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba1dba5b34132ca34ccd824ca39c484e958be83902abb87c823d8aa6965e7da`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2582ffd7014adc4b600f142afd34bd45a6f1084200f83de9372ac5541e2802`  
		Last Modified: Tue, 30 Oct 2018 11:16:02 GMT  
		Size: 122.6 MB (122609361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849a60206ec57d15465bf6d6ac94195db298a6ca94f0e961c2cef7dd8e6f67f5`  
		Last Modified: Tue, 30 Oct 2018 11:15:38 GMT  
		Size: 246.7 KB (246683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91148153248302d0db1f1ee32a9c6394bf20b9338edcd6f16f83d6db8dc1976`  
		Last Modified: Tue, 30 Oct 2018 14:11:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413fcc578b4fe28671ae5d77e471037700e69039b49bf9f53472a5044cf3ef57`  
		Last Modified: Tue, 30 Oct 2018 14:12:34 GMT  
		Size: 66.9 KB (66943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7e4724fcaedb45fc87a24b1053f3a77cc00293ddbab4a17c7334cd1d48b3b4`  
		Last Modified: Tue, 30 Oct 2018 14:14:15 GMT  
		Size: 40.5 MB (40486721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.5-webprofile` - linux; ppc64le

```console
$ docker pull tomee@sha256:3dd79cfd625038c0b330e96bea1dcfc037468ade42e3c4757ecde17fca646484
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.0 MB (216026969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f5eac40123d5f1d770148f7e3d8f620007088d71bac14a0307aef69e69dd1d6`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:21:55 GMT
ADD file:a59c24e738306d5a76eda32c17347983843a394953e466fc10b997cf1398c4ed in / 
# Tue, 16 Oct 2018 08:21:57 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:48:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:48:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 15:15:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:15:24 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 15:15:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 15:15:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 15:15:44 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 15:15:52 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:43:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:43:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:47:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:47:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:30:20 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:30:23 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:30:24 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:32:06 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:32:12 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 31 Oct 2018 10:34:28 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:34:30 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:34:32 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:93d83403cab11249f38bea785ef4fc2d2b4cf9dd1295ad181f3c457ab4d4ea4b`  
		Last Modified: Tue, 16 Oct 2018 08:30:05 GMT  
		Size: 45.6 MB (45595514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ec9429d785df2991e77ea98b51ceeaa4ba80bcb51ce5d583e298525463146a`  
		Last Modified: Tue, 16 Oct 2018 11:06:51 GMT  
		Size: 9.9 MB (9943336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2367a02f5abb1557873986462bae2faef06a1b1fc0bd094d8f2a1dfdae33798e`  
		Last Modified: Tue, 16 Oct 2018 11:06:48 GMT  
		Size: 4.3 MB (4289821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19512a51eca885874336832af8357c995b28646c233136ff5a484d748af437a`  
		Last Modified: Tue, 16 Oct 2018 15:34:57 GMT  
		Size: 848.3 KB (848330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009ac02b22eca01c54f895f29b03222f698522307cb6a3fcbe1e55b97e123ed9`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea4543ef0daeccff13d600a6def3496001fdcc344ec2c9a6d63621c9a1dce0f`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050d1332dd2b829ac78cf297c3c9b062cb9f00311fcf7c43022310fe8737e3e2`  
		Last Modified: Wed, 31 Oct 2018 08:20:04 GMT  
		Size: 114.5 MB (114548674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2385b91212622165daaa25696049c403a6a3c312ae1e51388f930ff39a7956`  
		Last Modified: Wed, 31 Oct 2018 08:19:30 GMT  
		Size: 246.8 KB (246772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe2fc2806b97676673ae4f61d5e0076d04d6769cc0657b595cb42066197590a`  
		Last Modified: Wed, 31 Oct 2018 10:40:47 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c177061e19cd0ae03445c0259dc1096e15717f6e8763846c4d8281a1439fe1`  
		Last Modified: Wed, 31 Oct 2018 10:42:15 GMT  
		Size: 67.0 KB (66988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36af1bbe9e82661e9ad805fbd2a702418ab986952f813e13816b6ed48d23d14d`  
		Last Modified: Wed, 31 Oct 2018 10:44:15 GMT  
		Size: 40.5 MB (40486972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.5-webprofile` - linux; s390x

```console
$ docker pull tomee@sha256:6739adf3f43625e560ceba2c3174adcc863944d35a3a4163ab74022c418519ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215636192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e84914da28e6593b01fea2bdcaae83146b9cf1946320a47e382b1031b01eca37`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 13:06:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:06:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:06:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 12:09:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 12:09:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 12:09:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 12:09:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:13:58 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:13:58 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:13:59 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:15:05 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:15:09 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 14:16:12 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.5/apache-tomee-7.0.5-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:16:13 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:16:13 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadb55fe60f3a83b7078ad97271acf0fd19b4414edf56bfbb07929744d5f7dce`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 863.7 KB (863652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecb5fac3a19302c69f5ee9494fd6c23d3d5dd418d59b9ea6a400cde0b0ae69e`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3565def30ebfc0c8c4a44f336ec11f69a92101319367ead0b1272905de65b629`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d108ec790a13528613333148f37b0b32735ca046ddfe165916fbbdaa536b9e`  
		Last Modified: Tue, 30 Oct 2018 12:13:07 GMT  
		Size: 114.1 MB (114137466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae3dd31465d93acd9f4060b71c585db6d729f83ab4ed961ec9a5356a4b80d3`  
		Last Modified: Tue, 30 Oct 2018 12:12:49 GMT  
		Size: 246.7 KB (246718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29f8d77836e77bcb36fb3d909583bf4af2d3cc4007daa9a9dedb4422b5449cc`  
		Last Modified: Tue, 30 Oct 2018 14:18:18 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1613f2f9b03d2ffb208952ab90aec66974189f6f04dfebb898b8fbafa75886cf`  
		Last Modified: Tue, 30 Oct 2018 14:19:04 GMT  
		Size: 66.9 KB (66944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdee4faea88b4eb9561bc3203a805eeaf6ad687199d3daf261e05fb906b9daf9`  
		Last Modified: Tue, 30 Oct 2018 14:20:08 GMT  
		Size: 40.5 MB (40486719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:8-jre-7.1.0-microprofile`

```console
$ docker pull tomee@sha256:5d599e04dc2e6a0ebc6ca56e889ac6cf4c83c9d8293a77b7f49671e5f8d158ae
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

### `tomee:8-jre-7.1.0-microprofile` - linux; amd64

```console
$ docker pull tomee@sha256:80b64dfefd406cb719edc76f5de5d54845f5a1ae57c070f1c33a0cd832258032
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.7 MB (224734729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9f2556ec6f50e39bbacce9fac4f90a3a196c188ce15efbb9ffca519df39546c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:28:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:28:06 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:28:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:28:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:30:29 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:30:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:31:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:31:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 05:31:41 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 05:31:42 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 05:31:42 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 05:34:45 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 05:34:50 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 05:39:51 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-microprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-microprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-microprofile-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-microprofile-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 05:39:52 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 05:39:52 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21441932c53a4078f379c7c6d299370a6eaee79c862a29db2e25fec39106779`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 852.9 KB (852895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa76b0d2509232e863931fc1743f1ca2dba3bebdf5f72b4280fae59536303ce7`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346fd8610875e8ba7753030b5c197ad56fe76aa4e45d1e70e4b58366e93177c3`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca5d6af9022c9c3b436792a01c58dd29490430d28b04f70385f308e3bdae8a6`  
		Last Modified: Mon, 29 Oct 2018 23:40:07 GMT  
		Size: 122.1 MB (122121999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06cfa2cea32b36c8f5dcc8605166d1f8b72cf02e44163dbf7d14e0379286b55`  
		Last Modified: Mon, 29 Oct 2018 23:39:44 GMT  
		Size: 246.7 KB (246728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c094b3bc8129299958e3103ea5962297e112f8623257dd6d3d72fd739b4ed2dc`  
		Last Modified: Tue, 30 Oct 2018 05:44:37 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0eb5d22768e01d3ae538541bbef24179c0f6bcabe15824faa85c70579403e0`  
		Last Modified: Tue, 30 Oct 2018 05:45:50 GMT  
		Size: 67.0 KB (66961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f016d50b625ac2432b43db2a62e45b6416d2870081e68889e7a3ba6f2eebf66b`  
		Last Modified: Tue, 30 Oct 2018 05:48:42 GMT  
		Size: 41.1 MB (41059612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-microprofile` - linux; arm variant v5

```console
$ docker pull tomee@sha256:564101e01b97b48244aa6ec8587bcb2ac7c734580726ba42c78db206152ba9c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.1 MB (212124941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae7f5de44289cb38cc83e0ed7b98afb8acce8413d4c076686c951b52c0165859`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:59 GMT
ADD file:9400a194c6dcf24f439664aab3a28cb7dbf93753b71d2756dbaf872d294fbb8e in / 
# Tue, 16 Oct 2018 08:55:00 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:00:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:00:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:47:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 12:47:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 12:47:32 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 10:04:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 10:04:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 10:05:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 10:06:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:39:10 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:39:11 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:39:11 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:42:06 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:42:10 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 31 Oct 2018 10:45:17 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-microprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-microprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-microprofile-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-microprofile-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:45:17 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:45:18 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:67cd7720dfa3de15234643bf308008813fd129e03429f026775738064b364e24`  
		Last Modified: Tue, 16 Oct 2018 09:04:05 GMT  
		Size: 44.0 MB (44033067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd276b766fa97ab74e113c92ed57093015cfc9c9030be8ba22b5e752cd8e8877`  
		Last Modified: Tue, 16 Oct 2018 10:09:36 GMT  
		Size: 9.8 MB (9810396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b000ac5a1a22a2dea4538586726677f91c42079cf289a8eb88fdf9c65fda7f6`  
		Last Modified: Tue, 16 Oct 2018 10:09:35 GMT  
		Size: 4.2 MB (4153754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cbc8dc4eb12ea31f2f137322dcd35e379750d13318d6521d7d557989a9c73e`  
		Last Modified: Tue, 16 Oct 2018 12:56:57 GMT  
		Size: 845.9 KB (845906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a97950afff8d9b7263a96992060b43bf115f908bd1f262de6f93c0418cc9817`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693401423272c67e47e2c164426ccd8a7f7c84c1aaa9ccf0db49f23cf10ece20`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa4cd8ea842cbf55631460424eebe375e8955fa33375ba756948f3200aa260b`  
		Last Modified: Wed, 31 Oct 2018 09:18:50 GMT  
		Size: 111.9 MB (111907574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2f5878cb92f7b7cabd53ba68c69652be468fe7e00b7a82ecff33496f1357c7`  
		Last Modified: Wed, 31 Oct 2018 09:18:21 GMT  
		Size: 246.7 KB (246748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7fe3f0758a210ee8428de088c4f9d16e74526003cd6f0e98c680a75db3a4ef`  
		Last Modified: Wed, 31 Oct 2018 10:47:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a996192996ebfb224220a874f072e475829676d0085f8292f3f7ed91d851d6a6`  
		Last Modified: Wed, 31 Oct 2018 10:48:58 GMT  
		Size: 67.0 KB (66998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fc220da6dad2191a9519183f5a54edac63a56994db019e00d235ff8323bfc8`  
		Last Modified: Wed, 31 Oct 2018 10:51:37 GMT  
		Size: 41.1 MB (41059936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-microprofile` - linux; arm variant v7

```console
$ docker pull tomee@sha256:26617de8cf5f586b98e7cb4857848054d42f130be26a9bd82629ec85a51af65a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.2 MB (237180687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:841c5fdb0b754cfcd3dd2b5a8f177595c1b8af24e123743e2613c2b7e1de1ae9`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:59:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:59:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:59:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:59:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:59:27 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:59:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:00:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:00:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 15:31:33 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 05 May 2018 15:31:34 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 05 May 2018 15:31:34 GMT
WORKDIR /usr/local/tomee
# Sat, 05 May 2018 15:33:15 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 05 May 2018 15:33:19 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 17 Oct 2018 11:59:30 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-microprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-microprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-microprofile-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-microprofile-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 23 Jan 2019 19:11:21 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 19:11:22 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df26ddf71ea9e82f175e400809b8f06871dd0937c5a90f4ffe95286544a9f719`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 830.3 KB (830332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c21322a9c89724512d6ea5faa10299c60c8a605d6f563c84c28177db8d2770`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2270f04a4be61f52577232813fff92e797d3fc190d52f71411afc26b0911f8e4`  
		Last Modified: Sat, 05 May 2018 13:29:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dc1aba58c8cd285639cac6b03c823e5fcdb91aa8922652e7d9387aaca6fa4`  
		Last Modified: Sat, 05 May 2018 13:29:37 GMT  
		Size: 139.5 MB (139501760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02869ec2bb3864b06abd435610eb6849d5c62426517de1a603ef6fe43c7d3815`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 272.1 KB (272082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b2945e8eb5c51597eeaa0b9140cd51356fdea2bdbc0e85b10b3004a32453fc`  
		Last Modified: Sat, 05 May 2018 15:39:04 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ea1b50ffe80218f2c1fa7833cc652669d1913cd0332790b2f7ee4518133965`  
		Last Modified: Sat, 05 May 2018 15:40:24 GMT  
		Size: 67.0 KB (66983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28cf4d50c55d760546f549b50f67b8ea9cc0fda7b5a4e5ecb1c7a5ef2b74b6ac`  
		Last Modified: Wed, 17 Oct 2018 12:03:20 GMT  
		Size: 41.1 MB (41059924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-microprofile` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:3aafeab02df41b7e4e3cf60c8c128722c2e102409c95d36571b37311a718476b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.9 MB (211865730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a3d2d45f7d7192777810ff48870679592517c44562ea5dcc68ae563cb430b0`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 22:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:09:34 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 22:09:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 22:09:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 22:09:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 22:09:44 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 22:09:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 22:09:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 22:14:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 22:14:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 17 Oct 2018 00:21:25 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 Oct 2018 00:21:29 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 17 Oct 2018 00:21:31 GMT
WORKDIR /usr/local/tomee
# Wed, 17 Oct 2018 00:25:38 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 17 Oct 2018 00:25:50 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 17 Oct 2018 00:36:27 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-microprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-microprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-microprofile-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-microprofile-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 17 Oct 2018 00:36:29 GMT
EXPOSE 8080/tcp
# Wed, 17 Oct 2018 00:36:33 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec37afe1ce9c80cab1c8fdc0d193c9f92f61adf7c60d6bdbc2b01735eac25b6`  
		Last Modified: Tue, 16 Oct 2018 22:27:18 GMT  
		Size: 839.2 KB (839157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776d8d23f1b98b1595b31f6da89774c22c62b8aaebfd909efc61ceb1ed261422`  
		Last Modified: Tue, 16 Oct 2018 22:27:15 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0423ae79bd292339ac64d511157cd27daa8549a458b0458dc17973fbee24f728`  
		Last Modified: Tue, 16 Oct 2018 22:27:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da59a4d6de8a9133c1d6d9c0d1283e1b6682911896bc48cffaf18801fd8c68d`  
		Last Modified: Tue, 16 Oct 2018 22:27:50 GMT  
		Size: 112.8 MB (112750420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c91b7c05050703e9d49121afe5ddebf91c012d50ab889a63fe7c7794757223`  
		Last Modified: Tue, 16 Oct 2018 22:27:15 GMT  
		Size: 246.7 KB (246651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a692f1b9459cceca9b0c8f14f2e31f86946b729851dcc75b1d0daa3715ebd63e`  
		Last Modified: Wed, 17 Oct 2018 00:41:00 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b0baf97116352ab1c389adb3dcc3f3be9f025b9abd511c8fef29cacc9779c3`  
		Last Modified: Wed, 17 Oct 2018 00:42:25 GMT  
		Size: 67.0 KB (66966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9541a6d279ad3fdae4f9e73a967fda8a3c312a2de22ed9a1a3c4db2846555a`  
		Last Modified: Wed, 17 Oct 2018 00:46:38 GMT  
		Size: 41.1 MB (41059606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-microprofile` - linux; 386

```console
$ docker pull tomee@sha256:f8ce06d0ad2f66f63eecca1eef5ea18d149fd02f5cda35102cd60f6c175e5098
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.2 MB (226192122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42ab3502eba5c618b757fec0828e1e142b918efb301202a36fec64cd483d09d2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:30:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 03:36:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 03:36:44 GMT
ENV LANG=C.UTF-8
# Wed, 17 Oct 2018 03:36:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 17 Oct 2018 03:36:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 11:09:42 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 11:09:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 11:10:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 11:10:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:04:12 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:04:13 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:04:13 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:05:37 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:05:41 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 14:08:26 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-microprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-microprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-microprofile-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-microprofile-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:08:26 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:08:26 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d8b973c47bc2b9e663e0405a9b6c4923e7edd886f9352807642bd012741c7b`  
		Last Modified: Tue, 16 Oct 2018 21:46:21 GMT  
		Size: 10.8 MB (10752717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc96b1bed2761a443ab819cbb860219f45d0a8bd03334cd84a81ee97399ee0`  
		Last Modified: Tue, 16 Oct 2018 21:46:19 GMT  
		Size: 4.6 MB (4555326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf8ff73b0a24a2d2c5ebfbcc6b8301349388a2562b5b1832e7db1ac71ae3d96`  
		Last Modified: Wed, 17 Oct 2018 03:51:09 GMT  
		Size: 861.8 KB (861772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a50ad6c047d63f8288897510a2551fec276a69dd76441d34df7ae5dbfbc757`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba1dba5b34132ca34ccd824ca39c484e958be83902abb87c823d8aa6965e7da`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2582ffd7014adc4b600f142afd34bd45a6f1084200f83de9372ac5541e2802`  
		Last Modified: Tue, 30 Oct 2018 11:16:02 GMT  
		Size: 122.6 MB (122609361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849a60206ec57d15465bf6d6ac94195db298a6ca94f0e961c2cef7dd8e6f67f5`  
		Last Modified: Tue, 30 Oct 2018 11:15:38 GMT  
		Size: 246.7 KB (246683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91148153248302d0db1f1ee32a9c6394bf20b9338edcd6f16f83d6db8dc1976`  
		Last Modified: Tue, 30 Oct 2018 14:11:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413fcc578b4fe28671ae5d77e471037700e69039b49bf9f53472a5044cf3ef57`  
		Last Modified: Tue, 30 Oct 2018 14:12:34 GMT  
		Size: 66.9 KB (66943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da02265fc98271ff0ff6c1cbd00264db09fcc9115b3114f977bc85b106e85bb7`  
		Last Modified: Tue, 30 Oct 2018 14:15:12 GMT  
		Size: 41.1 MB (41059570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-microprofile` - linux; ppc64le

```console
$ docker pull tomee@sha256:b313c2a6d7f5322cff6086f863eedb463ae80559bef4715707ac879fc7c47083
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.6 MB (216599943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6e74522ad47edb830df237e1116b2977b2c4d96d26aae8ab4dd48ac28e48bef`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:21:55 GMT
ADD file:a59c24e738306d5a76eda32c17347983843a394953e466fc10b997cf1398c4ed in / 
# Tue, 16 Oct 2018 08:21:57 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:48:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:48:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 15:15:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:15:24 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 15:15:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 15:15:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 15:15:44 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 15:15:52 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:43:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:43:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:47:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:47:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:30:20 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:30:23 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:30:24 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:32:06 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:32:12 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 31 Oct 2018 10:36:08 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-microprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-microprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-microprofile-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-microprofile-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:36:13 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:36:15 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:93d83403cab11249f38bea785ef4fc2d2b4cf9dd1295ad181f3c457ab4d4ea4b`  
		Last Modified: Tue, 16 Oct 2018 08:30:05 GMT  
		Size: 45.6 MB (45595514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ec9429d785df2991e77ea98b51ceeaa4ba80bcb51ce5d583e298525463146a`  
		Last Modified: Tue, 16 Oct 2018 11:06:51 GMT  
		Size: 9.9 MB (9943336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2367a02f5abb1557873986462bae2faef06a1b1fc0bd094d8f2a1dfdae33798e`  
		Last Modified: Tue, 16 Oct 2018 11:06:48 GMT  
		Size: 4.3 MB (4289821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19512a51eca885874336832af8357c995b28646c233136ff5a484d748af437a`  
		Last Modified: Tue, 16 Oct 2018 15:34:57 GMT  
		Size: 848.3 KB (848330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009ac02b22eca01c54f895f29b03222f698522307cb6a3fcbe1e55b97e123ed9`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea4543ef0daeccff13d600a6def3496001fdcc344ec2c9a6d63621c9a1dce0f`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050d1332dd2b829ac78cf297c3c9b062cb9f00311fcf7c43022310fe8737e3e2`  
		Last Modified: Wed, 31 Oct 2018 08:20:04 GMT  
		Size: 114.5 MB (114548674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2385b91212622165daaa25696049c403a6a3c312ae1e51388f930ff39a7956`  
		Last Modified: Wed, 31 Oct 2018 08:19:30 GMT  
		Size: 246.8 KB (246772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe2fc2806b97676673ae4f61d5e0076d04d6769cc0657b595cb42066197590a`  
		Last Modified: Wed, 31 Oct 2018 10:40:47 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c177061e19cd0ae03445c0259dc1096e15717f6e8763846c4d8281a1439fe1`  
		Last Modified: Wed, 31 Oct 2018 10:42:15 GMT  
		Size: 67.0 KB (66988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cde53428fce85b9f62856c677d81236a154df01bef595e66b94f1f9ded007ce`  
		Last Modified: Wed, 31 Oct 2018 10:45:23 GMT  
		Size: 41.1 MB (41059946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-microprofile` - linux; s390x

```console
$ docker pull tomee@sha256:3d9b0a8606c5818f1afad54d50ee4cc4a53ec43075ca50c4ac33f6e4b5094bb1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.2 MB (216209001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6375d4609c5e0ca2e1f5f160828f884de6a6b32c78f39e49f5eb29f4ffa91b7a`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 13:06:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:06:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:06:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 12:09:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 12:09:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 12:09:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 12:09:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:13:58 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:13:58 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:13:59 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:15:05 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:15:09 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 14:16:47 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-microprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-microprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-microprofile-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-microprofile-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:16:47 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:16:47 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadb55fe60f3a83b7078ad97271acf0fd19b4414edf56bfbb07929744d5f7dce`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 863.7 KB (863652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecb5fac3a19302c69f5ee9494fd6c23d3d5dd418d59b9ea6a400cde0b0ae69e`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3565def30ebfc0c8c4a44f336ec11f69a92101319367ead0b1272905de65b629`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d108ec790a13528613333148f37b0b32735ca046ddfe165916fbbdaa536b9e`  
		Last Modified: Tue, 30 Oct 2018 12:13:07 GMT  
		Size: 114.1 MB (114137466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae3dd31465d93acd9f4060b71c585db6d729f83ab4ed961ec9a5356a4b80d3`  
		Last Modified: Tue, 30 Oct 2018 12:12:49 GMT  
		Size: 246.7 KB (246718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29f8d77836e77bcb36fb3d909583bf4af2d3cc4007daa9a9dedb4422b5449cc`  
		Last Modified: Tue, 30 Oct 2018 14:18:18 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1613f2f9b03d2ffb208952ab90aec66974189f6f04dfebb898b8fbafa75886cf`  
		Last Modified: Tue, 30 Oct 2018 14:19:04 GMT  
		Size: 66.9 KB (66944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb86965e2f5cc9da1e170f8809de5a6a02776c3556e31ff489d856ba0893c3d`  
		Last Modified: Tue, 30 Oct 2018 14:20:51 GMT  
		Size: 41.1 MB (41059528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:8-jre-7.1.0-plume`

```console
$ docker pull tomee@sha256:3a5d3e6db00fc8034f2ba652bc104c2e778c9e8dd324fd5c76ccbbcdf38e5aef
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

### `tomee:8-jre-7.1.0-plume` - linux; amd64

```console
$ docker pull tomee@sha256:87b117042211e7cbc51cc98d56ad41b26a833e7334bbcb390e66f95ea347e945
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248261223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94ffdedfba2a755d2b3fa64a2cb3d9040a15ffffe49da745a5256bfe49fe2c8c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:28:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:28:06 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:28:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:28:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:30:29 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:30:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:31:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:31:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 05:31:41 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 05:31:42 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 05:31:42 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 05:34:45 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 05:34:50 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 05:38:17 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 05:38:17 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 05:38:17 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21441932c53a4078f379c7c6d299370a6eaee79c862a29db2e25fec39106779`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 852.9 KB (852895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa76b0d2509232e863931fc1743f1ca2dba3bebdf5f72b4280fae59536303ce7`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346fd8610875e8ba7753030b5c197ad56fe76aa4e45d1e70e4b58366e93177c3`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca5d6af9022c9c3b436792a01c58dd29490430d28b04f70385f308e3bdae8a6`  
		Last Modified: Mon, 29 Oct 2018 23:40:07 GMT  
		Size: 122.1 MB (122121999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06cfa2cea32b36c8f5dcc8605166d1f8b72cf02e44163dbf7d14e0379286b55`  
		Last Modified: Mon, 29 Oct 2018 23:39:44 GMT  
		Size: 246.7 KB (246728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c094b3bc8129299958e3103ea5962297e112f8623257dd6d3d72fd739b4ed2dc`  
		Last Modified: Tue, 30 Oct 2018 05:44:37 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0eb5d22768e01d3ae538541bbef24179c0f6bcabe15824faa85c70579403e0`  
		Last Modified: Tue, 30 Oct 2018 05:45:50 GMT  
		Size: 67.0 KB (66961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1ef3c41ebb8af13bd7bf4871b7009d4f18a3a1c236bf018a77e1c9523fb1d9`  
		Last Modified: Tue, 30 Oct 2018 05:48:03 GMT  
		Size: 64.6 MB (64586106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-plume` - linux; arm variant v5

```console
$ docker pull tomee@sha256:e32f0add6ce70609538f4e245e10e8d3cd7078c696447b3985cc39d3391c3d24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.7 MB (235651278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:528b6f62d582d77013979252ed7d5050d926f9a0519c0e401ec96a8766c81af0`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:59 GMT
ADD file:9400a194c6dcf24f439664aab3a28cb7dbf93753b71d2756dbaf872d294fbb8e in / 
# Tue, 16 Oct 2018 08:55:00 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:00:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:00:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:47:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 12:47:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 12:47:32 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 10:04:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 10:04:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 10:05:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 10:06:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:39:10 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:39:11 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:39:11 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:42:06 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:42:10 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 31 Oct 2018 10:44:37 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:44:37 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:44:38 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:67cd7720dfa3de15234643bf308008813fd129e03429f026775738064b364e24`  
		Last Modified: Tue, 16 Oct 2018 09:04:05 GMT  
		Size: 44.0 MB (44033067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd276b766fa97ab74e113c92ed57093015cfc9c9030be8ba22b5e752cd8e8877`  
		Last Modified: Tue, 16 Oct 2018 10:09:36 GMT  
		Size: 9.8 MB (9810396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b000ac5a1a22a2dea4538586726677f91c42079cf289a8eb88fdf9c65fda7f6`  
		Last Modified: Tue, 16 Oct 2018 10:09:35 GMT  
		Size: 4.2 MB (4153754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cbc8dc4eb12ea31f2f137322dcd35e379750d13318d6521d7d557989a9c73e`  
		Last Modified: Tue, 16 Oct 2018 12:56:57 GMT  
		Size: 845.9 KB (845906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a97950afff8d9b7263a96992060b43bf115f908bd1f262de6f93c0418cc9817`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693401423272c67e47e2c164426ccd8a7f7c84c1aaa9ccf0db49f23cf10ece20`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa4cd8ea842cbf55631460424eebe375e8955fa33375ba756948f3200aa260b`  
		Last Modified: Wed, 31 Oct 2018 09:18:50 GMT  
		Size: 111.9 MB (111907574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2f5878cb92f7b7cabd53ba68c69652be468fe7e00b7a82ecff33496f1357c7`  
		Last Modified: Wed, 31 Oct 2018 09:18:21 GMT  
		Size: 246.7 KB (246748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7fe3f0758a210ee8428de088c4f9d16e74526003cd6f0e98c680a75db3a4ef`  
		Last Modified: Wed, 31 Oct 2018 10:47:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a996192996ebfb224220a874f072e475829676d0085f8292f3f7ed91d851d6a6`  
		Last Modified: Wed, 31 Oct 2018 10:48:58 GMT  
		Size: 67.0 KB (66998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fc15361017bb33fb714f0bcaf603673f139e6ac6467e931570d9576e66a53f`  
		Last Modified: Wed, 31 Oct 2018 10:50:55 GMT  
		Size: 64.6 MB (64586273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-plume` - linux; arm variant v7

```console
$ docker pull tomee@sha256:7a4a853c465a711c9f66644b4252e6b1c2b38ab0e34667759b4e5bd3a698e49a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.7 MB (260707108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cc087dfe3d7ba1c6a091f7e5df5bf2cf8c0ca917771cf7ee9d5f4577a400adb`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:59:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:59:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:59:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:59:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:59:27 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:59:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:00:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:00:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 15:31:33 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 05 May 2018 15:31:34 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 05 May 2018 15:31:34 GMT
WORKDIR /usr/local/tomee
# Sat, 05 May 2018 15:33:15 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 05 May 2018 15:33:19 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Sat, 08 Sep 2018 12:20:01 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 23 Jan 2019 19:11:09 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 19:11:10 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df26ddf71ea9e82f175e400809b8f06871dd0937c5a90f4ffe95286544a9f719`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 830.3 KB (830332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c21322a9c89724512d6ea5faa10299c60c8a605d6f563c84c28177db8d2770`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2270f04a4be61f52577232813fff92e797d3fc190d52f71411afc26b0911f8e4`  
		Last Modified: Sat, 05 May 2018 13:29:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dc1aba58c8cd285639cac6b03c823e5fcdb91aa8922652e7d9387aaca6fa4`  
		Last Modified: Sat, 05 May 2018 13:29:37 GMT  
		Size: 139.5 MB (139501760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02869ec2bb3864b06abd435610eb6849d5c62426517de1a603ef6fe43c7d3815`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 272.1 KB (272082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b2945e8eb5c51597eeaa0b9140cd51356fdea2bdbc0e85b10b3004a32453fc`  
		Last Modified: Sat, 05 May 2018 15:39:04 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ea1b50ffe80218f2c1fa7833cc652669d1913cd0332790b2f7ee4518133965`  
		Last Modified: Sat, 05 May 2018 15:40:24 GMT  
		Size: 67.0 KB (66983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665a5dbcfe1e5c7cea2873ac9cb47fb99b6971f08021103527252def25a452be`  
		Last Modified: Sat, 08 Sep 2018 12:21:23 GMT  
		Size: 64.6 MB (64586345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-plume` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:86d2a69e1eaa9e9e0f89c370b1887e5b82e8faf469e7b3503886b3d244c91875
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.4 MB (235392209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5f0622b823d10bbb8e0b3e181b2f525d0ec467631cf40fb6f5b5e97ab85e630`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 22:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:09:34 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 22:09:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 22:09:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 22:09:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 22:09:44 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 22:09:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 22:09:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 22:14:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 22:14:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 17 Oct 2018 00:21:25 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 Oct 2018 00:21:29 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 17 Oct 2018 00:21:31 GMT
WORKDIR /usr/local/tomee
# Wed, 17 Oct 2018 00:25:38 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 17 Oct 2018 00:25:50 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 17 Oct 2018 00:35:01 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 17 Oct 2018 00:35:03 GMT
EXPOSE 8080/tcp
# Wed, 17 Oct 2018 00:35:04 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec37afe1ce9c80cab1c8fdc0d193c9f92f61adf7c60d6bdbc2b01735eac25b6`  
		Last Modified: Tue, 16 Oct 2018 22:27:18 GMT  
		Size: 839.2 KB (839157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776d8d23f1b98b1595b31f6da89774c22c62b8aaebfd909efc61ceb1ed261422`  
		Last Modified: Tue, 16 Oct 2018 22:27:15 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0423ae79bd292339ac64d511157cd27daa8549a458b0458dc17973fbee24f728`  
		Last Modified: Tue, 16 Oct 2018 22:27:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da59a4d6de8a9133c1d6d9c0d1283e1b6682911896bc48cffaf18801fd8c68d`  
		Last Modified: Tue, 16 Oct 2018 22:27:50 GMT  
		Size: 112.8 MB (112750420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c91b7c05050703e9d49121afe5ddebf91c012d50ab889a63fe7c7794757223`  
		Last Modified: Tue, 16 Oct 2018 22:27:15 GMT  
		Size: 246.7 KB (246651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a692f1b9459cceca9b0c8f14f2e31f86946b729851dcc75b1d0daa3715ebd63e`  
		Last Modified: Wed, 17 Oct 2018 00:41:00 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b0baf97116352ab1c389adb3dcc3f3be9f025b9abd511c8fef29cacc9779c3`  
		Last Modified: Wed, 17 Oct 2018 00:42:25 GMT  
		Size: 67.0 KB (66966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:137e26fb83f4b9f23864db9f2d812ff1ac60040bedecd287b6544844cd14a559`  
		Last Modified: Wed, 17 Oct 2018 00:45:41 GMT  
		Size: 64.6 MB (64586085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-plume` - linux; 386

```console
$ docker pull tomee@sha256:2231ce9a0bddb31e56eba96c92d5d853d960cd447209e6a919c2732b182fc8e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.7 MB (249718616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015cfb3eb914b56c4fc509abbfc48f6771887002107815ebb85b89c35aa84c0d`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:30:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 03:36:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 03:36:44 GMT
ENV LANG=C.UTF-8
# Wed, 17 Oct 2018 03:36:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 17 Oct 2018 03:36:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 11:09:42 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 11:09:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 11:10:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 11:10:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:04:12 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:04:13 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:04:13 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:05:37 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:05:41 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 14:07:47 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:07:47 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:07:47 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d8b973c47bc2b9e663e0405a9b6c4923e7edd886f9352807642bd012741c7b`  
		Last Modified: Tue, 16 Oct 2018 21:46:21 GMT  
		Size: 10.8 MB (10752717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc96b1bed2761a443ab819cbb860219f45d0a8bd03334cd84a81ee97399ee0`  
		Last Modified: Tue, 16 Oct 2018 21:46:19 GMT  
		Size: 4.6 MB (4555326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf8ff73b0a24a2d2c5ebfbcc6b8301349388a2562b5b1832e7db1ac71ae3d96`  
		Last Modified: Wed, 17 Oct 2018 03:51:09 GMT  
		Size: 861.8 KB (861772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a50ad6c047d63f8288897510a2551fec276a69dd76441d34df7ae5dbfbc757`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba1dba5b34132ca34ccd824ca39c484e958be83902abb87c823d8aa6965e7da`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2582ffd7014adc4b600f142afd34bd45a6f1084200f83de9372ac5541e2802`  
		Last Modified: Tue, 30 Oct 2018 11:16:02 GMT  
		Size: 122.6 MB (122609361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849a60206ec57d15465bf6d6ac94195db298a6ca94f0e961c2cef7dd8e6f67f5`  
		Last Modified: Tue, 30 Oct 2018 11:15:38 GMT  
		Size: 246.7 KB (246683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91148153248302d0db1f1ee32a9c6394bf20b9338edcd6f16f83d6db8dc1976`  
		Last Modified: Tue, 30 Oct 2018 14:11:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413fcc578b4fe28671ae5d77e471037700e69039b49bf9f53472a5044cf3ef57`  
		Last Modified: Tue, 30 Oct 2018 14:12:34 GMT  
		Size: 66.9 KB (66943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0267090fa329bce66d51f12d7b15bd0a5c1d6d13ccebd5915d28de185dd334`  
		Last Modified: Tue, 30 Oct 2018 14:14:33 GMT  
		Size: 64.6 MB (64586064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-plume` - linux; ppc64le

```console
$ docker pull tomee@sha256:130fe3c1a78c47ecf819c27a7a7a9fe0f72f23de0eafae5be896c6cb99c09262
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.1 MB (240126322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ef5e0e700e60bfd69e4ae0a7a9052db5f9c936be37a33baa2e71ba23b790d8`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:21:55 GMT
ADD file:a59c24e738306d5a76eda32c17347983843a394953e466fc10b997cf1398c4ed in / 
# Tue, 16 Oct 2018 08:21:57 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:48:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:48:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 15:15:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:15:24 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 15:15:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 15:15:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 15:15:44 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 15:15:52 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:43:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:43:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:47:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:47:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:30:20 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:30:23 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:30:24 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:32:06 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:32:12 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 31 Oct 2018 10:35:02 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:35:05 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:35:06 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:93d83403cab11249f38bea785ef4fc2d2b4cf9dd1295ad181f3c457ab4d4ea4b`  
		Last Modified: Tue, 16 Oct 2018 08:30:05 GMT  
		Size: 45.6 MB (45595514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ec9429d785df2991e77ea98b51ceeaa4ba80bcb51ce5d583e298525463146a`  
		Last Modified: Tue, 16 Oct 2018 11:06:51 GMT  
		Size: 9.9 MB (9943336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2367a02f5abb1557873986462bae2faef06a1b1fc0bd094d8f2a1dfdae33798e`  
		Last Modified: Tue, 16 Oct 2018 11:06:48 GMT  
		Size: 4.3 MB (4289821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19512a51eca885874336832af8357c995b28646c233136ff5a484d748af437a`  
		Last Modified: Tue, 16 Oct 2018 15:34:57 GMT  
		Size: 848.3 KB (848330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009ac02b22eca01c54f895f29b03222f698522307cb6a3fcbe1e55b97e123ed9`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea4543ef0daeccff13d600a6def3496001fdcc344ec2c9a6d63621c9a1dce0f`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050d1332dd2b829ac78cf297c3c9b062cb9f00311fcf7c43022310fe8737e3e2`  
		Last Modified: Wed, 31 Oct 2018 08:20:04 GMT  
		Size: 114.5 MB (114548674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2385b91212622165daaa25696049c403a6a3c312ae1e51388f930ff39a7956`  
		Last Modified: Wed, 31 Oct 2018 08:19:30 GMT  
		Size: 246.8 KB (246772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe2fc2806b97676673ae4f61d5e0076d04d6769cc0657b595cb42066197590a`  
		Last Modified: Wed, 31 Oct 2018 10:40:47 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c177061e19cd0ae03445c0259dc1096e15717f6e8763846c4d8281a1439fe1`  
		Last Modified: Wed, 31 Oct 2018 10:42:15 GMT  
		Size: 67.0 KB (66988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7e4a3cef141be4ff9f6664354942ab06577bafbb09a1fbda11450322742fac`  
		Last Modified: Wed, 31 Oct 2018 10:44:41 GMT  
		Size: 64.6 MB (64586325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-plume` - linux; s390x

```console
$ docker pull tomee@sha256:f0b85583c0506d0ddcb55d77089223ca52aed2f62ac030e6d236fb9896f3c1dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239735532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72022f8a9b55bab7af818f9c6a674a23b8dd6dc46f293ed059b2911f5c02b78f`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 13:06:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:06:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:06:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 12:09:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 12:09:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 12:09:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 12:09:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:13:58 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:13:58 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:13:59 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:15:05 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:15:09 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 14:16:23 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:16:23 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:16:23 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadb55fe60f3a83b7078ad97271acf0fd19b4414edf56bfbb07929744d5f7dce`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 863.7 KB (863652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecb5fac3a19302c69f5ee9494fd6c23d3d5dd418d59b9ea6a400cde0b0ae69e`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3565def30ebfc0c8c4a44f336ec11f69a92101319367ead0b1272905de65b629`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d108ec790a13528613333148f37b0b32735ca046ddfe165916fbbdaa536b9e`  
		Last Modified: Tue, 30 Oct 2018 12:13:07 GMT  
		Size: 114.1 MB (114137466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae3dd31465d93acd9f4060b71c585db6d729f83ab4ed961ec9a5356a4b80d3`  
		Last Modified: Tue, 30 Oct 2018 12:12:49 GMT  
		Size: 246.7 KB (246718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29f8d77836e77bcb36fb3d909583bf4af2d3cc4007daa9a9dedb4422b5449cc`  
		Last Modified: Tue, 30 Oct 2018 14:18:18 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1613f2f9b03d2ffb208952ab90aec66974189f6f04dfebb898b8fbafa75886cf`  
		Last Modified: Tue, 30 Oct 2018 14:19:04 GMT  
		Size: 66.9 KB (66944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e694fc0405c6c3f3eceb5fef8bf2b922507761f8999042e4e1d30cf880019d8d`  
		Last Modified: Tue, 30 Oct 2018 14:20:19 GMT  
		Size: 64.6 MB (64586059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:8-jre-7.1.0-plus`

```console
$ docker pull tomee@sha256:d13023e408e354c00d77875d5c2c589436aa58d22cf1c5c04fa094f532dc1d56
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

### `tomee:8-jre-7.1.0-plus` - linux; amd64

```console
$ docker pull tomee@sha256:f172413a1258be56be95f742dfcb35254b3ed31d4d1d390f52bdebdc7115bd5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.3 MB (241291013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ab7f59bbff5cc2049ef99b9b66422589f5bf5336dcc77032282b57aeee324a9`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:28:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:28:06 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:28:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:28:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:30:29 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:30:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:31:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:31:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 05:31:41 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 05:31:42 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 05:31:42 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 05:34:45 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 05:34:50 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 05:38:59 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 05:38:59 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 05:38:59 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21441932c53a4078f379c7c6d299370a6eaee79c862a29db2e25fec39106779`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 852.9 KB (852895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa76b0d2509232e863931fc1743f1ca2dba3bebdf5f72b4280fae59536303ce7`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346fd8610875e8ba7753030b5c197ad56fe76aa4e45d1e70e4b58366e93177c3`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca5d6af9022c9c3b436792a01c58dd29490430d28b04f70385f308e3bdae8a6`  
		Last Modified: Mon, 29 Oct 2018 23:40:07 GMT  
		Size: 122.1 MB (122121999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06cfa2cea32b36c8f5dcc8605166d1f8b72cf02e44163dbf7d14e0379286b55`  
		Last Modified: Mon, 29 Oct 2018 23:39:44 GMT  
		Size: 246.7 KB (246728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c094b3bc8129299958e3103ea5962297e112f8623257dd6d3d72fd739b4ed2dc`  
		Last Modified: Tue, 30 Oct 2018 05:44:37 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0eb5d22768e01d3ae538541bbef24179c0f6bcabe15824faa85c70579403e0`  
		Last Modified: Tue, 30 Oct 2018 05:45:50 GMT  
		Size: 67.0 KB (66961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9724e43c69d4eb966f961d49d481cfff01f657ec8ccb3c26fcdd9cb87fcab6fd`  
		Last Modified: Tue, 30 Oct 2018 05:48:22 GMT  
		Size: 57.6 MB (57615896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-plus` - linux; arm variant v5

```console
$ docker pull tomee@sha256:57be69fbbb57802ff1408f298828a32b05d3d0fbcb3e7cfc09790934208de0f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.7 MB (228681002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ae2ba8c51548f2af8733e779c3bcfa6c52e3a78a6b4a60372b3495133a752a`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:59 GMT
ADD file:9400a194c6dcf24f439664aab3a28cb7dbf93753b71d2756dbaf872d294fbb8e in / 
# Tue, 16 Oct 2018 08:55:00 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:00:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:00:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:47:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 12:47:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 12:47:32 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 10:04:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 10:04:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 10:05:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 10:06:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:39:10 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:39:11 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:39:11 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:42:06 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:42:10 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 31 Oct 2018 10:44:57 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:44:58 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:44:58 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:67cd7720dfa3de15234643bf308008813fd129e03429f026775738064b364e24`  
		Last Modified: Tue, 16 Oct 2018 09:04:05 GMT  
		Size: 44.0 MB (44033067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd276b766fa97ab74e113c92ed57093015cfc9c9030be8ba22b5e752cd8e8877`  
		Last Modified: Tue, 16 Oct 2018 10:09:36 GMT  
		Size: 9.8 MB (9810396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b000ac5a1a22a2dea4538586726677f91c42079cf289a8eb88fdf9c65fda7f6`  
		Last Modified: Tue, 16 Oct 2018 10:09:35 GMT  
		Size: 4.2 MB (4153754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cbc8dc4eb12ea31f2f137322dcd35e379750d13318d6521d7d557989a9c73e`  
		Last Modified: Tue, 16 Oct 2018 12:56:57 GMT  
		Size: 845.9 KB (845906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a97950afff8d9b7263a96992060b43bf115f908bd1f262de6f93c0418cc9817`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693401423272c67e47e2c164426ccd8a7f7c84c1aaa9ccf0db49f23cf10ece20`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa4cd8ea842cbf55631460424eebe375e8955fa33375ba756948f3200aa260b`  
		Last Modified: Wed, 31 Oct 2018 09:18:50 GMT  
		Size: 111.9 MB (111907574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2f5878cb92f7b7cabd53ba68c69652be468fe7e00b7a82ecff33496f1357c7`  
		Last Modified: Wed, 31 Oct 2018 09:18:21 GMT  
		Size: 246.7 KB (246748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7fe3f0758a210ee8428de088c4f9d16e74526003cd6f0e98c680a75db3a4ef`  
		Last Modified: Wed, 31 Oct 2018 10:47:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a996192996ebfb224220a874f072e475829676d0085f8292f3f7ed91d851d6a6`  
		Last Modified: Wed, 31 Oct 2018 10:48:58 GMT  
		Size: 67.0 KB (66998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e122131386c5b57f1b9e1395cbc1a3f1430bb3142c7658a9df285d0e683bf546`  
		Last Modified: Wed, 31 Oct 2018 10:51:16 GMT  
		Size: 57.6 MB (57615997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-plus` - linux; arm variant v7

```console
$ docker pull tomee@sha256:ba3b29e451173bc870d3fe1119b444652eadcf039bb018874d54318f8821ab3c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253736796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b6574b260f3033c055cb443224f2e0a17350e359ffe25c588b8103b645627d4`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:59:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:59:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:59:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:59:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:59:27 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:59:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:00:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:00:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 15:31:33 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 05 May 2018 15:31:34 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 05 May 2018 15:31:34 GMT
WORKDIR /usr/local/tomee
# Sat, 05 May 2018 15:33:15 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 05 May 2018 15:33:19 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Sat, 08 Sep 2018 12:20:24 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 23 Jan 2019 19:11:15 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 19:11:16 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df26ddf71ea9e82f175e400809b8f06871dd0937c5a90f4ffe95286544a9f719`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 830.3 KB (830332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c21322a9c89724512d6ea5faa10299c60c8a605d6f563c84c28177db8d2770`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2270f04a4be61f52577232813fff92e797d3fc190d52f71411afc26b0911f8e4`  
		Last Modified: Sat, 05 May 2018 13:29:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dc1aba58c8cd285639cac6b03c823e5fcdb91aa8922652e7d9387aaca6fa4`  
		Last Modified: Sat, 05 May 2018 13:29:37 GMT  
		Size: 139.5 MB (139501760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02869ec2bb3864b06abd435610eb6849d5c62426517de1a603ef6fe43c7d3815`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 272.1 KB (272082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b2945e8eb5c51597eeaa0b9140cd51356fdea2bdbc0e85b10b3004a32453fc`  
		Last Modified: Sat, 05 May 2018 15:39:04 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ea1b50ffe80218f2c1fa7833cc652669d1913cd0332790b2f7ee4518133965`  
		Last Modified: Sat, 05 May 2018 15:40:24 GMT  
		Size: 67.0 KB (66983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5572a45862458b953a89118d3f7ca41f5b5683c4cf0a245780347ab0e571b444`  
		Last Modified: Sat, 08 Sep 2018 12:21:44 GMT  
		Size: 57.6 MB (57616033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-plus` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:bc2b955175d150470887294a983449578ec52c1539acd4862dbd67a5672f72ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.4 MB (228422039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33a6dffb4a9440c6603fb6e0facc21cc1f28776a1acaa442d5660d3ebc950529`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 22:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:09:34 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 22:09:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 22:09:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 22:09:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 22:09:44 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 22:09:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 22:09:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 22:14:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 22:14:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 17 Oct 2018 00:21:25 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 Oct 2018 00:21:29 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 17 Oct 2018 00:21:31 GMT
WORKDIR /usr/local/tomee
# Wed, 17 Oct 2018 00:25:38 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 17 Oct 2018 00:25:50 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 17 Oct 2018 00:35:27 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 17 Oct 2018 00:35:31 GMT
EXPOSE 8080/tcp
# Wed, 17 Oct 2018 00:35:33 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec37afe1ce9c80cab1c8fdc0d193c9f92f61adf7c60d6bdbc2b01735eac25b6`  
		Last Modified: Tue, 16 Oct 2018 22:27:18 GMT  
		Size: 839.2 KB (839157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776d8d23f1b98b1595b31f6da89774c22c62b8aaebfd909efc61ceb1ed261422`  
		Last Modified: Tue, 16 Oct 2018 22:27:15 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0423ae79bd292339ac64d511157cd27daa8549a458b0458dc17973fbee24f728`  
		Last Modified: Tue, 16 Oct 2018 22:27:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da59a4d6de8a9133c1d6d9c0d1283e1b6682911896bc48cffaf18801fd8c68d`  
		Last Modified: Tue, 16 Oct 2018 22:27:50 GMT  
		Size: 112.8 MB (112750420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c91b7c05050703e9d49121afe5ddebf91c012d50ab889a63fe7c7794757223`  
		Last Modified: Tue, 16 Oct 2018 22:27:15 GMT  
		Size: 246.7 KB (246651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a692f1b9459cceca9b0c8f14f2e31f86946b729851dcc75b1d0daa3715ebd63e`  
		Last Modified: Wed, 17 Oct 2018 00:41:00 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b0baf97116352ab1c389adb3dcc3f3be9f025b9abd511c8fef29cacc9779c3`  
		Last Modified: Wed, 17 Oct 2018 00:42:25 GMT  
		Size: 67.0 KB (66966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251294edc2265c96889ad95d654bb7068f14600d402995275255dfa4fd146098`  
		Last Modified: Wed, 17 Oct 2018 00:46:17 GMT  
		Size: 57.6 MB (57615915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-plus` - linux; 386

```console
$ docker pull tomee@sha256:73887053c6e4ecdc04b2afe11b2d02168581c9d2ceac5d45346f87e11c636c05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.7 MB (242748427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:294cc8dd8f1f42605e85a07d0730fedefb14187614d4b25ee5f7ae01f4fdb0e2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:30:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 03:36:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 03:36:44 GMT
ENV LANG=C.UTF-8
# Wed, 17 Oct 2018 03:36:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 17 Oct 2018 03:36:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 11:09:42 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 11:09:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 11:10:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 11:10:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:04:12 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:04:13 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:04:13 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:05:37 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:05:41 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 14:08:09 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:08:09 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:08:09 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d8b973c47bc2b9e663e0405a9b6c4923e7edd886f9352807642bd012741c7b`  
		Last Modified: Tue, 16 Oct 2018 21:46:21 GMT  
		Size: 10.8 MB (10752717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc96b1bed2761a443ab819cbb860219f45d0a8bd03334cd84a81ee97399ee0`  
		Last Modified: Tue, 16 Oct 2018 21:46:19 GMT  
		Size: 4.6 MB (4555326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf8ff73b0a24a2d2c5ebfbcc6b8301349388a2562b5b1832e7db1ac71ae3d96`  
		Last Modified: Wed, 17 Oct 2018 03:51:09 GMT  
		Size: 861.8 KB (861772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a50ad6c047d63f8288897510a2551fec276a69dd76441d34df7ae5dbfbc757`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba1dba5b34132ca34ccd824ca39c484e958be83902abb87c823d8aa6965e7da`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2582ffd7014adc4b600f142afd34bd45a6f1084200f83de9372ac5541e2802`  
		Last Modified: Tue, 30 Oct 2018 11:16:02 GMT  
		Size: 122.6 MB (122609361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849a60206ec57d15465bf6d6ac94195db298a6ca94f0e961c2cef7dd8e6f67f5`  
		Last Modified: Tue, 30 Oct 2018 11:15:38 GMT  
		Size: 246.7 KB (246683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91148153248302d0db1f1ee32a9c6394bf20b9338edcd6f16f83d6db8dc1976`  
		Last Modified: Tue, 30 Oct 2018 14:11:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413fcc578b4fe28671ae5d77e471037700e69039b49bf9f53472a5044cf3ef57`  
		Last Modified: Tue, 30 Oct 2018 14:12:34 GMT  
		Size: 66.9 KB (66943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d962af06fe977fa85dae2eb8b4b6c70d87a108c39707ef2a5ba8eb5d3e37ae`  
		Last Modified: Tue, 30 Oct 2018 14:14:55 GMT  
		Size: 57.6 MB (57615875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-plus` - linux; ppc64le

```console
$ docker pull tomee@sha256:e2031aca6142b9372b4562f5b221a59db0edc301181c5f51a1ac46ebd7985b33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.2 MB (233155996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9461ca7d2ff7e0153179170cbea4c10f0412b8366092f51c169586b8c4fc35b1`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:21:55 GMT
ADD file:a59c24e738306d5a76eda32c17347983843a394953e466fc10b997cf1398c4ed in / 
# Tue, 16 Oct 2018 08:21:57 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:48:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:48:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 15:15:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:15:24 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 15:15:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 15:15:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 15:15:44 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 15:15:52 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:43:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:43:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:47:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:47:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:30:20 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:30:23 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:30:24 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:32:06 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:32:12 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 31 Oct 2018 10:35:37 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:35:40 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:35:42 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:93d83403cab11249f38bea785ef4fc2d2b4cf9dd1295ad181f3c457ab4d4ea4b`  
		Last Modified: Tue, 16 Oct 2018 08:30:05 GMT  
		Size: 45.6 MB (45595514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ec9429d785df2991e77ea98b51ceeaa4ba80bcb51ce5d583e298525463146a`  
		Last Modified: Tue, 16 Oct 2018 11:06:51 GMT  
		Size: 9.9 MB (9943336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2367a02f5abb1557873986462bae2faef06a1b1fc0bd094d8f2a1dfdae33798e`  
		Last Modified: Tue, 16 Oct 2018 11:06:48 GMT  
		Size: 4.3 MB (4289821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19512a51eca885874336832af8357c995b28646c233136ff5a484d748af437a`  
		Last Modified: Tue, 16 Oct 2018 15:34:57 GMT  
		Size: 848.3 KB (848330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009ac02b22eca01c54f895f29b03222f698522307cb6a3fcbe1e55b97e123ed9`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea4543ef0daeccff13d600a6def3496001fdcc344ec2c9a6d63621c9a1dce0f`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050d1332dd2b829ac78cf297c3c9b062cb9f00311fcf7c43022310fe8737e3e2`  
		Last Modified: Wed, 31 Oct 2018 08:20:04 GMT  
		Size: 114.5 MB (114548674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2385b91212622165daaa25696049c403a6a3c312ae1e51388f930ff39a7956`  
		Last Modified: Wed, 31 Oct 2018 08:19:30 GMT  
		Size: 246.8 KB (246772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe2fc2806b97676673ae4f61d5e0076d04d6769cc0657b595cb42066197590a`  
		Last Modified: Wed, 31 Oct 2018 10:40:47 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c177061e19cd0ae03445c0259dc1096e15717f6e8763846c4d8281a1439fe1`  
		Last Modified: Wed, 31 Oct 2018 10:42:15 GMT  
		Size: 67.0 KB (66988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d5bd4c2492ed78e5e1ba1bf469e198d4a9ef3fed9d713ab256c83c01d21dca`  
		Last Modified: Wed, 31 Oct 2018 10:45:02 GMT  
		Size: 57.6 MB (57615999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-plus` - linux; s390x

```console
$ docker pull tomee@sha256:f2de0a805250b503b86002312f7ed76cd948e00f58c14847c88eea204ae5219b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.8 MB (232765341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:663b5adf48f674eb830fb99a1e5a1f785c665b8e73c2465e0daf87c7c616afea`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 13:06:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:06:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:06:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 12:09:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 12:09:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 12:09:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 12:09:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:13:58 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:13:58 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:13:59 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:15:05 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:15:09 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 14:16:34 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:16:36 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:16:36 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadb55fe60f3a83b7078ad97271acf0fd19b4414edf56bfbb07929744d5f7dce`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 863.7 KB (863652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecb5fac3a19302c69f5ee9494fd6c23d3d5dd418d59b9ea6a400cde0b0ae69e`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3565def30ebfc0c8c4a44f336ec11f69a92101319367ead0b1272905de65b629`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d108ec790a13528613333148f37b0b32735ca046ddfe165916fbbdaa536b9e`  
		Last Modified: Tue, 30 Oct 2018 12:13:07 GMT  
		Size: 114.1 MB (114137466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae3dd31465d93acd9f4060b71c585db6d729f83ab4ed961ec9a5356a4b80d3`  
		Last Modified: Tue, 30 Oct 2018 12:12:49 GMT  
		Size: 246.7 KB (246718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29f8d77836e77bcb36fb3d909583bf4af2d3cc4007daa9a9dedb4422b5449cc`  
		Last Modified: Tue, 30 Oct 2018 14:18:18 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1613f2f9b03d2ffb208952ab90aec66974189f6f04dfebb898b8fbafa75886cf`  
		Last Modified: Tue, 30 Oct 2018 14:19:04 GMT  
		Size: 66.9 KB (66944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62df341c552d74b258a19ffde8c5f2d6dc844a6c7bb247655cae600a1238a874`  
		Last Modified: Tue, 30 Oct 2018 14:20:41 GMT  
		Size: 57.6 MB (57615868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:8-jre-7.1.0-webprofile`

```console
$ docker pull tomee@sha256:ad7f92fd5758f36e5e2e002bc54f0897dc615d362d3f1f43651f24c7a138cf79
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

### `tomee:8-jre-7.1.0-webprofile` - linux; amd64

```console
$ docker pull tomee@sha256:a4de0be35b19c569c24142ed3aa50bb37fc71ede1fcb52945bd0815cf4d62ac1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.2 MB (224226882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a44a1b03cfd7d8debb11cf28b4198cfd0c54c473d7586a44dc3177070b9e1e6b`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:28:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:28:06 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:28:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:28:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:30:29 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:30:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:31:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:31:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 05:31:41 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 05:31:42 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 05:31:42 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 05:34:45 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 05:34:50 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 05:40:23 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 05:40:23 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 05:40:23 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21441932c53a4078f379c7c6d299370a6eaee79c862a29db2e25fec39106779`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 852.9 KB (852895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa76b0d2509232e863931fc1743f1ca2dba3bebdf5f72b4280fae59536303ce7`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346fd8610875e8ba7753030b5c197ad56fe76aa4e45d1e70e4b58366e93177c3`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca5d6af9022c9c3b436792a01c58dd29490430d28b04f70385f308e3bdae8a6`  
		Last Modified: Mon, 29 Oct 2018 23:40:07 GMT  
		Size: 122.1 MB (122121999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06cfa2cea32b36c8f5dcc8605166d1f8b72cf02e44163dbf7d14e0379286b55`  
		Last Modified: Mon, 29 Oct 2018 23:39:44 GMT  
		Size: 246.7 KB (246728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c094b3bc8129299958e3103ea5962297e112f8623257dd6d3d72fd739b4ed2dc`  
		Last Modified: Tue, 30 Oct 2018 05:44:37 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0eb5d22768e01d3ae538541bbef24179c0f6bcabe15824faa85c70579403e0`  
		Last Modified: Tue, 30 Oct 2018 05:45:50 GMT  
		Size: 67.0 KB (66961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4240c56e3f6afffb58d7108a04a6efb834630c2cd60dead37d83e0a260fc82dd`  
		Last Modified: Tue, 30 Oct 2018 05:49:03 GMT  
		Size: 40.6 MB (40551765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-webprofile` - linux; arm variant v5

```console
$ docker pull tomee@sha256:07a27562f581843578d0d544328b74762533b89df3bfe5c6c03fe66cf4663ad8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.6 MB (211616826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da8c8e41351a020a54a0f2850c988740d62ece1e46b5c30553cb275a23948bd7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:59 GMT
ADD file:9400a194c6dcf24f439664aab3a28cb7dbf93753b71d2756dbaf872d294fbb8e in / 
# Tue, 16 Oct 2018 08:55:00 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:00:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:00:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:47:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 12:47:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 12:47:32 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 10:04:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 10:04:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 10:05:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 10:06:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:39:10 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:39:11 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:39:11 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:42:06 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:42:10 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 31 Oct 2018 10:45:32 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:45:33 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:45:33 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:67cd7720dfa3de15234643bf308008813fd129e03429f026775738064b364e24`  
		Last Modified: Tue, 16 Oct 2018 09:04:05 GMT  
		Size: 44.0 MB (44033067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd276b766fa97ab74e113c92ed57093015cfc9c9030be8ba22b5e752cd8e8877`  
		Last Modified: Tue, 16 Oct 2018 10:09:36 GMT  
		Size: 9.8 MB (9810396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b000ac5a1a22a2dea4538586726677f91c42079cf289a8eb88fdf9c65fda7f6`  
		Last Modified: Tue, 16 Oct 2018 10:09:35 GMT  
		Size: 4.2 MB (4153754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cbc8dc4eb12ea31f2f137322dcd35e379750d13318d6521d7d557989a9c73e`  
		Last Modified: Tue, 16 Oct 2018 12:56:57 GMT  
		Size: 845.9 KB (845906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a97950afff8d9b7263a96992060b43bf115f908bd1f262de6f93c0418cc9817`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693401423272c67e47e2c164426ccd8a7f7c84c1aaa9ccf0db49f23cf10ece20`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa4cd8ea842cbf55631460424eebe375e8955fa33375ba756948f3200aa260b`  
		Last Modified: Wed, 31 Oct 2018 09:18:50 GMT  
		Size: 111.9 MB (111907574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2f5878cb92f7b7cabd53ba68c69652be468fe7e00b7a82ecff33496f1357c7`  
		Last Modified: Wed, 31 Oct 2018 09:18:21 GMT  
		Size: 246.7 KB (246748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7fe3f0758a210ee8428de088c4f9d16e74526003cd6f0e98c680a75db3a4ef`  
		Last Modified: Wed, 31 Oct 2018 10:47:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a996192996ebfb224220a874f072e475829676d0085f8292f3f7ed91d851d6a6`  
		Last Modified: Wed, 31 Oct 2018 10:48:58 GMT  
		Size: 67.0 KB (66998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c369b52655795348dcca77edf9574d73ecc669b4e87c9d6ace61db12a454fd4`  
		Last Modified: Wed, 31 Oct 2018 10:51:53 GMT  
		Size: 40.6 MB (40551821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-webprofile` - linux; arm variant v7

```console
$ docker pull tomee@sha256:170f6d0aabb5239e99299c9e43bbcff16ed1887698398c3223eee70487471f46
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236672538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a23b8e50c20e3bf1c1b9fde5b464a893604730824ac32009f791598ca4d1893`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:59:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:59:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:59:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:59:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:59:27 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:59:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:00:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:00:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 15:31:33 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 05 May 2018 15:31:34 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 05 May 2018 15:31:34 GMT
WORKDIR /usr/local/tomee
# Sat, 05 May 2018 15:33:15 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Sat, 05 May 2018 15:33:19 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Sat, 08 Sep 2018 12:20:42 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 23 Jan 2019 19:11:27 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 19:11:27 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df26ddf71ea9e82f175e400809b8f06871dd0937c5a90f4ffe95286544a9f719`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 830.3 KB (830332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c21322a9c89724512d6ea5faa10299c60c8a605d6f563c84c28177db8d2770`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2270f04a4be61f52577232813fff92e797d3fc190d52f71411afc26b0911f8e4`  
		Last Modified: Sat, 05 May 2018 13:29:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dc1aba58c8cd285639cac6b03c823e5fcdb91aa8922652e7d9387aaca6fa4`  
		Last Modified: Sat, 05 May 2018 13:29:37 GMT  
		Size: 139.5 MB (139501760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02869ec2bb3864b06abd435610eb6849d5c62426517de1a603ef6fe43c7d3815`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 272.1 KB (272082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b2945e8eb5c51597eeaa0b9140cd51356fdea2bdbc0e85b10b3004a32453fc`  
		Last Modified: Sat, 05 May 2018 15:39:04 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ea1b50ffe80218f2c1fa7833cc652669d1913cd0332790b2f7ee4518133965`  
		Last Modified: Sat, 05 May 2018 15:40:24 GMT  
		Size: 67.0 KB (66983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d08fdaca276cb3d6ad9606352ba7b22924405cae93f121781ce4f82455d35d`  
		Last Modified: Sat, 08 Sep 2018 12:22:05 GMT  
		Size: 40.6 MB (40551775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-webprofile` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:4160c1d5f69046da199e74a0577d65c245af135ddf5d08e2727dc10ad00e3711
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.4 MB (211357912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039de4704d05512a3c3efec2798bb5718323285b9ce32366e5f46d739adc0149`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 22:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:09:34 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 22:09:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 22:09:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 22:09:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 22:09:44 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 22:09:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 22:09:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 22:14:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 22:14:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 17 Oct 2018 00:21:25 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 Oct 2018 00:21:29 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 17 Oct 2018 00:21:31 GMT
WORKDIR /usr/local/tomee
# Wed, 17 Oct 2018 00:25:38 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 17 Oct 2018 00:25:50 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 17 Oct 2018 00:37:29 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 17 Oct 2018 00:37:30 GMT
EXPOSE 8080/tcp
# Wed, 17 Oct 2018 00:37:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec37afe1ce9c80cab1c8fdc0d193c9f92f61adf7c60d6bdbc2b01735eac25b6`  
		Last Modified: Tue, 16 Oct 2018 22:27:18 GMT  
		Size: 839.2 KB (839157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776d8d23f1b98b1595b31f6da89774c22c62b8aaebfd909efc61ceb1ed261422`  
		Last Modified: Tue, 16 Oct 2018 22:27:15 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0423ae79bd292339ac64d511157cd27daa8549a458b0458dc17973fbee24f728`  
		Last Modified: Tue, 16 Oct 2018 22:27:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da59a4d6de8a9133c1d6d9c0d1283e1b6682911896bc48cffaf18801fd8c68d`  
		Last Modified: Tue, 16 Oct 2018 22:27:50 GMT  
		Size: 112.8 MB (112750420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c91b7c05050703e9d49121afe5ddebf91c012d50ab889a63fe7c7794757223`  
		Last Modified: Tue, 16 Oct 2018 22:27:15 GMT  
		Size: 246.7 KB (246651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a692f1b9459cceca9b0c8f14f2e31f86946b729851dcc75b1d0daa3715ebd63e`  
		Last Modified: Wed, 17 Oct 2018 00:41:00 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b0baf97116352ab1c389adb3dcc3f3be9f025b9abd511c8fef29cacc9779c3`  
		Last Modified: Wed, 17 Oct 2018 00:42:25 GMT  
		Size: 67.0 KB (66966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517b01ab3a6b7f7c510d8ef59f5fcbe80c68c85ad3e8fd5b46d0f56b1b067fc6`  
		Last Modified: Wed, 17 Oct 2018 00:47:07 GMT  
		Size: 40.6 MB (40551788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-webprofile` - linux; 386

```console
$ docker pull tomee@sha256:2259ef609ca58cc185f6209767a839c6700ee9514a1c776f30a6d5b6a827ab63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225684274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ec2d8729527e0f2ca6daa4b5e06b0bd1041c45d6c3adbda3d1dc52daeb274cb`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:30:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 03:36:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 03:36:44 GMT
ENV LANG=C.UTF-8
# Wed, 17 Oct 2018 03:36:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 17 Oct 2018 03:36:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 17 Oct 2018 03:36:46 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 11:09:42 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 11:09:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 11:10:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 11:10:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:04:12 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:04:13 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:04:13 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:05:37 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:05:41 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 14:08:44 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:08:44 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:08:45 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d8b973c47bc2b9e663e0405a9b6c4923e7edd886f9352807642bd012741c7b`  
		Last Modified: Tue, 16 Oct 2018 21:46:21 GMT  
		Size: 10.8 MB (10752717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc96b1bed2761a443ab819cbb860219f45d0a8bd03334cd84a81ee97399ee0`  
		Last Modified: Tue, 16 Oct 2018 21:46:19 GMT  
		Size: 4.6 MB (4555326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf8ff73b0a24a2d2c5ebfbcc6b8301349388a2562b5b1832e7db1ac71ae3d96`  
		Last Modified: Wed, 17 Oct 2018 03:51:09 GMT  
		Size: 861.8 KB (861772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a50ad6c047d63f8288897510a2551fec276a69dd76441d34df7ae5dbfbc757`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba1dba5b34132ca34ccd824ca39c484e958be83902abb87c823d8aa6965e7da`  
		Last Modified: Wed, 17 Oct 2018 03:51:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2582ffd7014adc4b600f142afd34bd45a6f1084200f83de9372ac5541e2802`  
		Last Modified: Tue, 30 Oct 2018 11:16:02 GMT  
		Size: 122.6 MB (122609361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849a60206ec57d15465bf6d6ac94195db298a6ca94f0e961c2cef7dd8e6f67f5`  
		Last Modified: Tue, 30 Oct 2018 11:15:38 GMT  
		Size: 246.7 KB (246683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91148153248302d0db1f1ee32a9c6394bf20b9338edcd6f16f83d6db8dc1976`  
		Last Modified: Tue, 30 Oct 2018 14:11:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413fcc578b4fe28671ae5d77e471037700e69039b49bf9f53472a5044cf3ef57`  
		Last Modified: Tue, 30 Oct 2018 14:12:34 GMT  
		Size: 66.9 KB (66943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c14caa7b5bb14194b2a372db14ed81987a2ec0c74104057384114bca04ed66`  
		Last Modified: Tue, 30 Oct 2018 14:15:28 GMT  
		Size: 40.6 MB (40551722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-webprofile` - linux; ppc64le

```console
$ docker pull tomee@sha256:030fcd24fd8411f1baec33e0f598d2abbb3937f6eede22c057c8ea9b23ce5fa5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.1 MB (216091818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe66713c77ad430194bdfa78ff6898bb34854371c3982d3c9056a351b15fc4b4`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 08:21:55 GMT
ADD file:a59c24e738306d5a76eda32c17347983843a394953e466fc10b997cf1398c4ed in / 
# Tue, 16 Oct 2018 08:21:57 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:48:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:48:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 15:15:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:15:24 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 15:15:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 15:15:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 15:15:44 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 15:15:52 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:43:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:43:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:47:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:47:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:30:20 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:30:23 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 31 Oct 2018 10:30:24 GMT
WORKDIR /usr/local/tomee
# Wed, 31 Oct 2018 10:32:06 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 31 Oct 2018 10:32:12 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 31 Oct 2018 10:36:43 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 31 Oct 2018 10:36:44 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 10:36:45 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:93d83403cab11249f38bea785ef4fc2d2b4cf9dd1295ad181f3c457ab4d4ea4b`  
		Last Modified: Tue, 16 Oct 2018 08:30:05 GMT  
		Size: 45.6 MB (45595514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ec9429d785df2991e77ea98b51ceeaa4ba80bcb51ce5d583e298525463146a`  
		Last Modified: Tue, 16 Oct 2018 11:06:51 GMT  
		Size: 9.9 MB (9943336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2367a02f5abb1557873986462bae2faef06a1b1fc0bd094d8f2a1dfdae33798e`  
		Last Modified: Tue, 16 Oct 2018 11:06:48 GMT  
		Size: 4.3 MB (4289821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19512a51eca885874336832af8357c995b28646c233136ff5a484d748af437a`  
		Last Modified: Tue, 16 Oct 2018 15:34:57 GMT  
		Size: 848.3 KB (848330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009ac02b22eca01c54f895f29b03222f698522307cb6a3fcbe1e55b97e123ed9`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea4543ef0daeccff13d600a6def3496001fdcc344ec2c9a6d63621c9a1dce0f`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050d1332dd2b829ac78cf297c3c9b062cb9f00311fcf7c43022310fe8737e3e2`  
		Last Modified: Wed, 31 Oct 2018 08:20:04 GMT  
		Size: 114.5 MB (114548674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2385b91212622165daaa25696049c403a6a3c312ae1e51388f930ff39a7956`  
		Last Modified: Wed, 31 Oct 2018 08:19:30 GMT  
		Size: 246.8 KB (246772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe2fc2806b97676673ae4f61d5e0076d04d6769cc0657b595cb42066197590a`  
		Last Modified: Wed, 31 Oct 2018 10:40:47 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c177061e19cd0ae03445c0259dc1096e15717f6e8763846c4d8281a1439fe1`  
		Last Modified: Wed, 31 Oct 2018 10:42:15 GMT  
		Size: 67.0 KB (66988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2ce265c689a9c5136f5bbcb7b8525e101ed828f4195f2bc8deff288683202e`  
		Last Modified: Wed, 31 Oct 2018 10:45:44 GMT  
		Size: 40.6 MB (40551821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-webprofile` - linux; s390x

```console
$ docker pull tomee@sha256:cf6d86be64f09f0e7e4f1c51d7f47585a026f45fcd11237f67d57e3e18306c6e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.7 MB (215701212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:322856d370716bbc78a7f8aa7310f2fbcff5f3d6f426880af71c0190aa988d6d`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 13:06:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:06:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:06:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 12:09:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 12:09:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 12:09:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 12:09:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 14:13:58 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 14:13:58 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 30 Oct 2018 14:13:59 GMT
WORKDIR /usr/local/tomee
# Tue, 30 Oct 2018 14:15:05 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 30 Oct 2018 14:15:09 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 30 Oct 2018 14:16:56 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 30 Oct 2018 14:16:58 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 14:16:58 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadb55fe60f3a83b7078ad97271acf0fd19b4414edf56bfbb07929744d5f7dce`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 863.7 KB (863652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecb5fac3a19302c69f5ee9494fd6c23d3d5dd418d59b9ea6a400cde0b0ae69e`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3565def30ebfc0c8c4a44f336ec11f69a92101319367ead0b1272905de65b629`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d108ec790a13528613333148f37b0b32735ca046ddfe165916fbbdaa536b9e`  
		Last Modified: Tue, 30 Oct 2018 12:13:07 GMT  
		Size: 114.1 MB (114137466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaae3dd31465d93acd9f4060b71c585db6d729f83ab4ed961ec9a5356a4b80d3`  
		Last Modified: Tue, 30 Oct 2018 12:12:49 GMT  
		Size: 246.7 KB (246718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29f8d77836e77bcb36fb3d909583bf4af2d3cc4007daa9a9dedb4422b5449cc`  
		Last Modified: Tue, 30 Oct 2018 14:18:18 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1613f2f9b03d2ffb208952ab90aec66974189f6f04dfebb898b8fbafa75886cf`  
		Last Modified: Tue, 30 Oct 2018 14:19:04 GMT  
		Size: 66.9 KB (66944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315d21b25dbf1d5e7b568849dfe2235c85bda143065123e86856086ac61fc150`  
		Last Modified: Tue, 30 Oct 2018 14:21:02 GMT  
		Size: 40.6 MB (40551739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:8-jre-8.0.0-M2-microprofile`

```console
$ docker pull tomee@sha256:9a60287b6af420a2f006c4c3c93ecd5e01fa0339579366a5612402b1457e6a47
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

### `tomee:8-jre-8.0.0-M2-microprofile` - linux; amd64

```console
$ docker pull tomee@sha256:35f62e9c69bca3d053ebffa177cfd0363892531106db357825547633aa88e134
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.2 MB (228212079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7baee7e8351eb104401c829fa4a0c0cc3a174c7d3eccce7cfedb1ad907fa91b3`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:29:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:29:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:29:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:30:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 16:22:39 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 16:22:40 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 06 Feb 2019 16:22:40 GMT
WORKDIR /usr/local/tomee
# Wed, 06 Feb 2019 16:25:46 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Wed, 06 Feb 2019 16:27:11 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 16:27:47 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-microprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-microprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-microprofile-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-microprofile-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 06 Feb 2019 16:27:48 GMT
EXPOSE 8080
# Wed, 06 Feb 2019 16:27:48 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:eea0f08c7492aa49cb62b7fc7cf5a3b91e5c83c182cecddaba75903f09a1c67e`  
		Last Modified: Wed, 06 Feb 2019 08:52:24 GMT  
		Size: 852.9 KB (852911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca74b3d90c15cc3066bb46f8b6cdb617805b39e46ba39b891e4592b601abaee1`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11a643c4a8511e3f7d00a7f7c01059bf804876833992895eebbbaf108399655`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eafed73b65f1719e1ad5446e1f57859feb2f71f0b21d5f0bd25fb7d0d6dbd5`  
		Last Modified: Wed, 06 Feb 2019 08:54:52 GMT  
		Size: 122.1 MB (122121101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5fead7ac4e2dc14830fcceed1264817858077da1a0624a4da930442dffa96aa`  
		Last Modified: Wed, 06 Feb 2019 16:28:21 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7150428cf2359d3b4078a1d98019e2eb1e4d086421f707b5326dfcff7a1cb88f`  
		Last Modified: Wed, 06 Feb 2019 16:28:45 GMT  
		Size: 27.3 KB (27331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab55d0c03e157fe5934bb3bf62b22d74cd932967e3daa0b1a195cc835264e66f`  
		Last Modified: Wed, 06 Feb 2019 16:28:51 GMT  
		Size: 44.7 MB (44744774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-microprofile` - linux; arm variant v5

```console
$ docker pull tomee@sha256:39b1e0cb656e38e6f105c2fa3af880a413337c2191674dd59dca5b24d75e9402
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215582845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d127070f33bab94aeaf64ab233d65846ee4b264438f37dfd3ca73bd7bedea94e`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:27 GMT
ADD file:8ba047ef6412ca91461f1c03e2571c0760c1e7ce294814ec3523055f0b453994 in / 
# Wed, 23 Jan 2019 09:54:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:38:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:38:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:45:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:51:22 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:51:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:51:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 12:51:25 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 23 Jan 2019 12:51:26 GMT
ENV JAVA_VERSION=8u181
# Wed, 23 Jan 2019 12:51:26 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 23 Jan 2019 12:52:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 17:32:40 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:32:42 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 23 Jan 2019 17:32:43 GMT
WORKDIR /usr/local/tomee
# Wed, 23 Jan 2019 17:37:07 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Wed, 30 Jan 2019 09:58:21 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Wed, 30 Jan 2019 09:58:48 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-microprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-microprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-microprofile-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-microprofile-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 30 Jan 2019 09:58:48 GMT
EXPOSE 8080
# Wed, 30 Jan 2019 09:58:49 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:11f02589fc3d00a36a98d58ff4404167ce69f35a4207db13bcf6ea33799132a1`  
		Last Modified: Wed, 23 Jan 2019 13:07:55 GMT  
		Size: 845.9 KB (845891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f706fbf9316b6749bad538668f10e064add4ce2f6aed270989fc3b918e930a`  
		Last Modified: Wed, 23 Jan 2019 13:10:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35bb425eede337aebc4950beae6e19a3a56ed4c5b2bfcd7bc1b307933d044392`  
		Last Modified: Wed, 23 Jan 2019 13:10:43 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62616871071168f39d28c876c2d4fff8af2f38e4b9c366e4984beb8a86f2a75f`  
		Last Modified: Wed, 23 Jan 2019 13:11:15 GMT  
		Size: 111.9 MB (111902571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b640d63e8fbaf1a935e851ea19d7416a89ba8a810dbee6346cb9bd0250166e9`  
		Last Modified: Wed, 30 Jan 2019 09:59:32 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97a3dde3970fd4b61b5dcb883974e72d1b830e14571817ec78eccb361a339e6`  
		Last Modified: Wed, 30 Jan 2019 10:00:00 GMT  
		Size: 27.4 KB (27366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3f7b9d2a2d9d53184b73f71f6154bbc2591d6eaaba5fc07f96d339475b776b`  
		Last Modified: Wed, 30 Jan 2019 10:00:08 GMT  
		Size: 44.7 MB (44744924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-microprofile` - linux; arm variant v7

```console
$ docker pull tomee@sha256:31913d9c49c3e720d1a9375b6e0dbe13e34b903910318ce7b909cbc06fab1a13
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.4 MB (211352392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1904b9895b43429825f983561a3d23065f3b62dced40cb5745e8dcd8d8788e0`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 16:20:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 16:25:56 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 16:25:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 16:25:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 16:26:00 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 07 Feb 2019 16:26:00 GMT
ENV JAVA_VERSION=8u181
# Thu, 07 Feb 2019 16:26:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 26 Feb 2019 13:03:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Feb 2019 13:49:36 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Feb 2019 13:49:37 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 26 Feb 2019 13:49:38 GMT
WORKDIR /usr/local/tomee
# Tue, 26 Feb 2019 13:53:01 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Tue, 26 Feb 2019 13:55:53 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Tue, 26 Feb 2019 13:56:37 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-microprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-microprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-microprofile-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-microprofile-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 26 Feb 2019 13:56:38 GMT
EXPOSE 8080
# Tue, 26 Feb 2019 13:56:38 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:c420ea54f7dd3d1803a8fcf35d65c4a0a551de781aec1eb255c1c7f44874ece1`  
		Last Modified: Tue, 26 Feb 2019 13:06:17 GMT  
		Size: 830.2 KB (830219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd9db72d234d33511cf937879aaacab93663220b980677ba31c22ac365b8ce15`  
		Last Modified: Tue, 26 Feb 2019 13:06:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae76b7ee144b5654073ec84bee4ec40b2450fb453969a3e05440053e268fc768`  
		Last Modified: Tue, 26 Feb 2019 13:06:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad33b2fb9748522bea57b1d927d8ee0dade4fc5c2a68461e235828a172f948d8`  
		Last Modified: Tue, 26 Feb 2019 13:06:49 GMT  
		Size: 110.3 MB (110263220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44dbe2dc995aecf2dab91f8d0636f2aa5ab8d258273d15d3a42cfcfecfc024ab`  
		Last Modified: Tue, 26 Feb 2019 13:57:51 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9268ba44e92403835db879fc103500259d1305ef2e0423f800a4ab8b8dedd48c`  
		Last Modified: Tue, 26 Feb 2019 13:58:21 GMT  
		Size: 27.4 KB (27365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47320e8c4c8fbaaa0e42ef30597070fd90dd52ef2b426dd7778bf537e7315845`  
		Last Modified: Tue, 26 Feb 2019 13:58:28 GMT  
		Size: 44.7 MB (44744883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-microprofile` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:06b5a8f1ed08a59cf4d209160c80638f5d4a37bae721a14cd0dadff16bd2c40e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.3 MB (215315094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cf6289b81888a9684e44ead62f3c6060432b897af8342b78d582cb968d5dd18`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 12:02:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:21:27 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:21:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:21:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 12:21:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 12:21:39 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 12:21:41 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 12:27:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 08:58:11 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 08:58:14 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 07 Feb 2019 08:58:15 GMT
WORKDIR /usr/local/tomee
# Thu, 07 Feb 2019 09:02:25 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Thu, 07 Feb 2019 09:04:11 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 09:04:51 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-microprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-microprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-microprofile-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-microprofile-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 07 Feb 2019 09:04:52 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 09:04:53 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:1f78a9a3946c048cd1989adcb19ce142726814f9404f8ba27e6f67109ffbbcb4`  
		Last Modified: Wed, 06 Feb 2019 12:38:38 GMT  
		Size: 839.2 KB (839181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878c79f6988625ee5f4324e98135b17b7efeaa9075d4564d50ae21a8d7d0a5d9`  
		Last Modified: Wed, 06 Feb 2019 12:43:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783443219103599e6e7f0ceca2dfa1f8d755ced3dd4f5d8dffe801d82c6f1c26`  
		Last Modified: Wed, 06 Feb 2019 12:43:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d15746098decd81522d87e08b556d729daed66739f70ccbcf9a4049b5ba3f5e`  
		Last Modified: Wed, 06 Feb 2019 12:44:11 GMT  
		Size: 112.8 MB (112756331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1228230a965da537f05c2f7d6648e0b3bc3f195258c03717c50a446097efcdff`  
		Last Modified: Thu, 07 Feb 2019 09:05:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d408348a647429180436f3be2ffb06393704bee26a2f79de1354f39ab5f71a`  
		Last Modified: Thu, 07 Feb 2019 09:05:58 GMT  
		Size: 27.3 KB (27330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e8473a3ac9b8a23c17108b00b7272bb1b07a33d67bf7b2ed4a931088631151`  
		Last Modified: Thu, 07 Feb 2019 09:06:06 GMT  
		Size: 44.7 MB (44744771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-microprofile` - linux; 386

```console
$ docker pull tomee@sha256:ef0561829e4fda32868501c6743872c325306eef7db4360d6d3fde10761177e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229672705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b97ad406ee5b417c4eac3ae4e809fb48d907931d25bf911c211f61784245fc0f`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:07 GMT
ADD file:70c26933810136bdb5c394bab98ac1119dd6ab650db410d21a0a16098b8a6ae2 in / 
# Wed, 06 Feb 2019 12:01:08 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:49:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:49:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 06:21:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 06:23:57 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 06:23:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 06:23:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_VERSION=8u181
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Thu, 07 Feb 2019 06:24:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 07:58:03 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 07:58:04 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 07 Feb 2019 07:58:04 GMT
WORKDIR /usr/local/tomee
# Thu, 07 Feb 2019 08:00:27 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Thu, 07 Feb 2019 08:00:58 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 08:01:03 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-microprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-microprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-microprofile-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-microprofile-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 07 Feb 2019 08:01:04 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 08:01:04 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:404daee469e7110f87d6cff18a56b702c9a559f4ed1a9dbfc19dd4b7f467a8f6`  
		Last Modified: Thu, 07 Feb 2019 06:39:52 GMT  
		Size: 861.8 KB (861782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb0682ae720b17c31fb2604657fce4f6666c5d10dcc28fbdddb7975c40d0580`  
		Last Modified: Thu, 07 Feb 2019 06:41:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2468d39d4f0a7aefb8c7ff17aaf6f1d629af13da8f2ba011b60f91a4406c232f`  
		Last Modified: Thu, 07 Feb 2019 06:41:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cae5e57702086236a1f8f63a621c95b430457a22febdd0cee00cb145ea7c53f`  
		Last Modified: Thu, 07 Feb 2019 06:41:28 GMT  
		Size: 122.6 MB (122608632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947c5e6fa47a4617ce2f6a4a4625c36f4447ef06a434ca76e2c63fed44b7f9f5`  
		Last Modified: Thu, 07 Feb 2019 08:01:20 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009057b8aa214997db28ce8c75b2b6d4ef878948e170b17c027fde760cf60a49`  
		Last Modified: Thu, 07 Feb 2019 08:01:39 GMT  
		Size: 27.3 KB (27320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b9a3c72b122a62e2edb484c8adc7950b517a2ab560d36b01e1f320ffa01aae`  
		Last Modified: Thu, 07 Feb 2019 08:01:44 GMT  
		Size: 44.7 MB (44744745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-microprofile` - linux; ppc64le

```console
$ docker pull tomee@sha256:a23a5e8487e460946ec8fb22f341535dbf3fc66db28a53ffa7432d4610ab4753
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.1 MB (220064195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5213cfdeb5b94e977e4515d61511db157c7be0a6358496ff86cce42d881e26f1`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:33 GMT
ADD file:dbc825fea111271dd16d8443e8df30f00e4bfb82365f49430e4b697866955e25 in / 
# Wed, 06 Feb 2019 09:26:35 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 19:08:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:08:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 20:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:32:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 20:32:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 20:32:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 20:32:33 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 20:32:42 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 20:32:44 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 20:36:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 02:24:48 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 02:24:52 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 07 Feb 2019 02:24:54 GMT
WORKDIR /usr/local/tomee
# Thu, 07 Feb 2019 02:29:02 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Thu, 07 Feb 2019 02:31:05 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 02:31:34 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-microprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-microprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-microprofile-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-microprofile-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 07 Feb 2019 02:31:37 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 02:31:39 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:17f20bf77b1e398ca4193dcade8311e979631c9beebc1553ccb5b6209e93c223`  
		Last Modified: Wed, 06 Feb 2019 20:39:19 GMT  
		Size: 848.3 KB (848322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c52cbb8911f73b6eaccec2474854ce85cdfe113fcb472dedcb2cd7be5f34eee`  
		Last Modified: Wed, 06 Feb 2019 20:40:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196e6779b3814f4f06649c3d26f2d5423fc3ad80a6da543f04c6950051d9ce28`  
		Last Modified: Wed, 06 Feb 2019 20:40:45 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d377fb0231d449d8c795a13f64f6439fb0346503591a11ce8500dae89e5099ea`  
		Last Modified: Wed, 06 Feb 2019 20:42:07 GMT  
		Size: 114.5 MB (114543961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38769d2f85b87f03db1c505065ea5fe754822a717a39990752e5e196ea14237e`  
		Last Modified: Thu, 07 Feb 2019 02:32:30 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e211c53b790e6a2b6d71603a0104af9c2aedd84ce7166e953454b6f7d1f52f`  
		Last Modified: Thu, 07 Feb 2019 02:32:59 GMT  
		Size: 27.4 KB (27360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc644dd0dd2ee9492f3cce421a3a43d21e38e20c3d68240e160ecd2712aee54`  
		Last Modified: Thu, 07 Feb 2019 02:33:05 GMT  
		Size: 44.7 MB (44744926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-microprofile` - linux; s390x

```console
$ docker pull tomee@sha256:ca7186746a28a381d0a6af7f0361da31964cbd001d4a3702dc2e374ada7f2eee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.7 MB (219668447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b691582cc25ce67c4d1b8017d9a4c1f0af12770f4d10b29ec70473948e8634e5`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:08 GMT
ADD file:8c452240b3657ec4cc6568239a4d933bc75fd958464a3950f67912097968fff8 in / 
# Wed, 06 Feb 2019 12:43:08 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 15:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:27:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 17:55:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 17:57:05 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 17:57:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 17:57:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 17:57:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 17:57:06 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 17:57:06 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 17:57:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 19:33:28 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 19:33:29 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 06 Feb 2019 19:33:29 GMT
WORKDIR /usr/local/tomee
# Wed, 06 Feb 2019 19:36:25 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Wed, 06 Feb 2019 19:38:29 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 19:39:12 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-microprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-microprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-microprofile-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-microprofile-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 06 Feb 2019 19:39:12 GMT
EXPOSE 8080
# Wed, 06 Feb 2019 19:39:12 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:2286c2cd611562cb26ce49eda3f9ff0c0f161921a76086ce7329a049505a18e1`  
		Last Modified: Wed, 06 Feb 2019 17:59:15 GMT  
		Size: 863.6 KB (863650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acdfd4642d73d1cffc58d15b856daea81821059fe8c33351ff0b2431a804adc2`  
		Last Modified: Wed, 06 Feb 2019 18:00:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f30ee9aef95e19a0d2739b85f277b7d144ce2051b2b571dcea28b5d531c33f1`  
		Last Modified: Wed, 06 Feb 2019 18:00:08 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3f6deca2239025b5d042d291bfef4c6c69714fdaf58b5be4e19ce7db9b8bac`  
		Last Modified: Wed, 06 Feb 2019 18:00:24 GMT  
		Size: 114.1 MB (114132686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c3f012a6fd569665f6a7f3cd8abd40ecb5d6696b496b8174f154a04b369fc5`  
		Last Modified: Wed, 06 Feb 2019 19:40:34 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bf49eb3bcb07308653b474f70ec949ff408c1f28420e8bb5edf7ac16b8f9a0`  
		Last Modified: Wed, 06 Feb 2019 19:40:52 GMT  
		Size: 27.3 KB (27324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0599badf56c8eba3d0593cb5e2d0f033f172f6bbb0bcfe2646335b36d8257ea5`  
		Last Modified: Wed, 06 Feb 2019 19:40:55 GMT  
		Size: 44.7 MB (44744782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:8-jre-8.0.0-M2-plume`

```console
$ docker pull tomee@sha256:bcb871519611b029351ca8ee2ed9c78fff4052d08635b34b30a5f6aaefbb7b81
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

### `tomee:8-jre-8.0.0-M2-plume` - linux; amd64

```console
$ docker pull tomee@sha256:6941556bcdcef9fe891f15d3b6b93ab4e7ed6fb4777de64a9ad0eda9e513f3af
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.8 MB (249765847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587f963c6c64e7341367193491c75f75468e2fb2dbd65d0e336bbfe68f5404b0`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:29:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:29:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:29:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:30:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 16:22:39 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 16:22:40 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 06 Feb 2019 16:22:40 GMT
WORKDIR /usr/local/tomee
# Wed, 06 Feb 2019 16:25:46 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Wed, 06 Feb 2019 16:25:51 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 16:26:35 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 06 Feb 2019 16:26:35 GMT
EXPOSE 8080
# Wed, 06 Feb 2019 16:26:36 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:eea0f08c7492aa49cb62b7fc7cf5a3b91e5c83c182cecddaba75903f09a1c67e`  
		Last Modified: Wed, 06 Feb 2019 08:52:24 GMT  
		Size: 852.9 KB (852911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca74b3d90c15cc3066bb46f8b6cdb617805b39e46ba39b891e4592b601abaee1`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11a643c4a8511e3f7d00a7f7c01059bf804876833992895eebbbaf108399655`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eafed73b65f1719e1ad5446e1f57859feb2f71f0b21d5f0bd25fb7d0d6dbd5`  
		Last Modified: Wed, 06 Feb 2019 08:54:52 GMT  
		Size: 122.1 MB (122121101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5fead7ac4e2dc14830fcceed1264817858077da1a0624a4da930442dffa96aa`  
		Last Modified: Wed, 06 Feb 2019 16:28:21 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910eb124d32f23bbf1f06d50a9375c7e3718cc182ea6533be29e7fd6bee5f981`  
		Last Modified: Wed, 06 Feb 2019 16:28:21 GMT  
		Size: 27.3 KB (27327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6177cdd8ed5512f493dd361d6992ff528977d2c14e47af6e2da074ef174f97d8`  
		Last Modified: Wed, 06 Feb 2019 16:28:30 GMT  
		Size: 66.3 MB (66298546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-plume` - linux; arm variant v5

```console
$ docker pull tomee@sha256:1fc99b182c7970a24e828a2d1d95ff6d13add1fd693913a58586e9addd33c51a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.1 MB (237136637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b15836103e3bde112417734e5a2a145e8798473fc5f449f2eccc39f5cacc7a`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:27 GMT
ADD file:8ba047ef6412ca91461f1c03e2571c0760c1e7ce294814ec3523055f0b453994 in / 
# Wed, 23 Jan 2019 09:54:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:38:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:38:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:45:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:51:22 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:51:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:51:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 12:51:25 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 23 Jan 2019 12:51:26 GMT
ENV JAVA_VERSION=8u181
# Wed, 23 Jan 2019 12:51:26 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 23 Jan 2019 12:52:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 17:32:40 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:32:42 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 23 Jan 2019 17:32:43 GMT
WORKDIR /usr/local/tomee
# Wed, 23 Jan 2019 17:37:07 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Wed, 30 Jan 2019 09:56:00 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Wed, 30 Jan 2019 09:56:41 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 30 Jan 2019 09:56:42 GMT
EXPOSE 8080
# Wed, 30 Jan 2019 09:56:42 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:11f02589fc3d00a36a98d58ff4404167ce69f35a4207db13bcf6ea33799132a1`  
		Last Modified: Wed, 23 Jan 2019 13:07:55 GMT  
		Size: 845.9 KB (845891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f706fbf9316b6749bad538668f10e064add4ce2f6aed270989fc3b918e930a`  
		Last Modified: Wed, 23 Jan 2019 13:10:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35bb425eede337aebc4950beae6e19a3a56ed4c5b2bfcd7bc1b307933d044392`  
		Last Modified: Wed, 23 Jan 2019 13:10:43 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62616871071168f39d28c876c2d4fff8af2f38e4b9c366e4984beb8a86f2a75f`  
		Last Modified: Wed, 23 Jan 2019 13:11:15 GMT  
		Size: 111.9 MB (111902571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b640d63e8fbaf1a935e851ea19d7416a89ba8a810dbee6346cb9bd0250166e9`  
		Last Modified: Wed, 30 Jan 2019 09:59:32 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa3c0e62d7cdc53b5f02f05c9d37fd1e6f0cc3ab1a79b05a652267eb044c4ea`  
		Last Modified: Wed, 30 Jan 2019 09:59:32 GMT  
		Size: 27.4 KB (27367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dee4a99a4a457dfd60d623c92481c34067efbbc07decb1f07932c7e937da87f`  
		Last Modified: Wed, 30 Jan 2019 09:59:43 GMT  
		Size: 66.3 MB (66298715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-plume` - linux; arm variant v7

```console
$ docker pull tomee@sha256:c8dea52c0d6f621ba957cc963eb7ba2d0fd11de6568bcd0787d4d8d4282aa4c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232906152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4a42fe130c96b881f8b76739347292d47e4724140ec62b217a95f523ed2146`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 16:20:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 16:25:56 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 16:25:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 16:25:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 16:26:00 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 07 Feb 2019 16:26:00 GMT
ENV JAVA_VERSION=8u181
# Thu, 07 Feb 2019 16:26:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 26 Feb 2019 13:03:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Feb 2019 13:49:36 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Feb 2019 13:49:37 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 26 Feb 2019 13:49:38 GMT
WORKDIR /usr/local/tomee
# Tue, 26 Feb 2019 13:53:01 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Tue, 26 Feb 2019 13:53:06 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Tue, 26 Feb 2019 13:54:37 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 26 Feb 2019 13:54:38 GMT
EXPOSE 8080
# Tue, 26 Feb 2019 13:54:38 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:c420ea54f7dd3d1803a8fcf35d65c4a0a551de781aec1eb255c1c7f44874ece1`  
		Last Modified: Tue, 26 Feb 2019 13:06:17 GMT  
		Size: 830.2 KB (830219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd9db72d234d33511cf937879aaacab93663220b980677ba31c22ac365b8ce15`  
		Last Modified: Tue, 26 Feb 2019 13:06:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae76b7ee144b5654073ec84bee4ec40b2450fb453969a3e05440053e268fc768`  
		Last Modified: Tue, 26 Feb 2019 13:06:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad33b2fb9748522bea57b1d927d8ee0dade4fc5c2a68461e235828a172f948d8`  
		Last Modified: Tue, 26 Feb 2019 13:06:49 GMT  
		Size: 110.3 MB (110263220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44dbe2dc995aecf2dab91f8d0636f2aa5ab8d258273d15d3a42cfcfecfc024ab`  
		Last Modified: Tue, 26 Feb 2019 13:57:51 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b75fc569287d78fa343418e3d58e90b75ea6137816b62843f698d1856d1918`  
		Last Modified: Tue, 26 Feb 2019 13:57:51 GMT  
		Size: 27.4 KB (27365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532b0899318e0a74cb8d46c0cc228dadf9293f9920419afe17e3f4a077d3344c`  
		Last Modified: Tue, 26 Feb 2019 13:58:02 GMT  
		Size: 66.3 MB (66298643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-plume` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:886729dd970354fad9a753c0f952db556b075934d5d80b2aab0d0a659537631c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.9 MB (236868856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25dfd7b4036237605e155dbe99d095c6ad4800ba84c5871c0435e80577a7e05c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 12:02:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:21:27 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:21:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:21:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 12:21:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 12:21:39 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 12:21:41 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 12:27:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 08:58:11 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 08:58:14 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 07 Feb 2019 08:58:15 GMT
WORKDIR /usr/local/tomee
# Thu, 07 Feb 2019 09:02:25 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Thu, 07 Feb 2019 09:02:32 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 09:03:22 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 07 Feb 2019 09:03:22 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 09:03:23 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:1f78a9a3946c048cd1989adcb19ce142726814f9404f8ba27e6f67109ffbbcb4`  
		Last Modified: Wed, 06 Feb 2019 12:38:38 GMT  
		Size: 839.2 KB (839181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878c79f6988625ee5f4324e98135b17b7efeaa9075d4564d50ae21a8d7d0a5d9`  
		Last Modified: Wed, 06 Feb 2019 12:43:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783443219103599e6e7f0ceca2dfa1f8d755ced3dd4f5d8dffe801d82c6f1c26`  
		Last Modified: Wed, 06 Feb 2019 12:43:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d15746098decd81522d87e08b556d729daed66739f70ccbcf9a4049b5ba3f5e`  
		Last Modified: Wed, 06 Feb 2019 12:44:11 GMT  
		Size: 112.8 MB (112756331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1228230a965da537f05c2f7d6648e0b3bc3f195258c03717c50a446097efcdff`  
		Last Modified: Thu, 07 Feb 2019 09:05:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78f61891f0e08e22b5358f3dee89bdf9fe1b59cb699545b2093c72ffcaaacd0`  
		Last Modified: Thu, 07 Feb 2019 09:05:22 GMT  
		Size: 27.3 KB (27331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7190629d7fb56427e4b5570b6f1256ea3aefbd4a6788cad248ab0d8be629356`  
		Last Modified: Thu, 07 Feb 2019 09:05:33 GMT  
		Size: 66.3 MB (66298532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-plume` - linux; 386

```console
$ docker pull tomee@sha256:972183f24d653021328e87b2d23b9dbe3688fba44e9500696bdaf56cac893ac2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.2 MB (251226511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b573819cac8ab3ab273c95b9d208c54897dacd8c339474f40c92d2612d3aef76`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:07 GMT
ADD file:70c26933810136bdb5c394bab98ac1119dd6ab650db410d21a0a16098b8a6ae2 in / 
# Wed, 06 Feb 2019 12:01:08 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:49:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:49:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 06:21:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 06:23:57 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 06:23:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 06:23:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_VERSION=8u181
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Thu, 07 Feb 2019 06:24:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 07:58:03 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 07:58:04 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 07 Feb 2019 07:58:04 GMT
WORKDIR /usr/local/tomee
# Thu, 07 Feb 2019 08:00:27 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Thu, 07 Feb 2019 08:00:31 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 08:00:40 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 07 Feb 2019 08:00:40 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 08:00:40 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:404daee469e7110f87d6cff18a56b702c9a559f4ed1a9dbfc19dd4b7f467a8f6`  
		Last Modified: Thu, 07 Feb 2019 06:39:52 GMT  
		Size: 861.8 KB (861782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb0682ae720b17c31fb2604657fce4f6666c5d10dcc28fbdddb7975c40d0580`  
		Last Modified: Thu, 07 Feb 2019 06:41:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2468d39d4f0a7aefb8c7ff17aaf6f1d629af13da8f2ba011b60f91a4406c232f`  
		Last Modified: Thu, 07 Feb 2019 06:41:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cae5e57702086236a1f8f63a621c95b430457a22febdd0cee00cb145ea7c53f`  
		Last Modified: Thu, 07 Feb 2019 06:41:28 GMT  
		Size: 122.6 MB (122608632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947c5e6fa47a4617ce2f6a4a4625c36f4447ef06a434ca76e2c63fed44b7f9f5`  
		Last Modified: Thu, 07 Feb 2019 08:01:20 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760c37106c49ab7f363544ce27135ca274fdb5143f3b5445be7571dac8d563ed`  
		Last Modified: Thu, 07 Feb 2019 08:01:20 GMT  
		Size: 27.3 KB (27329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1aa7fbd1e37d587870d74ebb7f2d7aec961fb900d3da2cff74803e1ca97389`  
		Last Modified: Thu, 07 Feb 2019 08:01:27 GMT  
		Size: 66.3 MB (66298542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-plume` - linux; ppc64le

```console
$ docker pull tomee@sha256:574d2beaa6d662606e5d22a0a834b18d33c91e5b2cddd21662bbda99e7fe625d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.6 MB (241617956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114183b8bb01fd90694620404238863d985a7f95b6b714682d01e1808fc30aed`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:33 GMT
ADD file:dbc825fea111271dd16d8443e8df30f00e4bfb82365f49430e4b697866955e25 in / 
# Wed, 06 Feb 2019 09:26:35 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 19:08:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:08:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 20:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:32:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 20:32:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 20:32:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 20:32:33 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 20:32:42 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 20:32:44 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 20:36:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 02:24:48 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 02:24:52 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 07 Feb 2019 02:24:54 GMT
WORKDIR /usr/local/tomee
# Thu, 07 Feb 2019 02:29:02 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Thu, 07 Feb 2019 02:29:09 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 02:29:50 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 07 Feb 2019 02:29:52 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 02:29:54 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:17f20bf77b1e398ca4193dcade8311e979631c9beebc1553ccb5b6209e93c223`  
		Last Modified: Wed, 06 Feb 2019 20:39:19 GMT  
		Size: 848.3 KB (848322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c52cbb8911f73b6eaccec2474854ce85cdfe113fcb472dedcb2cd7be5f34eee`  
		Last Modified: Wed, 06 Feb 2019 20:40:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196e6779b3814f4f06649c3d26f2d5423fc3ad80a6da543f04c6950051d9ce28`  
		Last Modified: Wed, 06 Feb 2019 20:40:45 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d377fb0231d449d8c795a13f64f6439fb0346503591a11ce8500dae89e5099ea`  
		Last Modified: Wed, 06 Feb 2019 20:42:07 GMT  
		Size: 114.5 MB (114543961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38769d2f85b87f03db1c505065ea5fe754822a717a39990752e5e196ea14237e`  
		Last Modified: Thu, 07 Feb 2019 02:32:30 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54e899c51c73feda8650d708c55c54cca705a35b91f7a1927fa09cead3c3e14`  
		Last Modified: Thu, 07 Feb 2019 02:32:30 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46befaa099169b7f1fff302ac5720c259c8e86a58929ecd1320201682cee4cb4`  
		Last Modified: Thu, 07 Feb 2019 02:32:37 GMT  
		Size: 66.3 MB (66298696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-plume` - linux; s390x

```console
$ docker pull tomee@sha256:d3dd00ea22e894699c00f13fa2c5903439359c058e45388be270f86f510f8f2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.2 MB (241222205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbb13d08e25cbeffdd7db2ac684595b6ff727abadf9d4f17c46b64ae3594a549`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:08 GMT
ADD file:8c452240b3657ec4cc6568239a4d933bc75fd958464a3950f67912097968fff8 in / 
# Wed, 06 Feb 2019 12:43:08 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 15:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:27:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 17:55:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 17:57:05 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 17:57:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 17:57:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 17:57:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 17:57:06 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 17:57:06 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 17:57:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 19:33:28 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 19:33:29 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 06 Feb 2019 19:33:29 GMT
WORKDIR /usr/local/tomee
# Wed, 06 Feb 2019 19:36:25 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Wed, 06 Feb 2019 19:36:29 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 19:38:02 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 06 Feb 2019 19:38:02 GMT
EXPOSE 8080
# Wed, 06 Feb 2019 19:38:02 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:2286c2cd611562cb26ce49eda3f9ff0c0f161921a76086ce7329a049505a18e1`  
		Last Modified: Wed, 06 Feb 2019 17:59:15 GMT  
		Size: 863.6 KB (863650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acdfd4642d73d1cffc58d15b856daea81821059fe8c33351ff0b2431a804adc2`  
		Last Modified: Wed, 06 Feb 2019 18:00:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f30ee9aef95e19a0d2739b85f277b7d144ce2051b2b571dcea28b5d531c33f1`  
		Last Modified: Wed, 06 Feb 2019 18:00:08 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3f6deca2239025b5d042d291bfef4c6c69714fdaf58b5be4e19ce7db9b8bac`  
		Last Modified: Wed, 06 Feb 2019 18:00:24 GMT  
		Size: 114.1 MB (114132686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c3f012a6fd569665f6a7f3cd8abd40ecb5d6696b496b8174f154a04b369fc5`  
		Last Modified: Wed, 06 Feb 2019 19:40:34 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab694cda70841f8a5c98481f3eb2b75ce6474126b1585e612353fee9d1df6a7`  
		Last Modified: Wed, 06 Feb 2019 19:40:34 GMT  
		Size: 27.3 KB (27333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bd1c277ae0d8c6d64ebe3da49f2df5c9238dcac59f0c396ad4a85ef89428d5`  
		Last Modified: Wed, 06 Feb 2019 19:40:39 GMT  
		Size: 66.3 MB (66298531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:8-jre-8.0.0-M2-plus`

```console
$ docker pull tomee@sha256:49931cd8e755a432f5239b793e352510353bf83e12f61afbc8984cd0d1078094
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

### `tomee:8-jre-8.0.0-M2-plus` - linux; amd64

```console
$ docker pull tomee@sha256:d46c596a8d6d9508b80914f9a3f32ad123c4d96939e7e112802c9a6b4085e786
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.6 MB (242579478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4789998599bb67e89d59e5f991afb2b18a77f80d6a4a9a74d62eb8b33955a309`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:29:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:29:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:29:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:30:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 16:22:39 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 16:22:40 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 06 Feb 2019 16:22:40 GMT
WORKDIR /usr/local/tomee
# Wed, 06 Feb 2019 16:25:46 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Wed, 06 Feb 2019 16:25:51 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 16:27:00 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 06 Feb 2019 16:27:01 GMT
EXPOSE 8080
# Wed, 06 Feb 2019 16:27:01 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:eea0f08c7492aa49cb62b7fc7cf5a3b91e5c83c182cecddaba75903f09a1c67e`  
		Last Modified: Wed, 06 Feb 2019 08:52:24 GMT  
		Size: 852.9 KB (852911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca74b3d90c15cc3066bb46f8b6cdb617805b39e46ba39b891e4592b601abaee1`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11a643c4a8511e3f7d00a7f7c01059bf804876833992895eebbbaf108399655`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eafed73b65f1719e1ad5446e1f57859feb2f71f0b21d5f0bd25fb7d0d6dbd5`  
		Last Modified: Wed, 06 Feb 2019 08:54:52 GMT  
		Size: 122.1 MB (122121101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5fead7ac4e2dc14830fcceed1264817858077da1a0624a4da930442dffa96aa`  
		Last Modified: Wed, 06 Feb 2019 16:28:21 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910eb124d32f23bbf1f06d50a9375c7e3718cc182ea6533be29e7fd6bee5f981`  
		Last Modified: Wed, 06 Feb 2019 16:28:21 GMT  
		Size: 27.3 KB (27327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a038491ac41dd365245350321cab6cb6860a9133ff649dfc847cd4519b6bfac`  
		Last Modified: Wed, 06 Feb 2019 16:28:41 GMT  
		Size: 59.1 MB (59112177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-plus` - linux; arm variant v5

```console
$ docker pull tomee@sha256:ab1bf837f0ad1b7d019bd5b5d3fc30557072df7b706b88a78058e9f7cc12ffff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.0 MB (229950294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b53ea511e4cb12f9f7f6016b34e3240351d1f6c1f38828f005f3bd703e456c3f`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:27 GMT
ADD file:8ba047ef6412ca91461f1c03e2571c0760c1e7ce294814ec3523055f0b453994 in / 
# Wed, 23 Jan 2019 09:54:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:38:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:38:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:45:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:51:22 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:51:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:51:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 12:51:25 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 23 Jan 2019 12:51:26 GMT
ENV JAVA_VERSION=8u181
# Wed, 23 Jan 2019 12:51:26 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 23 Jan 2019 12:52:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 17:32:40 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:32:42 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 23 Jan 2019 17:32:43 GMT
WORKDIR /usr/local/tomee
# Wed, 23 Jan 2019 17:37:07 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Wed, 30 Jan 2019 09:56:00 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Wed, 30 Jan 2019 09:58:06 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 30 Jan 2019 09:58:07 GMT
EXPOSE 8080
# Wed, 30 Jan 2019 09:58:07 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:11f02589fc3d00a36a98d58ff4404167ce69f35a4207db13bcf6ea33799132a1`  
		Last Modified: Wed, 23 Jan 2019 13:07:55 GMT  
		Size: 845.9 KB (845891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f706fbf9316b6749bad538668f10e064add4ce2f6aed270989fc3b918e930a`  
		Last Modified: Wed, 23 Jan 2019 13:10:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35bb425eede337aebc4950beae6e19a3a56ed4c5b2bfcd7bc1b307933d044392`  
		Last Modified: Wed, 23 Jan 2019 13:10:43 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62616871071168f39d28c876c2d4fff8af2f38e4b9c366e4984beb8a86f2a75f`  
		Last Modified: Wed, 23 Jan 2019 13:11:15 GMT  
		Size: 111.9 MB (111902571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b640d63e8fbaf1a935e851ea19d7416a89ba8a810dbee6346cb9bd0250166e9`  
		Last Modified: Wed, 30 Jan 2019 09:59:32 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa3c0e62d7cdc53b5f02f05c9d37fd1e6f0cc3ab1a79b05a652267eb044c4ea`  
		Last Modified: Wed, 30 Jan 2019 09:59:32 GMT  
		Size: 27.4 KB (27367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d656ed6b721f6a26f9acee63e0dbb67f775ce9460005fd492f32a0266fff4eae`  
		Last Modified: Wed, 30 Jan 2019 09:59:56 GMT  
		Size: 59.1 MB (59112372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-plus` - linux; arm variant v7

```console
$ docker pull tomee@sha256:df1d80d25dda7370542fe1c0490522c4f2912f63bfef6a28e6a01c2eb19523ea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225719851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0800775bf0471080aeae675d6f138f951e0525d916029840e785428eff31850c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 16:20:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 16:25:56 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 16:25:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 16:25:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 16:26:00 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 07 Feb 2019 16:26:00 GMT
ENV JAVA_VERSION=8u181
# Thu, 07 Feb 2019 16:26:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 26 Feb 2019 13:03:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Feb 2019 13:49:36 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Feb 2019 13:49:37 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 26 Feb 2019 13:49:38 GMT
WORKDIR /usr/local/tomee
# Tue, 26 Feb 2019 13:53:01 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Tue, 26 Feb 2019 13:53:06 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Tue, 26 Feb 2019 13:55:44 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 26 Feb 2019 13:55:45 GMT
EXPOSE 8080
# Tue, 26 Feb 2019 13:55:45 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:c420ea54f7dd3d1803a8fcf35d65c4a0a551de781aec1eb255c1c7f44874ece1`  
		Last Modified: Tue, 26 Feb 2019 13:06:17 GMT  
		Size: 830.2 KB (830219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd9db72d234d33511cf937879aaacab93663220b980677ba31c22ac365b8ce15`  
		Last Modified: Tue, 26 Feb 2019 13:06:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae76b7ee144b5654073ec84bee4ec40b2450fb453969a3e05440053e268fc768`  
		Last Modified: Tue, 26 Feb 2019 13:06:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad33b2fb9748522bea57b1d927d8ee0dade4fc5c2a68461e235828a172f948d8`  
		Last Modified: Tue, 26 Feb 2019 13:06:49 GMT  
		Size: 110.3 MB (110263220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44dbe2dc995aecf2dab91f8d0636f2aa5ab8d258273d15d3a42cfcfecfc024ab`  
		Last Modified: Tue, 26 Feb 2019 13:57:51 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b75fc569287d78fa343418e3d58e90b75ea6137816b62843f698d1856d1918`  
		Last Modified: Tue, 26 Feb 2019 13:57:51 GMT  
		Size: 27.4 KB (27365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb31908699e08f6352d9e8d54cbfb92fdb30d542f6ac77bc5479b3d26da65edb`  
		Last Modified: Tue, 26 Feb 2019 13:58:16 GMT  
		Size: 59.1 MB (59112342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-plus` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:26f56c993df3124b1999104b59b00c3e016a4d45728e38f0aa193a1f79683765
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229682507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01034ba877376490b3db62db9bc9b26dfc8a4579b2a6420fb036eac69f790c7f`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 12:02:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:21:27 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:21:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:21:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 12:21:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 12:21:39 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 12:21:41 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 12:27:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 08:58:11 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 08:58:14 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 07 Feb 2019 08:58:15 GMT
WORKDIR /usr/local/tomee
# Thu, 07 Feb 2019 09:02:25 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Thu, 07 Feb 2019 09:02:32 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 09:03:59 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 07 Feb 2019 09:04:00 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 09:04:01 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:1f78a9a3946c048cd1989adcb19ce142726814f9404f8ba27e6f67109ffbbcb4`  
		Last Modified: Wed, 06 Feb 2019 12:38:38 GMT  
		Size: 839.2 KB (839181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878c79f6988625ee5f4324e98135b17b7efeaa9075d4564d50ae21a8d7d0a5d9`  
		Last Modified: Wed, 06 Feb 2019 12:43:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783443219103599e6e7f0ceca2dfa1f8d755ced3dd4f5d8dffe801d82c6f1c26`  
		Last Modified: Wed, 06 Feb 2019 12:43:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d15746098decd81522d87e08b556d729daed66739f70ccbcf9a4049b5ba3f5e`  
		Last Modified: Wed, 06 Feb 2019 12:44:11 GMT  
		Size: 112.8 MB (112756331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1228230a965da537f05c2f7d6648e0b3bc3f195258c03717c50a446097efcdff`  
		Last Modified: Thu, 07 Feb 2019 09:05:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78f61891f0e08e22b5358f3dee89bdf9fe1b59cb699545b2093c72ffcaaacd0`  
		Last Modified: Thu, 07 Feb 2019 09:05:22 GMT  
		Size: 27.3 KB (27331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235572c87d098658dbf957848444ef1c6f6e821ff25ea02469a7d5f9790a2ed4`  
		Last Modified: Thu, 07 Feb 2019 09:05:52 GMT  
		Size: 59.1 MB (59112183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-plus` - linux; 386

```console
$ docker pull tomee@sha256:52ef699ed718ceca7e3f505477d0f48c21c9167d2021dcb1bbd5826b441e0627
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (244040137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ff26be04b9923c01af15555205a9e2d1d0eb6c8db4f90cbc2807fd9d177dce6`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:07 GMT
ADD file:70c26933810136bdb5c394bab98ac1119dd6ab650db410d21a0a16098b8a6ae2 in / 
# Wed, 06 Feb 2019 12:01:08 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:49:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:49:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 06:21:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 06:23:57 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 06:23:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 06:23:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_VERSION=8u181
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Thu, 07 Feb 2019 06:24:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 07:58:03 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 07:58:04 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 07 Feb 2019 07:58:04 GMT
WORKDIR /usr/local/tomee
# Thu, 07 Feb 2019 08:00:27 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Thu, 07 Feb 2019 08:00:31 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 08:00:51 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 07 Feb 2019 08:00:52 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 08:00:52 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:404daee469e7110f87d6cff18a56b702c9a559f4ed1a9dbfc19dd4b7f467a8f6`  
		Last Modified: Thu, 07 Feb 2019 06:39:52 GMT  
		Size: 861.8 KB (861782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb0682ae720b17c31fb2604657fce4f6666c5d10dcc28fbdddb7975c40d0580`  
		Last Modified: Thu, 07 Feb 2019 06:41:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2468d39d4f0a7aefb8c7ff17aaf6f1d629af13da8f2ba011b60f91a4406c232f`  
		Last Modified: Thu, 07 Feb 2019 06:41:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cae5e57702086236a1f8f63a621c95b430457a22febdd0cee00cb145ea7c53f`  
		Last Modified: Thu, 07 Feb 2019 06:41:28 GMT  
		Size: 122.6 MB (122608632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947c5e6fa47a4617ce2f6a4a4625c36f4447ef06a434ca76e2c63fed44b7f9f5`  
		Last Modified: Thu, 07 Feb 2019 08:01:20 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760c37106c49ab7f363544ce27135ca274fdb5143f3b5445be7571dac8d563ed`  
		Last Modified: Thu, 07 Feb 2019 08:01:20 GMT  
		Size: 27.3 KB (27329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b580f4aabefc26d7255d07560d85a34b245b6b3d47591f189a029987c61c02c`  
		Last Modified: Thu, 07 Feb 2019 08:01:36 GMT  
		Size: 59.1 MB (59112168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-plus` - linux; ppc64le

```console
$ docker pull tomee@sha256:5ff7ab0d3eb200dee1d04bee3717231029ab8d0256f6adb46a3b6a5b8392288a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.4 MB (234431576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e58310d6912ef0cc77605fc1cefdd1b08d0834e63c10c1a33b55bf8cf2807c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:33 GMT
ADD file:dbc825fea111271dd16d8443e8df30f00e4bfb82365f49430e4b697866955e25 in / 
# Wed, 06 Feb 2019 09:26:35 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 19:08:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:08:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 20:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:32:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 20:32:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 20:32:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 20:32:33 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 20:32:42 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 20:32:44 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 20:36:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 02:24:48 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 02:24:52 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 07 Feb 2019 02:24:54 GMT
WORKDIR /usr/local/tomee
# Thu, 07 Feb 2019 02:29:02 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Thu, 07 Feb 2019 02:29:09 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 02:30:46 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 07 Feb 2019 02:30:48 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 02:30:50 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:17f20bf77b1e398ca4193dcade8311e979631c9beebc1553ccb5b6209e93c223`  
		Last Modified: Wed, 06 Feb 2019 20:39:19 GMT  
		Size: 848.3 KB (848322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c52cbb8911f73b6eaccec2474854ce85cdfe113fcb472dedcb2cd7be5f34eee`  
		Last Modified: Wed, 06 Feb 2019 20:40:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196e6779b3814f4f06649c3d26f2d5423fc3ad80a6da543f04c6950051d9ce28`  
		Last Modified: Wed, 06 Feb 2019 20:40:45 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d377fb0231d449d8c795a13f64f6439fb0346503591a11ce8500dae89e5099ea`  
		Last Modified: Wed, 06 Feb 2019 20:42:07 GMT  
		Size: 114.5 MB (114543961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38769d2f85b87f03db1c505065ea5fe754822a717a39990752e5e196ea14237e`  
		Last Modified: Thu, 07 Feb 2019 02:32:30 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54e899c51c73feda8650d708c55c54cca705a35b91f7a1927fa09cead3c3e14`  
		Last Modified: Thu, 07 Feb 2019 02:32:30 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17428999aff7ba0b990e7503c9e007d53a479af4bb0204fbef155881b0422171`  
		Last Modified: Thu, 07 Feb 2019 02:32:52 GMT  
		Size: 59.1 MB (59112316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-plus` - linux; s390x

```console
$ docker pull tomee@sha256:41c74f29e93984c454fdc5708ea506ec801092e00cd95ef809937a1d1893e789
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.0 MB (234035826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f07a9a66c3e0784abc59c5ec7b29e8743194bebc6f3becae356fea6de5e25e25`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:08 GMT
ADD file:8c452240b3657ec4cc6568239a4d933bc75fd958464a3950f67912097968fff8 in / 
# Wed, 06 Feb 2019 12:43:08 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 15:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:27:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 17:55:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 17:57:05 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 17:57:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 17:57:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 17:57:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 17:57:06 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 17:57:06 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 17:57:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 19:33:28 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 19:33:29 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 06 Feb 2019 19:33:29 GMT
WORKDIR /usr/local/tomee
# Wed, 06 Feb 2019 19:36:25 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Wed, 06 Feb 2019 19:36:29 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 19:38:21 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 06 Feb 2019 19:38:21 GMT
EXPOSE 8080
# Wed, 06 Feb 2019 19:38:22 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:2286c2cd611562cb26ce49eda3f9ff0c0f161921a76086ce7329a049505a18e1`  
		Last Modified: Wed, 06 Feb 2019 17:59:15 GMT  
		Size: 863.6 KB (863650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acdfd4642d73d1cffc58d15b856daea81821059fe8c33351ff0b2431a804adc2`  
		Last Modified: Wed, 06 Feb 2019 18:00:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f30ee9aef95e19a0d2739b85f277b7d144ce2051b2b571dcea28b5d531c33f1`  
		Last Modified: Wed, 06 Feb 2019 18:00:08 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3f6deca2239025b5d042d291bfef4c6c69714fdaf58b5be4e19ce7db9b8bac`  
		Last Modified: Wed, 06 Feb 2019 18:00:24 GMT  
		Size: 114.1 MB (114132686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c3f012a6fd569665f6a7f3cd8abd40ecb5d6696b496b8174f154a04b369fc5`  
		Last Modified: Wed, 06 Feb 2019 19:40:34 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab694cda70841f8a5c98481f3eb2b75ce6474126b1585e612353fee9d1df6a7`  
		Last Modified: Wed, 06 Feb 2019 19:40:34 GMT  
		Size: 27.3 KB (27333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d50c4bda5890a2f517ac4a097a6bd333387df325a0b9b98cad94a636d407bb3`  
		Last Modified: Wed, 06 Feb 2019 19:40:48 GMT  
		Size: 59.1 MB (59112152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:8-jre-8.0.0-M2-webprofile`

```console
$ docker pull tomee@sha256:33f3b95bf8b9f66bbf532c6c14156dc9ed263f47807beba298e047a297e3430b
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

### `tomee:8-jre-8.0.0-M2-webprofile` - linux; amd64

```console
$ docker pull tomee@sha256:feacf3a1c827e1fb0ad4f0c4e2ce88ac355ef3c057e7292ea1279e4f8971b849
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.2 MB (225208251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:793ac56c0ab3a26852a63919a8fd2770dc59a1dec0ab0ac1ae4ad6ec51291896`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:29:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:29:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:29:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:30:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 16:22:39 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 16:22:40 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 06 Feb 2019 16:22:40 GMT
WORKDIR /usr/local/tomee
# Wed, 06 Feb 2019 16:25:46 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Wed, 06 Feb 2019 16:25:51 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 16:28:09 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 06 Feb 2019 16:28:09 GMT
EXPOSE 8080
# Wed, 06 Feb 2019 16:28:09 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:eea0f08c7492aa49cb62b7fc7cf5a3b91e5c83c182cecddaba75903f09a1c67e`  
		Last Modified: Wed, 06 Feb 2019 08:52:24 GMT  
		Size: 852.9 KB (852911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca74b3d90c15cc3066bb46f8b6cdb617805b39e46ba39b891e4592b601abaee1`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11a643c4a8511e3f7d00a7f7c01059bf804876833992895eebbbaf108399655`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eafed73b65f1719e1ad5446e1f57859feb2f71f0b21d5f0bd25fb7d0d6dbd5`  
		Last Modified: Wed, 06 Feb 2019 08:54:52 GMT  
		Size: 122.1 MB (122121101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5fead7ac4e2dc14830fcceed1264817858077da1a0624a4da930442dffa96aa`  
		Last Modified: Wed, 06 Feb 2019 16:28:21 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910eb124d32f23bbf1f06d50a9375c7e3718cc182ea6533be29e7fd6bee5f981`  
		Last Modified: Wed, 06 Feb 2019 16:28:21 GMT  
		Size: 27.3 KB (27327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5847e4023df6e02ccc64efce08be9e208286376953c881b15b289dc9aee093b`  
		Last Modified: Wed, 06 Feb 2019 16:29:01 GMT  
		Size: 41.7 MB (41740950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-webprofile` - linux; arm variant v5

```console
$ docker pull tomee@sha256:133015b155cfa33285e27704ea59f3d4bb683186d309fb119496f9180c29b637
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.6 MB (212578959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2960e96df6d62874dbdf913a43c84c3ed65c7c29883f182667440bfdbcfe51c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:27 GMT
ADD file:8ba047ef6412ca91461f1c03e2571c0760c1e7ce294814ec3523055f0b453994 in / 
# Wed, 23 Jan 2019 09:54:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:38:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:38:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:45:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:51:22 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:51:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:51:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 12:51:25 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 23 Jan 2019 12:51:26 GMT
ENV JAVA_VERSION=8u181
# Wed, 23 Jan 2019 12:51:26 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 23 Jan 2019 12:52:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 17:32:40 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:32:42 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 23 Jan 2019 17:32:43 GMT
WORKDIR /usr/local/tomee
# Wed, 23 Jan 2019 17:37:07 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Wed, 30 Jan 2019 09:56:00 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Wed, 30 Jan 2019 09:59:21 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 30 Jan 2019 09:59:22 GMT
EXPOSE 8080
# Wed, 30 Jan 2019 09:59:22 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:11f02589fc3d00a36a98d58ff4404167ce69f35a4207db13bcf6ea33799132a1`  
		Last Modified: Wed, 23 Jan 2019 13:07:55 GMT  
		Size: 845.9 KB (845891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f706fbf9316b6749bad538668f10e064add4ce2f6aed270989fc3b918e930a`  
		Last Modified: Wed, 23 Jan 2019 13:10:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35bb425eede337aebc4950beae6e19a3a56ed4c5b2bfcd7bc1b307933d044392`  
		Last Modified: Wed, 23 Jan 2019 13:10:43 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62616871071168f39d28c876c2d4fff8af2f38e4b9c366e4984beb8a86f2a75f`  
		Last Modified: Wed, 23 Jan 2019 13:11:15 GMT  
		Size: 111.9 MB (111902571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b640d63e8fbaf1a935e851ea19d7416a89ba8a810dbee6346cb9bd0250166e9`  
		Last Modified: Wed, 30 Jan 2019 09:59:32 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa3c0e62d7cdc53b5f02f05c9d37fd1e6f0cc3ab1a79b05a652267eb044c4ea`  
		Last Modified: Wed, 30 Jan 2019 09:59:32 GMT  
		Size: 27.4 KB (27367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d4374ec07263ec731630d201c608f504cef5d7063c0f866f44b4806b2713917`  
		Last Modified: Wed, 30 Jan 2019 10:00:18 GMT  
		Size: 41.7 MB (41741037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-webprofile` - linux; arm variant v7

```console
$ docker pull tomee@sha256:8312760eed71f64f7a965dc53c120977ae9aacef0d03c01a14373fdb0a2cdd42
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.3 MB (208348545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:570e60f5bf379617bfd35b40759c554149bb6cf5d3086904dbe70fc49fa8f806`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 16:20:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 16:25:56 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 16:25:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 16:25:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 16:26:00 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 07 Feb 2019 16:26:00 GMT
ENV JAVA_VERSION=8u181
# Thu, 07 Feb 2019 16:26:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 26 Feb 2019 13:03:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Feb 2019 13:49:36 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Feb 2019 13:49:37 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 26 Feb 2019 13:49:38 GMT
WORKDIR /usr/local/tomee
# Tue, 26 Feb 2019 13:53:01 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Tue, 26 Feb 2019 13:53:06 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Tue, 26 Feb 2019 13:57:32 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 26 Feb 2019 13:57:33 GMT
EXPOSE 8080
# Tue, 26 Feb 2019 13:57:33 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:c420ea54f7dd3d1803a8fcf35d65c4a0a551de781aec1eb255c1c7f44874ece1`  
		Last Modified: Tue, 26 Feb 2019 13:06:17 GMT  
		Size: 830.2 KB (830219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd9db72d234d33511cf937879aaacab93663220b980677ba31c22ac365b8ce15`  
		Last Modified: Tue, 26 Feb 2019 13:06:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae76b7ee144b5654073ec84bee4ec40b2450fb453969a3e05440053e268fc768`  
		Last Modified: Tue, 26 Feb 2019 13:06:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad33b2fb9748522bea57b1d927d8ee0dade4fc5c2a68461e235828a172f948d8`  
		Last Modified: Tue, 26 Feb 2019 13:06:49 GMT  
		Size: 110.3 MB (110263220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44dbe2dc995aecf2dab91f8d0636f2aa5ab8d258273d15d3a42cfcfecfc024ab`  
		Last Modified: Tue, 26 Feb 2019 13:57:51 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b75fc569287d78fa343418e3d58e90b75ea6137816b62843f698d1856d1918`  
		Last Modified: Tue, 26 Feb 2019 13:57:51 GMT  
		Size: 27.4 KB (27365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15141cfb1d07418c134009945d51f08940f2f5e1cac3956008d86ae1eb55d367`  
		Last Modified: Tue, 26 Feb 2019 13:58:39 GMT  
		Size: 41.7 MB (41741036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-webprofile` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:5f979e23e68d6433a978652ae7612d4061a90f93b60a008b793c32f1ee5e8f4c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.3 MB (212311275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6be481045489cc52c8fe394dec555c117d19b3bad86ec3bab034065bf1493e31`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 12:02:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:21:27 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:21:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:21:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 12:21:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 12:21:39 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 12:21:41 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 12:27:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 08:58:11 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 08:58:14 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 07 Feb 2019 08:58:15 GMT
WORKDIR /usr/local/tomee
# Thu, 07 Feb 2019 09:02:25 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Thu, 07 Feb 2019 09:02:32 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 09:05:09 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 07 Feb 2019 09:05:09 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 09:05:10 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:1f78a9a3946c048cd1989adcb19ce142726814f9404f8ba27e6f67109ffbbcb4`  
		Last Modified: Wed, 06 Feb 2019 12:38:38 GMT  
		Size: 839.2 KB (839181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878c79f6988625ee5f4324e98135b17b7efeaa9075d4564d50ae21a8d7d0a5d9`  
		Last Modified: Wed, 06 Feb 2019 12:43:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783443219103599e6e7f0ceca2dfa1f8d755ced3dd4f5d8dffe801d82c6f1c26`  
		Last Modified: Wed, 06 Feb 2019 12:43:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d15746098decd81522d87e08b556d729daed66739f70ccbcf9a4049b5ba3f5e`  
		Last Modified: Wed, 06 Feb 2019 12:44:11 GMT  
		Size: 112.8 MB (112756331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1228230a965da537f05c2f7d6648e0b3bc3f195258c03717c50a446097efcdff`  
		Last Modified: Thu, 07 Feb 2019 09:05:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78f61891f0e08e22b5358f3dee89bdf9fe1b59cb699545b2093c72ffcaaacd0`  
		Last Modified: Thu, 07 Feb 2019 09:05:22 GMT  
		Size: 27.3 KB (27331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee02eb01870d7fbbc3744ed27008004d65db48d804061df4ac5eb597c919aaf7`  
		Last Modified: Thu, 07 Feb 2019 09:06:19 GMT  
		Size: 41.7 MB (41740951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-webprofile` - linux; 386

```console
$ docker pull tomee@sha256:c25eb3bfd6b3df3589e8b91ddb16891f32307714d6539d1ad782fde85be05747
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.7 MB (226668940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fbf7f4254a4d3bcf28f8979f271bfad11e6a4c60d76533e225fe38731addb4f`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:07 GMT
ADD file:70c26933810136bdb5c394bab98ac1119dd6ab650db410d21a0a16098b8a6ae2 in / 
# Wed, 06 Feb 2019 12:01:08 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:49:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:49:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 06:21:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 06:23:57 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 06:23:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 06:23:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_VERSION=8u181
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Thu, 07 Feb 2019 06:24:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 07:58:03 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 07:58:04 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 07 Feb 2019 07:58:04 GMT
WORKDIR /usr/local/tomee
# Thu, 07 Feb 2019 08:00:27 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Thu, 07 Feb 2019 08:00:31 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 08:01:13 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 07 Feb 2019 08:01:13 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 08:01:13 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:404daee469e7110f87d6cff18a56b702c9a559f4ed1a9dbfc19dd4b7f467a8f6`  
		Last Modified: Thu, 07 Feb 2019 06:39:52 GMT  
		Size: 861.8 KB (861782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb0682ae720b17c31fb2604657fce4f6666c5d10dcc28fbdddb7975c40d0580`  
		Last Modified: Thu, 07 Feb 2019 06:41:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2468d39d4f0a7aefb8c7ff17aaf6f1d629af13da8f2ba011b60f91a4406c232f`  
		Last Modified: Thu, 07 Feb 2019 06:41:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cae5e57702086236a1f8f63a621c95b430457a22febdd0cee00cb145ea7c53f`  
		Last Modified: Thu, 07 Feb 2019 06:41:28 GMT  
		Size: 122.6 MB (122608632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947c5e6fa47a4617ce2f6a4a4625c36f4447ef06a434ca76e2c63fed44b7f9f5`  
		Last Modified: Thu, 07 Feb 2019 08:01:20 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760c37106c49ab7f363544ce27135ca274fdb5143f3b5445be7571dac8d563ed`  
		Last Modified: Thu, 07 Feb 2019 08:01:20 GMT  
		Size: 27.3 KB (27329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1151cad72870586e821230346fd6f9a60d0fec18392faf49a6e8dc094498ae`  
		Last Modified: Thu, 07 Feb 2019 08:01:51 GMT  
		Size: 41.7 MB (41740971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-webprofile` - linux; ppc64le

```console
$ docker pull tomee@sha256:1f6e1da2fb7df04d42cf166a7258bc1be01e79b71bff6905ba8f85d10a705522
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.1 MB (217060305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fa466bba2fd14b71775b73a0478cad7a98bf6cef4efe0736b4a5f393a85ffc2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:33 GMT
ADD file:dbc825fea111271dd16d8443e8df30f00e4bfb82365f49430e4b697866955e25 in / 
# Wed, 06 Feb 2019 09:26:35 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 19:08:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:08:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 20:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:32:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 20:32:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 20:32:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 20:32:33 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 20:32:42 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 20:32:44 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 20:36:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 02:24:48 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 02:24:52 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 07 Feb 2019 02:24:54 GMT
WORKDIR /usr/local/tomee
# Thu, 07 Feb 2019 02:29:02 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Thu, 07 Feb 2019 02:29:09 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 02:32:12 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 07 Feb 2019 02:32:14 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 02:32:15 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:17f20bf77b1e398ca4193dcade8311e979631c9beebc1553ccb5b6209e93c223`  
		Last Modified: Wed, 06 Feb 2019 20:39:19 GMT  
		Size: 848.3 KB (848322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c52cbb8911f73b6eaccec2474854ce85cdfe113fcb472dedcb2cd7be5f34eee`  
		Last Modified: Wed, 06 Feb 2019 20:40:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196e6779b3814f4f06649c3d26f2d5423fc3ad80a6da543f04c6950051d9ce28`  
		Last Modified: Wed, 06 Feb 2019 20:40:45 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d377fb0231d449d8c795a13f64f6439fb0346503591a11ce8500dae89e5099ea`  
		Last Modified: Wed, 06 Feb 2019 20:42:07 GMT  
		Size: 114.5 MB (114543961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38769d2f85b87f03db1c505065ea5fe754822a717a39990752e5e196ea14237e`  
		Last Modified: Thu, 07 Feb 2019 02:32:30 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54e899c51c73feda8650d708c55c54cca705a35b91f7a1927fa09cead3c3e14`  
		Last Modified: Thu, 07 Feb 2019 02:32:30 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628219a972b60db419e15be2eab7d0f761357968100a9661c86f41eeae7ca3ea`  
		Last Modified: Thu, 07 Feb 2019 02:33:21 GMT  
		Size: 41.7 MB (41741045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-webprofile` - linux; s390x

```console
$ docker pull tomee@sha256:495606d787f4557b7b7efd99c2d320b924c48f71ebed7df7adaf920004342915
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.7 MB (216664629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca5da3fb795bf5482288f0be458e6ec08d7d8755a81cc47b5f3a0a82f9667725`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:08 GMT
ADD file:8c452240b3657ec4cc6568239a4d933bc75fd958464a3950f67912097968fff8 in / 
# Wed, 06 Feb 2019 12:43:08 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 15:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:27:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 17:55:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 17:57:05 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 17:57:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 17:57:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 17:57:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 17:57:06 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 17:57:06 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 17:57:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 19:33:28 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 19:33:29 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 06 Feb 2019 19:33:29 GMT
WORKDIR /usr/local/tomee
# Wed, 06 Feb 2019 19:36:25 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Wed, 06 Feb 2019 19:36:29 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 19:40:20 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 06 Feb 2019 19:40:20 GMT
EXPOSE 8080
# Wed, 06 Feb 2019 19:40:20 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:2286c2cd611562cb26ce49eda3f9ff0c0f161921a76086ce7329a049505a18e1`  
		Last Modified: Wed, 06 Feb 2019 17:59:15 GMT  
		Size: 863.6 KB (863650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acdfd4642d73d1cffc58d15b856daea81821059fe8c33351ff0b2431a804adc2`  
		Last Modified: Wed, 06 Feb 2019 18:00:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f30ee9aef95e19a0d2739b85f277b7d144ce2051b2b571dcea28b5d531c33f1`  
		Last Modified: Wed, 06 Feb 2019 18:00:08 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3f6deca2239025b5d042d291bfef4c6c69714fdaf58b5be4e19ce7db9b8bac`  
		Last Modified: Wed, 06 Feb 2019 18:00:24 GMT  
		Size: 114.1 MB (114132686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c3f012a6fd569665f6a7f3cd8abd40ecb5d6696b496b8174f154a04b369fc5`  
		Last Modified: Wed, 06 Feb 2019 19:40:34 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab694cda70841f8a5c98481f3eb2b75ce6474126b1585e612353fee9d1df6a7`  
		Last Modified: Wed, 06 Feb 2019 19:40:34 GMT  
		Size: 27.3 KB (27333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7161d10905aee05080909f351f22344e9b1098f1ae5e52da3576d7cf612cefbc`  
		Last Modified: Wed, 06 Feb 2019 19:41:02 GMT  
		Size: 41.7 MB (41740955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `tomee:latest`

```console
$ docker pull tomee@sha256:33f3b95bf8b9f66bbf532c6c14156dc9ed263f47807beba298e047a297e3430b
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

### `tomee:latest` - linux; amd64

```console
$ docker pull tomee@sha256:feacf3a1c827e1fb0ad4f0c4e2ce88ac355ef3c057e7292ea1279e4f8971b849
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.2 MB (225208251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:793ac56c0ab3a26852a63919a8fd2770dc59a1dec0ab0ac1ae4ad6ec51291896`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:29:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:29:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:29:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:30:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 16:22:39 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 16:22:40 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 06 Feb 2019 16:22:40 GMT
WORKDIR /usr/local/tomee
# Wed, 06 Feb 2019 16:25:46 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Wed, 06 Feb 2019 16:25:51 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 16:28:09 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 06 Feb 2019 16:28:09 GMT
EXPOSE 8080
# Wed, 06 Feb 2019 16:28:09 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:eea0f08c7492aa49cb62b7fc7cf5a3b91e5c83c182cecddaba75903f09a1c67e`  
		Last Modified: Wed, 06 Feb 2019 08:52:24 GMT  
		Size: 852.9 KB (852911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca74b3d90c15cc3066bb46f8b6cdb617805b39e46ba39b891e4592b601abaee1`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11a643c4a8511e3f7d00a7f7c01059bf804876833992895eebbbaf108399655`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eafed73b65f1719e1ad5446e1f57859feb2f71f0b21d5f0bd25fb7d0d6dbd5`  
		Last Modified: Wed, 06 Feb 2019 08:54:52 GMT  
		Size: 122.1 MB (122121101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5fead7ac4e2dc14830fcceed1264817858077da1a0624a4da930442dffa96aa`  
		Last Modified: Wed, 06 Feb 2019 16:28:21 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910eb124d32f23bbf1f06d50a9375c7e3718cc182ea6533be29e7fd6bee5f981`  
		Last Modified: Wed, 06 Feb 2019 16:28:21 GMT  
		Size: 27.3 KB (27327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5847e4023df6e02ccc64efce08be9e208286376953c881b15b289dc9aee093b`  
		Last Modified: Wed, 06 Feb 2019 16:29:01 GMT  
		Size: 41.7 MB (41740950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:latest` - linux; arm variant v5

```console
$ docker pull tomee@sha256:133015b155cfa33285e27704ea59f3d4bb683186d309fb119496f9180c29b637
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.6 MB (212578959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2960e96df6d62874dbdf913a43c84c3ed65c7c29883f182667440bfdbcfe51c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:27 GMT
ADD file:8ba047ef6412ca91461f1c03e2571c0760c1e7ce294814ec3523055f0b453994 in / 
# Wed, 23 Jan 2019 09:54:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:38:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:38:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:45:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:51:22 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:51:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:51:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 12:51:25 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 23 Jan 2019 12:51:26 GMT
ENV JAVA_VERSION=8u181
# Wed, 23 Jan 2019 12:51:26 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 23 Jan 2019 12:52:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 17:32:40 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:32:42 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 23 Jan 2019 17:32:43 GMT
WORKDIR /usr/local/tomee
# Wed, 23 Jan 2019 17:37:07 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Wed, 30 Jan 2019 09:56:00 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Wed, 30 Jan 2019 09:59:21 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 30 Jan 2019 09:59:22 GMT
EXPOSE 8080
# Wed, 30 Jan 2019 09:59:22 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:11f02589fc3d00a36a98d58ff4404167ce69f35a4207db13bcf6ea33799132a1`  
		Last Modified: Wed, 23 Jan 2019 13:07:55 GMT  
		Size: 845.9 KB (845891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f706fbf9316b6749bad538668f10e064add4ce2f6aed270989fc3b918e930a`  
		Last Modified: Wed, 23 Jan 2019 13:10:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35bb425eede337aebc4950beae6e19a3a56ed4c5b2bfcd7bc1b307933d044392`  
		Last Modified: Wed, 23 Jan 2019 13:10:43 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62616871071168f39d28c876c2d4fff8af2f38e4b9c366e4984beb8a86f2a75f`  
		Last Modified: Wed, 23 Jan 2019 13:11:15 GMT  
		Size: 111.9 MB (111902571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b640d63e8fbaf1a935e851ea19d7416a89ba8a810dbee6346cb9bd0250166e9`  
		Last Modified: Wed, 30 Jan 2019 09:59:32 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa3c0e62d7cdc53b5f02f05c9d37fd1e6f0cc3ab1a79b05a652267eb044c4ea`  
		Last Modified: Wed, 30 Jan 2019 09:59:32 GMT  
		Size: 27.4 KB (27367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d4374ec07263ec731630d201c608f504cef5d7063c0f866f44b4806b2713917`  
		Last Modified: Wed, 30 Jan 2019 10:00:18 GMT  
		Size: 41.7 MB (41741037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:latest` - linux; arm variant v7

```console
$ docker pull tomee@sha256:8312760eed71f64f7a965dc53c120977ae9aacef0d03c01a14373fdb0a2cdd42
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.3 MB (208348545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:570e60f5bf379617bfd35b40759c554149bb6cf5d3086904dbe70fc49fa8f806`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 16:20:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 16:25:56 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 16:25:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 16:25:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 16:26:00 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 07 Feb 2019 16:26:00 GMT
ENV JAVA_VERSION=8u181
# Thu, 07 Feb 2019 16:26:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 26 Feb 2019 13:03:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Feb 2019 13:49:36 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Feb 2019 13:49:37 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 26 Feb 2019 13:49:38 GMT
WORKDIR /usr/local/tomee
# Tue, 26 Feb 2019 13:53:01 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Tue, 26 Feb 2019 13:53:06 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Tue, 26 Feb 2019 13:57:32 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 26 Feb 2019 13:57:33 GMT
EXPOSE 8080
# Tue, 26 Feb 2019 13:57:33 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:c420ea54f7dd3d1803a8fcf35d65c4a0a551de781aec1eb255c1c7f44874ece1`  
		Last Modified: Tue, 26 Feb 2019 13:06:17 GMT  
		Size: 830.2 KB (830219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd9db72d234d33511cf937879aaacab93663220b980677ba31c22ac365b8ce15`  
		Last Modified: Tue, 26 Feb 2019 13:06:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae76b7ee144b5654073ec84bee4ec40b2450fb453969a3e05440053e268fc768`  
		Last Modified: Tue, 26 Feb 2019 13:06:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad33b2fb9748522bea57b1d927d8ee0dade4fc5c2a68461e235828a172f948d8`  
		Last Modified: Tue, 26 Feb 2019 13:06:49 GMT  
		Size: 110.3 MB (110263220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44dbe2dc995aecf2dab91f8d0636f2aa5ab8d258273d15d3a42cfcfecfc024ab`  
		Last Modified: Tue, 26 Feb 2019 13:57:51 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b75fc569287d78fa343418e3d58e90b75ea6137816b62843f698d1856d1918`  
		Last Modified: Tue, 26 Feb 2019 13:57:51 GMT  
		Size: 27.4 KB (27365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15141cfb1d07418c134009945d51f08940f2f5e1cac3956008d86ae1eb55d367`  
		Last Modified: Tue, 26 Feb 2019 13:58:39 GMT  
		Size: 41.7 MB (41741036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:latest` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:5f979e23e68d6433a978652ae7612d4061a90f93b60a008b793c32f1ee5e8f4c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.3 MB (212311275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6be481045489cc52c8fe394dec555c117d19b3bad86ec3bab034065bf1493e31`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 12:02:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:21:27 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:21:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:21:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 12:21:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 12:21:39 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 12:21:41 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 12:27:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 08:58:11 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 08:58:14 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 07 Feb 2019 08:58:15 GMT
WORKDIR /usr/local/tomee
# Thu, 07 Feb 2019 09:02:25 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Thu, 07 Feb 2019 09:02:32 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 09:05:09 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 07 Feb 2019 09:05:09 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 09:05:10 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:1f78a9a3946c048cd1989adcb19ce142726814f9404f8ba27e6f67109ffbbcb4`  
		Last Modified: Wed, 06 Feb 2019 12:38:38 GMT  
		Size: 839.2 KB (839181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878c79f6988625ee5f4324e98135b17b7efeaa9075d4564d50ae21a8d7d0a5d9`  
		Last Modified: Wed, 06 Feb 2019 12:43:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783443219103599e6e7f0ceca2dfa1f8d755ced3dd4f5d8dffe801d82c6f1c26`  
		Last Modified: Wed, 06 Feb 2019 12:43:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d15746098decd81522d87e08b556d729daed66739f70ccbcf9a4049b5ba3f5e`  
		Last Modified: Wed, 06 Feb 2019 12:44:11 GMT  
		Size: 112.8 MB (112756331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1228230a965da537f05c2f7d6648e0b3bc3f195258c03717c50a446097efcdff`  
		Last Modified: Thu, 07 Feb 2019 09:05:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78f61891f0e08e22b5358f3dee89bdf9fe1b59cb699545b2093c72ffcaaacd0`  
		Last Modified: Thu, 07 Feb 2019 09:05:22 GMT  
		Size: 27.3 KB (27331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee02eb01870d7fbbc3744ed27008004d65db48d804061df4ac5eb597c919aaf7`  
		Last Modified: Thu, 07 Feb 2019 09:06:19 GMT  
		Size: 41.7 MB (41740951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:latest` - linux; 386

```console
$ docker pull tomee@sha256:c25eb3bfd6b3df3589e8b91ddb16891f32307714d6539d1ad782fde85be05747
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.7 MB (226668940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fbf7f4254a4d3bcf28f8979f271bfad11e6a4c60d76533e225fe38731addb4f`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:07 GMT
ADD file:70c26933810136bdb5c394bab98ac1119dd6ab650db410d21a0a16098b8a6ae2 in / 
# Wed, 06 Feb 2019 12:01:08 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:49:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:49:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 06:21:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 06:23:57 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 06:23:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 06:23:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_VERSION=8u181
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Thu, 07 Feb 2019 06:24:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 07:58:03 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 07:58:04 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 07 Feb 2019 07:58:04 GMT
WORKDIR /usr/local/tomee
# Thu, 07 Feb 2019 08:00:27 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Thu, 07 Feb 2019 08:00:31 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 08:01:13 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 07 Feb 2019 08:01:13 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 08:01:13 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:404daee469e7110f87d6cff18a56b702c9a559f4ed1a9dbfc19dd4b7f467a8f6`  
		Last Modified: Thu, 07 Feb 2019 06:39:52 GMT  
		Size: 861.8 KB (861782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb0682ae720b17c31fb2604657fce4f6666c5d10dcc28fbdddb7975c40d0580`  
		Last Modified: Thu, 07 Feb 2019 06:41:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2468d39d4f0a7aefb8c7ff17aaf6f1d629af13da8f2ba011b60f91a4406c232f`  
		Last Modified: Thu, 07 Feb 2019 06:41:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cae5e57702086236a1f8f63a621c95b430457a22febdd0cee00cb145ea7c53f`  
		Last Modified: Thu, 07 Feb 2019 06:41:28 GMT  
		Size: 122.6 MB (122608632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947c5e6fa47a4617ce2f6a4a4625c36f4447ef06a434ca76e2c63fed44b7f9f5`  
		Last Modified: Thu, 07 Feb 2019 08:01:20 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760c37106c49ab7f363544ce27135ca274fdb5143f3b5445be7571dac8d563ed`  
		Last Modified: Thu, 07 Feb 2019 08:01:20 GMT  
		Size: 27.3 KB (27329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1151cad72870586e821230346fd6f9a60d0fec18392faf49a6e8dc094498ae`  
		Last Modified: Thu, 07 Feb 2019 08:01:51 GMT  
		Size: 41.7 MB (41740971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:latest` - linux; ppc64le

```console
$ docker pull tomee@sha256:1f6e1da2fb7df04d42cf166a7258bc1be01e79b71bff6905ba8f85d10a705522
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.1 MB (217060305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fa466bba2fd14b71775b73a0478cad7a98bf6cef4efe0736b4a5f393a85ffc2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:33 GMT
ADD file:dbc825fea111271dd16d8443e8df30f00e4bfb82365f49430e4b697866955e25 in / 
# Wed, 06 Feb 2019 09:26:35 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 19:08:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:08:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 20:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:32:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 20:32:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 20:32:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 20:32:33 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 20:32:42 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 20:32:44 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 20:36:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 02:24:48 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 02:24:52 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 07 Feb 2019 02:24:54 GMT
WORKDIR /usr/local/tomee
# Thu, 07 Feb 2019 02:29:02 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Thu, 07 Feb 2019 02:29:09 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 02:32:12 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 07 Feb 2019 02:32:14 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 02:32:15 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:17f20bf77b1e398ca4193dcade8311e979631c9beebc1553ccb5b6209e93c223`  
		Last Modified: Wed, 06 Feb 2019 20:39:19 GMT  
		Size: 848.3 KB (848322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c52cbb8911f73b6eaccec2474854ce85cdfe113fcb472dedcb2cd7be5f34eee`  
		Last Modified: Wed, 06 Feb 2019 20:40:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196e6779b3814f4f06649c3d26f2d5423fc3ad80a6da543f04c6950051d9ce28`  
		Last Modified: Wed, 06 Feb 2019 20:40:45 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d377fb0231d449d8c795a13f64f6439fb0346503591a11ce8500dae89e5099ea`  
		Last Modified: Wed, 06 Feb 2019 20:42:07 GMT  
		Size: 114.5 MB (114543961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38769d2f85b87f03db1c505065ea5fe754822a717a39990752e5e196ea14237e`  
		Last Modified: Thu, 07 Feb 2019 02:32:30 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54e899c51c73feda8650d708c55c54cca705a35b91f7a1927fa09cead3c3e14`  
		Last Modified: Thu, 07 Feb 2019 02:32:30 GMT  
		Size: 27.4 KB (27351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628219a972b60db419e15be2eab7d0f761357968100a9661c86f41eeae7ca3ea`  
		Last Modified: Thu, 07 Feb 2019 02:33:21 GMT  
		Size: 41.7 MB (41741045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:latest` - linux; s390x

```console
$ docker pull tomee@sha256:495606d787f4557b7b7efd99c2d320b924c48f71ebed7df7adaf920004342915
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.7 MB (216664629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca5da3fb795bf5482288f0be458e6ec08d7d8755a81cc47b5f3a0a82f9667725`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:08 GMT
ADD file:8c452240b3657ec4cc6568239a4d933bc75fd958464a3950f67912097968fff8 in / 
# Wed, 06 Feb 2019 12:43:08 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 15:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:27:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 17:55:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 17:57:05 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 17:57:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 17:57:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 17:57:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 17:57:06 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 17:57:06 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 17:57:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 19:33:28 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 19:33:29 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 06 Feb 2019 19:33:29 GMT
WORKDIR /usr/local/tomee
# Wed, 06 Feb 2019 19:36:25 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Wed, 06 Feb 2019 19:36:29 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 19:40:20 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 06 Feb 2019 19:40:20 GMT
EXPOSE 8080
# Wed, 06 Feb 2019 19:40:20 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:2286c2cd611562cb26ce49eda3f9ff0c0f161921a76086ce7329a049505a18e1`  
		Last Modified: Wed, 06 Feb 2019 17:59:15 GMT  
		Size: 863.6 KB (863650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acdfd4642d73d1cffc58d15b856daea81821059fe8c33351ff0b2431a804adc2`  
		Last Modified: Wed, 06 Feb 2019 18:00:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f30ee9aef95e19a0d2739b85f277b7d144ce2051b2b571dcea28b5d531c33f1`  
		Last Modified: Wed, 06 Feb 2019 18:00:08 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3f6deca2239025b5d042d291bfef4c6c69714fdaf58b5be4e19ce7db9b8bac`  
		Last Modified: Wed, 06 Feb 2019 18:00:24 GMT  
		Size: 114.1 MB (114132686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c3f012a6fd569665f6a7f3cd8abd40ecb5d6696b496b8174f154a04b369fc5`  
		Last Modified: Wed, 06 Feb 2019 19:40:34 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab694cda70841f8a5c98481f3eb2b75ce6474126b1585e612353fee9d1df6a7`  
		Last Modified: Wed, 06 Feb 2019 19:40:34 GMT  
		Size: 27.3 KB (27333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7161d10905aee05080909f351f22344e9b1098f1ae5e52da3576d7cf612cefbc`  
		Last Modified: Wed, 06 Feb 2019 19:41:02 GMT  
		Size: 41.7 MB (41740955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

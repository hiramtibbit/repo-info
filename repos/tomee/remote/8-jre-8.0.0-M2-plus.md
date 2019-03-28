## `tomee:8-jre-8.0.0-M2-plus`

```console
$ docker pull tomee@sha256:466924ad060f4b2d5797bed99784dfadd1de110ebc6a309d68befc4df2121833
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
$ docker pull tomee@sha256:71542af57212d33340c591bd07ce9c1f5caadfdc8f16be13215ff76bf7f5d7e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.6 MB (242630633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab681c2b24046f4ee45d9d0734ff6eac4825abac194e87df2ff8480afa868eb7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:04:42 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:04:42 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 28 Mar 2019 00:04:43 GMT
WORKDIR /usr/local/tomee
# Thu, 28 Mar 2019 00:07:08 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Thu, 28 Mar 2019 00:07:11 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Thu, 28 Mar 2019 00:08:17 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 28 Mar 2019 00:08:17 GMT
EXPOSE 8080
# Thu, 28 Mar 2019 00:08:17 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10623fa26bb5388fab6d0ff6261bf41457a7cded646184585462ccb1a415f2a`  
		Last Modified: Thu, 28 Mar 2019 00:09:04 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12c4372f83c977ba0d1d1a505232b10b6010c2a298527e9079deea20e4b8352`  
		Last Modified: Thu, 28 Mar 2019 00:10:56 GMT  
		Size: 27.3 KB (27329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9efb1c6664b94a1fe6ebdc0bd4a8662e2373b44439900a41fa710a3dc813e6`  
		Last Modified: Thu, 28 Mar 2019 00:11:13 GMT  
		Size: 59.1 MB (59112204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-plus` - linux; arm variant v5

```console
$ docker pull tomee@sha256:80bd232f6abb524bd4abcd76c0f44f11fda8dfe261373a520a8bd75e5f6d7a07
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229931042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e97da513cc8cecc63f628842017c89d8e018a52bddc5b341542d24569f9495b`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 05 Mar 2019 09:54:45 GMT
ADD file:0d24c375e856f1e75f5cb0a6766b22665902b1a6940a87d2c7fc0e61f658e944 in / 
# Tue, 05 Mar 2019 09:54:46 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:33:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:33:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 11:17:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:23:41 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 11:23:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 11:23:44 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 11:23:44 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 11:23:44 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 11:23:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 11:24:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 17:01:16 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 17:01:18 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 05 Mar 2019 17:01:19 GMT
WORKDIR /usr/local/tomee
# Tue, 05 Mar 2019 17:07:21 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Tue, 05 Mar 2019 17:07:28 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 17:08:44 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 05 Mar 2019 17:08:44 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 17:08:45 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:35963a726ee5d52a496a31b3c1f6accaf90ad61bf0e1e0bd8aad2cf66ab8cdb3`  
		Last Modified: Tue, 05 Mar 2019 10:02:26 GMT  
		Size: 44.0 MB (44029811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:088a52eee835f09abb5e08bfd27b8cf0960dbcd0d3f28aa0e602654df58ce922`  
		Last Modified: Tue, 05 Mar 2019 10:43:14 GMT  
		Size: 9.9 MB (9851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2616673f78baa6ea1b22951cb4a50ea0c9db5f109d098f00b5bf86b3e29a7b51`  
		Last Modified: Tue, 05 Mar 2019 10:43:12 GMT  
		Size: 4.2 MB (4158962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29e62902178d17f798c00d2c12d1ce2afa56979e692b609138a6d0fce78bfbe`  
		Last Modified: Tue, 05 Mar 2019 11:39:23 GMT  
		Size: 845.9 KB (845894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03a6663d62bc5229d655bf4f7e0c3815777f64ca218883147d22f092e3145a3`  
		Last Modified: Tue, 05 Mar 2019 11:42:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1b5ca803bdccd60e3da135efe557f76540bfd75a3729a8c5c5a2435ce61003`  
		Last Modified: Tue, 05 Mar 2019 11:42:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af12fca2f0cbf9e602cd9ce86cb8e0379da77a659fd11b75d046265630cbc56`  
		Last Modified: Tue, 05 Mar 2019 11:42:34 GMT  
		Size: 111.9 MB (111904104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94c2487b67fa85c98b7e7f21fe41012b0f6afc6eee6e68d2a383a58d7cd4f8a`  
		Last Modified: Tue, 05 Mar 2019 17:10:07 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca26663453f33497fbcde061eb1ebc8053b5843e1cf73f36f5499c1cf15c353b`  
		Last Modified: Tue, 05 Mar 2019 17:13:01 GMT  
		Size: 27.4 KB (27362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911f1f141c50202b81c4e31a31105d9e43276bf19ac7576ecf4dbabb2d493023`  
		Last Modified: Tue, 05 Mar 2019 17:13:24 GMT  
		Size: 59.1 MB (59112392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-plus` - linux; arm variant v7

```console
$ docker pull tomee@sha256:01efe0722042f90e826e46830688a7b9b5f5edb3e8520e965d8411e0c71186ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225710268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b40706841fcd23998ef4cc64af2996dbba0cc784576b7aab22aa6d471db3a22`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 05 Mar 2019 13:10:34 GMT
ADD file:8f0ec0cbcef5902fe5ef35892898a19e6c61f5c422ac3d47500d42067ad7fef8 in / 
# Tue, 05 Mar 2019 13:10:35 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:50:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:50:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 14:23:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:27:02 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 14:27:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 14:27:05 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 14:27:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 14:27:06 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 14:27:07 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 14:28:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 17:57:56 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 17:57:58 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 05 Mar 2019 17:57:58 GMT
WORKDIR /usr/local/tomee
# Tue, 05 Mar 2019 18:03:48 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Tue, 05 Mar 2019 18:03:52 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 18:05:07 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 05 Mar 2019 18:05:07 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 18:05:08 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:ec43a77fdcf3d8df75738e0d3bec016f01ad00db637d5e43eee90aa67114e127`  
		Last Modified: Tue, 05 Mar 2019 13:18:22 GMT  
		Size: 42.1 MB (42075119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0128678cc4b40c9bb1ec7b0fa116a9208fd54d9337636244f099bbfedc9ca0`  
		Last Modified: Tue, 05 Mar 2019 14:02:58 GMT  
		Size: 9.5 MB (9483576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b2e6712f412bb77d3968e5923bc8e9a94c1e8cdf8885e330ba02209eb30333`  
		Last Modified: Tue, 05 Mar 2019 14:02:56 GMT  
		Size: 3.9 MB (3918633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3e27c925bbcf3bfdb87e8ada386662c36463b6a3e0ad177d9929165991eb81`  
		Last Modified: Tue, 05 Mar 2019 14:41:41 GMT  
		Size: 830.3 KB (830260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ed6ab30ee336646adef073ab59f86cf414e1cda0e1a8b4738580f02c9c647d`  
		Last Modified: Tue, 05 Mar 2019 14:41:41 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3194d62d1cc31512719126c58f402c41d67eba3f27ea1853c8222bc626d032a`  
		Last Modified: Tue, 05 Mar 2019 14:41:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bfb1fecf803c2846f8e3ec203d16d1207738be28e714ab71ca7dee31381f331`  
		Last Modified: Tue, 05 Mar 2019 14:42:11 GMT  
		Size: 110.3 MB (110262430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:004792daed7bdce04c685515b8591a554c428c05764e8c0b33613fbe371cd1d0`  
		Last Modified: Tue, 05 Mar 2019 18:06:27 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d18ac9a51e360db359e12535cb540246f18556ed0b00963cb699e1ddff606a5`  
		Last Modified: Tue, 05 Mar 2019 18:09:31 GMT  
		Size: 27.4 KB (27350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa7cea258ce7811752ba65fe1de6ee2203650d3b7e3b4801129f20ae8af25aa`  
		Last Modified: Tue, 05 Mar 2019 18:09:55 GMT  
		Size: 59.1 MB (59112341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-plus` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:64753685fad055b81595c471893fb505cf24ff5eb7db80ca93dbc49aea706edd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.0 MB (230010956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cc96de0c3500dee739cbc79b26f5616640f8d26f06f07718adec9ed4a56db0f`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 19:27:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:36:54 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 19:36:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 19:36:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 19:37:00 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 04:01:01 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 04:01:05 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 04:06:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 06:17:34 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 06:17:36 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 28 Mar 2019 06:17:37 GMT
WORKDIR /usr/local/tomee
# Thu, 28 Mar 2019 06:22:24 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Thu, 28 Mar 2019 06:22:30 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Thu, 28 Mar 2019 06:25:13 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 28 Mar 2019 06:25:13 GMT
EXPOSE 8080
# Thu, 28 Mar 2019 06:25:14 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f9a2434e166bc5bb8f8a3bf11f42053e0ab7483f5ba117a8d95cda3949a304`  
		Last Modified: Wed, 27 Mar 2019 19:43:23 GMT  
		Size: 839.2 KB (839168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35de3b06942b0872f8bddc0e61fbd0adcd351bda7995a3c1498e0bf28d39c9a8`  
		Last Modified: Thu, 28 Mar 2019 04:13:07 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8d78217f184ff677815878b71fbb8c673f93b382d9d09c8cc34a671f085cc8`  
		Last Modified: Thu, 28 Mar 2019 04:13:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d9e5d36c3694ad4709069f3b65061eb834f5f5a252b8db0bc73eea230e88f7`  
		Last Modified: Thu, 28 Mar 2019 04:13:43 GMT  
		Size: 113.1 MB (113075196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6953676bda4b1ac81b6e05676b21f667b06b37ff2055119f0706ac0bf1304aa`  
		Last Modified: Thu, 28 Mar 2019 06:28:30 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a71bd6c702184257fd64019bc95396d1efb2645a2e621269975e82ee25ae2f`  
		Last Modified: Thu, 28 Mar 2019 06:31:48 GMT  
		Size: 27.3 KB (27332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300880558057003552d6dfe15946c06b73e2ae990a8ca430f7e1a86bd071129c`  
		Last Modified: Thu, 28 Mar 2019 06:32:14 GMT  
		Size: 59.1 MB (59112196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-plus` - linux; 386

```console
$ docker pull tomee@sha256:c1c50dc26358ca02d62db6b25a7a2fe0ad6f3af0d68bd38308be1e75303215b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.1 MB (244071289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0079fda906936eb32c48710a94c0e13181ed651b88113e1410acd82a3d1e482`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:24 GMT
ADD file:62e6f951f41a7a3973289c673aaf3b36d711e5339dd5bc50d15714d4bdf50917 in / 
# Wed, 27 Mar 2019 10:43:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:55:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:55:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 17:54:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:57:00 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 17:57:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 17:57:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 17:57:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 00:59:33 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 00:59:33 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 01:00:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 03:26:06 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 03:26:07 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 28 Mar 2019 03:26:07 GMT
WORKDIR /usr/local/tomee
# Thu, 28 Mar 2019 03:28:52 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Thu, 28 Mar 2019 03:28:55 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Thu, 28 Mar 2019 03:30:39 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 28 Mar 2019 03:30:39 GMT
EXPOSE 8080
# Thu, 28 Mar 2019 03:30:40 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:3cf1c3e5c1c3ebb2ee78121e945d60be8e21bba1586daa95c7513d49ce96e5d1`  
		Last Modified: Wed, 27 Mar 2019 10:49:04 GMT  
		Size: 46.1 MB (46064366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8239c0fc9be5a7da27a34e4d748ce7625429bdca8bc859f883ab0d52b1135834`  
		Last Modified: Wed, 27 Mar 2019 14:09:50 GMT  
		Size: 10.8 MB (10800039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330984995c009366005f495b95e3230ee73b6f16514f0e526f218ba00c0102cc`  
		Last Modified: Wed, 27 Mar 2019 14:09:49 GMT  
		Size: 4.6 MB (4561399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5fd806a1a8b67c8a925a819d66afef1dda430b0bcda241d525cce8e0388dc9a`  
		Last Modified: Wed, 27 Mar 2019 18:29:59 GMT  
		Size: 861.7 KB (861731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7764bacfd6543fa61d0b5f37873882feb4a1a7949376eb1cde3664b92ca9241c`  
		Last Modified: Thu, 28 Mar 2019 01:17:41 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf665b23273bc075a095213da65dad4c01d09c20558b40a000db845d839b1b0a`  
		Last Modified: Thu, 28 Mar 2019 01:17:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d793b7bf4f951d9b0c3881222b76985a327401b090e973c58b803992f93a0ce`  
		Last Modified: Thu, 28 Mar 2019 01:18:18 GMT  
		Size: 122.6 MB (122643707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8974a6c64ad71f1e6300a42ec2b13a8d5f717246ccb0457383ecfa2594d7c123`  
		Last Modified: Thu, 28 Mar 2019 03:31:26 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5096ad759508f8a62d70f4400736f03e45b8ce3e0226bb1cfa032e746242fb95`  
		Last Modified: Thu, 28 Mar 2019 03:33:24 GMT  
		Size: 27.3 KB (27329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6590f16ae8b2237952745ef2681568aa0038cd0ca72c1cb044935c408016a7c2`  
		Last Modified: Thu, 28 Mar 2019 03:33:38 GMT  
		Size: 59.1 MB (59112189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-plus` - linux; ppc64le

```console
$ docker pull tomee@sha256:4fb71e6397a340aa7ad176ba544efc8e764495f9c3066d663c78b76ecf3586cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.4 MB (234432725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bd57307f5bfa42d55d005a9b0f64fa0521f948219ec3e15ab81e0434e28a53c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:21 GMT
ADD file:de4412e5af6632fda966c01f23fa53ac051704c5c8c63511822bae29940abba1 in / 
# Tue, 05 Mar 2019 09:25:26 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:45:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:45:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 14:50:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:06:36 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 15:06:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 15:07:00 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 15:07:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 15:07:14 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 15:07:20 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 15:14:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 20:12:15 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 20:12:22 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 05 Mar 2019 20:12:24 GMT
WORKDIR /usr/local/tomee
# Tue, 05 Mar 2019 20:18:31 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Tue, 05 Mar 2019 20:18:38 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 20:20:55 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 05 Mar 2019 20:20:58 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 20:20:59 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:b88be5fa0477b5e07410a4683e7f500619df6a2b1093565ef8b6c3ab2bc8bb0b`  
		Last Modified: Tue, 05 Mar 2019 09:31:30 GMT  
		Size: 45.6 MB (45610417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a668b08e3421d576c28b789bc0e8c0f7400f465503e936df3c1b880422b75bc`  
		Last Modified: Tue, 05 Mar 2019 13:02:52 GMT  
		Size: 10.0 MB (9988971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c800b04e42ea1197a3c9f6cc00c2763789101082fa94d89c8fdab3aa65aa17`  
		Last Modified: Tue, 05 Mar 2019 13:02:47 GMT  
		Size: 4.3 MB (4296530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea710e3bbdf5c3bb87ab3040c64ad44cafcd9122932eae10001bf075a81689ac`  
		Last Modified: Tue, 05 Mar 2019 15:22:10 GMT  
		Size: 848.4 KB (848424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198ac05734dbd066cfc1821e7dd0f6913172eb179fcc50f342890065c80659e9`  
		Last Modified: Tue, 05 Mar 2019 15:26:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5506d16119765c737319468439010475ca77885c8efd7fe9a89483dab826adc4`  
		Last Modified: Tue, 05 Mar 2019 15:26:01 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c575c8d2c5e0901d96195a03eec05494fabd604a3d995daa99e70d1431ba8e0c`  
		Last Modified: Tue, 05 Mar 2019 15:26:29 GMT  
		Size: 114.5 MB (114548127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5538fb79059c5a01a9655d58be835807280fe8d3e95201a0586705326c74f6ca`  
		Last Modified: Tue, 05 Mar 2019 20:23:29 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca14a17b03cd9d192218de88feeeee106e643dd96d84386a9e1c69fa5c08540`  
		Last Modified: Tue, 05 Mar 2019 20:27:03 GMT  
		Size: 27.4 KB (27350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a600b64d30c82366b3f3c1f849c0055dede83c128220443508fa8b679cb7c155`  
		Last Modified: Tue, 05 Mar 2019 20:27:23 GMT  
		Size: 59.1 MB (59112343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-plus` - linux; s390x

```console
$ docker pull tomee@sha256:dfbead7813234d3575edbb8a4a401a8558e96e270a2244f8d2cec73146a082d7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.0 MB (234025012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13729ef7ca251251feb97a8aef84a7ee39b238caecba046dba48ba644ad7a7a3`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 05 Mar 2019 12:42:57 GMT
ADD file:8271a1ca944204307a0659ebf47e18f728c4aa651091092aee9270e619c17663 in / 
# Tue, 05 Mar 2019 12:42:58 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:35:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:35:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 15:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:13:11 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 15:13:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 15:13:13 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 15:13:13 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 15:13:13 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 15:13:13 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 15:13:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 19:23:12 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 19:23:14 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 05 Mar 2019 19:23:15 GMT
WORKDIR /usr/local/tomee
# Tue, 05 Mar 2019 19:26:06 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Tue, 05 Mar 2019 19:26:11 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 19:26:51 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-plus.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 05 Mar 2019 19:26:51 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 19:26:52 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:39653445334dc97a660d5c33a719f16c20b0727f0918c51fc17e70343f3c2fd5`  
		Last Modified: Tue, 05 Mar 2019 12:45:28 GMT  
		Size: 45.2 MB (45199281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a786adb578f3dea96f453a6695f6d658fd487c43f0c7dd5375855f6940d82c`  
		Last Modified: Tue, 05 Mar 2019 13:40:26 GMT  
		Size: 10.3 MB (10314828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1aa16a552c6ff88adf6745752a99dd6eb610c220d6b46ab8500ca4c491c5f67`  
		Last Modified: Tue, 05 Mar 2019 13:40:25 GMT  
		Size: 4.4 MB (4372182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a15927bf212cf7747f13ee0ef1be30032c9e421b2db72136b12d1d5f363333`  
		Last Modified: Tue, 05 Mar 2019 15:16:46 GMT  
		Size: 863.6 KB (863646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbcdcc78b123a312170fe12c23165931d0e74578a2065255ae7dbad761fcfdfc`  
		Last Modified: Tue, 05 Mar 2019 15:18:24 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b1c49418720e48773e93e943c4acb0ef3db17b62dcc0554dcb08712e8284f3`  
		Last Modified: Tue, 05 Mar 2019 15:18:24 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0b3560989bb6ecd7e2689fa9af6058a6ce7f24e19216644a59804bb101d888`  
		Last Modified: Tue, 05 Mar 2019 15:18:43 GMT  
		Size: 114.1 MB (114135008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56cdd07df4a9078eab91dc518f07ca925439b93e7a30dc5bb6a0a15e43ba2458`  
		Last Modified: Tue, 05 Mar 2019 19:27:43 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2d348c609b5a15214bacd0a4066c2285664f5cd7f9acc05b817c86c4a1b4d4`  
		Last Modified: Tue, 05 Mar 2019 19:29:52 GMT  
		Size: 27.3 KB (27329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c70fe8ffcc12bec155e102aed55ef0234798901016079fea6eed3a416169bf`  
		Last Modified: Tue, 05 Mar 2019 19:30:08 GMT  
		Size: 59.1 MB (59112208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

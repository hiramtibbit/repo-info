## `tomee:8-jre-7.0.4-plume`

```console
$ docker pull tomee@sha256:e88482640e47cb05e4a3337e9cb0aea9ec43866e565b1b31aaa06ec7c8e12c32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `tomee:8-jre-7.0.4-plume` - linux; arm variant v7

```console
$ docker pull tomee@sha256:d9dc0cb6bebf006cb53e91a67a860c26180c57bc547f2b69475e8ef0c6bb7476
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 MB (259883059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf99b3cf9a00099fc59c0c0c106d1413799f99cf52c232dca87447c12348b8f7`
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
# Sat, 05 May 2018 15:37:58 GMT
EXPOSE 8080/tcp
# Sat, 05 May 2018 15:37:58 GMT
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
$ docker pull tomee@sha256:f91c49143e2e0ca4f937958aa081fc03fcfc612143e7a454998f60598d785248
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.6 MB (234614817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59b90bb7e183933c4cba2363c249798c6515ee3f86fa8a49ac54b006cdf93e3d`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 19:14:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 19:14:42 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 19:14:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 19:14:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 19:14:50 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 19:14:51 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 19:14:53 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 19:14:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 19:20:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 19:20:57 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 28 Jun 2018 05:15:54 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Jun 2018 05:15:57 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 28 Jun 2018 05:15:57 GMT
WORKDIR /usr/local/tomee
# Thu, 28 Jun 2018 05:18:57 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Thu, 28 Jun 2018 05:19:04 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Thu, 28 Jun 2018 05:23:45 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.0.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.0.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 28 Jun 2018 05:23:46 GMT
EXPOSE 8080/tcp
# Thu, 28 Jun 2018 05:23:47 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d57f1ab872b53f8ac8eff946226a3ff9d5fb929656964b75dae06303e9c8ef4`  
		Last Modified: Wed, 27 Jun 2018 11:06:29 GMT  
		Size: 9.7 MB (9722190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662e63f6b578575fadc2ae00bf10794a2a45166c03105d940c919da9f78c1c43`  
		Last Modified: Wed, 27 Jun 2018 11:06:28 GMT  
		Size: 4.1 MB (4088526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb59a2b70e9ae47dac27b7dfd503dc96eefb9f422ecb5478408b87d2ea43523`  
		Last Modified: Wed, 27 Jun 2018 19:27:14 GMT  
		Size: 839.3 KB (839304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d19a25a8b5a114f930cf7040692152ad596f28c52561c73a652e8a3cdc8fd8f`  
		Last Modified: Wed, 27 Jun 2018 19:27:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c7eb51731c43713c99a5adbafe78d8856a8a15be77ef37a2569f571045e737`  
		Last Modified: Wed, 27 Jun 2018 19:27:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8ab0efc60e892224bbc8d216a860e56071edbb907ca8a0628bf8f60520b4cd`  
		Last Modified: Wed, 27 Jun 2018 19:27:47 GMT  
		Size: 112.7 MB (112747242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22b0c4b2de3ad2333e41770cd46775aff3d969d495c2cbdd5b1b55e994628f2`  
		Last Modified: Wed, 27 Jun 2018 19:27:13 GMT  
		Size: 272.1 KB (272113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b17c15410de1a6fbb5b379b409ba0118b6b3b699f335fdcce062f8c66a6095`  
		Last Modified: Thu, 28 Jun 2018 05:24:58 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77db5d65d951bd61c3d594418d2db72de9bd86772aa7240f6dd7fcb543b03bb`  
		Last Modified: Thu, 28 Jun 2018 05:26:27 GMT  
		Size: 67.0 KB (66974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9432491fbf36be52aacdb87400de3f183e2db4957b5d45e861c4ab3a78a58010`  
		Last Modified: Thu, 28 Jun 2018 05:31:19 GMT  
		Size: 63.8 MB (63762149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.4-plume` - linux; 386

```console
$ docker pull tomee@sha256:430b21c6617388b8404ed4137fdf0d24e3f226dccb97dd7bd08b9427e57422d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248928266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a2575306908ad85f493a920e27f0ca8f21eebd4be73e8da8145260138af811e`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 13:25:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:25:33 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 13:25:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 13:25:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 13:25:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 13:25:36 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 13:25:36 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 13:25:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 13:27:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 13:27:41 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 15:39:16 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:39:17 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 06 Jun 2018 15:39:17 GMT
WORKDIR /usr/local/tomee
# Wed, 06 Jun 2018 15:49:14 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 06 Jun 2018 15:49:18 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 06 Jun 2018 15:54:13 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.0.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.0.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 06 Jun 2018 15:54:13 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 15:54:13 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9368f221b5993380993dea9613572425804a20fb7a28368a6c413c683c4b78`  
		Last Modified: Wed, 06 Jun 2018 13:53:10 GMT  
		Size: 862.0 KB (861961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb0b6ad7dffce934718a1eece17485c3985405e4b761ef2e415e374233c3bfe`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b827593226eaebe84f8f5fe0bceefecc60f4fcc7ef359d5f3b243ff5dc2a7a`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa491a3dfa1d75fa06a5eda7de8d13355b6a33d6f8a1a850145b1ccefeef655`  
		Last Modified: Wed, 06 Jun 2018 13:55:28 GMT  
		Size: 122.6 MB (122579904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199c43dfdde147981dba29fa7660f2f61adc4a897a5f821c3c49fedbdbebf13d`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 272.1 KB (272139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb85fe0bb244d99d598afcadc6d7a283d0bc296fd3da366fbb4aea7888e27a2`  
		Last Modified: Wed, 06 Jun 2018 15:55:19 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785ffaa950987864efcb56a8510d229b0f43f195a835e306ea165aa705f560cf`  
		Last Modified: Wed, 06 Jun 2018 15:57:41 GMT  
		Size: 67.0 KB (66964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4cbb1f6eb5f4c62497f778fee3d5a2df0a43901128537bd04d9e41f032495`  
		Last Modified: Wed, 06 Jun 2018 16:03:39 GMT  
		Size: 63.8 MB (63762178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.4-plume` - linux; ppc64le

```console
$ docker pull tomee@sha256:109680eee2f16ce24b983936ced37973f564cebaed40ad78c8299cd6cf78fdb3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.4 MB (239351472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:080e7f6ad3ff286ccdc0d30fbfd31340b841d5428caedf305abb0233758704c5`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:02 GMT
ADD file:d33614b8c4f66955a915157517ae82c889e6367cfc17a0d89ff64b91c984d7ef in / 
# Wed, 27 Jun 2018 08:21:04 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:15:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 13:47:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:47:18 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:47:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:47:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:47:36 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 13:47:38 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 13:47:38 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 13:47:39 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 13:50:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:50:41 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 19:42:18 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:42:20 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 27 Jun 2018 19:42:21 GMT
WORKDIR /usr/local/tomee
# Wed, 27 Jun 2018 19:43:58 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 27 Jun 2018 19:44:05 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 27 Jun 2018 19:48:53 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.0.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.0.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 27 Jun 2018 19:48:54 GMT
EXPOSE 8080/tcp
# Wed, 27 Jun 2018 19:48:55 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:80b856b58d8f74e5617ff0b59e5192bd26540b867890becb80ac3b1766e68d1d`  
		Last Modified: Wed, 27 Jun 2018 08:30:43 GMT  
		Size: 45.6 MB (45587028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a98fa77416c63ffab99d98aea7befc5a0d53ec23ebff6abaa40b528d9ca971`  
		Last Modified: Wed, 27 Jun 2018 10:28:49 GMT  
		Size: 10.0 MB (9976097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd479833a536a5f1d2afb81f4d98a720d841227f1a3e2345238f8f966ace8c59`  
		Last Modified: Wed, 27 Jun 2018 10:28:48 GMT  
		Size: 4.3 MB (4289938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f62b8010555335d1b8fba7dfdb25b2627bfa4227736a4911d1eb6ba315bc366`  
		Last Modified: Wed, 27 Jun 2018 14:13:08 GMT  
		Size: 848.5 KB (848481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa55f7aeb80f5f7abffa23ca6b9b1f6b383ebf20f99a9f2c6e459f8b5c2632a`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0cbc3406e48a30bfa25f6cdf65e226da9eb3b717caded42a84ad5450c75246e`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6a06cd08dc4b026b8612dfd34f950fec573b410553a44ccc39f7d045cba798`  
		Last Modified: Wed, 27 Jun 2018 14:14:02 GMT  
		Size: 114.5 MB (114547958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab367df4d268ef7cbd0a5e6a56dfecad8d3c8ae70334f67a68233020579a95c`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 272.1 KB (272084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3825807b5a50e2025eff787dc908256e76348b70dcb4de3459a9dc7e42a53c`  
		Last Modified: Wed, 27 Jun 2018 19:49:55 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1e719e4c1bd24e3d802eab3cfcc5f265253758e1e9d9d3f2ade8c11f305225`  
		Last Modified: Wed, 27 Jun 2018 19:51:18 GMT  
		Size: 67.0 KB (67014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde98b34799a8ef6ad94743629ce547b17e4b421f53dc4823cfa600b53f8072b`  
		Last Modified: Wed, 27 Jun 2018 19:55:35 GMT  
		Size: 63.8 MB (63762311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.4-plume` - linux; s390x

```console
$ docker pull tomee@sha256:2ca56e0a4dfe6511b67f637b5daaa3f9315630631399ecd758384e93a7e054a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238953821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:035aae18c675a923fecce3d44174bc8b25e321bdd0d05ace778c0e72d6026cde`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:36 GMT
ADD file:75083687b6ec1b46a3ccf759184d7da7ea89555c516ec0b9fe7307869e6e068d in / 
# Wed, 27 Jun 2018 11:48:36 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:20:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:20:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 13:57:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:57:33 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:57:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:57:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:57:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 13:57:34 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 13:57:35 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 13:57:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 13:58:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:58:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 17:42:53 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 17:42:53 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 27 Jun 2018 17:42:53 GMT
WORKDIR /usr/local/tomee
# Wed, 27 Jun 2018 17:48:49 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 27 Jun 2018 17:48:55 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 27 Jun 2018 17:50:53 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plume.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.4/apache-tomee-7.0.4-plume.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plume-7.0.4/* /usr/local/tomee 	&& rm -Rf apache-tomee-plume-7.0.4 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 27 Jun 2018 17:50:54 GMT
EXPOSE 8080/tcp
# Wed, 27 Jun 2018 17:50:54 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:879ec09c190353266c9e5cb180d35fce7e1d21e2ed3f577f2708dba824290cec`  
		Last Modified: Wed, 27 Jun 2018 11:53:15 GMT  
		Size: 45.2 MB (45181422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4cd1564a39a86ccb42d24db5044f7c0fc4f4057eb7acae6f1b7b2e4c582cd5a`  
		Last Modified: Wed, 27 Jun 2018 12:25:12 GMT  
		Size: 10.3 MB (10301218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d677b03f5d7f43f597f3ca3119cce61767eafd68c1cd48fd083dc3eae703de`  
		Last Modified: Wed, 27 Jun 2018 12:25:11 GMT  
		Size: 4.4 MB (4367019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648a17339f8c97a0f36b37b339c3b4af7a54ce7c9f1b50fefc305b8abfbb3ca9`  
		Last Modified: Wed, 27 Jun 2018 14:07:36 GMT  
		Size: 863.8 KB (863816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22ccd90b62d59444a9cc066341f7f75539ff2799687fb865563da19ca9c5bb3`  
		Last Modified: Wed, 27 Jun 2018 14:07:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5400024206b0a3fcbb64e4c7a3b4695f367d16f93b05213d6225a1e9e4def0`  
		Last Modified: Wed, 27 Jun 2018 14:07:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39d7f4b8f776207a1fc89a22adb377d0b6bfaf2b11f2130ac18c426c4b8f20c`  
		Last Modified: Wed, 27 Jun 2018 14:07:53 GMT  
		Size: 114.1 MB (114138547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f92ad4c239ac4ee1c69acc7ef2311e061e36af17a856852e5efd14457a996ee`  
		Last Modified: Wed, 27 Jun 2018 14:07:34 GMT  
		Size: 272.2 KB (272161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbba63911cf19bf07c5925bcd92a3e13d19a31ec902555a406b4e1a6d6464f7`  
		Last Modified: Wed, 27 Jun 2018 17:51:23 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8de7ce79beb030d29a24095f22ad0f3c59b5377a0791d2a6d3c31a0ed4b8931`  
		Last Modified: Wed, 27 Jun 2018 17:52:07 GMT  
		Size: 67.0 KB (66977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee82cdac38555dafbf23fc9f528e8b39e7d26fe1a0dbfb4d88315eb4ccaa2e1`  
		Last Modified: Wed, 27 Jun 2018 17:54:44 GMT  
		Size: 63.8 MB (63762134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

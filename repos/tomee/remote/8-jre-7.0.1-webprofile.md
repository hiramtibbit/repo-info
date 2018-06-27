## `tomee:8-jre-7.0.1-webprofile`

```console
$ docker pull tomee@sha256:15298e7df55a6edaf1c04b8b16e781f45be7f0f2c23c4586a51c74166a32e54f
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

### `tomee:8-jre-7.0.1-webprofile` - linux; amd64

```console
$ docker pull tomee@sha256:224d81b3a32af209685d552337a8d7900049ec1c4e3d3229d14a153a3f8f4218
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218977444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087fa6af06169745d88f86b3011b829cfdd2d3700cd1e8dfb72fa9e4083daf50`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 23:30:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:30:07 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:30:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:30:08 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:30:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 26 Jun 2018 23:30:08 GMT
ENV JAVA_VERSION=8u171
# Tue, 26 Jun 2018 23:30:09 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 26 Jun 2018 23:30:09 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 26 Jun 2018 23:30:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Jun 2018 23:30:57 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 05:56:50 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 05:56:51 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 27 Jun 2018 05:56:51 GMT
WORKDIR /usr/local/tomee
# Wed, 27 Jun 2018 05:58:00 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 27 Jun 2018 05:58:05 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 27 Jun 2018 05:59:40 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.1/apache-tomee-7.0.1-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.1/apache-tomee-7.0.1-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.1/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.1 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 27 Jun 2018 05:59:41 GMT
EXPOSE 8080/tcp
# Wed, 27 Jun 2018 05:59:41 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a05570971bbd4fc8399fea42a503a1b97aaab37102f13c4a962be39f27e6163`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 853.1 KB (853058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f679cd585927aabeb285db9b30a47efe57b16796c17219d3932ed2ee248f5c`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89362eaac850d91cec4637452d94219414c1a2fa3ac79d5367af0b64144afbd6`  
		Last Modified: Tue, 26 Jun 2018 23:52:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76c23323cb414a1aee9a85be228dfbbacb343fc1fb7519d7aba515e7a1b71d1`  
		Last Modified: Tue, 26 Jun 2018 23:52:58 GMT  
		Size: 122.1 MB (122140144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a113d2d56642caccde7fa2fa12401b150966969be947cd945cc9c2ad9fb56b`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 272.1 KB (272099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec61a694f6161e71e5581e7552559409489433041d226cfdd2049fa464ffb0b`  
		Last Modified: Wed, 27 Jun 2018 06:02:03 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5222852a48212d1488a1b76bb0ec3219a83fa725711f7cec7a1d74af8e7cb7b4`  
		Last Modified: Wed, 27 Jun 2018 06:03:21 GMT  
		Size: 67.0 KB (66957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fec184b839722dcac06639fb440e4c2a77c8f038643efffe00c8cfcf7c84eab`  
		Last Modified: Wed, 27 Jun 2018 06:05:06 GMT  
		Size: 35.2 MB (35215112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.1-webprofile` - linux; arm variant v5

```console
$ docker pull tomee@sha256:9d48a54f61c02dc0368992325015f9f2fc81b5b7c36290ace30bb2df8cc2b0df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.3 MB (206340104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfa6180724087a680d6ac348c955e691db12f0d4a512e31697a6e367c198a8a8`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Jun 2018 08:53:37 GMT
ADD file:d4d15d0259f3c83403f3d0565cbcd5c1d54e80367c46d9a05af1454c0d0e13ac in / 
# Wed, 27 Jun 2018 08:53:37 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:38:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:38:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:35:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:35:46 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:35:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:35:51 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 12:35:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 12:36:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 12:36:50 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 15:35:34 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 15:35:35 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 27 Jun 2018 15:35:35 GMT
WORKDIR /usr/local/tomee
# Wed, 27 Jun 2018 15:36:36 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 27 Jun 2018 15:36:41 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 27 Jun 2018 15:38:06 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.1/apache-tomee-7.0.1-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.1/apache-tomee-7.0.1-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.1/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.1 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 27 Jun 2018 15:38:07 GMT
EXPOSE 8080/tcp
# Wed, 27 Jun 2018 15:38:09 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:d8a10c27f1911457fcf0131342ab203c0d98290ccb8731364e7f57f489cadcd4`  
		Last Modified: Wed, 27 Jun 2018 09:02:36 GMT  
		Size: 44.0 MB (44040132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac190b263215d7b1af43574c289285d9adca5216b1188d00cd5d71104d352db2`  
		Last Modified: Wed, 27 Jun 2018 09:48:30 GMT  
		Size: 9.8 MB (9842587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2324a9fd4ad44784b0c5e6d4b25dd11d1cdb7ed900fbcf69c5aa74391a37a10`  
		Last Modified: Wed, 27 Jun 2018 09:48:29 GMT  
		Size: 4.2 MB (4153804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e667e3ddbea3ad46638cd1c07455b5a270ded007f17aaaac316495070ff2d31c`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 846.1 KB (846058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df2097de4902e193e94d8dcc60b2ecb319963b50c3090b1cc7b8735292dd21a`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f24cb5b0fca86faed493a4acbcf36f41c5b8c5636a4b9399966486a1b9b19e`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243fbb498fd74b410dcb29d222cbdd6102069a272efeaca4abc789cf6196fa7d`  
		Last Modified: Wed, 27 Jun 2018 12:56:50 GMT  
		Size: 111.9 MB (111902445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fe74a9cac620255d31ebd0dcd9bdcad40d2f10644dd712750108e8582a091d`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 272.2 KB (272200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13ff2b9cfd6e95638e0e56b9b536fcd72eb15ada4f311e4d8ad600b5aeb540d`  
		Last Modified: Wed, 27 Jun 2018 15:40:50 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ee20936c2766827d90550b19e21fa583db424e4b2d267b00b51ff04c82c6d0`  
		Last Modified: Wed, 27 Jun 2018 15:41:54 GMT  
		Size: 67.0 KB (66996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54d3ada7f6bd7d50bd8bcbbe5d730e601590363adb7ddf6ab4b9e3aefa6d924`  
		Last Modified: Wed, 27 Jun 2018 15:43:30 GMT  
		Size: 35.2 MB (35215322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.1-webprofile` - linux; arm variant v7

```console
$ docker pull tomee@sha256:f14c66d247c8ed62423488b5ec2d442a6f7686d92f0a355a2bdc7f9f25114591
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231336084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2197807850828a46e47fcd8fbc5e19b5345432eccf22d186757de1e72af891ef`
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
# Sat, 05 May 2018 15:35:03 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.1/apache-tomee-7.0.1-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.1/apache-tomee-7.0.1-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.1/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.1 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Sat, 05 May 2018 15:35:04 GMT
EXPOSE 8080/tcp
# Sat, 05 May 2018 15:35:04 GMT
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
	-	`sha256:0a4e8af3873f1b2c1b3c90c557982184f5d21a5173fe87d0e9a4cdff1b9a6eed`  
		Last Modified: Sat, 05 May 2018 15:42:11 GMT  
		Size: 35.2 MB (35215321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.1-webprofile` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:08712cb7690d9f4cdd14d6c88a6c3a7a18b4e18b6701a75c9acf0c53f0822d18
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.1 MB (206059078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1170c33abb62fbd54944ca7f82a8f72ad9f50fcd5b4c66b19b6ec1c76af8c1ba`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:38:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:39:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:03:34 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:03:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:03:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:03:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:03:45 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:03:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:03:47 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 09:57:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:57:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 14:01:45 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 14:01:46 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 15 May 2018 14:01:53 GMT
WORKDIR /usr/local/tomee
# Tue, 15 May 2018 14:04:48 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 15 May 2018 14:04:54 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 15 May 2018 14:06:59 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.1/apache-tomee-7.0.1-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.1/apache-tomee-7.0.1-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.1/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.1 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 15 May 2018 14:07:01 GMT
EXPOSE 8080/tcp
# Tue, 15 May 2018 14:07:01 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd3e9bbb1f760ff8cab41817920c5822422ba1eaab36a233c8f43348791e03d`  
		Last Modified: Sat, 05 May 2018 10:29:53 GMT  
		Size: 9.7 MB (9722189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534647756e8399143ad6e1639b6433b9a3364809ac4520f62199ea46e638a2e`  
		Last Modified: Sat, 05 May 2018 10:29:50 GMT  
		Size: 4.1 MB (4088086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caabf35448f16b9e3326e8f780f01877aba13f9ec6815f975d4da42043dbf329`  
		Last Modified: Sat, 05 May 2018 13:00:53 GMT  
		Size: 839.3 KB (839299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0802d24798c77025ece2adb6489409aa0f5789f4e82aa4242a0d9d622696157a`  
		Last Modified: Sat, 05 May 2018 13:00:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ab48d1ba995a67328f25f0660cdf40027abdd6587d59727f7ba0f72c4beb4b`  
		Last Modified: Sat, 05 May 2018 13:00:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c450eedb74d167d4e5fc41e7d53a2b506218189e9184552476d6a66b9cad348`  
		Last Modified: Tue, 15 May 2018 11:02:00 GMT  
		Size: 112.7 MB (112745447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f571a7544609d6069b1a1275b0c87cd79aace6c30f4537b8860f62b95d6a06`  
		Last Modified: Tue, 15 May 2018 11:01:25 GMT  
		Size: 272.1 KB (272102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0667ad879f15ad9a33a34e0c197bacf6e4bdc4d450858e781e37289721da94e2`  
		Last Modified: Tue, 15 May 2018 14:10:48 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c60f8c3f1ee243b2865fe5d36b45ef3fb380e68173454989bdf5ef94ee066d`  
		Last Modified: Tue, 15 May 2018 14:12:10 GMT  
		Size: 67.0 KB (66958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c17c1b15337e99f0a89a4ab05eeab0aee2016891a67fd6650bd5f5d77640144`  
		Last Modified: Tue, 15 May 2018 14:14:19 GMT  
		Size: 35.2 MB (35215119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.1-webprofile` - linux; 386

```console
$ docker pull tomee@sha256:f9f42747957d1d0a4b6e8c8485b9d0230bc0fee26d1c305888354bb131bbb6ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.4 MB (220381210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac512f2fd504b43b536312738adf42efe5ceacca08d0df9434f2315ea0476d5f`
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
# Wed, 06 Jun 2018 15:51:31 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.1/apache-tomee-7.0.1-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.1/apache-tomee-7.0.1-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.1/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.1 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 06 Jun 2018 15:51:31 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 15:51:32 GMT
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
	-	`sha256:f4e5bc7a380d100195c93e027317f89f6011f3cf32f6055294be4f640b1b7d9b`  
		Last Modified: Wed, 06 Jun 2018 16:00:41 GMT  
		Size: 35.2 MB (35215122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.1-webprofile` - linux; ppc64le

```console
$ docker pull tomee@sha256:a3f4f4cc3177ea7c6dd38303479a754bf47ff773d6c8a3c5288ce80bc6a9f17c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.8 MB (210807959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22a7bf731fe9eb4d9becb94cda26b3a94c71c6e9819a0d653d8a003cb1673e57`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:30 GMT
ADD file:ae8b79396496eb2731c9fe7f159d6f3086ec59dd9c418c6d93780fc8cb685d2b in / 
# Sat, 28 Apr 2018 08:20:31 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:39:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:40:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 14:27:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 14:27:10 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 14:27:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 14:27:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 14:27:16 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 14:27:17 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 14:27:18 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 14:27:19 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 08:55:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 08:55:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 11:05:05 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 11:05:08 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 15 May 2018 11:05:09 GMT
WORKDIR /usr/local/tomee
# Tue, 15 May 2018 11:08:11 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 15 May 2018 11:08:51 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Tue, 15 May 2018 11:13:37 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.1/apache-tomee-7.0.1-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.1/apache-tomee-7.0.1-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.1/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.1 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 15 May 2018 11:13:39 GMT
EXPOSE 8080/tcp
# Tue, 15 May 2018 11:13:39 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5c65288cd974eda27ef2a891c3b15c52c38c5a1c74befed7d569db78cbcb88b4`  
		Last Modified: Sat, 28 Apr 2018 08:29:36 GMT  
		Size: 45.6 MB (45590843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49669ce29c6ff5b318515a879172199a17519151b56113a98648e4e5b813e9b0`  
		Last Modified: Sat, 05 May 2018 11:03:44 GMT  
		Size: 10.0 MB (9975625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f38ff4299d23fa1e29678b39bfeb1549f444a54368faf8f03460a72b6951e8`  
		Last Modified: Sat, 05 May 2018 11:03:41 GMT  
		Size: 4.3 MB (4289600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17203acf831d7ce3c0083203f72c3b68e4468f55cb133ea3305f88143a073e21`  
		Last Modified: Sat, 05 May 2018 15:10:17 GMT  
		Size: 848.5 KB (848471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7630f2f73d5d5304426ffaa4f8b6ed757211759ea6dac51fbbc2ebc31da0f6b5`  
		Last Modified: Sat, 05 May 2018 15:10:15 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147e6c56e0f1ed24316695f6989c7884a847373c348caab3697c9778a99f5f07`  
		Last Modified: Sat, 05 May 2018 15:10:15 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a03020fe000223738c6fb4c54965bf73e0b405cb6ce49d2929616496a6671ee`  
		Last Modified: Tue, 15 May 2018 09:41:42 GMT  
		Size: 114.5 MB (114548492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fcd57884ad8e8f10404947e0a2f6f8f2d8717f6930a1b1e98570b775561a985`  
		Last Modified: Tue, 15 May 2018 09:41:01 GMT  
		Size: 272.1 KB (272081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf70569d93006cbcee36d8cd0940ebfb846ad8c9a4be62732d9eee99f5d3496`  
		Last Modified: Tue, 15 May 2018 11:17:26 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649073802e5dba10a816851123d9a57a1436f7ecb12a8e93f25a2a6a29d7278b`  
		Last Modified: Tue, 15 May 2018 11:18:39 GMT  
		Size: 67.0 KB (66992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb99831095a996334cccce906ca387fe75e612157d142ee04f93c6656aee5501`  
		Last Modified: Tue, 15 May 2018 11:20:18 GMT  
		Size: 35.2 MB (35215292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.0.1-webprofile` - linux; s390x

```console
$ docker pull tomee@sha256:56c2a4d32a6c7181e78a0a973ed5d549b87f807a3fd960130bf2f01d64b723be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.4 MB (210406803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:198be67167f83b81c7335f493208c9a7ac14357c0a40ac5c0c15b4cef4008e36`
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
# Wed, 27 Jun 2018 17:49:45 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.1/apache-tomee-7.0.1-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.0.1/apache-tomee-7.0.1-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-7.0.1/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-7.0.1 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 27 Jun 2018 17:49:47 GMT
EXPOSE 8080/tcp
# Wed, 27 Jun 2018 17:49:47 GMT
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
	-	`sha256:f5a3962abeac5bc622adb2f8d400ded8abb6ce8835399226ba2f50635af815e2`  
		Last Modified: Wed, 27 Jun 2018 17:53:08 GMT  
		Size: 35.2 MB (35215116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

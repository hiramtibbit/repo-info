## `tomee:8-jre-1.7.5-jaxrs`

```console
$ docker pull tomee@sha256:ebd35d80f326eef51ecf900296364e09384bfb2e1ed2bccdcffbcb2036902ac7
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
$ docker pull tomee@sha256:c6fcf2b75565357a2b0891bb36b16251d7828cf60830b7c4f5d97059ef5cd40f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.6 MB (261561738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e657ffee347704aa458ccae8ebcdd63961f89344c9ea2832cea6282364402f`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_VERSION=8u151
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Wed, 14 Mar 2018 10:50:24 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 14 Mar 2018 10:51:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 14 Mar 2018 10:51:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Mar 2018 15:01:44 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 15:01:45 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 15 Mar 2018 15:01:45 GMT
WORKDIR /usr/local/tomee
# Thu, 15 Mar 2018 15:01:45 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Thu, 15 Mar 2018 15:01:54 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 15 Mar 2018 15:02:00 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 15 Mar 2018 15:02:01 GMT
EXPOSE 8080/tcp
# Thu, 15 Mar 2018 15:02:01 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a5e00634c6d349291ce4c60f78676eae209b9d94ad7dea95e4ed9019702280`  
		Last Modified: Wed, 14 Mar 2018 12:46:22 GMT  
		Size: 165.4 MB (165394600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baa304f616f0d2585dbce1c8221d560ec8668f0d2a0dcf5efec40e905d53180`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 272.1 KB (272066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726c75ef9f20e462c4432cf253c51818928446c3bd54eed8876c62af2d2737e0`  
		Last Modified: Thu, 15 Mar 2018 15:09:33 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a585f20f9a80a15e070984480aff4e23bbb653ec8a07a7cfdc64607ed391921`  
		Last Modified: Thu, 15 Mar 2018 15:09:34 GMT  
		Size: 26.8 KB (26833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2045cf8948f8eb0b69eed322991dbb43f59a99585b98761718d42008b82b1ab`  
		Last Modified: Thu, 15 Mar 2018 15:09:38 GMT  
		Size: 34.4 MB (34436746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-jaxrs` - linux; arm variant v5

```console
$ docker pull tomee@sha256:0f676c37638d55d5ca587678938297e9b3748d054d8c41b1d08321b4bd64df40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220170570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2705277283a623bcb9db0e257887f4b4ea8e4cf31ed21edd06d20cc24607157`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:02 GMT
ADD file:df0457084f7e40c64d40dd7ffb2d5365160faee6f8b02c443bc3d1cb36a0f40d in / 
# Wed, 14 Mar 2018 20:01:03 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:46:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:46:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 22:46:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:46:49 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:46:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:46:51 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:46:51 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 10:08:42 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:08:42 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:08:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:09:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:09:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 11:12:24 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:12:25 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 20 Mar 2018 11:12:34 GMT
WORKDIR /usr/local/tomee
# Tue, 20 Mar 2018 11:12:35 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 20 Mar 2018 11:13:16 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 20 Mar 2018 11:13:31 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 20 Mar 2018 11:13:40 GMT
EXPOSE 8080/tcp
# Tue, 20 Mar 2018 11:13:41 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:25301cba2d4ef04878f7296fe55faa4b0b2fafbc29758d9fca5a199350d7827c`  
		Last Modified: Wed, 14 Mar 2018 20:12:18 GMT  
		Size: 43.8 MB (43819573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0783f4694c09bab63892aa1cd19490f94750d131d57747e09ec4307e9072c2`  
		Last Modified: Wed, 14 Mar 2018 20:56:19 GMT  
		Size: 10.2 MB (10206441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47aaeaf8dbc82c078a47db8431ae04e72f7fe0ae39da82e4d92db0cc10836ffc`  
		Last Modified: Wed, 14 Mar 2018 20:56:18 GMT  
		Size: 4.2 MB (4153056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad585ed3b1d830f1aa3f8a59ac69d690feb269ab4887d71fff937dca15d80d4`  
		Last Modified: Wed, 14 Mar 2018 23:10:41 GMT  
		Size: 845.3 KB (845346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8b8e14691c155600235e4417cb181e025c671336a290508080046b9af17bc1`  
		Last Modified: Wed, 14 Mar 2018 23:10:40 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92e55e02fd90d1a39d3f61b468c712ca789929045a859865f67deef38d68450`  
		Last Modified: Wed, 14 Mar 2018 23:10:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31aee666f997e8cafec332c44bfc243ae97747ade3616bc22d21d9be655a9af8`  
		Last Modified: Tue, 20 Mar 2018 10:34:00 GMT  
		Size: 126.4 MB (126409522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199174367688c1548a38f73a8ba139d97830d4208d9a948d577881573acd4710`  
		Last Modified: Tue, 20 Mar 2018 10:33:28 GMT  
		Size: 272.2 KB (272200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5500499b371e2f4fc23ce7b0ca6658e99334db925061f9e20af6d7a97923a2`  
		Last Modified: Tue, 20 Mar 2018 11:23:46 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f600392e2b1ab43a23d03e03911d2966b8c040663cca22993b3ee683c3dbad7`  
		Last Modified: Tue, 20 Mar 2018 11:23:46 GMT  
		Size: 26.9 KB (26883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b6fa3e9417d6c21fdb261d96f5759db644f6c7b30dae90418bd12e3a7533ab`  
		Last Modified: Tue, 20 Mar 2018 11:23:51 GMT  
		Size: 34.4 MB (34436988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-jaxrs` - linux; arm variant v7

```console
$ docker pull tomee@sha256:d6f41fecc64594f429225c2225c8f5cd480a15ebae5e94095adbc16e8c49bf6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.7 MB (230668819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f03e4650ca72e42108b75fa3aaaf739131c3fc973b038c1fce473fd8a9f6e05`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 14:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 14:00:45 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 14:00:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 14:00:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 14:00:48 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 01:34:22 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 01:34:23 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 01:34:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 01:35:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 01:35:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 02:33:55 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 02:34:07 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 20 Mar 2018 02:34:07 GMT
WORKDIR /usr/local/tomee
# Tue, 20 Mar 2018 02:34:08 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 20 Mar 2018 02:34:17 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 20 Mar 2018 02:34:29 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 20 Mar 2018 02:34:45 GMT
EXPOSE 8080/tcp
# Tue, 20 Mar 2018 02:34:56 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03cabd62120a826b779371cfad8111122c30e46a9289ed434cf87b2e5b914880`  
		Last Modified: Wed, 14 Mar 2018 14:37:24 GMT  
		Size: 829.7 KB (829729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409b7e158a6465bec5dfa532166777108e5e88356c4b20673790658f367a6345`  
		Last Modified: Wed, 14 Mar 2018 14:37:24 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba73ed82b5cffedae8089bf314ade2f0a459706c9b9227c64eee26805f242fb9`  
		Last Modified: Wed, 14 Mar 2018 14:37:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a770476bcb98843167e7356642e0316061daf9718364b1a65f20ab89edfbd30b`  
		Last Modified: Tue, 20 Mar 2018 02:05:29 GMT  
		Size: 139.5 MB (139507726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e530789e6929f6df78423f18934d737ce894358ec188b3d77cb0b8d7f5e4f22`  
		Last Modified: Tue, 20 Mar 2018 02:04:56 GMT  
		Size: 272.1 KB (272069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e952f12194c521bb38673f47cfe26d696b56e4e0f67c0a5fd1ea47aba4323b2`  
		Last Modified: Tue, 20 Mar 2018 02:47:34 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7280d8a14bddd974bffdaf1a92116c031e81fdf5ff6df1c65dff20130409c198`  
		Last Modified: Tue, 20 Mar 2018 02:47:34 GMT  
		Size: 26.9 KB (26863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3655b4f48d74b8d3960427b8f58926f8319145add93aaaa06adc047ee99a2424`  
		Last Modified: Tue, 20 Mar 2018 02:47:40 GMT  
		Size: 34.4 MB (34437008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-jaxrs` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:3cf2c36080dea667944b48861befcdb78cdc1dc7b19058c47b0b0b34e3f40e08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.4 MB (235383602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e759802cbc3bd4e70c75fe6764b20e2298974b15f00bf7a1372aed7bb9788f9`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 20:31:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:31:17 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:31:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:31:21 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:31:21 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 10:44:11 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:44:12 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:44:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:52:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:52:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 13:10:50 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 13:10:52 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 20 Mar 2018 13:10:53 GMT
WORKDIR /usr/local/tomee
# Tue, 20 Mar 2018 13:10:54 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Tue, 20 Mar 2018 13:11:42 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 20 Mar 2018 13:12:14 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Tue, 20 Mar 2018 13:12:15 GMT
EXPOSE 8080/tcp
# Tue, 20 Mar 2018 13:12:16 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a64fc0e12aebf56150d0d1d4231f0a5d008f1cbbcbf771f2d67ebb7e56dd94`  
		Last Modified: Wed, 14 Mar 2018 21:38:05 GMT  
		Size: 838.7 KB (838689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65385707e7645724726348e6321596ade2b859b914648eee13c5a4ceada0d4b5`  
		Last Modified: Wed, 14 Mar 2018 21:38:07 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afb3d353487af077c3be7a3e49ccaefb261226e6fa355a6038037f42ae17b97`  
		Last Modified: Wed, 14 Mar 2018 21:38:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2b90a2c7eea1dd3bc4396406f9de076e4d288f48a373dcf2c73a9045b7fcc3`  
		Last Modified: Tue, 20 Mar 2018 12:06:29 GMT  
		Size: 142.7 MB (142746449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4695ab85807d47cd9617b4098de82a9f8e30768ec36e23358a28b67001c963ac`  
		Last Modified: Tue, 20 Mar 2018 12:05:43 GMT  
		Size: 272.1 KB (272102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dfdcd71af6619e90604da9b1a6078fda26012afcea23732ed5cae035fd6b5c`  
		Last Modified: Tue, 20 Mar 2018 13:26:21 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2daf834c20c7d7f5d5f41e11f37342b17203093760f64fb9038f4e00218dbd2e`  
		Last Modified: Tue, 20 Mar 2018 13:26:21 GMT  
		Size: 26.8 KB (26839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f184f174eb075d71a53ce1299aa30121b94a8f784abc53e5f03f3801782b9816`  
		Last Modified: Tue, 20 Mar 2018 13:26:27 GMT  
		Size: 34.4 MB (34436722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-jaxrs` - linux; 386

```console
$ docker pull tomee@sha256:0780df08a7737c8be4bc6c2362d719a685ad3c3d6af293e037fa38dd0a301768
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265469505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:595f6bfce7c02894a2e2621d7b889b858776b62d6f9177f8d48a2e2e794417dc`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 09:03:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 09:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 18:07:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:07:12 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:07:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:07:15 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:07:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 18:08:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 18:18:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Feb 2018 04:21:16 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Feb 2018 04:21:18 GMT
RUN mkdir -p /usr/local/tomee
# Mon, 19 Feb 2018 04:21:18 GMT
WORKDIR /usr/local/tomee
# Mon, 19 Feb 2018 04:21:18 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Mon, 19 Feb 2018 04:21:28 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 19 Feb 2018 04:21:36 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Mon, 19 Feb 2018 04:30:39 GMT
EXPOSE 8080/tcp
# Mon, 19 Feb 2018 04:30:39 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b842c4f12ce193c6669f6d0ce38aec19cf0f2c7adb70daf9ead694218a108708`  
		Last Modified: Fri, 16 Feb 2018 11:35:51 GMT  
		Size: 11.2 MB (11150751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3c168f821c9302872e46de652da9ba7965adf0095f1b6e5adbdd7c9bd6710c`  
		Last Modified: Fri, 16 Feb 2018 11:35:49 GMT  
		Size: 4.6 MB (4554693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d965939fc12d1154aa65c953062de7f15ec1f9c25f0f1a8fba2e6ae2418cc1`  
		Last Modified: Sat, 17 Feb 2018 08:54:01 GMT  
		Size: 861.2 KB (861227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00d8b4f34effe52ffcb2fef133798e97168c81615216a73788a825e8f4d9b04`  
		Last Modified: Sat, 17 Feb 2018 08:53:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998903c668db9bf30c8df8104776a702627c04bd0dfb32f2a58d7dd4eed26f12`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103026c14ec31451e833db0fd15fd93e3ff6e0708b7efa1339b6c5dde0b9e1e1`  
		Last Modified: Sat, 17 Feb 2018 08:54:51 GMT  
		Size: 168.3 MB (168328825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929c8cbef0b62fab35fbd6945034f797d68d46a189476005bbfba445c8a60b89`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 272.2 KB (272171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3521120724da78acd9dfe287f8365ee413f9b9e6505b23a19708f40d3df48ec`  
		Last Modified: Mon, 19 Feb 2018 07:30:56 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fb8aeaf6afdf7559572078e9699cb9ef44291f2e7cf9d0b910ebfa85721e9`  
		Last Modified: Mon, 19 Feb 2018 07:30:56 GMT  
		Size: 26.8 KB (26835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c7595d717ec930e97f2bc1ea8ba4b5e95815b59891087ad7611b774bb67148`  
		Last Modified: Mon, 19 Feb 2018 07:31:02 GMT  
		Size: 34.4 MB (34436749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-jaxrs` - linux; ppc64le

```console
$ docker pull tomee@sha256:4e41ebbca34c7e1c284dac586b721d70c9ccc06125188e9e3a90ad683321ac8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.1 MB (252112227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dffeb54758327dff4bfb4c1087a8790168c023bd66a0a420ce1f415d7584ec03`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:37:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:37:51 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:37:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:38:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:38:05 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Mar 2018 04:38:08 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Mar 2018 04:38:10 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Mar 2018 04:38:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Mar 2018 04:51:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Mar 2018 04:51:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Mar 2018 11:25:29 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 11:25:32 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 15 Mar 2018 11:25:33 GMT
WORKDIR /usr/local/tomee
# Thu, 15 Mar 2018 11:25:35 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Thu, 15 Mar 2018 11:25:47 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Thu, 15 Mar 2018 11:25:59 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 15 Mar 2018 11:26:02 GMT
EXPOSE 8080/tcp
# Thu, 15 Mar 2018 11:26:03 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cb372d4693af24ddb9bcc199fd08c326a0dd7c0592b658541adccc88f0e1bb`  
		Last Modified: Thu, 15 Mar 2018 06:05:26 GMT  
		Size: 848.1 KB (848068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9e066842ca963446b46bf5b18a3dd688eaf6648d6e3af20a67b9cbce688844`  
		Last Modified: Thu, 15 Mar 2018 06:05:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa9900427d9762c8ca5f72bc3aee5eee315b06fd8e756218ff155a92b08704b`  
		Last Modified: Thu, 15 Mar 2018 06:05:27 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17804d1aaa79a72c55fc395320b2f3d20426411712f40918426bf1c16eba7d75`  
		Last Modified: Thu, 15 Mar 2018 06:05:59 GMT  
		Size: 156.5 MB (156521311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8bf58ed980c0ccdf50098e979b1b1666c4fca6a6d7404b12e55d88dc848afed`  
		Last Modified: Thu, 15 Mar 2018 06:05:26 GMT  
		Size: 272.1 KB (272071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ad250df0c250d2fbac7aecdb0b41c9f7841b83e68c6a44eb894414532be9cf`  
		Last Modified: Thu, 15 Mar 2018 11:42:35 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45dfa7c3ec34497e2cb97f88e5c481843d86582cc100320963348c2c44927776`  
		Last Modified: Thu, 15 Mar 2018 11:42:35 GMT  
		Size: 26.9 KB (26873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c0f7eb9885b777979abc8f20e5a1f5bde69be80657eef5974b7dc933200f22`  
		Last Modified: Thu, 15 Mar 2018 11:42:42 GMT  
		Size: 34.4 MB (34437018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-1.7.5-jaxrs` - linux; s390x

```console
$ docker pull tomee@sha256:d2ff22725fe408e661f0e3efc85bebdc3f3c6909abe5cc940f2e41836684895b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.9 MB (233859160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e8535cc28bcd77c65049f76bcb33941a09b746912fb44e8147c83e4a39f8b79`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:55:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 06:42:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:42:12 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 06:42:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 06:42:13 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 06:42:13 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 14 Mar 2018 06:42:13 GMT
ENV JAVA_VERSION=8u151
# Wed, 14 Mar 2018 06:42:13 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Wed, 14 Mar 2018 06:42:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 14 Mar 2018 06:43:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 14 Mar 2018 06:43:07 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Mar 2018 11:46:48 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 11:46:49 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 14 Mar 2018 11:46:49 GMT
WORKDIR /usr/local/tomee
# Wed, 14 Mar 2018 11:46:49 GMT
ENV GPG_KEYS=BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF 	223D3A74B068ECA354DC385CE126833F9CF64915 	7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF 	82D8419BA697F0E7FB85916EE91287822FDB81B1 	9056B710F1E332780DE7AF34CBAEBE39A46C4CA1 	A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1 	B7574789F5018690043E6DD9C212662E12F3E1DD 	B8B301E6105DF628076BD92C5483E55897ABD9B9 	DBCCD103B8B24F86FFAAB025C8BB472CD297D428 	F067B8140F5DD80E1D3B5D92318242FE9A0B1183 	FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 14 Mar 2018 11:47:02 GMT
RUN set -xe 	&& for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 14 Mar 2018 11:47:23 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL http://apache.rediris.es/tomee/tomee-1.7.5/apache-tomee-1.7.5-jaxrs.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-jaxrs-1.7.5/* /usr/local/tomee 	&& rm -Rf apache-tomee-jaxrs-1.7.5 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 14 Mar 2018 11:47:23 GMT
EXPOSE 8080/tcp
# Wed, 14 Mar 2018 11:47:23 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213858b0ae4fd06d326b00d8a951d74f729dd96bbed2da6e797c380a7504dda`  
		Last Modified: Wed, 14 Mar 2018 06:00:48 GMT  
		Size: 10.7 MB (10668705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791772d5eb6cdff561d14b68be84f923eb89474c71886701833c2ced9e2dd3f`  
		Last Modified: Wed, 14 Mar 2018 06:00:47 GMT  
		Size: 4.4 MB (4366151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769251308238575a42d4e0892ca069568b4190d9b672e4f5fca39b16a0efc82a`  
		Last Modified: Wed, 14 Mar 2018 06:56:46 GMT  
		Size: 863.1 KB (863139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45bc526082a8a5c34b9a6e28d5256321fef2a65a5600b3cdecf4dae653fd430`  
		Last Modified: Wed, 14 Mar 2018 06:56:46 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1279455fe438e169a044886ab0ef85eb52db6d4eb3631fc63cbc87f95b22275`  
		Last Modified: Wed, 14 Mar 2018 06:56:46 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec398298b29df0e5c3298463b9276ee32635eb58dfd5be8a01090b14d00d91ec`  
		Last Modified: Wed, 14 Mar 2018 06:57:08 GMT  
		Size: 138.2 MB (138247775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a2c8dfea51d551e3530e70444872b029306aabb7e0ade454e0280e0b6933e33`  
		Last Modified: Wed, 14 Mar 2018 06:56:46 GMT  
		Size: 272.2 KB (272165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0311f71dcf2119d6c33971dd806180dd7ede68351f6b654ba5166e1566fb34b7`  
		Last Modified: Wed, 14 Mar 2018 11:51:41 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac285928e30f275890bb2928ce99b96952ebfba69acaef941349020de649512`  
		Last Modified: Wed, 14 Mar 2018 11:51:41 GMT  
		Size: 26.8 KB (26831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e4e7f181e9e64bdec45edc032f151d6ffa7461fe4df189d45db4c16ba773ac`  
		Last Modified: Wed, 14 Mar 2018 11:51:48 GMT  
		Size: 34.4 MB (34436717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

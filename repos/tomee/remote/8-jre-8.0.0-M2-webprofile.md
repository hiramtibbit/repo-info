## `tomee:8-jre-8.0.0-M2-webprofile`

```console
$ docker pull tomee@sha256:12ce85af8fe2e35ecccc5c63349675b7db67a920b8bf09b3a981e127c2b1522e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `tomee:8-jre-8.0.0-M2-webprofile` - linux; amd64

```console
$ docker pull tomee@sha256:e3a4ea3d381a4856dc1aac929d2bc89a0ea215fd3652fa29670b06f98127f7de
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.2 MB (225208741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a09672addcea541e34441a78d4f678f75a7a184114bb7ff17481994870f593`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 21:14:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:18:24 GMT
ENV LANG=C.UTF-8
# Tue, 22 Jan 2019 21:18:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 22 Jan 2019 21:18:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 22 Jan 2019 21:18:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 22 Jan 2019 21:18:27 GMT
ENV JAVA_VERSION=8u181
# Tue, 22 Jan 2019 21:18:27 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 22 Jan 2019 21:19:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 26 Jan 2019 01:59:01 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Jan 2019 01:59:01 GMT
RUN mkdir -p /usr/local/tomee
# Sat, 26 Jan 2019 01:59:01 GMT
WORKDIR /usr/local/tomee
# Sat, 26 Jan 2019 02:01:24 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Wed, 30 Jan 2019 00:22:30 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Wed, 30 Jan 2019 00:23:09 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 30 Jan 2019 00:23:09 GMT
EXPOSE 8080
# Wed, 30 Jan 2019 00:23:09 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d79c18d1bc044350734c637ab0d6d7c8b16409dbec54e0b5f0e71ad57829f0b`  
		Last Modified: Tue, 22 Jan 2019 21:40:15 GMT  
		Size: 852.9 KB (852896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1d0ae4641b6cf7443e0a3246cfc0118d9bfea7d176f44431f0a712851d1d67`  
		Last Modified: Tue, 22 Jan 2019 21:42:40 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8883e662573f072b4c708c1bc642ee68d8948ce097dab379175e88b74a9c2046`  
		Last Modified: Tue, 22 Jan 2019 21:42:40 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adab760d76bdb26ea938f91dd3d8b0268e791dafe853b262355f26916675b210`  
		Last Modified: Tue, 22 Jan 2019 21:43:12 GMT  
		Size: 122.1 MB (122121253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d509d48b048fdcdb9057ea147d2fd9a1af2c112866bfa43dbb31aa9b01e64cb`  
		Last Modified: Wed, 30 Jan 2019 00:23:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7398cc8c73ee33db22763a7077364f23eece11599a09d9261b139457460af2b`  
		Last Modified: Wed, 30 Jan 2019 00:23:16 GMT  
		Size: 27.3 KB (27325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146b774e352917d3dac6f09d23560ca4303c8074d7cdeaacf7a15eaee7e2a353`  
		Last Modified: Wed, 30 Jan 2019 00:23:42 GMT  
		Size: 41.7 MB (41740957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-8.0.0-M2-webprofile` - linux; ppc64le

```console
$ docker pull tomee@sha256:cb78b46a8f1f79397d7ad966c70e5131dcc6fdddac2bb9c4974ab95f895cd952
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.1 MB (217061763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:291e5300dfac8afc1090c11db36655108c1ea2c4e23dd5d81660b83dcd3763cd`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 23 Jan 2019 09:26:55 GMT
ADD file:607fec07098dd44504d39967b200ef4c80d3c31eb3524c99a522d779f8a48785 in / 
# Wed, 23 Jan 2019 09:26:58 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:01:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:02:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:21:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:32:45 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:32:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:32:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 12:33:02 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 23 Jan 2019 12:33:05 GMT
ENV JAVA_VERSION=8u181
# Wed, 23 Jan 2019 12:33:06 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 23 Jan 2019 12:37:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 30 Jan 2019 09:32:50 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Jan 2019 09:32:58 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 30 Jan 2019 09:33:02 GMT
WORKDIR /usr/local/tomee
# Wed, 30 Jan 2019 09:37:32 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97     C92604B0DEC5C62CFF5801E73D4683C24EDC64D1
# Wed, 30 Jan 2019 09:37:41 GMT
RUN set -xe     && for key in $GPG_KEYS; do 		gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||         gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done
# Wed, 30 Jan 2019 09:43:07 GMT
RUN set -x 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-8.0.0-M2/apache-tomee-8.0.0-M2-webprofile.tar.gz -o tomee.tar.gz 	&& gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-webprofile-8.0.0-M2/* /usr/local/tomee 	&& rm -Rf apache-tomee-webprofile-8.0.0-M2 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 30 Jan 2019 09:43:11 GMT
EXPOSE 8080
# Wed, 30 Jan 2019 09:43:12 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:ce16bf3279cca6ab2d1b46a272b57d4c1e11cbe13e3a52148fceb9cc07eb0b37`  
		Last Modified: Wed, 23 Jan 2019 09:33:00 GMT  
		Size: 45.6 MB (45616894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b9074895469b770a2456cb2377047c95c405f79e3b04ceca45935caf814e40`  
		Last Modified: Wed, 23 Jan 2019 11:48:50 GMT  
		Size: 10.0 MB (9986574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc9d854b31c2198e3a6cc80e64e62531a2e63cf2b43ff8b40f03224abe9ee36`  
		Last Modified: Wed, 23 Jan 2019 11:48:48 GMT  
		Size: 4.3 MB (4295774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffda65826e04099e41ce446f64a457cf3ae94c3e1f01921947745ffa67c2e8a6`  
		Last Modified: Wed, 23 Jan 2019 12:44:23 GMT  
		Size: 848.4 KB (848403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c141187464c0aef6a4cefabc4eca32d4cd823ee4c901957fe982e03238a8d82`  
		Last Modified: Wed, 23 Jan 2019 12:48:18 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1a6718ea302d25ee87cb1daeaeec74638d9775f7a1c065fc4e70a0b09f8278`  
		Last Modified: Wed, 23 Jan 2019 12:48:18 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47365efe003cc9bb6bac15a6b65bdc19d26fcae8d3bd358d30bfd5c459cba118`  
		Last Modified: Wed, 23 Jan 2019 12:48:47 GMT  
		Size: 114.5 MB (114545176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6c23c247372ee58396d998bb4d91b6072259cac8ec0e137547740416bf86d8`  
		Last Modified: Wed, 30 Jan 2019 09:43:35 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95828fcdef02cf5126f160defe4bb1f05540542865d5ba709d4906e987b7c03`  
		Last Modified: Wed, 30 Jan 2019 09:43:35 GMT  
		Size: 27.4 KB (27370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d28556ad4ab627191ec86481b71c5654d8f866aa8129176fec6999dcacac935`  
		Last Modified: Wed, 30 Jan 2019 09:44:28 GMT  
		Size: 41.7 MB (41741011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

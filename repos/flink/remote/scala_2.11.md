## `flink:scala_2.11`

```console
$ docker pull flink@sha256:36f0627d5155a090f951e7a50d0eb863ad620001ea6e9746a13005f78773b01b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `flink:scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:b97f6454a6f1147cbcbcfd30d7390b1fe72ea9ee4de625b802c299d33f36d080
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **450.4 MB (450396794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:393e25fc686104c560a1c2ddab0ce177632ae2a46f75ba2c214f8e804867078e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:19:33 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:19:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:19:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:19:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:20:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:20:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 16:19:28 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:19:38 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jul 2018 16:19:44 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 14 Aug 2018 01:28:14 GMT
ENV FLINK_VERSION=1.6.0 HADOOP_SCALA_VARIANT=scala_2.11
# Tue, 14 Aug 2018 01:28:15 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 14 Aug 2018 01:28:15 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 01:28:16 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 14 Aug 2018 01:28:16 GMT
WORKDIR /opt/flink
# Tue, 14 Aug 2018 01:28:16 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.0/flink-1.6.0-bin-scala_2.11.tgz
# Tue, 14 Aug 2018 01:28:17 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.0/flink-1.6.0-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.0/flink-1.6.0-bin-scala_2.11.tgz.asc
# Tue, 14 Aug 2018 01:28:17 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 14 Aug 2018 01:28:44 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 14 Aug 2018 01:28:45 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Tue, 14 Aug 2018 01:28:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Aug 2018 01:28:45 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 14 Aug 2018 01:28:46 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1290813abd9d0a07ce709b4e491f4194f2b854295d93bdc068b7a576756fb515`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6b982ad6d7f57b4a8a4052561dc7b0377bd8d4028bce8a93a4d31e60b79329`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb029e68402beca7edc4627d5034aa72b37c74d8af9badb3284a69f17b91bb6`  
		Last Modified: Tue, 17 Jul 2018 07:03:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd067dc06dc22738d62cce6cdb6635e1ab22f4e4b220b8f27351e41e2b0c915`  
		Last Modified: Tue, 17 Jul 2018 07:04:32 GMT  
		Size: 122.1 MB (122099696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9ce2097b98d0b49e6bdcb0219400b65d301f87aa23acc7b652faa2d6c4973a`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.7 KB (246746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf71c82c02c518fe88f26337fc0942b9b726618be63d7b6dbf1e5c83ae1607d5`  
		Last Modified: Tue, 17 Jul 2018 16:30:47 GMT  
		Size: 466.4 KB (466353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cae418b24000ac461897c727cdcbf1f7092b31022241581f42f19d51190c024`  
		Last Modified: Tue, 17 Jul 2018 16:30:47 GMT  
		Size: 819.2 KB (819172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c056d9260b99fcfff1d46305b73815d6123750df1f8cdf042d0e925bac71eabf`  
		Last Modified: Tue, 14 Aug 2018 01:43:58 GMT  
		Size: 4.6 KB (4611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7cab41907635e88bde01db3ea7005f7d168588afd10ac75e5e57667ffc967e3`  
		Last Modified: Tue, 14 Aug 2018 01:43:59 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a2ab3a061de5979baed42c53ab3c48156059cfb1278419c4e24fd243eafc85`  
		Last Modified: Tue, 14 Aug 2018 01:43:59 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3fba339cc67fe7770373abbd769c76e6c2374fe83af7ae9f272602cb933efe`  
		Last Modified: Tue, 14 Aug 2018 01:44:28 GMT  
		Size: 265.5 MB (265460077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec4ec9f1d561d02a8606b810b3851a3b751802a7bca3e3b247d6af0c11369c3`  
		Last Modified: Tue, 14 Aug 2018 01:43:59 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.11` - linux; arm variant v5

```console
$ docker pull flink@sha256:cfc92be073b5b5ba5235d96732aa8256ddd6e5b2fc4e1c0fb831ad14ee4e27d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.7 MB (437740604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48b749f2cf73dc725d8a99bc9ca31d10408e60754bbd6a248426cc1d1b762dec`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 17 Jul 2018 08:55:48 GMT
ADD file:bf9eafe81eb19079a2f2055b6727392afa823dfa125a4b1696537cf603115e52 in / 
# Tue, 17 Jul 2018 08:55:49 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:49:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:49:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:43:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:43:03 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:43:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:43:05 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 12:43:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 12:43:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 12:44:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 20 Jul 2018 08:48:47 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Fri, 20 Jul 2018 08:48:47 GMT
ENV GOSU_VERSION=1.7
# Fri, 20 Jul 2018 08:48:51 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 14 Aug 2018 08:51:17 GMT
ENV FLINK_VERSION=1.6.0 HADOOP_SCALA_VARIANT=scala_2.11
# Tue, 14 Aug 2018 08:51:18 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 14 Aug 2018 08:51:18 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 08:51:19 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 14 Aug 2018 08:51:19 GMT
WORKDIR /opt/flink
# Tue, 14 Aug 2018 08:51:19 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.0/flink-1.6.0-bin-scala_2.11.tgz
# Tue, 14 Aug 2018 08:51:20 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.0/flink-1.6.0-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.0/flink-1.6.0-bin-scala_2.11.tgz.asc
# Tue, 14 Aug 2018 08:51:20 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 14 Aug 2018 08:51:43 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 14 Aug 2018 08:51:43 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Tue, 14 Aug 2018 08:51:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Aug 2018 08:51:44 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 14 Aug 2018 08:51:44 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:e0468d51364430736eb1d0d85f3dd880c4bebe4015787330b6c9227843acb4a6`  
		Last Modified: Tue, 17 Jul 2018 09:08:05 GMT  
		Size: 44.0 MB (44033063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad0b2352b28fea9acd0f76fa8814e168b15f21efe51602d644728d229d9bab9`  
		Last Modified: Tue, 17 Jul 2018 12:02:04 GMT  
		Size: 9.8 MB (9810102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864851e50dc1192bbdfa9be12666036d86148172f3ead845ee38c8033885580e`  
		Last Modified: Tue, 17 Jul 2018 12:02:03 GMT  
		Size: 4.2 MB (4153726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5835e5acfad7d56ae63ec170f3775123ea187c36c77147a58b1c8f77e944c094`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 845.9 KB (845860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ef3838b860ad2926373a0286edee0ed0209f0c88b9a118784b44620950df6b`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d09f94a09042fc2888b335d412166395678b9f17e6d701e4fed6ef5dc4e8a4`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2665b05a1829ed89b86aaf86d37b3e976afdaf372bb7010d059caaa9319656bf`  
		Last Modified: Tue, 17 Jul 2018 12:56:37 GMT  
		Size: 111.9 MB (111881554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f81224ac9d1826fb3ab03a9719c9b63b3c04cdd299da6da4f619387dd8297d`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 246.8 KB (246753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b716f50c198c71fcabe3199a0637d769ea143f2a727634b7e05c229886f637`  
		Last Modified: Fri, 20 Jul 2018 08:56:15 GMT  
		Size: 466.2 KB (466190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8895b1c5019e24f3522d5d724db8f560178d64f0274ba28fa3a1a1015230b5e4`  
		Last Modified: Fri, 20 Jul 2018 08:56:15 GMT  
		Size: 777.7 KB (777658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd81ba30fcae0cd51a4abc293e22a3bbdb6a69146a8358f89ba2e065c2bd5d01`  
		Last Modified: Tue, 14 Aug 2018 08:55:47 GMT  
		Size: 4.5 KB (4534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53626298fc79d9704a79c820ac4d50b104806c74ec82a51e5a667eee989d5b58`  
		Last Modified: Tue, 14 Aug 2018 08:55:47 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640e7cd79b69d1d988a8e8d233bdc23189893aca5d548c2de32724067f3e9fe5`  
		Last Modified: Tue, 14 Aug 2018 08:55:48 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b2e77ee7ebeed27f4b9c74fb53e018ca5490b2249743b65c2c5bdb5d83ebd19`  
		Last Modified: Tue, 14 Aug 2018 08:56:16 GMT  
		Size: 265.5 MB (265460185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e531b662389fd76ec311256eb0326577036d61892f55a0bc0ee42ecd7f78b423`  
		Last Modified: Tue, 14 Aug 2018 08:55:46 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.11` - linux; arm variant v7

```console
$ docker pull flink@sha256:b744902361be279d20e40215adc5b92fdb7bad798932bc6917508d790a16b7dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **462.8 MB (462820519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4af5b46ec8834c79fd023d33032a74440e122f8bf079b40ad2f5d8c84ba62ab`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

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
# Fri, 20 Jul 2018 11:57:58 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Fri, 20 Jul 2018 11:58:00 GMT
ENV GOSU_VERSION=1.7
# Fri, 20 Jul 2018 11:58:04 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 14 Aug 2018 12:02:37 GMT
ENV FLINK_VERSION=1.6.0 HADOOP_SCALA_VARIANT=scala_2.11
# Tue, 14 Aug 2018 12:02:37 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 14 Aug 2018 12:02:37 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 12:02:38 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 14 Aug 2018 12:02:38 GMT
WORKDIR /opt/flink
# Tue, 14 Aug 2018 12:02:39 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.0/flink-1.6.0-bin-scala_2.11.tgz
# Tue, 14 Aug 2018 12:02:39 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.0/flink-1.6.0-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.0/flink-1.6.0-bin-scala_2.11.tgz.asc
# Tue, 14 Aug 2018 12:02:39 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 14 Aug 2018 12:03:26 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 14 Aug 2018 12:03:27 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Tue, 14 Aug 2018 12:03:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Aug 2018 12:03:27 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 14 Aug 2018 12:03:27 GMT
CMD ["help"]
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
	-	`sha256:71122e80751c26d15d17856e1659781f3e5297edf0aff11a2ede2ab486e0f4b8`  
		Last Modified: Fri, 20 Jul 2018 12:07:20 GMT  
		Size: 479.6 KB (479566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:232ceecfeba69d3dc2589b30cacd748fea414abd077deab71956424a2788d552`  
		Last Modified: Fri, 20 Jul 2018 12:07:21 GMT  
		Size: 761.9 KB (761883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618bc7830b04ddb28bbfedd2a43fedcea0649d59a197deffb954b03e99c3d526`  
		Last Modified: Tue, 14 Aug 2018 12:07:56 GMT  
		Size: 4.6 KB (4573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2838518ceb2c1b83d9e4dd2c60c9d6e5ceb2c2536fc486eae94a3e426dcb1ccc`  
		Last Modified: Tue, 14 Aug 2018 12:07:56 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a9bc455e939c3b441affcd275c7221c78b7c2b2a25b30da27df71405db7625`  
		Last Modified: Tue, 14 Aug 2018 12:07:55 GMT  
		Size: 59.3 KB (59336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aaba5598ed00524bd061366a4e3404584724e5d2a4869e7b7fdf2afa040699b`  
		Last Modified: Tue, 14 Aug 2018 12:08:24 GMT  
		Size: 265.5 MB (265460296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b12f78824d00d6917789d927dcc66014b09dc5743980bd803db9e08fe72f223`  
		Last Modified: Tue, 14 Aug 2018 12:07:56 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.11` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:a8da315c6bc7c8fd108321d4fddca914032f540250326537ac6e39c1cad04ebd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.5 MB (437482028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d901a9c59a79f70789a4d38ae70b497f42ac7bc563e40bf46818dee481957d97`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 20:24:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:24:55 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 20:24:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 20:25:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 20:25:04 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 20:25:05 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 20:25:06 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 20:25:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 20:32:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 20:32:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 20:56:07 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:56:08 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jul 2018 20:56:17 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 14 Aug 2018 08:55:07 GMT
ENV FLINK_VERSION=1.6.0 HADOOP_SCALA_VARIANT=scala_2.11
# Tue, 14 Aug 2018 08:55:08 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 14 Aug 2018 08:55:09 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 08:55:12 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 14 Aug 2018 08:55:13 GMT
WORKDIR /opt/flink
# Tue, 14 Aug 2018 08:55:14 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.0/flink-1.6.0-bin-scala_2.11.tgz
# Tue, 14 Aug 2018 08:55:15 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.0/flink-1.6.0-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.0/flink-1.6.0-bin-scala_2.11.tgz.asc
# Tue, 14 Aug 2018 08:55:16 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 14 Aug 2018 08:55:40 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 14 Aug 2018 08:55:42 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Tue, 14 Aug 2018 08:55:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Aug 2018 08:55:43 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 14 Aug 2018 08:55:44 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34353c71abcb0a3423640b466779e00b7da4d2d4ebcdd89f3611d4c936b14ef`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 839.2 KB (839215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a58de95103410c7614c07fbfbd2339f5b6657abdb8d847198c246eb1d753e3`  
		Last Modified: Tue, 17 Jul 2018 20:53:30 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523b8fda53cc2bfd5306eedc221a547f3dd09df4aa2eeb8b0a72da68eace3c68`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5804acfb7d370f667eea9e080156de2267faf0dd2c30e9dfa933d4457cc7c1c7`  
		Last Modified: Tue, 17 Jul 2018 20:54:06 GMT  
		Size: 112.7 MB (112736817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add94f64388c3a031d48a5ddbf0e85acbd9d9443a2f3ef1de1701438d83fe022`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 246.7 KB (246663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81fe075c2a285d18ba73e3fd229f5853488b624fb5297deb5f4de9a2a7ec9f92`  
		Last Modified: Tue, 17 Jul 2018 21:09:51 GMT  
		Size: 466.9 KB (466882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f508d5d8b1d048960951e14d19f1ded40292f17147317643eed573becc7397f`  
		Last Modified: Tue, 17 Jul 2018 21:09:50 GMT  
		Size: 764.4 KB (764411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fbf6f728df657950eb15525c47a655154a9f223e8bcf2cc7371c619038cbb10`  
		Last Modified: Tue, 14 Aug 2018 09:24:08 GMT  
		Size: 4.7 KB (4650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85b34f12757c0ccdc1d884bb2f5367b240d617b717fab3ff967f2a544b53ff3`  
		Last Modified: Tue, 14 Aug 2018 09:24:08 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d441bb5965d4e8a81437dc0570c8c7547f57a7164902a2bdd78fdcc32e1d0293`  
		Last Modified: Tue, 14 Aug 2018 09:24:10 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcceb036c83df288ca487012ff20cfa79e23c15d746bc4194dac7e6ae6bb5ad4`  
		Last Modified: Tue, 14 Aug 2018 09:24:57 GMT  
		Size: 265.5 MB (265460111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffc3e1663651a0608a1d9069230c57df6bf39c163222b72b5425b5a67fa1430`  
		Last Modified: Tue, 14 Aug 2018 09:24:08 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.11` - linux; 386

```console
$ docker pull flink@sha256:c8a31acd2e6aa0d1526259c503677c2d222f5e90d4839f18c54ad2af66a02ea0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.8 MB (451785501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792dffef2d4abd1f3d6e6648558efe9cc039849511612fd81401f9c29feec9b8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:17:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:17:47 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 18:17:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 18:17:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 18:17:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 18:17:50 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 18:17:50 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 18:17:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 18:18:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 18:18:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 20 Jul 2018 10:39:09 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Fri, 20 Jul 2018 10:39:10 GMT
ENV GOSU_VERSION=1.7
# Fri, 20 Jul 2018 10:39:16 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 14 Aug 2018 10:44:23 GMT
ENV FLINK_VERSION=1.6.0 HADOOP_SCALA_VARIANT=scala_2.11
# Tue, 14 Aug 2018 10:44:23 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 14 Aug 2018 10:44:23 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 10:44:24 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 14 Aug 2018 10:44:24 GMT
WORKDIR /opt/flink
# Tue, 14 Aug 2018 10:44:25 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.0/flink-1.6.0-bin-scala_2.11.tgz
# Tue, 14 Aug 2018 10:44:25 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.0/flink-1.6.0-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.0/flink-1.6.0-bin-scala_2.11.tgz.asc
# Tue, 14 Aug 2018 10:44:26 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 14 Aug 2018 10:45:36 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 14 Aug 2018 10:45:37 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Tue, 14 Aug 2018 10:45:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Aug 2018 10:45:37 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 14 Aug 2018 10:45:37 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55059f59399b1edb44f6fccf01b4b41c46365022205a35f92fa4aee831f1bac`  
		Last Modified: Tue, 17 Jul 2018 15:15:31 GMT  
		Size: 10.8 MB (10752710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b748c8a9e197a5c36217dc0236e60923d398eef3c44073cffeed563cb61421c3`  
		Last Modified: Tue, 17 Jul 2018 15:15:28 GMT  
		Size: 4.6 MB (4555355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3087334993bfdb6aa03f8ed812f7ae6285de6d3ee1e641556605f833bbce1659`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 861.8 KB (861753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04203d47c665fca1d30763face2370a9dff9ca3660fecf95d8d4714b48b65a38`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b367c5a41976187a4e0c9aa9bb164c3adda20df48f0023fb68e0c069249cde`  
		Last Modified: Tue, 17 Jul 2018 18:49:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f7042ff378fa5a2cf877bf0920020768339d7cd12d26b04fe287b934052f52`  
		Last Modified: Tue, 17 Jul 2018 18:50:34 GMT  
		Size: 122.6 MB (122555245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028b87c9a1d68e48e4b206913b88a0e22030e8ed60053e730d8ec061f9a61f4f`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 246.8 KB (246750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fcdb12a72c45acedcc132091da4431240b83bd828b308d784f3f5a5a43c5fce`  
		Last Modified: Fri, 20 Jul 2018 10:54:26 GMT  
		Size: 467.5 KB (467535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a25b83457f771bcdd26034f2baca9dcfdae51611d12a1e3240210654627b3e90`  
		Last Modified: Fri, 20 Jul 2018 10:54:26 GMT  
		Size: 783.1 KB (783093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91f9de1ee1d25de32859912e1743cbdea8e01d0f8fb359e5b53eb877baf7943`  
		Last Modified: Tue, 14 Aug 2018 11:00:05 GMT  
		Size: 4.5 KB (4534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3b79f718286ccdee1967e3338b0cb9729a4784021bd0df72750f645e9cac3e`  
		Last Modified: Tue, 14 Aug 2018 11:00:04 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7af065e21b8a65630cb4367b45c3eee02019eb2eab258283fd61d797a2e0d3`  
		Last Modified: Tue, 14 Aug 2018 11:00:04 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b11d7cc495f1b6075a5fe2be6dedf2067c356be6ab061d39bc0bd174d9e199f4`  
		Last Modified: Tue, 14 Aug 2018 11:00:31 GMT  
		Size: 265.5 MB (265460056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cad6703b9ff69ef6dbfd676693718534c0b49a8b4d416462733f6f57a06aadf`  
		Last Modified: Tue, 14 Aug 2018 11:00:04 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.11` - linux; ppc64le

```console
$ docker pull flink@sha256:c18abd9cef722a2e994eab6ea6d912f6f45bc03b429dc3029de9a57b55e7ea5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **442.2 MB (442199365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc9fd3aa3421e438efc6732f58625701f605da5342b2ec142b558884b4d13f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:06 GMT
ADD file:692c439870d267b1a84ee3f6c44eb8a4a8342eef759391242613964e31747b24 in / 
# Tue, 17 Jul 2018 08:20:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:11:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 17:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:14:37 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 17:14:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 17:14:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 17:14:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 17:14:44 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 17:14:45 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 17:14:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 17:19:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 17:19:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 20 Jul 2018 08:18:16 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Fri, 20 Jul 2018 08:18:16 GMT
ENV GOSU_VERSION=1.7
# Fri, 20 Jul 2018 08:18:30 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 14 Aug 2018 08:31:58 GMT
ENV FLINK_VERSION=1.6.0 HADOOP_SCALA_VARIANT=scala_2.11
# Tue, 14 Aug 2018 08:32:02 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 14 Aug 2018 08:32:03 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 08:32:07 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 14 Aug 2018 08:32:09 GMT
WORKDIR /opt/flink
# Tue, 14 Aug 2018 08:32:10 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.0/flink-1.6.0-bin-scala_2.11.tgz
# Tue, 14 Aug 2018 08:32:11 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.0/flink-1.6.0-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.0/flink-1.6.0-bin-scala_2.11.tgz.asc
# Tue, 14 Aug 2018 08:32:13 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 14 Aug 2018 08:34:36 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 14 Aug 2018 08:34:38 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Tue, 14 Aug 2018 08:34:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Aug 2018 08:34:42 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 14 Aug 2018 08:34:44 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:4d37f09838fa8757d02699f103191e672c0ecde0fcf23bb3706d1343831762fb`  
		Last Modified: Tue, 17 Jul 2018 08:25:32 GMT  
		Size: 45.6 MB (45594057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b62820a77d74ffab7785bdebc26e90a2ad429b6a23be61002b575c308f717e`  
		Last Modified: Tue, 17 Jul 2018 14:16:47 GMT  
		Size: 9.9 MB (9943597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71a75676a8f5e4b583626a0edc6859aa782e4d90d17995e1e8251146eedfbe4`  
		Last Modified: Tue, 17 Jul 2018 14:16:45 GMT  
		Size: 4.3 MB (4290027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4415e630df1874ff5d01fdfd39e6dd1daf0d79e810326feedc8d715cd280882d`  
		Last Modified: Tue, 17 Jul 2018 17:42:54 GMT  
		Size: 848.5 KB (848525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214a97408c8c4458ef417c27d1d27b63afa6b96f8849073d3493df09ce7030b3`  
		Last Modified: Tue, 17 Jul 2018 17:42:53 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ffc60b9a164d01c0612e2cba6587ea3ce873cfa01f69534f141df3753c060e`  
		Last Modified: Tue, 17 Jul 2018 17:42:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e79f3eef95ad2555ca830a4a00a408c28185fcb5f778712fd4b91d812859536`  
		Last Modified: Tue, 17 Jul 2018 17:43:48 GMT  
		Size: 114.5 MB (114515233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef42e2aecab248bff13c4d75f0a3257f134e44843e8b8d792d30fbb660889f9`  
		Last Modified: Tue, 17 Jul 2018 17:42:53 GMT  
		Size: 246.7 KB (246667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04f32853774f833a599ba04662a7cc6fa524a699a63b274c0bd36f69ec6ff4b`  
		Last Modified: Fri, 20 Jul 2018 09:10:06 GMT  
		Size: 468.4 KB (468408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd570fb36b0f8df409ab8359218567c473d0e214d0208682003a0c034384f06c`  
		Last Modified: Fri, 20 Jul 2018 09:10:04 GMT  
		Size: 767.0 KB (766990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a33231adaa9348f654220c102403472e8854dee2ed3fb4d43fcc2a5be171776`  
		Last Modified: Tue, 14 Aug 2018 09:06:36 GMT  
		Size: 4.6 KB (4611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9954ec818171dc1aea4995042c5438018b2ad9a1daf0b385a8988e3b6f54d14d`  
		Last Modified: Tue, 14 Aug 2018 09:06:33 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd64421fff6e00c1af7ffb3de6c24ac89023965283f3bbc284dfc6e6b9b1a17`  
		Last Modified: Tue, 14 Aug 2018 09:06:32 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b3afdbeb5667f69ad2e03a74f4c049a1773916a84a0accc625f0ab6c988874`  
		Last Modified: Tue, 14 Aug 2018 09:07:15 GMT  
		Size: 265.5 MB (265460269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6edb2d4f97cac6d35449901ba0b1601d646be48c4987395926601e754683bee8`  
		Last Modified: Tue, 14 Aug 2018 09:06:34 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

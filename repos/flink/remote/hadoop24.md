## `flink:hadoop24`

```console
$ docker pull flink@sha256:3507d5ca82c7446186716614352b1755f18dbd34f868255929036a32c8a9e3cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `flink:hadoop24` - linux; amd64

```console
$ docker pull flink@sha256:517d1c19614c36159138c216be6b0bd436b20781bc2995e71b3d7da194d6fd78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **476.5 MB (476514771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba1df2ba5219d8bce401c4903621c29b923bacc22bca9add0c0580713431c27`
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
# Fri, 20 Jul 2018 17:20:47 GMT
ENV FLINK_VERSION=1.5.1 HADOOP_SCALA_VARIANT=hadoop24-scala_2.11
# Fri, 20 Jul 2018 17:20:48 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 20 Jul 2018 17:20:48 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jul 2018 17:20:49 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Fri, 20 Jul 2018 17:20:49 GMT
WORKDIR /opt/flink
# Fri, 20 Jul 2018 17:20:50 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.5.1/flink-1.5.1-bin-hadoop24-scala_2.11.tgz
# Fri, 20 Jul 2018 17:20:50 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.5.1/flink-1.5.1-bin-hadoop24-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.5.1/flink-1.5.1-bin-hadoop24-scala_2.11.tgz.asc
# Fri, 20 Jul 2018 17:20:50 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Fri, 20 Jul 2018 17:21:30 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Fri, 20 Jul 2018 17:21:30 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Fri, 20 Jul 2018 17:21:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jul 2018 17:21:31 GMT
EXPOSE 6123/tcp 8081/tcp
# Fri, 20 Jul 2018 17:21:31 GMT
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
	-	`sha256:49f4eaeb686abba83842e8ce78b1193a474d7bc47746ec43139665a93da1e7a3`  
		Last Modified: Fri, 20 Jul 2018 17:34:16 GMT  
		Size: 4.6 KB (4612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15f6a2d7a0ede8f205c5305069af2d96a7205a3292159336a0d3b47b419cc57`  
		Last Modified: Fri, 20 Jul 2018 17:34:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a952e6ca238c37739cb10395db2c80f1b906550b252fcb0251aa432fe69882`  
		Last Modified: Fri, 20 Jul 2018 17:34:16 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225b3b39f43023e2fd70a9cfc654053212c26c45ee5586edb7c92e7007d47e3d`  
		Last Modified: Fri, 20 Jul 2018 17:34:42 GMT  
		Size: 291.6 MB (291578051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f29d7a04f5ad5cea48d53696db3aa60c30d622eccff8f565d03d9515122a5ba`  
		Last Modified: Fri, 20 Jul 2018 17:34:16 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop24` - linux; arm variant v5

```console
$ docker pull flink@sha256:fef60dea45e3cbf42f6ddfabd6e73b04441b00911105f71353f39e6064778ef4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.9 MB (463858813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1576c86a80b296ae2bfe92546b78fb721eb0a96d00ca10c4507974298c05faaf`
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
# Sat, 21 Jul 2018 08:48:32 GMT
ENV FLINK_VERSION=1.5.1 HADOOP_SCALA_VARIANT=hadoop24-scala_2.11
# Sat, 21 Jul 2018 08:48:32 GMT
ENV FLINK_HOME=/opt/flink
# Sat, 21 Jul 2018 08:48:32 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 08:48:33 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Sat, 21 Jul 2018 08:48:34 GMT
WORKDIR /opt/flink
# Sat, 21 Jul 2018 08:48:34 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.5.1/flink-1.5.1-bin-hadoop24-scala_2.11.tgz
# Sat, 21 Jul 2018 08:48:34 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.5.1/flink-1.5.1-bin-hadoop24-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.5.1/flink-1.5.1-bin-hadoop24-scala_2.11.tgz.asc
# Sat, 21 Jul 2018 08:48:34 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Sat, 21 Jul 2018 08:48:56 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Sat, 21 Jul 2018 08:48:57 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Sat, 21 Jul 2018 08:48:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 21 Jul 2018 08:49:06 GMT
EXPOSE 6123/tcp 8081/tcp
# Sat, 21 Jul 2018 08:49:06 GMT
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
	-	`sha256:9dc9da9d655435d6f9db1d4812c43a8c52786b4de8cddf57d69240a65210f75b`  
		Last Modified: Sat, 21 Jul 2018 08:54:40 GMT  
		Size: 4.5 KB (4534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a120b864fc6635f341a9e928e5ce240e5e83444f27e02051dacad22ee993628`  
		Last Modified: Sat, 21 Jul 2018 08:54:39 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9a2be77080dc381377009b18ef3d4b0439ed5e6d4e05782a336d71aa4675ed`  
		Last Modified: Sat, 21 Jul 2018 08:54:40 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4856b61fd82759fc7d50e05ff7a9e1737c7b4fee4878fda3773870fb777a35d`  
		Last Modified: Sat, 21 Jul 2018 08:55:12 GMT  
		Size: 291.6 MB (291578393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52009d2b6db1e2ec796a8b92b80864c186f3e6764e58358ba746c90ebefe1c50`  
		Last Modified: Sat, 21 Jul 2018 08:54:39 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop24` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:2956a73e12d5c17d52528d2d1a03eed085a03e13ed957f9b164602c6648e37ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.6 MB (463599922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6554e9a60359d104a0e00f97ef22c3d6aa939219c787ef089550a8c888512adc`
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
# Sat, 21 Jul 2018 08:53:30 GMT
ENV FLINK_VERSION=1.5.1 HADOOP_SCALA_VARIANT=hadoop24-scala_2.11
# Sat, 21 Jul 2018 08:53:31 GMT
ENV FLINK_HOME=/opt/flink
# Sat, 21 Jul 2018 08:53:31 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 08:53:34 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Sat, 21 Jul 2018 08:53:34 GMT
WORKDIR /opt/flink
# Sat, 21 Jul 2018 08:53:35 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.5.1/flink-1.5.1-bin-hadoop24-scala_2.11.tgz
# Sat, 21 Jul 2018 08:53:36 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.5.1/flink-1.5.1-bin-hadoop24-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.5.1/flink-1.5.1-bin-hadoop24-scala_2.11.tgz.asc
# Sat, 21 Jul 2018 08:53:36 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Sat, 21 Jul 2018 09:40:44 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Sat, 21 Jul 2018 09:40:45 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Sat, 21 Jul 2018 09:40:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 21 Jul 2018 09:40:47 GMT
EXPOSE 6123/tcp 8081/tcp
# Sat, 21 Jul 2018 09:40:48 GMT
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
	-	`sha256:b80820375a86e80394d3728d5d80ede74ae698e86b49b9b8914f9244cf305e0b`  
		Last Modified: Sat, 21 Jul 2018 10:04:25 GMT  
		Size: 4.7 KB (4650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdd7d9e23c7dc78750c55b911bfa4502a860a295efcf9007d566329fb7a5071`  
		Last Modified: Sat, 21 Jul 2018 10:04:25 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661b48570939b6fda2dac52263b716e364afaea8e2f5559ff4b4e1d38ae383c2`  
		Last Modified: Sat, 21 Jul 2018 10:04:25 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96bb5c204340f8bc1332cfec11ebe849ae764dd73622003f0849ec992afaa3fa`  
		Last Modified: Sat, 21 Jul 2018 10:05:04 GMT  
		Size: 291.6 MB (291578004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21cafc66755ba329a13efb678a041359b79881a668057725e656f0880dcd2ca9`  
		Last Modified: Sat, 21 Jul 2018 10:04:25 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop24` - linux; ppc64le

```console
$ docker pull flink@sha256:875fc71580e6b932f94fb8daf5c53bed4057d9de3519a36762a5e89922ae83e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **468.3 MB (468317495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0f5d4da75dda21eeee62bc83a857c89cb8de44a2e8d11eb8ada7dda5047cda0`
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
# Sat, 21 Jul 2018 08:21:42 GMT
ENV FLINK_VERSION=1.5.1 HADOOP_SCALA_VARIANT=hadoop24-scala_2.11
# Sat, 21 Jul 2018 08:21:43 GMT
ENV FLINK_HOME=/opt/flink
# Sat, 21 Jul 2018 08:21:44 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 21 Jul 2018 08:21:47 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Sat, 21 Jul 2018 08:21:53 GMT
WORKDIR /opt/flink
# Sat, 21 Jul 2018 08:21:54 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.5.1/flink-1.5.1-bin-hadoop24-scala_2.11.tgz
# Sat, 21 Jul 2018 08:21:55 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.5.1/flink-1.5.1-bin-hadoop24-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.5.1/flink-1.5.1-bin-hadoop24-scala_2.11.tgz.asc
# Sat, 21 Jul 2018 08:21:56 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Sat, 21 Jul 2018 08:22:35 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Sat, 21 Jul 2018 08:22:37 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Sat, 21 Jul 2018 08:22:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 21 Jul 2018 08:22:38 GMT
EXPOSE 6123/tcp 8081/tcp
# Sat, 21 Jul 2018 08:22:40 GMT
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
	-	`sha256:f7028e83fa884bd15fb0738cb063ed5931e913d1e348fd5eb3db417f5d9212ef`  
		Last Modified: Sat, 21 Jul 2018 08:51:06 GMT  
		Size: 4.6 KB (4615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7b3e51b431e8381b3951b364e3fbaa13ca46399a2da6683727f84bf508608b`  
		Last Modified: Sat, 21 Jul 2018 08:51:06 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ae825171a90adf844f310d90cbde549aab21a8a7f00eb25c3333447a0bc04f`  
		Last Modified: Sat, 21 Jul 2018 08:51:06 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702ce1e781e14f69103b0576e11903e738cbfc76d6a69f387737da2436b27123`  
		Last Modified: Sat, 21 Jul 2018 08:51:36 GMT  
		Size: 291.6 MB (291578395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e65dafaabd4c10e30a516735f6bb2d8ec3482bb612ef659012e3aecbcd9f190f`  
		Last Modified: Sat, 21 Jul 2018 08:51:06 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:hadoop28`

```console
$ docker pull flink@sha256:8757a61bd995dc43ba63d04ef575251fb36fc4e9794a3e9809fe7f443222ded8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `flink:hadoop28` - linux; amd64

```console
$ docker pull flink@sha256:e5aa60e03c63af1d676f67f25b6f991ecf7fdeda2e14daef7e45ba35d1770f92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **489.1 MB (489052575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfe77ad1d3d95c9be3d18aac1b1bb5e7b256131c333a40b18ba530ab2fbec462`
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
# Tue, 14 Aug 2018 20:34:46 GMT
ENV JAVA_VERSION=8u181
# Tue, 14 Aug 2018 20:34:46 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 14 Aug 2018 20:34:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 14 Aug 2018 20:35:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 14 Aug 2018 20:35:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 14 Aug 2018 21:30:09 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 21:30:09 GMT
ENV GOSU_VERSION=1.7
# Tue, 14 Aug 2018 21:30:16 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 14 Aug 2018 21:42:38 GMT
ENV FLINK_VERSION=1.6.0 HADOOP_SCALA_VARIANT=hadoop28-scala_2.11
# Tue, 14 Aug 2018 21:42:38 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 14 Aug 2018 21:42:38 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 21:42:39 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 14 Aug 2018 21:42:39 GMT
WORKDIR /opt/flink
# Tue, 14 Aug 2018 21:42:40 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz
# Tue, 14 Aug 2018 21:42:40 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz.asc
# Tue, 14 Aug 2018 21:42:40 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 14 Aug 2018 21:43:06 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 14 Aug 2018 21:43:07 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Tue, 14 Aug 2018 21:43:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Aug 2018 21:43:07 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 14 Aug 2018 21:43:08 GMT
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
	-	`sha256:d068d0a738e5053cbca5643bc07bc278f76d3769cd69b8afda717c695c210f18`  
		Last Modified: Tue, 14 Aug 2018 20:46:59 GMT  
		Size: 122.1 MB (122120099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ee47bb0c52e5210fb8b964b20a471bc9591949cc7c6c45d14d4679eae2f2ed`  
		Last Modified: Tue, 14 Aug 2018 20:46:23 GMT  
		Size: 246.7 KB (246699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a089aadceca0332c265738b178586bd1a2ad8c3e5ce9bbf77937113924e48d`  
		Last Modified: Tue, 14 Aug 2018 21:45:30 GMT  
		Size: 466.4 KB (466399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0387aea6264321be1ae882a9e028fe975ec01540943813da0ccb82ceb0800`  
		Last Modified: Tue, 14 Aug 2018 21:45:30 GMT  
		Size: 819.2 KB (819185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630fd1a8ab4b2f52924223f91aa0e52e1373d70d86fd1bf4e71ffc317992b736`  
		Last Modified: Tue, 14 Aug 2018 22:05:59 GMT  
		Size: 4.6 KB (4610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d85e1180f05776e49e00638e2417d34e71490954b91387f7902ddcc3e1a98f`  
		Last Modified: Tue, 14 Aug 2018 22:05:58 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52270a8ba7ce463db029bcae929aa05e5b5cf477337ab2eb21027828fb7182e4`  
		Last Modified: Tue, 14 Aug 2018 22:05:58 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a568d6c5b6060dd682df6c75c6662e0734060a922051c9036c09cfad2b2df89`  
		Last Modified: Tue, 14 Aug 2018 22:06:32 GMT  
		Size: 304.1 MB (304095443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5225c28d2191305f159f9cb862b56f972374495698db6e7325481dbaafef494f`  
		Last Modified: Tue, 14 Aug 2018 22:05:58 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28` - linux; arm variant v5

```console
$ docker pull flink@sha256:dc5b42b818a2549edb3ec0e16fa7640755a4862b6d9b5d9baa2aa1ceb6c3f6dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **476.4 MB (476397937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b12cf8da137cbd2b661b90c449adf8c7b969cd974cabbe49c924e2bcb36cbe0`
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
# Wed, 15 Aug 2018 08:51:38 GMT
ENV JAVA_VERSION=8u181
# Wed, 15 Aug 2018 08:51:38 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 15 Aug 2018 08:51:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 15 Aug 2018 08:52:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 15 Aug 2018 08:52:46 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 15 Aug 2018 09:26:02 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 15 Aug 2018 09:26:02 GMT
ENV GOSU_VERSION=1.7
# Wed, 15 Aug 2018 09:26:06 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 15 Aug 2018 09:35:00 GMT
ENV FLINK_VERSION=1.6.0 HADOOP_SCALA_VARIANT=hadoop28-scala_2.11
# Wed, 15 Aug 2018 09:35:00 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 15 Aug 2018 09:35:00 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 15 Aug 2018 09:35:02 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 15 Aug 2018 09:35:02 GMT
WORKDIR /opt/flink
# Wed, 15 Aug 2018 09:35:02 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz
# Wed, 15 Aug 2018 09:35:02 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz.asc
# Wed, 15 Aug 2018 09:35:03 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 15 Aug 2018 09:36:16 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 15 Aug 2018 09:36:19 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Wed, 15 Aug 2018 09:36:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Aug 2018 09:36:19 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 15 Aug 2018 09:36:19 GMT
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
	-	`sha256:f06c007e7d31db7059d887a323bff2e339a80a5ea263f021b7b84482ab2b7153`  
		Last Modified: Wed, 15 Aug 2018 08:57:14 GMT  
		Size: 111.9 MB (111903307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4667c9b2ab3c079f7692236368b8eb8b9a83fbffa768b51ab8dc37759acb5b`  
		Last Modified: Wed, 15 Aug 2018 08:56:45 GMT  
		Size: 246.7 KB (246731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126601e54b0be03ef610d0c4e243cfedcb88dde922e0662d1104e1c143e85403`  
		Last Modified: Wed, 15 Aug 2018 09:39:29 GMT  
		Size: 466.2 KB (466210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958b55aa1c69c9ae63011e2ac6592db2f813a2106f8542b91526b02d633bb68f`  
		Last Modified: Wed, 15 Aug 2018 09:39:28 GMT  
		Size: 777.7 KB (777669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44186e36b1660cf82f4625a32fb76d8effdcd60b5d1367ff8b733620c7ab3491`  
		Last Modified: Wed, 15 Aug 2018 09:47:26 GMT  
		Size: 4.5 KB (4532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db2b863fdda85a4d98f3656bb10a01ec5352978216898fe22a3c7155015a0705`  
		Last Modified: Wed, 15 Aug 2018 09:47:25 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688ca86bfdc7008f0c32fd04220aa07dbe86b66c61961cb82493372847b50862`  
		Last Modified: Wed, 15 Aug 2018 09:47:26 GMT  
		Size: 59.3 KB (59336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e632fdb57e985dba041e58663fe3685af887c72c7b5d65a0086f5f9585cb9b1b`  
		Last Modified: Wed, 15 Aug 2018 09:48:01 GMT  
		Size: 304.1 MB (304095761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4fc175afac5a899167bf0e6014e7630128ef5ea579d1c1e303a3cbaaf75d68`  
		Last Modified: Wed, 15 Aug 2018 09:47:25 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28` - linux; arm variant v7

```console
$ docker pull flink@sha256:227664a86940aa5093339f6a5e239bb1e244807e51a217a6833829845778a349
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **501.5 MB (501456021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3414a9f08c7094db20d67bba5dadfb75a0ec291ed562d13236ee44cfa6640d45`
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
# Tue, 14 Aug 2018 12:01:31 GMT
ENV FLINK_VERSION=1.6.0 HADOOP_SCALA_VARIANT=hadoop28-scala_2.11
# Tue, 14 Aug 2018 12:01:31 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 14 Aug 2018 12:01:32 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 12:01:35 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 14 Aug 2018 12:01:35 GMT
WORKDIR /opt/flink
# Tue, 14 Aug 2018 12:01:36 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz
# Tue, 14 Aug 2018 12:01:37 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz.asc
# Tue, 14 Aug 2018 12:01:38 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 14 Aug 2018 12:02:28 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 14 Aug 2018 12:02:29 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Tue, 14 Aug 2018 12:02:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Aug 2018 12:02:29 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 14 Aug 2018 12:02:29 GMT
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
	-	`sha256:66c90626183c48ab36cd07be188d64ce8e125d368f1eebea9b37d798aa6a086b`  
		Last Modified: Tue, 14 Aug 2018 12:06:53 GMT  
		Size: 4.6 KB (4573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f352139bae27bba4dac2b56e22331fd706f4587a3b8858dd9d125306de17d1e3`  
		Last Modified: Tue, 14 Aug 2018 12:06:53 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd14d6064fc445bc5caf867b0e44627c6c0164ab0db9120c1a824c33b040393`  
		Last Modified: Tue, 14 Aug 2018 12:06:54 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4146faf06fff6b0260ce724d2245b8b867bc01764e063658da510982ee9caaf`  
		Last Modified: Tue, 14 Aug 2018 12:07:28 GMT  
		Size: 304.1 MB (304095796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51a5806a5baf4402c5164f1e8fdfd6a168c7bc6d8c58e408ef39006583c68a9`  
		Last Modified: Tue, 14 Aug 2018 12:06:53 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:e4b90a41d40ff67b9512a7246e5bbcc07695353516582b61134afaa1474f9fc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **476.1 MB (476130093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e2fac4e937472598fb064bf88d594839b582012e4f231bfcce3ca1968e98b4f`
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
# Wed, 15 Aug 2018 09:27:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 15 Aug 2018 09:27:48 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 15 Aug 2018 09:27:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 15 Aug 2018 09:32:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 15 Aug 2018 09:32:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 15 Aug 2018 10:45:07 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 15 Aug 2018 10:45:23 GMT
ENV GOSU_VERSION=1.7
# Wed, 15 Aug 2018 10:45:30 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 15 Aug 2018 11:04:01 GMT
ENV FLINK_VERSION=1.6.0 HADOOP_SCALA_VARIANT=hadoop28-scala_2.11
# Wed, 15 Aug 2018 11:04:02 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 15 Aug 2018 11:04:03 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 15 Aug 2018 11:04:06 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 15 Aug 2018 11:04:06 GMT
WORKDIR /opt/flink
# Wed, 15 Aug 2018 11:04:07 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz
# Wed, 15 Aug 2018 11:04:08 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz.asc
# Wed, 15 Aug 2018 11:04:08 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 15 Aug 2018 11:05:45 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 15 Aug 2018 11:05:49 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Wed, 15 Aug 2018 11:05:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Aug 2018 11:05:51 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 15 Aug 2018 11:05:51 GMT
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
	-	`sha256:cf4fd39dafb9ad45f57c89125992e8197ddf2b218db872801723f2f7f9c0d9e5`  
		Last Modified: Wed, 15 Aug 2018 09:42:17 GMT  
		Size: 112.7 MB (112749799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7e84d92bb0c762009e72f6bcebe6327697bba2477ece3bf08ad63e7b8dce4f`  
		Last Modified: Wed, 15 Aug 2018 09:41:41 GMT  
		Size: 246.7 KB (246667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a28f3aa23b307c1b098631c9d9e5763f53c7e142da84cac8f5570c166ccf6e`  
		Last Modified: Wed, 15 Aug 2018 11:16:45 GMT  
		Size: 466.6 KB (466605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130609ccaaea1242425fd7d64fdc5fb29b2aea340344271eee22cc0eaad76b26`  
		Last Modified: Wed, 15 Aug 2018 11:16:45 GMT  
		Size: 764.4 KB (764408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1ee7e5c4bdaadd0676dee816bd52c135196af3ffcca58e7a77aba2fa090aba`  
		Last Modified: Wed, 15 Aug 2018 11:33:08 GMT  
		Size: 4.7 KB (4656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1711774e26245e5e76cdfa401ac912211eba98e6be5b5ce336386d4da7efec`  
		Last Modified: Wed, 15 Aug 2018 11:33:08 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5d37189fa068948f09c8d7869b33e5c6cd6e532bef5b6820fa59df4cab8aa6`  
		Last Modified: Wed, 15 Aug 2018 11:33:08 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170a665428cde8e5f715fef6a33dfdb1c60566bca7b3bb00f8dda498f7ea6b8f`  
		Last Modified: Wed, 15 Aug 2018 11:33:49 GMT  
		Size: 304.1 MB (304095463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0beaa22eae54e64a643f40b9f68e565568879b8f6329cb5e461875b071b3de1c`  
		Last Modified: Wed, 15 Aug 2018 11:33:08 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28` - linux; 386

```console
$ docker pull flink@sha256:79a62400b576d5482938ec82556d5f66948ae7d4e404d3ccd70aed228c8fe5b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **490.5 MB (490457105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fe794d7883272345bd8a2c467062dfd3e8f742d7d7ed822b8820be9d0a9c36`
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
# Wed, 15 Aug 2018 11:06:46 GMT
ENV JAVA_VERSION=8u181
# Wed, 15 Aug 2018 11:06:46 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 15 Aug 2018 11:06:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 15 Aug 2018 11:07:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 15 Aug 2018 11:07:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 15 Aug 2018 12:48:27 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 15 Aug 2018 12:48:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 15 Aug 2018 12:48:33 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 15 Aug 2018 12:57:37 GMT
ENV FLINK_VERSION=1.6.0 HADOOP_SCALA_VARIANT=hadoop28-scala_2.11
# Wed, 15 Aug 2018 12:57:38 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 15 Aug 2018 12:57:38 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 15 Aug 2018 12:57:39 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 15 Aug 2018 12:57:39 GMT
WORKDIR /opt/flink
# Wed, 15 Aug 2018 12:57:39 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz
# Wed, 15 Aug 2018 12:57:39 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz.asc
# Wed, 15 Aug 2018 12:57:40 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 15 Aug 2018 12:58:10 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 15 Aug 2018 12:58:21 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Wed, 15 Aug 2018 12:58:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Aug 2018 12:58:22 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 15 Aug 2018 12:58:22 GMT
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
	-	`sha256:6bc0944cc675b368c9bc075d2777a3d19a87fd1c15bc5867c7f5fad19f52bd61`  
		Last Modified: Wed, 15 Aug 2018 11:19:47 GMT  
		Size: 122.6 MB (122591471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cafd3f294bd9b99066131f86718f42153ca53a3051682c2d1db7f035cd4766f`  
		Last Modified: Wed, 15 Aug 2018 11:19:05 GMT  
		Size: 246.7 KB (246725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be1d56d43fb1647a06e934d50f5342bd531e2f092499d63534d552639e00d99`  
		Last Modified: Wed, 15 Aug 2018 13:02:08 GMT  
		Size: 467.6 KB (467558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af73e8d4596cb2d6df95f47b8eaec6cdfdbca3d5d07e0abc36b38312971c762`  
		Last Modified: Wed, 15 Aug 2018 13:02:10 GMT  
		Size: 783.1 KB (783089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af5e28b072e5ab0456cd2f38f84d8f29591cd933f9b88b159cdd5e1116929317`  
		Last Modified: Wed, 15 Aug 2018 13:19:08 GMT  
		Size: 4.5 KB (4532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ed590c2b7714712043623d2eaf0eb4679a45bba5cd61c07733d9494e0746aa`  
		Last Modified: Wed, 15 Aug 2018 13:19:08 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abe2daea2a93902152c81628fb7005686d40da50537bab30d688b5e5878f798`  
		Last Modified: Wed, 15 Aug 2018 13:19:08 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55af66834aa485f656a9ea2eceb0917e2759436198586bc103af76eaf75ff9c1`  
		Last Modified: Wed, 15 Aug 2018 13:19:43 GMT  
		Size: 304.1 MB (304095442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6607b1a10bdd99901704650e893d7535eb694c276328330362fe561637467bba`  
		Last Modified: Wed, 15 Aug 2018 13:19:08 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28` - linux; ppc64le

```console
$ docker pull flink@sha256:21549ef036f1a504e6feea701eb1e5d9c23c3bcd0de94781c3c05e12231eb5c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **480.9 MB (480856412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3fc63c1ab529e2cde6f2883e9f29b2c806b9910cc7799b9bf08b41fe8efebed`
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
# Wed, 15 Aug 2018 09:45:12 GMT
ENV JAVA_VERSION=8u181
# Wed, 15 Aug 2018 09:45:14 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 15 Aug 2018 09:45:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 15 Aug 2018 09:49:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 15 Aug 2018 09:49:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 15 Aug 2018 11:56:05 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 15 Aug 2018 11:56:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 15 Aug 2018 11:56:35 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 15 Aug 2018 12:23:49 GMT
ENV FLINK_VERSION=1.6.0 HADOOP_SCALA_VARIANT=hadoop28-scala_2.11
# Wed, 15 Aug 2018 12:23:51 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 15 Aug 2018 12:23:52 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 15 Aug 2018 12:23:56 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 15 Aug 2018 12:23:57 GMT
WORKDIR /opt/flink
# Wed, 15 Aug 2018 12:23:59 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz
# Wed, 15 Aug 2018 12:24:00 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz.asc
# Wed, 15 Aug 2018 12:24:01 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 15 Aug 2018 12:26:39 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 15 Aug 2018 12:26:41 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Wed, 15 Aug 2018 12:26:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Aug 2018 12:26:43 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 15 Aug 2018 12:26:44 GMT
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
	-	`sha256:514b9d8bb874828e28fce366031a3e6c5f730c65a3c7a81c9ec38da819485cfa`  
		Last Modified: Wed, 15 Aug 2018 09:57:17 GMT  
		Size: 114.5 MB (114536687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a92ef98a1f301e29ad3bc8916a74dc4577aa3fc2bb6b7291a87626a250f0495`  
		Last Modified: Wed, 15 Aug 2018 09:56:46 GMT  
		Size: 246.8 KB (246751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d26c135cf47fb955515fd5669c594e98acce558ad9b094ed9bde4040f3e01204`  
		Last Modified: Wed, 15 Aug 2018 12:31:20 GMT  
		Size: 468.4 KB (468382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817639ea472199b437357e7031f6643543c6d8326d48bbc1a0ac3fc521f61854`  
		Last Modified: Wed, 15 Aug 2018 12:31:20 GMT  
		Size: 767.0 KB (766993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:673179b457ebed562301e23fc1098e0b4e15a9288d91d57574c87fee3b26e115`  
		Last Modified: Wed, 15 Aug 2018 12:44:24 GMT  
		Size: 4.6 KB (4617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5f2777a66222a9cfeb23909c24339d6f6d6c41a65bc7f1832029a7658f544f`  
		Last Modified: Wed, 15 Aug 2018 12:44:24 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffa99fa0b5fe5a0b1bc4887411f340a1490ee1a05d9c1979e13de7b62450169`  
		Last Modified: Wed, 15 Aug 2018 12:44:24 GMT  
		Size: 59.3 KB (59336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29dd4122d1d9a1bf6dd6dc98fc7ee17cd5ea376fea04cc38420d8f87fb03b068`  
		Last Modified: Wed, 15 Aug 2018 12:45:06 GMT  
		Size: 304.1 MB (304095797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9394dd660dceaebc52a30f0a9eec287dda52d3b2fa50301ccdac5cd5d38af369`  
		Last Modified: Wed, 15 Aug 2018 12:44:24 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:hadoop26`

```console
$ docker pull flink@sha256:f7c6aa1f8535daa642364ac380fe7d230517ae9a8998713267e8a71c18ba03ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `flink:hadoop26` - linux; amd64

```console
$ docker pull flink@sha256:c2caa67fb4144868bd7c85bf2091af0668f038e0f1c4fe3b2844df3373be82d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **482.8 MB (482760346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d1ec6304596feae19b887631426d8d336fd658eb3a9bb0721bef5df44a8e66`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

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
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 05:28:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 05:28:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 05:28:50 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 16:00:50 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 16:00:51 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 Oct 2018 16:00:54 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 Oct 2018 16:08:03 GMT
ENV FLINK_VERSION=1.6.1 HADOOP_SCALA_VARIANT=hadoop26-scala_2.11
# Tue, 16 Oct 2018 16:08:03 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 Oct 2018 16:08:04 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 16:08:05 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 Oct 2018 16:08:06 GMT
WORKDIR /opt/flink
# Tue, 16 Oct 2018 16:08:06 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz
# Tue, 16 Oct 2018 16:08:06 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz.asc
# Tue, 16 Oct 2018 16:08:07 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 16 Oct 2018 16:13:31 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 Oct 2018 16:13:31 GMT
COPY file:7ede7182e493c895882f25b5790401fcaf01530da6bf0aa9a9db2d744286860f in / 
# Tue, 16 Oct 2018 16:13:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 16:13:32 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 Oct 2018 16:13:32 GMT
CMD ["help"]
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
	-	`sha256:a77dac7d6f90404df3ba84614e05cb5b8572297af5236c1d966dc04e1e5a4045`  
		Last Modified: Tue, 16 Oct 2018 05:58:36 GMT  
		Size: 122.1 MB (122122445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6907d655b86d9aad7e9f3ba33da9c8be9bfa4d776234d8aff0e1658e270a44ba`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 246.7 KB (246739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0345e3abf9b8c091b534a0de403969ac3d0214ef98c8ce7a980b7a75205d7d`  
		Last Modified: Tue, 16 Oct 2018 16:17:19 GMT  
		Size: 466.3 KB (466265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd63d53ec1fe2d4ffbc5c3e335c991afa76e726ec3fecea7596ca8d9e7adcea`  
		Last Modified: Tue, 16 Oct 2018 16:17:19 GMT  
		Size: 819.2 KB (819185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6ae8d6829ec197df00ce6af4ce7f450c0b8c2f39f2bc5d238ef047ecdffa45`  
		Last Modified: Tue, 16 Oct 2018 16:27:47 GMT  
		Size: 4.6 KB (4613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:097a415e6834cae64d22b3126940b461cdf739ab7fc9e87154f5c7476a50fee6`  
		Last Modified: Tue, 16 Oct 2018 16:27:47 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14579be5a609f0813369c09020def97cc4bd73d945549aee1b0c446965906df`  
		Last Modified: Tue, 16 Oct 2018 16:25:12 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9952bab86b05a4e7050a5e92583aef078947be84e3d57e54888bded756e3ba8`  
		Last Modified: Tue, 16 Oct 2018 16:28:22 GMT  
		Size: 297.8 MB (297801277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd44de63bacec63915e3d5c215f64bb2b3aca0f8be30b8f069e3514d99db67a`  
		Last Modified: Tue, 16 Oct 2018 16:25:12 GMT  
		Size: 1.1 KB (1092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop26` - linux; arm variant v5

```console
$ docker pull flink@sha256:095558bf7fb460c58581f84831061943a63af7f2deb498db52432e9ce9993378
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **470.1 MB (470103566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aa6e5786950c86b3dbb57cee358b0d77798e98a79879fb5b27a098b1ba44137`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 05 Sep 2018 08:54:58 GMT
ADD file:2301eb998a2cf644d62951808894ec7ace20df38ed4e82f7ab477d8a9043b67b in / 
# Wed, 05 Sep 2018 08:54:59 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:58:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:58:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 14:27:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:27:09 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 14:27:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 14:27:11 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 14:27:12 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 05 Sep 2018 14:27:12 GMT
ENV JAVA_VERSION=8u181
# Wed, 05 Sep 2018 14:27:12 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 05 Sep 2018 14:27:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 05 Sep 2018 14:28:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 14:28:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 05 Sep 2018 18:42:06 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:42:07 GMT
ENV GOSU_VERSION=1.7
# Wed, 05 Sep 2018 18:42:11 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 26 Sep 2018 08:57:47 GMT
ENV FLINK_VERSION=1.6.1 HADOOP_SCALA_VARIANT=hadoop26-scala_2.11
# Wed, 26 Sep 2018 08:57:47 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 26 Sep 2018 08:57:47 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Sep 2018 08:57:49 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 26 Sep 2018 08:57:49 GMT
WORKDIR /opt/flink
# Wed, 26 Sep 2018 08:57:49 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz
# Wed, 26 Sep 2018 08:57:50 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz.asc
# Wed, 26 Sep 2018 08:57:50 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 26 Sep 2018 08:58:54 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Fri, 05 Oct 2018 08:50:10 GMT
COPY file:7ede7182e493c895882f25b5790401fcaf01530da6bf0aa9a9db2d744286860f in / 
# Fri, 05 Oct 2018 08:50:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 05 Oct 2018 08:50:11 GMT
EXPOSE 6123/tcp 8081/tcp
# Fri, 05 Oct 2018 08:50:11 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:9cb1890a5e52c7c05eedad090ff39b863a62697e36cd9b3ff608dc0f832d5687`  
		Last Modified: Wed, 05 Sep 2018 09:03:55 GMT  
		Size: 44.0 MB (44033002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe41b212ad18ceb0a81a3f52fa8c618a0bbe47fd82200767851c667ef25f51d8`  
		Last Modified: Wed, 05 Sep 2018 10:11:48 GMT  
		Size: 9.8 MB (9810215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836b37f3f7096f6d14a8f575975e8e27092177c0480bbe64d2f9afd752d48fab`  
		Last Modified: Wed, 05 Sep 2018 10:11:45 GMT  
		Size: 4.2 MB (4153723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b669e5be012c0996815b3de63de3ed47710b24717fcd05159a5f736271043136`  
		Last Modified: Wed, 05 Sep 2018 14:40:30 GMT  
		Size: 845.9 KB (845878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1f3e0c2f3480ba960435155e84e4cdae48961cea3da9de59241ea2cc8d33d8`  
		Last Modified: Wed, 05 Sep 2018 14:41:51 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869cc67529ccdaef0d9b1355a715f86b42aa4d1137cafa5e6ab656c4ff4527a6`  
		Last Modified: Wed, 05 Sep 2018 14:40:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f62f721066752d3fd1b4e1fe292990dab84ea93c51520fbb06c65818f5f93d`  
		Last Modified: Wed, 05 Sep 2018 14:41:01 GMT  
		Size: 111.9 MB (111903271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d301167afb12c6f10391102ef4c700b8976347dfb18af062d882ffed0f78626f`  
		Last Modified: Wed, 05 Sep 2018 14:40:30 GMT  
		Size: 246.7 KB (246737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34905615dee17f3b83ec30a4192b9b157b9c6426c9f5e21bfab6e676aeaaf0fe`  
		Last Modified: Wed, 05 Sep 2018 18:58:47 GMT  
		Size: 466.2 KB (466183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e38b4f7337fc1271104aab24f1722218db941545c2d38e39a635c122af18c16`  
		Last Modified: Wed, 05 Sep 2018 18:58:41 GMT  
		Size: 777.7 KB (777658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d463c673f9e47d8f422cdb5ed02b95f054c0cf9e4fa197a2c9a3e1f7922d3b8`  
		Last Modified: Wed, 26 Sep 2018 09:11:29 GMT  
		Size: 4.5 KB (4534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a6b1b1c5ba08add79886a3dcf8603a43971ce9c627c1d919e67346be2321f6`  
		Last Modified: Wed, 26 Sep 2018 09:11:18 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4047c80a2fd367be900d919dd02a5ef1dbb62671e6cf44c6fb2221252f621bf1`  
		Last Modified: Wed, 26 Sep 2018 09:11:18 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b9bb644606df57d55d48a7e0da31143a174971a81a601df2810859ed7e674f`  
		Last Modified: Wed, 26 Sep 2018 09:11:51 GMT  
		Size: 297.8 MB (297801407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30908d592a19ef009bf00324df6be4eb17b6768d3e93c0f23b04eedbd67bb766`  
		Last Modified: Fri, 05 Oct 2018 08:55:52 GMT  
		Size: 1.1 KB (1092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop26` - linux; arm variant v7

```console
$ docker pull flink@sha256:eb7e932177f0adcc44c4844bda5aa726e4269056d30730933f8cbcc7493e4d64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **495.2 MB (495161549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62c972c9239c4f28d04ed9484dfeb11e3cac48b7cf36d5ab0079b8b4af5e5299`
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
# Wed, 26 Sep 2018 12:09:58 GMT
ENV FLINK_VERSION=1.6.1 HADOOP_SCALA_VARIANT=hadoop26-scala_2.11
# Wed, 26 Sep 2018 12:09:59 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 26 Sep 2018 12:09:59 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Sep 2018 12:10:01 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 26 Sep 2018 12:10:01 GMT
WORKDIR /opt/flink
# Wed, 26 Sep 2018 12:10:02 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz
# Wed, 26 Sep 2018 12:10:02 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz.asc
# Wed, 26 Sep 2018 12:10:03 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 26 Sep 2018 12:10:34 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Fri, 05 Oct 2018 12:00:54 GMT
COPY file:7ede7182e493c895882f25b5790401fcaf01530da6bf0aa9a9db2d744286860f in / 
# Fri, 05 Oct 2018 12:00:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 05 Oct 2018 12:00:56 GMT
EXPOSE 6123/tcp 8081/tcp
# Fri, 05 Oct 2018 12:00:56 GMT
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
	-	`sha256:62d2a98ee09b307a0917cbe0202cff321a0f7b6406559383094e9ba10e83d97b`  
		Last Modified: Wed, 26 Sep 2018 12:24:07 GMT  
		Size: 4.6 KB (4573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1755d1016c4503a91fab4fe057b09daeb24c5e6ce5fecf8c4390d7b5d9a6bc7`  
		Last Modified: Wed, 26 Sep 2018 12:24:07 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf11e9a7c579b0350a742e7cd5905bd0a09554ad0b555a701117c6fe53a5868`  
		Last Modified: Wed, 26 Sep 2018 12:24:07 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25eeb638274e21a082c0ec17caef2c78ef639bb12fc8b978ddfa4ad94b54f17e`  
		Last Modified: Wed, 26 Sep 2018 12:24:43 GMT  
		Size: 297.8 MB (297801351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac02ecc9ad4828eb3dea61299c189495a391daa045ed67650b6f7b1cf97344e`  
		Last Modified: Fri, 05 Oct 2018 12:08:00 GMT  
		Size: 1.1 KB (1091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop26` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:1c7e87883e8b17e3011e047c7ba93f3b2200979a2367df3bd1b50c7ee0c957a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **469.8 MB (469836794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1e20fb78972ed22d83893b247f97bc791fdd4661db4f50a8dbb667d8f66ed1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 13:33:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:33:19 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:33:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 13:33:23 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 13:33:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 05 Sep 2018 13:33:24 GMT
ENV JAVA_VERSION=8u181
# Wed, 05 Sep 2018 13:33:25 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 05 Sep 2018 13:33:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 05 Sep 2018 13:39:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 13:39:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 06 Sep 2018 01:08:31 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 01:08:32 GMT
ENV GOSU_VERSION=1.7
# Thu, 06 Sep 2018 01:08:41 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 26 Sep 2018 09:07:55 GMT
ENV FLINK_VERSION=1.6.1 HADOOP_SCALA_VARIANT=hadoop26-scala_2.11
# Wed, 26 Sep 2018 09:07:56 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 26 Sep 2018 09:07:57 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Sep 2018 09:08:01 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 26 Sep 2018 09:08:02 GMT
WORKDIR /opt/flink
# Wed, 26 Sep 2018 09:08:03 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz
# Wed, 26 Sep 2018 09:08:04 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz.asc
# Wed, 26 Sep 2018 09:08:05 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 26 Sep 2018 09:10:44 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Fri, 05 Oct 2018 08:43:35 GMT
COPY file:7ede7182e493c895882f25b5790401fcaf01530da6bf0aa9a9db2d744286860f in / 
# Fri, 05 Oct 2018 08:43:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 05 Oct 2018 08:43:37 GMT
EXPOSE 6123/tcp 8081/tcp
# Fri, 05 Oct 2018 08:43:38 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624115d32e82854c6017d240b844b48870d37742c5860868c7662271ef22641a`  
		Last Modified: Wed, 05 Sep 2018 14:16:14 GMT  
		Size: 839.1 KB (839091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e985da6c2c9cf20205643ae0b0e1ab408179d3b01799dafd60483471bbfbc63`  
		Last Modified: Wed, 05 Sep 2018 14:16:14 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f8679788920f265c6cfb8631f5f7cb32a6d16cc263152ce0e918de7b0be445`  
		Last Modified: Wed, 05 Sep 2018 14:16:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db339c1ad3619a5cac5b8048375669970b143a93db943302430ccdc984d68714`  
		Last Modified: Wed, 05 Sep 2018 14:16:47 GMT  
		Size: 112.8 MB (112750981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6819153e1327d9a21df22c55cd85bdb0bac37427bec941fc0eb36cf3cdb29beb`  
		Last Modified: Wed, 05 Sep 2018 14:16:14 GMT  
		Size: 246.7 KB (246666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd222bc683b9b1e7adf0740d0bce9ac02af6bd6fecd5c779f1959fd23550c76`  
		Last Modified: Thu, 06 Sep 2018 01:33:14 GMT  
		Size: 466.7 KB (466707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8a3bde34b3f933d3ee4849a706357764e445f70d63528d83e5836a16124a71`  
		Last Modified: Thu, 06 Sep 2018 01:33:14 GMT  
		Size: 764.4 KB (764405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83e40336124fc46a714d548420b58e976ec9eda917df8445d3a382f3166b0f9`  
		Last Modified: Wed, 26 Sep 2018 09:56:57 GMT  
		Size: 4.7 KB (4657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4c12a584598d7ca9bc97c00feeec484c5f2630185b5b0d4c9ef49cc9530225`  
		Last Modified: Wed, 26 Sep 2018 09:56:57 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c889999ac95ae0c30bb8c5cbda1e38c2439fb3b39479de397ed8801f9c56d53c`  
		Last Modified: Wed, 26 Sep 2018 09:56:57 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f7512f0ba702f6b942d7af339d64d0915e095f1971bdb41d8a84f9122f8ad6`  
		Last Modified: Wed, 26 Sep 2018 09:57:58 GMT  
		Size: 297.8 MB (297801284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fdaf7c213a7870d8a3db407308c123fea414815445a3a72aaba45da7bcf0b7a`  
		Last Modified: Fri, 05 Oct 2018 08:57:55 GMT  
		Size: 1.1 KB (1092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop26` - linux; 386

```console
$ docker pull flink@sha256:34fd41dc91e2601c2f050ebbf04673b50813b1113040d19c7a2ebcffc6ea92a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **484.2 MB (484166860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94dfe18b4f6eba4da9d98a775c282709bbbd784b6df7242a39f3df8ca94a65f6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:39:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:39:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:59:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:59:54 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:59:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 12:59:56 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 12:59:56 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 05 Sep 2018 12:59:56 GMT
ENV JAVA_VERSION=8u181
# Wed, 05 Sep 2018 12:59:57 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 05 Sep 2018 12:59:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 05 Sep 2018 13:01:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 13:01:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 07 Sep 2018 02:26:03 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 02:26:03 GMT
ENV GOSU_VERSION=1.7
# Fri, 07 Sep 2018 02:26:06 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 26 Sep 2018 10:58:47 GMT
ENV FLINK_VERSION=1.6.1 HADOOP_SCALA_VARIANT=hadoop26-scala_2.11
# Wed, 26 Sep 2018 10:58:47 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 26 Sep 2018 10:58:47 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Sep 2018 10:58:48 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 26 Sep 2018 10:58:48 GMT
WORKDIR /opt/flink
# Wed, 26 Sep 2018 10:58:48 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz
# Wed, 26 Sep 2018 10:58:49 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz.asc
# Wed, 26 Sep 2018 10:58:49 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 26 Sep 2018 11:03:32 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Fri, 05 Oct 2018 10:40:13 GMT
COPY file:7ede7182e493c895882f25b5790401fcaf01530da6bf0aa9a9db2d744286860f in / 
# Fri, 05 Oct 2018 10:40:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 05 Oct 2018 10:40:13 GMT
EXPOSE 6123/tcp 8081/tcp
# Fri, 05 Oct 2018 10:40:14 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0651aebef484f2932d9d9ec0ecaeaa15733b8454c24edd2fce38adb0542d794`  
		Last Modified: Wed, 05 Sep 2018 12:09:00 GMT  
		Size: 10.8 MB (10752740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5868a2cc4b3fe4d148aaea3d9f4da71a92f29f3b899d163fef3a2ead52cf44a6`  
		Last Modified: Wed, 05 Sep 2018 12:08:55 GMT  
		Size: 4.6 MB (4555338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd35c023594c2930ba4cb3209aa37855e7837d3d47f26e8815ab91e4c0ec5ed`  
		Last Modified: Wed, 05 Sep 2018 13:26:52 GMT  
		Size: 861.8 KB (861782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7804c3aaf013cbb9bbaf815ba41ef27829d0403865a7f6344ce8e2d2efec0ffd`  
		Last Modified: Wed, 05 Sep 2018 13:26:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0629a6b86449b3633c75a6ccd7d7b22c9abaf644468b6b257df646d07e051ec8`  
		Last Modified: Wed, 05 Sep 2018 13:26:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9597f493d0a66ba22d6256f9f43f01665a456c3204a47c06fc32dd5620471a56`  
		Last Modified: Wed, 05 Sep 2018 13:27:45 GMT  
		Size: 122.6 MB (122593836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ae4b9c20f72fb1df73606e43aecca65a5e947941629efbb960f5c3939769989`  
		Last Modified: Wed, 05 Sep 2018 13:26:52 GMT  
		Size: 246.8 KB (246815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1f4b1d4a02eda3d7c1cf903c7c678ec8209cfc4548d0a2b2012b006136020f`  
		Last Modified: Fri, 07 Sep 2018 02:51:51 GMT  
		Size: 467.6 KB (467573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9dfb63b4de146c48dd0ac00edd7dba5ad44dbed667decd084dc01f8bed37840`  
		Last Modified: Fri, 07 Sep 2018 02:51:51 GMT  
		Size: 783.1 KB (783092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641570d1d227586f4b3632f5bc0cd8ffd6837a0725c440566cbe98d94b6ed0a9`  
		Last Modified: Wed, 26 Sep 2018 11:23:23 GMT  
		Size: 4.5 KB (4535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a141d2b994377ae1667075526dcdf1b3a2e3ece7ccf787c4f919d10ddcf74e9c`  
		Last Modified: Wed, 26 Sep 2018 11:23:24 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1fdf083ca44ae7b11d9c69c0c0441361a37f9b0a21734c94e5b04d6893f737b`  
		Last Modified: Wed, 26 Sep 2018 11:23:23 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02fb9ddc6eff895886b1fda330f9bf5e9792612f40f57dd1d83b87d834fb3291`  
		Last Modified: Wed, 26 Sep 2018 11:23:47 GMT  
		Size: 297.8 MB (297801181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d37074ae28081d97cd9f0d1a391a9c5ecdd9adf66e93584a867191b1f8014b`  
		Last Modified: Fri, 05 Oct 2018 10:46:13 GMT  
		Size: 1.1 KB (1092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop26` - linux; ppc64le

```console
$ docker pull flink@sha256:21dfa62c72c7957cf0956a84dab48e205fb06ce68932131fb2cf2314628ecf9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.6 MB (474561484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85675690871264bce9186ee8afaf8464461cbb2993fa7be0b6522fe9570a3532`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

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
# Tue, 16 Oct 2018 15:15:54 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 15:15:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 15:21:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 15:21:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 15:49:23 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:49:24 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 Oct 2018 15:49:32 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 16 Oct 2018 16:04:32 GMT
ENV FLINK_VERSION=1.6.1 HADOOP_SCALA_VARIANT=hadoop26-scala_2.11
# Tue, 16 Oct 2018 16:04:35 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 16 Oct 2018 16:04:37 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 16:04:40 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 16 Oct 2018 16:04:42 GMT
WORKDIR /opt/flink
# Tue, 16 Oct 2018 16:04:43 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz
# Tue, 16 Oct 2018 16:04:49 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz.asc
# Tue, 16 Oct 2018 16:04:50 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 16 Oct 2018 16:07:48 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 16 Oct 2018 16:07:53 GMT
COPY file:7ede7182e493c895882f25b5790401fcaf01530da6bf0aa9a9db2d744286860f in / 
# Tue, 16 Oct 2018 16:07:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 16:07:55 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 16 Oct 2018 16:07:56 GMT
CMD ["help"]
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
	-	`sha256:098d2fae78b628616ccbca6a609fd827e748f1017a1928b43af18fce564bdcf1`  
		Last Modified: Tue, 16 Oct 2018 15:35:48 GMT  
		Size: 114.5 MB (114535652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07bbab39c42f8a2b72cca146f60e5d5f0a1628df78a88ccd2bda98e6a37ff86`  
		Last Modified: Tue, 16 Oct 2018 15:34:56 GMT  
		Size: 246.7 KB (246700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fee88db05c345198ca114c6694107aa1d590f5d92a9b88da2734256ac7d42a7`  
		Last Modified: Tue, 16 Oct 2018 16:16:13 GMT  
		Size: 468.2 KB (468179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0ac6bee8bb56134367f3777f08b6e905b7f114f6173c1482fc3607707e1150`  
		Last Modified: Tue, 16 Oct 2018 16:16:12 GMT  
		Size: 767.0 KB (766999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4e2b094e86d53eb48dab43972a3a64f10b576a74ac22c7b687ed9162825212`  
		Last Modified: Tue, 16 Oct 2018 16:23:56 GMT  
		Size: 4.6 KB (4611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa1b1e17dd4b6ba40c3044097cecc673390d16a38e8b16e5878878fc8851eb9`  
		Last Modified: Tue, 16 Oct 2018 16:23:57 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7a73f5359b414c5d111b04a24222f5930e0478d890254ebe38d58099c14aea`  
		Last Modified: Tue, 16 Oct 2018 16:23:56 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847a2e91816bc42fb8cdd5714f4f2bf3f40fdbc6cc433b5d573197b2f491b8ef`  
		Last Modified: Tue, 16 Oct 2018 16:24:31 GMT  
		Size: 297.8 MB (297801385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c180952594aefbe7891ebfef42e55c2e82645054d78330bea18bb12f6c31a267`  
		Last Modified: Tue, 16 Oct 2018 16:23:56 GMT  
		Size: 1.1 KB (1091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

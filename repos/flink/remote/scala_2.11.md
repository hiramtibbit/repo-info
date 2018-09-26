## `flink:scala_2.11`

```console
$ docker pull flink@sha256:37e7befa37b902e756ea0cdb3dc31ab364189c55914789b2faf81294aa12f7ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386

### `flink:scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:a112acf65c8066adac89168ab8864e720516d756637f7da2133078ba383187a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **450.5 MB (450503064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d417466254dde928382034110643bb43999e64f690e3fbbc097dd5525b046db8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 01:23:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:23:14 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:23:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:23:15 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 05 Sep 2018 01:23:16 GMT
ENV JAVA_VERSION=8u181
# Wed, 05 Sep 2018 01:23:16 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 05 Sep 2018 01:23:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 05 Sep 2018 01:23:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 01:23:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 05 Sep 2018 12:14:25 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:14:25 GMT
ENV GOSU_VERSION=1.7
# Wed, 05 Sep 2018 12:14:29 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 26 Sep 2018 00:36:44 GMT
ENV FLINK_VERSION=1.6.1 HADOOP_SCALA_VARIANT=scala_2.11
# Wed, 26 Sep 2018 00:36:44 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 26 Sep 2018 00:36:44 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Sep 2018 00:36:45 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 26 Sep 2018 00:36:51 GMT
WORKDIR /opt/flink
# Wed, 26 Sep 2018 00:36:51 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.1/flink-1.6.1-bin-scala_2.11.tgz
# Wed, 26 Sep 2018 00:36:51 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.1/flink-1.6.1-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.1/flink-1.6.1-bin-scala_2.11.tgz.asc
# Wed, 26 Sep 2018 00:36:52 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 26 Sep 2018 00:37:10 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 26 Sep 2018 00:37:10 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Wed, 26 Sep 2018 00:37:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Sep 2018 00:37:10 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 26 Sep 2018 00:37:11 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65dd87f6620b41e303b5ee5be4bf7b4cb3a8ee55e86123d6637737383d3078d3`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 852.9 KB (852884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a183a01190c57eb606a72e8c273630224ae454d26bc3f73f4edf205821553b`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4499c85f9798901010eb0cd0c245a1439b731362a46d5ee246f2ad56d72fc0`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d39b4bfc1b2ce067f6a3f00395918187829d4e3d5094276db7e2addd1dc1f`  
		Last Modified: Wed, 05 Sep 2018 01:42:17 GMT  
		Size: 122.1 MB (122122653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1cec2222c9250bed824daddb12fe4674a55afc78207ee3e3e7a943fc9293fa`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 246.7 KB (246694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21caa64ae4b6c46e169e44025cbbaf2f38acaff2ec87149a8362f3efebd7fe90`  
		Last Modified: Wed, 05 Sep 2018 12:39:17 GMT  
		Size: 466.4 KB (466365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d31e9a3f5d92ed66163950d038120c2dffc3433c651b953f1263babe8b8aa57`  
		Last Modified: Wed, 05 Sep 2018 12:39:16 GMT  
		Size: 819.2 KB (819180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2cd6d40eece8f9a6a1e18def642f18f9bfb4c1a0bdcffb0b788bc1467cf4bef`  
		Last Modified: Wed, 26 Sep 2018 00:55:49 GMT  
		Size: 4.6 KB (4613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d74235bc2665dac49dec8fd7faa72a357087c1f11f1ad7c2abff4c398a699ce`  
		Last Modified: Wed, 26 Sep 2018 00:55:49 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c4a31588251f49c150c6636e7a4afc2b228be4e9394cfe43552c5a5de00afd`  
		Last Modified: Wed, 26 Sep 2018 00:55:49 GMT  
		Size: 59.3 KB (59336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f06329542fe644aa21884e1c04cb5d91c8c7e679e737d8513b99b1f241683a`  
		Last Modified: Wed, 26 Sep 2018 00:56:33 GMT  
		Size: 265.5 MB (265543078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d549789cf546d6983b6bdbfeaab4fb7ac015b12e6e6c01810b050d42a9a4ec9c`  
		Last Modified: Wed, 26 Sep 2018 00:55:49 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.11` - linux; arm variant v5

```console
$ docker pull flink@sha256:2584c6e51778b9c678d25a9ce30078fc6b1850a424430021499c84c37332261b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.8 MB (437845673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9e2569b009a92653bd66e83b59801de64ac80f554d02d8afdffa4fdd246836c`
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
# Wed, 26 Sep 2018 09:02:02 GMT
ENV FLINK_VERSION=1.6.1 HADOOP_SCALA_VARIANT=scala_2.11
# Wed, 26 Sep 2018 09:02:02 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 26 Sep 2018 09:02:03 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Sep 2018 09:02:04 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 26 Sep 2018 09:02:04 GMT
WORKDIR /opt/flink
# Wed, 26 Sep 2018 09:02:05 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.1/flink-1.6.1-bin-scala_2.11.tgz
# Wed, 26 Sep 2018 09:02:05 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.1/flink-1.6.1-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.1/flink-1.6.1-bin-scala_2.11.tgz.asc
# Wed, 26 Sep 2018 09:02:05 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 26 Sep 2018 09:03:24 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 26 Sep 2018 09:03:25 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Wed, 26 Sep 2018 09:03:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Sep 2018 09:03:26 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 26 Sep 2018 09:03:26 GMT
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
	-	`sha256:fc2703b41863f0b7c93c5baab3f7b18fd81fe2f39ee6e107d1be8363f345670f`  
		Last Modified: Wed, 26 Sep 2018 09:15:25 GMT  
		Size: 4.5 KB (4535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54497ff43405bccdd8cc5bd5985c5a111371d2ca66b6d72d0819cd51c46a0034`  
		Last Modified: Wed, 26 Sep 2018 09:15:25 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9940a4af7a9ae4a454dd6c3353d6fe51ee2c94cb100100c0e8f34493f69913cc`  
		Last Modified: Wed, 26 Sep 2018 09:15:26 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e691b004d08496f1f89f05bf9dbd99bef59cf3897b1637ed9815b91f058dff`  
		Last Modified: Wed, 26 Sep 2018 09:15:55 GMT  
		Size: 265.5 MB (265543488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9cd46fe06c10f6330c1cc3c4cc7ef23b3b99b2b5a605498278aa9936dec1187`  
		Last Modified: Wed, 26 Sep 2018 09:15:26 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.11` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:28d010b3c1b292f466fc4da411b279b11c7b793290652531ac4316fd97a59c93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.6 MB (437578542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec2d98c4c0f16af6b40dd0c20411c41472b40c3b3c99efb35b036aca94a13f8`
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
# Wed, 26 Sep 2018 09:14:34 GMT
ENV FLINK_VERSION=1.6.1 HADOOP_SCALA_VARIANT=scala_2.11
# Wed, 26 Sep 2018 09:14:34 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 26 Sep 2018 09:14:35 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Sep 2018 09:14:38 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 26 Sep 2018 09:14:39 GMT
WORKDIR /opt/flink
# Wed, 26 Sep 2018 09:14:41 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.1/flink-1.6.1-bin-scala_2.11.tgz
# Wed, 26 Sep 2018 09:14:43 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.1/flink-1.6.1-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.1/flink-1.6.1-bin-scala_2.11.tgz.asc
# Wed, 26 Sep 2018 09:14:44 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 26 Sep 2018 09:18:09 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 26 Sep 2018 09:18:18 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Wed, 26 Sep 2018 09:18:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Sep 2018 09:18:19 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 26 Sep 2018 09:18:20 GMT
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
	-	`sha256:4759e56e673b668aeb786ab4b891288dbb3701e372333a91920285c7b5ebbaa0`  
		Last Modified: Wed, 26 Sep 2018 10:02:34 GMT  
		Size: 4.7 KB (4651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31fcb5734cf407114e4099e4f00d2ae4e86872fb1d6f3a7d0f56e0fe7140ebcc`  
		Last Modified: Wed, 26 Sep 2018 10:02:34 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca81b25f7c2f2838a7c3b67ab1ac44eba6543b7569dd8f66edb78fac709e92e`  
		Last Modified: Wed, 26 Sep 2018 10:02:34 GMT  
		Size: 59.3 KB (59336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfceedea32a65fea2ebebfb3820cbf1aef27ee4f6c56dfb42bfe48939caaa89b`  
		Last Modified: Wed, 26 Sep 2018 10:03:17 GMT  
		Size: 265.5 MB (265543015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245c9d574b1981fdab807ad847606074ba34f60ccf1c88c46643d22533638621`  
		Last Modified: Wed, 26 Sep 2018 10:02:34 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.11` - linux; 386

```console
$ docker pull flink@sha256:b8c6530660685e112606fbc849ddcd77d7e2c9c8f8edcb6474bf074d07da6d13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.9 MB (451908719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9dc56b24bf1e29c811841d8332d05c9282605b56de6e14196a08845f6b631fa`
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
# Wed, 26 Sep 2018 11:09:02 GMT
ENV FLINK_VERSION=1.6.1 HADOOP_SCALA_VARIANT=scala_2.11
# Wed, 26 Sep 2018 11:09:02 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 26 Sep 2018 11:09:02 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Sep 2018 11:09:03 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 26 Sep 2018 11:09:03 GMT
WORKDIR /opt/flink
# Wed, 26 Sep 2018 11:09:04 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.1/flink-1.6.1-bin-scala_2.11.tgz
# Wed, 26 Sep 2018 11:09:04 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.1/flink-1.6.1-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.1/flink-1.6.1-bin-scala_2.11.tgz.asc
# Wed, 26 Sep 2018 11:09:04 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 26 Sep 2018 11:10:34 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 26 Sep 2018 11:10:34 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Wed, 26 Sep 2018 11:10:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Sep 2018 11:10:35 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 26 Sep 2018 11:10:35 GMT
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
	-	`sha256:699a54e7c63e203af6e71391a85aa6c049131a48a95afa2b0277454cca9632b0`  
		Last Modified: Wed, 26 Sep 2018 11:26:06 GMT  
		Size: 4.5 KB (4535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2733136b9f3ff8527406c16a79b6d806a038a9da5fcec4b21455909d4ffbddf3`  
		Last Modified: Wed, 26 Sep 2018 11:26:06 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c456e55b9e90dba65bd7dfe31d51b28868a25ac4aafbf50019db2c6e5ef6461d`  
		Last Modified: Wed, 26 Sep 2018 11:26:06 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dbabe79c2bc3f021ef8d081905f45fb86e0a3a4954f74e9e80aaee4f0fc2d51`  
		Last Modified: Wed, 26 Sep 2018 11:26:26 GMT  
		Size: 265.5 MB (265543014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4151051a780802baf14c5b21ee6efc2450ad5d816b8ad41799cfedc1412a9c7`  
		Last Modified: Wed, 26 Sep 2018 11:26:06 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

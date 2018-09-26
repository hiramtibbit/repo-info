## `flink:scala_2.11`

```console
$ docker pull flink@sha256:a348fb586453be215239bbb925e39117294f66ac36568b4a10c9f6562558e3b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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

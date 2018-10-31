## `flink:hadoop27`

```console
$ docker pull flink@sha256:fdd0af19cb5d6362e546d45f6f35d25b5666cc4b3b025d808d373e144beed262
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `flink:hadoop27` - linux; amd64

```console
$ docker pull flink@sha256:449cb9e74141ea07e2d391a6fb805e4d63d5a0bf0cdabca3652cc3474130eaaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.3 MB (487301915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b25b636d40f7d6b577789755c6b07fa7481e66593337a045dca9c27cc2bdcef9`
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
# Mon, 29 Oct 2018 23:30:29 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:30:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:31:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:31:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 05:50:07 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 30 Oct 2018 05:50:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Oct 2018 05:50:10 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 31 Oct 2018 00:35:00 GMT
ENV FLINK_VERSION=1.6.2 HADOOP_SCALA_VARIANT=hadoop27-scala_2.11
# Wed, 31 Oct 2018 00:35:00 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 31 Oct 2018 00:35:00 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 00:35:01 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 31 Oct 2018 00:35:01 GMT
WORKDIR /opt/flink
# Wed, 31 Oct 2018 00:35:01 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.2/flink-1.6.2-bin-hadoop27-scala_2.11.tgz
# Wed, 31 Oct 2018 00:35:01 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.2/flink-1.6.2-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.2/flink-1.6.2-bin-hadoop27-scala_2.11.tgz.asc
# Wed, 31 Oct 2018 00:35:02 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 31 Oct 2018 00:35:17 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 31 Oct 2018 00:35:17 GMT
COPY file:15d049520a883d1b2d6ad6d561d06e3024278246670c49143dfdd98a0057a86a in / 
# Wed, 31 Oct 2018 00:35:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Oct 2018 00:35:18 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 31 Oct 2018 00:35:18 GMT
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
	-	`sha256:3ca5d6af9022c9c3b436792a01c58dd29490430d28b04f70385f308e3bdae8a6`  
		Last Modified: Mon, 29 Oct 2018 23:40:07 GMT  
		Size: 122.1 MB (122121999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06cfa2cea32b36c8f5dcc8605166d1f8b72cf02e44163dbf7d14e0379286b55`  
		Last Modified: Mon, 29 Oct 2018 23:39:44 GMT  
		Size: 246.7 KB (246728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935f764778d3bf0f99cddff793fc73b5e9fab10d659f95b407038bfdaba98dc3`  
		Last Modified: Wed, 31 Oct 2018 00:42:53 GMT  
		Size: 466.3 KB (466308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b8dca7cebc71748cf9481adacec0642e91119822d93fc73827e0a66a6f3733`  
		Last Modified: Wed, 31 Oct 2018 00:42:54 GMT  
		Size: 819.2 KB (819185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5cc871ad344a3129e9ca7f8feaa5f3cc08b22858e6ac1e7fb0a737a972af47`  
		Last Modified: Wed, 31 Oct 2018 00:56:08 GMT  
		Size: 4.6 KB (4611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20bc27f84bbac82e1ca035a7c2f9f37c3a42cb1807e0dfc175a04b87be0d34df`  
		Last Modified: Wed, 31 Oct 2018 00:56:08 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bbe18ce2edaf08c9cd3fb6c089f690c99121d86a1d197fc59cb8fa25dd0f621`  
		Last Modified: Wed, 31 Oct 2018 00:56:08 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e837ee72fe3e9119ace37569b5c0a8262fd7a230137a95e735d6137bc34f8fbb`  
		Last Modified: Wed, 31 Oct 2018 00:56:31 GMT  
		Size: 302.3 MB (302343253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724d0d8cc331bb1be0700a61f366e546bfd8b556242043502355858b0ae353e6`  
		Last Modified: Wed, 31 Oct 2018 00:56:09 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27` - linux; arm variant v5

```console
$ docker pull flink@sha256:20df29d7104903236176b402175d208b697ead9cc9c3a57035737c704520e439
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.7 MB (474650219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7041c0bef07ce2e3127d040ca55ca35d48bde9254ed5376f929a36d279c7802`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:59 GMT
ADD file:9400a194c6dcf24f439664aab3a28cb7dbf93753b71d2756dbaf872d294fbb8e in / 
# Tue, 16 Oct 2018 08:55:00 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:00:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:00:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:47:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 12:47:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 12:47:31 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 12:47:32 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 10:04:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 10:04:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 10:05:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 10:06:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 09:46:18 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 31 Oct 2018 09:46:22 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Oct 2018 09:46:26 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 31 Oct 2018 09:59:05 GMT
ENV FLINK_VERSION=1.6.2 HADOOP_SCALA_VARIANT=hadoop27-scala_2.11
# Wed, 31 Oct 2018 09:59:05 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 31 Oct 2018 09:59:06 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 09:59:07 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 31 Oct 2018 09:59:07 GMT
WORKDIR /opt/flink
# Wed, 31 Oct 2018 09:59:08 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.2/flink-1.6.2-bin-hadoop27-scala_2.11.tgz
# Wed, 31 Oct 2018 09:59:08 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.2/flink-1.6.2-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.2/flink-1.6.2-bin-hadoop27-scala_2.11.tgz.asc
# Wed, 31 Oct 2018 09:59:09 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 31 Oct 2018 10:00:50 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 31 Oct 2018 10:00:51 GMT
COPY file:15d049520a883d1b2d6ad6d561d06e3024278246670c49143dfdd98a0057a86a in / 
# Wed, 31 Oct 2018 10:00:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Oct 2018 10:00:52 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 31 Oct 2018 10:00:52 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:67cd7720dfa3de15234643bf308008813fd129e03429f026775738064b364e24`  
		Last Modified: Tue, 16 Oct 2018 09:04:05 GMT  
		Size: 44.0 MB (44033067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd276b766fa97ab74e113c92ed57093015cfc9c9030be8ba22b5e752cd8e8877`  
		Last Modified: Tue, 16 Oct 2018 10:09:36 GMT  
		Size: 9.8 MB (9810396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b000ac5a1a22a2dea4538586726677f91c42079cf289a8eb88fdf9c65fda7f6`  
		Last Modified: Tue, 16 Oct 2018 10:09:35 GMT  
		Size: 4.2 MB (4153754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cbc8dc4eb12ea31f2f137322dcd35e379750d13318d6521d7d557989a9c73e`  
		Last Modified: Tue, 16 Oct 2018 12:56:57 GMT  
		Size: 845.9 KB (845906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a97950afff8d9b7263a96992060b43bf115f908bd1f262de6f93c0418cc9817`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693401423272c67e47e2c164426ccd8a7f7c84c1aaa9ccf0db49f23cf10ece20`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa4cd8ea842cbf55631460424eebe375e8955fa33375ba756948f3200aa260b`  
		Last Modified: Wed, 31 Oct 2018 09:18:50 GMT  
		Size: 111.9 MB (111907574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2f5878cb92f7b7cabd53ba68c69652be468fe7e00b7a82ecff33496f1357c7`  
		Last Modified: Wed, 31 Oct 2018 09:18:21 GMT  
		Size: 246.7 KB (246748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7106cd2c8f03cdc5a2116008c391001bf6186da108f2030718e63656cdf77f0`  
		Last Modified: Wed, 31 Oct 2018 10:06:37 GMT  
		Size: 466.3 KB (466316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf0c0e249520d461a26d585a99bb728d7469e0d11c048306be8ce003ac4e838e`  
		Last Modified: Wed, 31 Oct 2018 10:06:37 GMT  
		Size: 777.7 KB (777666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9680e787189035be6a17e1f1e1ac4f3add561faf74b980b25d1bc60893be3f26`  
		Last Modified: Wed, 31 Oct 2018 10:15:38 GMT  
		Size: 4.5 KB (4536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c34131aaabd09e69f4a05da69f5809f02f88e734f8d6e131ec6a5a9c13b6396`  
		Last Modified: Wed, 31 Oct 2018 10:15:38 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfbd6aa5190fc22051b7b25c441ac8c38db7ea7c2dbfe6ca86ed1c84936726f7`  
		Last Modified: Wed, 31 Oct 2018 10:15:38 GMT  
		Size: 59.3 KB (59337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5a4be0e7ee23224d879bacecd8f1d3abb40362498d79e058aefa5ce0715708`  
		Last Modified: Wed, 31 Oct 2018 10:16:13 GMT  
		Size: 302.3 MB (302343290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f85b62a65ca9fda0c105b18fe101169dbb4658e49f91f60079c634a1a37dbd`  
		Last Modified: Wed, 31 Oct 2018 10:15:38 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:abec2d79cbae686365e797ffdaa7689cda24130e776390ab90108856ba633cd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.4 MB (474382086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df351e94e7303da18ac1ba90629203ab85704c974dfb6e91660bf23919a59c8e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 22:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:09:34 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 22:09:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 22:09:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 22:09:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 22:09:44 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:07:32 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:07:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:13:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:13:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 13:59:05 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 30 Oct 2018 13:59:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Oct 2018 13:59:16 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 31 Oct 2018 09:11:15 GMT
ENV FLINK_VERSION=1.6.2 HADOOP_SCALA_VARIANT=hadoop27-scala_2.11
# Wed, 31 Oct 2018 09:11:17 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 31 Oct 2018 09:11:18 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 09:11:20 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 31 Oct 2018 09:11:24 GMT
WORKDIR /opt/flink
# Wed, 31 Oct 2018 09:11:25 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.2/flink-1.6.2-bin-hadoop27-scala_2.11.tgz
# Wed, 31 Oct 2018 09:11:25 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.2/flink-1.6.2-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.2/flink-1.6.2-bin-hadoop27-scala_2.11.tgz.asc
# Wed, 31 Oct 2018 09:11:26 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 31 Oct 2018 09:13:30 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 31 Oct 2018 09:13:31 GMT
COPY file:15d049520a883d1b2d6ad6d561d06e3024278246670c49143dfdd98a0057a86a in / 
# Wed, 31 Oct 2018 09:13:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Oct 2018 09:13:33 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 31 Oct 2018 09:13:33 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec37afe1ce9c80cab1c8fdc0d193c9f92f61adf7c60d6bdbc2b01735eac25b6`  
		Last Modified: Tue, 16 Oct 2018 22:27:18 GMT  
		Size: 839.2 KB (839157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776d8d23f1b98b1595b31f6da89774c22c62b8aaebfd909efc61ceb1ed261422`  
		Last Modified: Tue, 16 Oct 2018 22:27:15 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0423ae79bd292339ac64d511157cd27daa8549a458b0458dc17973fbee24f728`  
		Last Modified: Tue, 16 Oct 2018 22:27:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f621179e148c9684831eb304357c88f80f0b271af7ed9ca445ab04fbb1290f`  
		Last Modified: Tue, 30 Oct 2018 09:25:17 GMT  
		Size: 112.8 MB (112753824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65fac7cd4cedf9a714652ad15dccbc910e8c233062e70e577ceda149579218bd`  
		Last Modified: Tue, 30 Oct 2018 09:24:14 GMT  
		Size: 246.7 KB (246684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52e9e92704bde7a9d9ed27ae23d8e7cff26f1aeff6f9ae765205331ae62c62f`  
		Last Modified: Wed, 31 Oct 2018 09:34:05 GMT  
		Size: 466.8 KB (466773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2825e7309eac74cf2fdd7f9fad067935502e9269de2407879ed91de012c03559`  
		Last Modified: Wed, 31 Oct 2018 09:34:05 GMT  
		Size: 764.4 KB (764412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4368072402ce5614e0adbec0074a1a6641f4438b47671da4b7a47fba155209a`  
		Last Modified: Wed, 31 Oct 2018 09:51:56 GMT  
		Size: 4.7 KB (4652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc32d8156b2ee8e78657ef3d753b5ba28c4cd65da9df6d108636dbbe28feb5e`  
		Last Modified: Wed, 31 Oct 2018 09:51:56 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09632cd1e4d9dec8b03b3e813ebaa1d257ec77b15248c6cb70e59b3a9c8b4b99`  
		Last Modified: Wed, 31 Oct 2018 09:51:56 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de9740598ca0edd5ec8f3239765c1e08a4c90be8a3ef32b9202cf15ab43a8ce`  
		Last Modified: Wed, 31 Oct 2018 09:52:38 GMT  
		Size: 302.3 MB (302343252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b24cc25fd8651598a17083126e4365293d5a884f9034c182504f0076eeb4e45`  
		Last Modified: Wed, 31 Oct 2018 09:51:56 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27` - linux; ppc64le

```console
$ docker pull flink@sha256:c545dcab799a8f6b35e9e45c37113ba395ad7f8e6c5c3bca7b620d4610cfa9ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **479.1 MB (479116528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc014de9cd4085f462f2d392025ac95e23388aac9557e6f23c8736621a4e1e4`
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
# Tue, 30 Oct 2018 09:43:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:43:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:47:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:47:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 08:18:22 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 31 Oct 2018 08:18:23 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Oct 2018 08:18:33 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 31 Oct 2018 08:50:02 GMT
ENV FLINK_VERSION=1.6.2 HADOOP_SCALA_VARIANT=hadoop27-scala_2.11
# Wed, 31 Oct 2018 08:50:03 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 31 Oct 2018 08:50:04 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 08:50:08 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 31 Oct 2018 08:50:08 GMT
WORKDIR /opt/flink
# Wed, 31 Oct 2018 08:50:09 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.2/flink-1.6.2-bin-hadoop27-scala_2.11.tgz
# Wed, 31 Oct 2018 08:50:11 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.2/flink-1.6.2-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.2/flink-1.6.2-bin-hadoop27-scala_2.11.tgz.asc
# Wed, 31 Oct 2018 08:50:12 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 31 Oct 2018 08:51:06 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 31 Oct 2018 08:51:07 GMT
COPY file:15d049520a883d1b2d6ad6d561d06e3024278246670c49143dfdd98a0057a86a in / 
# Wed, 31 Oct 2018 08:51:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Oct 2018 08:51:09 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 31 Oct 2018 08:51:09 GMT
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
	-	`sha256:050d1332dd2b829ac78cf297c3c9b062cb9f00311fcf7c43022310fe8737e3e2`  
		Last Modified: Wed, 31 Oct 2018 08:20:04 GMT  
		Size: 114.5 MB (114548674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2385b91212622165daaa25696049c403a6a3c312ae1e51388f930ff39a7956`  
		Last Modified: Wed, 31 Oct 2018 08:19:30 GMT  
		Size: 246.8 KB (246772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da3220810d064d9880020f9d08984526204f876a7f2ef8294007e38a8484599`  
		Last Modified: Wed, 31 Oct 2018 09:12:06 GMT  
		Size: 468.2 KB (468203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c975688b89f7e94298a9a108d4548582f93ae8bc7cf90a15a9cd39b263f25ae`  
		Last Modified: Wed, 31 Oct 2018 09:12:06 GMT  
		Size: 767.0 KB (767003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a164b7828036bd1dad9c2d440cfa6f2a2a605a84e991bff4b66310d882e55d`  
		Last Modified: Wed, 31 Oct 2018 09:27:11 GMT  
		Size: 4.6 KB (4619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d37c7e89625101754e5cd97698edb2453d4f43fb76ee1504fe0c15192651e22`  
		Last Modified: Wed, 31 Oct 2018 09:05:10 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f831c02025d7780d785e4efa99c505fbee15095d3021d26143b6ea8820353548`  
		Last Modified: Wed, 31 Oct 2018 09:27:11 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a31b059a12f015681fbec7beb9d13e4123b3ab6c928bc20afafa8cfb81eaad5`  
		Last Modified: Wed, 31 Oct 2018 09:27:45 GMT  
		Size: 302.3 MB (302343293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c99b68f047e934b897cb9606d0f9d5a1aa99d4160818cf9a294094a332efa8`  
		Last Modified: Wed, 31 Oct 2018 09:27:11 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

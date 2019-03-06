## `flink:hadoop28`

```console
$ docker pull flink@sha256:f79a5c3b9622567e9c1bddae9d9815f906c7d577be04a39cfb1a2a0a5fa479cd
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
$ docker pull flink@sha256:396e15169b606b6104e72f55fea78d681cfa0e17926ef77a1c9b65a880fb3992
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **475.9 MB (475881611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89202146bd0db37b9cb65cfb803fafe67627e49bcf31032ab3f19ce525e09470`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 04:01:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:04:52 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:04:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:04:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:04:53 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 04:04:53 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:04:54 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:05:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 12:45:41 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:45:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 05 Mar 2019 12:45:45 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 05 Mar 2019 12:56:10 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12
# Tue, 05 Mar 2019 12:56:10 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 05 Mar 2019 12:56:10 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 12:56:12 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 05 Mar 2019 12:56:13 GMT
WORKDIR /opt/flink
# Tue, 05 Mar 2019 12:56:13 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz
# Tue, 05 Mar 2019 12:56:13 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz.asc
# Tue, 05 Mar 2019 12:56:14 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Tue, 05 Mar 2019 12:56:41 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 05 Mar 2019 12:56:42 GMT
COPY file:82b73e728dc4710cf6b0b2a4c3b0e39f061e57bb5a799dfaca9133014e5d2c63 in / 
# Tue, 05 Mar 2019 12:56:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 12:56:42 GMT
EXPOSE 6123 8081
# Tue, 05 Mar 2019 12:56:43 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afad9c4aba6cc6f5b4e85b14e0a16c4807fdcc8a5e4c43a532d6aa06f5d5664`  
		Last Modified: Tue, 05 Mar 2019 04:25:25 GMT  
		Size: 852.9 KB (852890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12fce9923c9d837e515d3de06b77d97a5a0c4796a35a97cf9a6768641ea25a8c`  
		Last Modified: Tue, 05 Mar 2019 04:27:32 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd81083d77ea06270e287c0fb5be2ab4daf9003518745fbdc4f2e55d2635db0`  
		Last Modified: Tue, 05 Mar 2019 04:27:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2afc6ff72dd12b78d094cdbc7e04f6285e599f8a03d6cc1e935aee96b176c1`  
		Last Modified: Tue, 05 Mar 2019 04:27:58 GMT  
		Size: 122.1 MB (122122910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5734282084e7e44b26068a8d426a27a82f1a3a045d75486e389cdc3a19b0855c`  
		Last Modified: Tue, 05 Mar 2019 13:00:04 GMT  
		Size: 466.5 KB (466489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65ad42c6e9a32b9e4a1b32f1cf76ed17c94edbb75b9c878a30c1d4cc7fcacb3`  
		Last Modified: Tue, 05 Mar 2019 13:00:04 GMT  
		Size: 819.2 KB (819185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa81ee873a25b3337fc6eb44d1fe0f3660783cd22a99b38dd2714cc095bc390d`  
		Last Modified: Tue, 05 Mar 2019 13:07:17 GMT  
		Size: 4.6 KB (4610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f323d626ebd2d9fda9166e0d4279e717cd9c7405924575980e445797f3a21fd2`  
		Last Modified: Tue, 05 Mar 2019 13:07:17 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ff2457fcfdc666da5646d119e79575f238da947c7f0b37fd512a1a52d2e83c`  
		Last Modified: Tue, 05 Mar 2019 13:07:17 GMT  
		Size: 61.6 KB (61619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f21bd298174d492d0ae0bfdac7ca00fd0f903fafba08b6be9c59e3b6e23fbaa`  
		Last Modified: Tue, 05 Mar 2019 13:07:53 GMT  
		Size: 291.1 MB (291087641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7734a2bdfa12ecf66b84814352f0df8d80d0d7373bf2b44bc06173ad99f16cf`  
		Last Modified: Tue, 05 Mar 2019 13:07:17 GMT  
		Size: 1.1 KB (1140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28` - linux; arm variant v5

```console
$ docker pull flink@sha256:fcb74f30b236f2a3c08b54406c7d475dbbfa069cb5073dc50694ec4554ea1ede
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.2 MB (463190440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e67f03be3b6df82e7b2de4a949f72b38d3756608adcec03e9f17226420b48e75`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 05 Mar 2019 09:54:45 GMT
ADD file:0d24c375e856f1e75f5cb0a6766b22665902b1a6940a87d2c7fc0e61f658e944 in / 
# Tue, 05 Mar 2019 09:54:46 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:33:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:33:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 11:17:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:23:41 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 11:23:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 11:23:44 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 11:23:44 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 11:23:44 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 11:23:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 11:24:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 15:28:51 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:28:52 GMT
ENV GOSU_VERSION=1.7
# Tue, 05 Mar 2019 15:28:57 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 05 Mar 2019 15:53:06 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12
# Tue, 05 Mar 2019 15:53:07 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 05 Mar 2019 15:53:07 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 15:53:09 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 05 Mar 2019 15:53:10 GMT
WORKDIR /opt/flink
# Tue, 05 Mar 2019 15:53:10 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz
# Tue, 05 Mar 2019 15:53:11 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz.asc
# Tue, 05 Mar 2019 15:53:11 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Tue, 05 Mar 2019 15:53:53 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 05 Mar 2019 15:53:57 GMT
COPY file:82b73e728dc4710cf6b0b2a4c3b0e39f061e57bb5a799dfaca9133014e5d2c63 in / 
# Tue, 05 Mar 2019 15:53:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 15:53:59 GMT
EXPOSE 6123 8081
# Tue, 05 Mar 2019 15:53:59 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:35963a726ee5d52a496a31b3c1f6accaf90ad61bf0e1e0bd8aad2cf66ab8cdb3`  
		Last Modified: Tue, 05 Mar 2019 10:02:26 GMT  
		Size: 44.0 MB (44029811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:088a52eee835f09abb5e08bfd27b8cf0960dbcd0d3f28aa0e602654df58ce922`  
		Last Modified: Tue, 05 Mar 2019 10:43:14 GMT  
		Size: 9.9 MB (9851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2616673f78baa6ea1b22951cb4a50ea0c9db5f109d098f00b5bf86b3e29a7b51`  
		Last Modified: Tue, 05 Mar 2019 10:43:12 GMT  
		Size: 4.2 MB (4158962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29e62902178d17f798c00d2c12d1ce2afa56979e692b609138a6d0fce78bfbe`  
		Last Modified: Tue, 05 Mar 2019 11:39:23 GMT  
		Size: 845.9 KB (845894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03a6663d62bc5229d655bf4f7e0c3815777f64ca218883147d22f092e3145a3`  
		Last Modified: Tue, 05 Mar 2019 11:42:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1b5ca803bdccd60e3da135efe557f76540bfd75a3729a8c5c5a2435ce61003`  
		Last Modified: Tue, 05 Mar 2019 11:42:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af12fca2f0cbf9e602cd9ce86cb8e0379da77a659fd11b75d046265630cbc56`  
		Last Modified: Tue, 05 Mar 2019 11:42:34 GMT  
		Size: 111.9 MB (111904104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01a6fa2f532a2dcfae202e4dcb4a4048b6d88853b7201cc6b67c333dff856ba`  
		Last Modified: Tue, 05 Mar 2019 16:00:08 GMT  
		Size: 466.4 KB (466415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ba04d1839c32eea6a2e0f1db47ede01f701a37abd02eab9d71f0ba3ec06545b`  
		Last Modified: Tue, 05 Mar 2019 16:00:08 GMT  
		Size: 777.7 KB (777670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989d84dc2bcc581634c861b359b72636eb4514a9c7058d49288332cb5f74592`  
		Last Modified: Tue, 05 Mar 2019 16:09:36 GMT  
		Size: 4.5 KB (4533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2094e62198594a2fa6515aba6209984aec6decba35df57ae68a5078b7b4e207b`  
		Last Modified: Tue, 05 Mar 2019 16:09:36 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f15af46a3993f0e87d3f588032910abff14acbce53f921988241cb9482a9f6`  
		Last Modified: Tue, 05 Mar 2019 16:09:36 GMT  
		Size: 61.6 KB (61619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e234dd0694e53e34a19cab057ad3388638bc5cb659253ab0070ade723ae2876`  
		Last Modified: Tue, 05 Mar 2019 16:10:22 GMT  
		Size: 291.1 MB (291087811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841052d6ee6c9ad578221b46de72dca4b03c4052737c084931698ba22ba5c76b`  
		Last Modified: Tue, 05 Mar 2019 16:09:36 GMT  
		Size: 1.1 KB (1140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28` - linux; arm variant v7

```console
$ docker pull flink@sha256:0e951770f35351cf51b8ae0d3bbf647eec2409e07e6d9fc64c9f97f2c9ae335a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.0 MB (458951612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7abe47f47389781d0128dd6d73cbdf4e2f3776ddbde94caf6488761651805888`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 05 Mar 2019 13:10:34 GMT
ADD file:8f0ec0cbcef5902fe5ef35892898a19e6c61f5c422ac3d47500d42067ad7fef8 in / 
# Tue, 05 Mar 2019 13:10:35 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:50:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:50:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 14:23:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:27:02 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 14:27:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 14:27:05 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 14:27:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 14:27:06 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 14:27:07 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 14:28:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 17:40:06 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 17:40:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 05 Mar 2019 17:40:12 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 05 Mar 2019 17:56:13 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12
# Tue, 05 Mar 2019 17:56:14 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 05 Mar 2019 17:56:14 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 17:56:16 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 05 Mar 2019 17:56:17 GMT
WORKDIR /opt/flink
# Tue, 05 Mar 2019 17:56:17 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz
# Tue, 05 Mar 2019 17:56:18 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz.asc
# Tue, 05 Mar 2019 17:56:18 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Tue, 05 Mar 2019 17:57:10 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 05 Mar 2019 17:57:13 GMT
COPY file:82b73e728dc4710cf6b0b2a4c3b0e39f061e57bb5a799dfaca9133014e5d2c63 in / 
# Tue, 05 Mar 2019 17:57:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:57:14 GMT
EXPOSE 6123 8081
# Tue, 05 Mar 2019 17:57:14 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:ec43a77fdcf3d8df75738e0d3bec016f01ad00db637d5e43eee90aa67114e127`  
		Last Modified: Tue, 05 Mar 2019 13:18:22 GMT  
		Size: 42.1 MB (42075119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0128678cc4b40c9bb1ec7b0fa116a9208fd54d9337636244f099bbfedc9ca0`  
		Last Modified: Tue, 05 Mar 2019 14:02:58 GMT  
		Size: 9.5 MB (9483576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b2e6712f412bb77d3968e5923bc8e9a94c1e8cdf8885e330ba02209eb30333`  
		Last Modified: Tue, 05 Mar 2019 14:02:56 GMT  
		Size: 3.9 MB (3918633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3e27c925bbcf3bfdb87e8ada386662c36463b6a3e0ad177d9929165991eb81`  
		Last Modified: Tue, 05 Mar 2019 14:41:41 GMT  
		Size: 830.3 KB (830260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ed6ab30ee336646adef073ab59f86cf414e1cda0e1a8b4738580f02c9c647d`  
		Last Modified: Tue, 05 Mar 2019 14:41:41 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3194d62d1cc31512719126c58f402c41d67eba3f27ea1853c8222bc626d032a`  
		Last Modified: Tue, 05 Mar 2019 14:41:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bfb1fecf803c2846f8e3ec203d16d1207738be28e714ab71ca7dee31381f331`  
		Last Modified: Tue, 05 Mar 2019 14:42:11 GMT  
		Size: 110.3 MB (110262430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b54cad59e7fc5ec4467b8de6981e8eb19b45cf6216cdb9a80a425e3ea5a8037`  
		Last Modified: Tue, 05 Mar 2019 18:00:28 GMT  
		Size: 464.1 KB (464084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c594d54ace142ed141c3752fd86ec16c68ebdfe32dd1acdd528244e0a0d4bb3`  
		Last Modified: Tue, 05 Mar 2019 18:00:28 GMT  
		Size: 761.9 KB (761882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cd0da6a27828be80c7ac01fceef43fd6f2183b76242d8d88918962b1009cbd`  
		Last Modified: Tue, 05 Mar 2019 18:10:49 GMT  
		Size: 4.5 KB (4533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56cae3cf64619044b449948f4c27d674fa230e9d6c0f22e6aed8a78a662a0892`  
		Last Modified: Tue, 05 Mar 2019 18:10:49 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dee973a9dde4cde3cdfd356cbcc6aec3e56f1d331508937f25e7c7ada9d4bd3`  
		Last Modified: Tue, 05 Mar 2019 18:10:49 GMT  
		Size: 61.6 KB (61619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b96b8ec50806a2600fe08cbf4d0c22550c837218b4b78ad722871c856b333584`  
		Last Modified: Tue, 05 Mar 2019 18:11:26 GMT  
		Size: 291.1 MB (291087811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a508719c5c2418040e0b111a9be0ae35bf6f0aae1161eb3d7727f53ddacb8f83`  
		Last Modified: Tue, 05 Mar 2019 18:10:49 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:950ea507ae7662465d8023495befee8f05fae44e4e406c6723c6795f2c8a9546
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **462.9 MB (462939231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:428abeda19d26583d605ece85b607c92c711596c8ba836e8a01f8ba2960eb5cf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:31:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:32:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 12:15:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:24:30 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:24:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 12:24:39 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 12:24:40 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 12:24:41 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 12:24:42 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 12:32:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 21:52:50 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 21:52:51 GMT
ENV GOSU_VERSION=1.7
# Tue, 05 Mar 2019 21:52:58 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 05 Mar 2019 22:13:50 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12
# Tue, 05 Mar 2019 22:13:51 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 05 Mar 2019 22:13:52 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 22:14:00 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 05 Mar 2019 22:14:01 GMT
WORKDIR /opt/flink
# Tue, 05 Mar 2019 22:14:02 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz
# Tue, 05 Mar 2019 22:14:08 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz.asc
# Tue, 05 Mar 2019 22:14:09 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Tue, 05 Mar 2019 22:15:06 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 05 Mar 2019 22:15:07 GMT
COPY file:82b73e728dc4710cf6b0b2a4c3b0e39f061e57bb5a799dfaca9133014e5d2c63 in / 
# Tue, 05 Mar 2019 22:15:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 22:15:09 GMT
EXPOSE 6123 8081
# Tue, 05 Mar 2019 22:15:11 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a498920bfeb2353594e13055200f3227c4992da6fb9617197ee55ebd4a723c`  
		Last Modified: Tue, 05 Mar 2019 11:46:32 GMT  
		Size: 9.7 MB (9730480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb8191548b27dfce511beab0eb0f4a401e160544b2f893ba98c3dc794636c53`  
		Last Modified: Tue, 05 Mar 2019 11:46:30 GMT  
		Size: 4.1 MB (4094079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731a0d1b7415b24abb16c24f00099d883fa36488d898413e7c73f39fe50bfe34`  
		Last Modified: Tue, 05 Mar 2019 12:35:34 GMT  
		Size: 839.2 KB (839191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3735a2876d9209ff54425bdc0c742931ec8a92938633dbaa7e7a0dca40bd56a8`  
		Last Modified: Tue, 05 Mar 2019 12:38:16 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e943fcddc68904e0c5ad4bf64275828a609a9c312e623cdec73b46c7d2faca0`  
		Last Modified: Tue, 05 Mar 2019 12:38:16 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61a299f8e825e4298239e9e3ebb3115084c70faf9e96308000afdd2c22dda7a`  
		Last Modified: Tue, 05 Mar 2019 12:38:50 GMT  
		Size: 112.8 MB (112756662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f966584a55b3266b13d6296e1b68668d4f2564efb063de940af7b472520acfa`  
		Last Modified: Tue, 05 Mar 2019 22:22:33 GMT  
		Size: 467.1 KB (467080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d17bbd7806bb284a2029e22ff275329e45a43bc30d09ed75264afa20894213`  
		Last Modified: Tue, 05 Mar 2019 22:22:31 GMT  
		Size: 764.4 KB (764414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e07f4af78699e53d7e1fa24d847a3aa225efe6c65a7a37cd66e712adb857156`  
		Last Modified: Tue, 05 Mar 2019 22:39:43 GMT  
		Size: 4.7 KB (4656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450f9f88b7facf37406e33591a2c09915a7a5b6941e44840eac42bfeb2c2d6ce`  
		Last Modified: Tue, 05 Mar 2019 22:39:43 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167038bc51824992d3ad1f3f38a24259d8467173cfbe4610e8a5850a45709028`  
		Last Modified: Tue, 05 Mar 2019 22:39:43 GMT  
		Size: 61.6 KB (61619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5c72d444a85451418baf5d07437f426df0698a897eb44f2009d1d29a1ccf2f`  
		Last Modified: Tue, 05 Mar 2019 22:40:24 GMT  
		Size: 291.1 MB (291087562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d08c1e8b4e083d44d465bb2ed120e5cb0b298256463d70badb639a8b90237f`  
		Last Modified: Tue, 05 Mar 2019 22:39:43 GMT  
		Size: 1.1 KB (1140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28` - linux; 386

```console
$ docker pull flink@sha256:b70abc5a96594157295ff1b93dec1e77b67075b7780b9dbfcc58205e889a6288
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **477.3 MB (477304097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40bd7d9d142f8848501d655b4ece1e2e0a8889d5160f852c029cb4ae48aa83d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:21 GMT
ADD file:8ba178590335bfae47e507ed2dac195379232d7a419502dbb643ed765eeda051 in / 
# Tue, 05 Mar 2019 11:45:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 21:10:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 21:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Mar 2019 03:20:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Mar 2019 03:22:00 GMT
ENV LANG=C.UTF-8
# Wed, 06 Mar 2019 03:22:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Mar 2019 03:22:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Mar 2019 03:22:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Mar 2019 03:22:01 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Mar 2019 03:22:02 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Mar 2019 03:22:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Mar 2019 05:31:00 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 06 Mar 2019 05:31:00 GMT
ENV GOSU_VERSION=1.7
# Wed, 06 Mar 2019 05:31:03 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 06 Mar 2019 05:40:23 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12
# Wed, 06 Mar 2019 05:40:23 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 06 Mar 2019 05:40:23 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Mar 2019 05:40:24 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 06 Mar 2019 05:40:24 GMT
WORKDIR /opt/flink
# Wed, 06 Mar 2019 05:40:24 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz
# Wed, 06 Mar 2019 05:40:25 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz.asc
# Wed, 06 Mar 2019 05:40:25 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Wed, 06 Mar 2019 05:40:42 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 06 Mar 2019 05:40:42 GMT
COPY file:82b73e728dc4710cf6b0b2a4c3b0e39f061e57bb5a799dfaca9133014e5d2c63 in / 
# Wed, 06 Mar 2019 05:40:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Mar 2019 05:40:42 GMT
EXPOSE 6123 8081
# Wed, 06 Mar 2019 05:40:42 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:8672e33776e7a43de892193a6f53164416d0b0a3dcbb0f96c502e1d15a4dcbff`  
		Last Modified: Tue, 05 Mar 2019 11:54:52 GMT  
		Size: 46.1 MB (46064419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b807c0af5dc527d2f1018efa95b7573661bf01032b2f5222491fe79808b0506`  
		Last Modified: Tue, 05 Mar 2019 21:17:53 GMT  
		Size: 10.8 MB (10800084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d3bd1a7499ccab64de6a026e2c5b5465baf4766b3e0141dbbed1763fa33f8a`  
		Last Modified: Tue, 05 Mar 2019 21:17:52 GMT  
		Size: 4.6 MB (4561396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fcdc06e47582f94a8425bc2326c471c2ef7190e302f611ee3b1eaa2418442a4`  
		Last Modified: Wed, 06 Mar 2019 03:37:13 GMT  
		Size: 861.8 KB (861777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2985cdd19561112211de22906c811a917d44105968f2818b87108e35472a34`  
		Last Modified: Wed, 06 Mar 2019 03:38:23 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f39d678bc6cc9ec5813e6ea537a5c6d47c8c093100cae505f3a85d9d4aa1d0`  
		Last Modified: Wed, 06 Mar 2019 03:38:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b7be2792e692768035fcaebec32231f6b3a825b0ce5f22906e61eb00003d7f`  
		Last Modified: Wed, 06 Mar 2019 03:38:46 GMT  
		Size: 122.6 MB (122610345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac922880294a9739195ad29dfb8cf5dc27960f732e624c9cbf5c6880ee9335f`  
		Last Modified: Wed, 06 Mar 2019 05:42:49 GMT  
		Size: 467.6 KB (467591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f9e46362d97b60c04bcd0b3b7854d1040c2dc01a77b1b894bcea128d28aa7f`  
		Last Modified: Wed, 06 Mar 2019 05:42:49 GMT  
		Size: 783.1 KB (783095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a72aad29d84b618934ee134d7e11bc1c939dc8e1b0e81b0123b87118e865968`  
		Last Modified: Wed, 06 Mar 2019 05:48:29 GMT  
		Size: 4.5 KB (4531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa5184174db5503d92f4e7333f4afdd6eaf15f50146444964ed060ee1923e85`  
		Last Modified: Wed, 06 Mar 2019 05:48:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c98bf40ab66c1fcc98f35387dfbb736591ee287abd60f7285101345bc6f072a`  
		Last Modified: Wed, 06 Mar 2019 05:48:29 GMT  
		Size: 61.6 KB (61619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e177c8c84ac26c332de7dbab06c7b2bd9e412efafc72e3d81301dc96b12d0645`  
		Last Modified: Wed, 06 Mar 2019 05:48:50 GMT  
		Size: 291.1 MB (291087609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ca6ebbefa6fe9a139380ed6d2a01d95283438198d3bd21e6342e9894c5b9b6`  
		Last Modified: Wed, 06 Mar 2019 05:48:29 GMT  
		Size: 1.1 KB (1140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28` - linux; ppc64le

```console
$ docker pull flink@sha256:847adf3e6e681d2ef429d6f3b36b9cea60cc804499ae6dc0a821d87f1ab9444c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **467.7 MB (467683635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d3a844548b278605a634f1d9c7c12541049c99c8c5cfc7caaf58cf2de68eac2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:21 GMT
ADD file:de4412e5af6632fda966c01f23fa53ac051704c5c8c63511822bae29940abba1 in / 
# Tue, 05 Mar 2019 09:25:26 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:45:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:45:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 14:50:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:06:36 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 15:06:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 15:07:00 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 15:07:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 15:07:14 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 15:07:20 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 15:14:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 20:15:49 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 20:15:52 GMT
ENV GOSU_VERSION=1.7
# Tue, 05 Mar 2019 20:16:01 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 05 Mar 2019 20:54:41 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12
# Tue, 05 Mar 2019 20:54:43 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 05 Mar 2019 20:54:45 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 20:54:52 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 05 Mar 2019 20:54:54 GMT
WORKDIR /opt/flink
# Tue, 05 Mar 2019 20:54:57 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz
# Tue, 05 Mar 2019 20:55:01 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz.asc
# Tue, 05 Mar 2019 20:55:02 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Tue, 05 Mar 2019 20:58:24 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 05 Mar 2019 20:58:28 GMT
COPY file:82b73e728dc4710cf6b0b2a4c3b0e39f061e57bb5a799dfaca9133014e5d2c63 in / 
# Tue, 05 Mar 2019 20:58:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 20:58:34 GMT
EXPOSE 6123 8081
# Tue, 05 Mar 2019 20:58:37 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:b88be5fa0477b5e07410a4683e7f500619df6a2b1093565ef8b6c3ab2bc8bb0b`  
		Last Modified: Tue, 05 Mar 2019 09:31:30 GMT  
		Size: 45.6 MB (45610417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a668b08e3421d576c28b789bc0e8c0f7400f465503e936df3c1b880422b75bc`  
		Last Modified: Tue, 05 Mar 2019 13:02:52 GMT  
		Size: 10.0 MB (9988971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c800b04e42ea1197a3c9f6cc00c2763789101082fa94d89c8fdab3aa65aa17`  
		Last Modified: Tue, 05 Mar 2019 13:02:47 GMT  
		Size: 4.3 MB (4296530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea710e3bbdf5c3bb87ab3040c64ad44cafcd9122932eae10001bf075a81689ac`  
		Last Modified: Tue, 05 Mar 2019 15:22:10 GMT  
		Size: 848.4 KB (848424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198ac05734dbd066cfc1821e7dd0f6913172eb179fcc50f342890065c80659e9`  
		Last Modified: Tue, 05 Mar 2019 15:26:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5506d16119765c737319468439010475ca77885c8efd7fe9a89483dab826adc4`  
		Last Modified: Tue, 05 Mar 2019 15:26:01 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c575c8d2c5e0901d96195a03eec05494fabd604a3d995daa99e70d1431ba8e0c`  
		Last Modified: Tue, 05 Mar 2019 15:26:29 GMT  
		Size: 114.5 MB (114548127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db92f2b46f25054a74ad80f64d0ea9b4412a6650122d5cbdf3b7e6275c9f1665`  
		Last Modified: Tue, 05 Mar 2019 21:06:30 GMT  
		Size: 468.4 KB (468449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4652514ec06b9918a9f7b655c8309d7aa02a9ce1f0e33635e605782ec1398bfd`  
		Last Modified: Tue, 05 Mar 2019 21:06:30 GMT  
		Size: 767.0 KB (766998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6027b5f35e8ca510930885971d0a99dbe0596ae22ef3c0236458e85ea33cf2e`  
		Last Modified: Tue, 05 Mar 2019 21:15:59 GMT  
		Size: 4.6 KB (4615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11199d2b39659667fdbec39a1bc274d32230c1992e086fc1a5ab9bb454cfda3b`  
		Last Modified: Tue, 05 Mar 2019 21:15:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b870710601ad2340c7f274bebf3a3c7f010909047d666f6ecc49b533971bab8c`  
		Last Modified: Tue, 05 Mar 2019 21:15:59 GMT  
		Size: 61.6 KB (61621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbae22c01579da1c0a098adfa4decdbb42a0975cd6df1775d4a254076716fa3`  
		Last Modified: Tue, 05 Mar 2019 21:16:29 GMT  
		Size: 291.1 MB (291087813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f81b4894437d002be4d1959f1dac70e0170a588ed15b20e58356c04c81d787`  
		Last Modified: Tue, 05 Mar 2019 21:15:59 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

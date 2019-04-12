## `flink:scala_2.12`

```console
$ docker pull flink@sha256:d0bd68c9a5da88906f3e87901bfdeb7b003c4c2b3610c7f2924ae92e1dc2faa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `flink:scala_2.12` - linux; amd64

```console
$ docker pull flink@sha256:a2d8d09fdb580e18cda7276d457805b6507bcb70eaade2980cc7fdb41353d6c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.0 MB (471968377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86e5c1d7421c9719532a4d2b708cb076f751bf293f3f7782ec98bc3e7771fb50`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:41:59 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 00:41:59 GMT
ENV GOSU_VERSION=1.7
# Thu, 28 Mar 2019 00:42:03 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Fri, 12 Apr 2019 00:22:13 GMT
ENV FLINK_VERSION=1.8.0 HADOOP_SCALA_VARIANT=scala_2.12
# Fri, 12 Apr 2019 00:22:14 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 12 Apr 2019 00:22:14 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Apr 2019 00:22:15 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Fri, 12 Apr 2019 00:22:15 GMT
WORKDIR /opt/flink
# Fri, 12 Apr 2019 00:22:15 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz
# Fri, 12 Apr 2019 00:22:15 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz.asc
# Fri, 12 Apr 2019 00:22:16 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Fri, 12 Apr 2019 00:22:53 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Fri, 12 Apr 2019 00:22:54 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Fri, 12 Apr 2019 00:22:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 12 Apr 2019 00:22:54 GMT
EXPOSE 6123 8081
# Fri, 12 Apr 2019 00:22:54 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804bc7ecfb9b6a3c25c5a6a52077d5927a1787f81d3c7b91993ced21a6f52579`  
		Last Modified: Thu, 28 Mar 2019 03:06:45 GMT  
		Size: 466.5 KB (466549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29932cebaa8e0a4faa5c4088323c7b9f78e93fd26cbe05a39cc0d49c6cfc72fd`  
		Last Modified: Thu, 28 Mar 2019 03:06:45 GMT  
		Size: 819.2 KB (819177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e777def4f18f5ba1e80aedb0dd4fd2ae09bdfab362d8a31721737026b86e5086`  
		Last Modified: Fri, 12 Apr 2019 00:27:00 GMT  
		Size: 4.6 KB (4612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d81e2667120e16060d783200dc67a789fee16c659f53c5fed73a0a0f5ccbd5`  
		Last Modified: Fri, 12 Apr 2019 00:26:59 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266b7a6a3f90bba690b1d408524b689bce992e9560f52ba9203d0c2f4fd10edd`  
		Last Modified: Fri, 12 Apr 2019 00:26:59 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f201f3953f2384e0cd7a57be5f00bb5683225082f97a9beda44b64d0340c1df8`  
		Last Modified: Fri, 12 Apr 2019 00:27:24 GMT  
		Size: 287.1 MB (287121768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8db185e4f4c82d0cfc35110f8a5393aa827ee5e2cd0529af92e5865abfdb134`  
		Last Modified: Fri, 12 Apr 2019 00:26:59 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.12` - linux; arm variant v5

```console
$ docker pull flink@sha256:4ae27f5beca22868c6f826fdca0978536b4b00824dc2a79f4f752bf1bd0d0ae7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.3 MB (459275216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaabb5abcfb7862067b58e93de99890b418c39f974dab0d06aee72a4cba86956`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:37 GMT
ADD file:55757b58d47ad1bd75530ef5bfd90c3354b7da7cbb3519f8bedc170b9e2a5d9c in / 
# Wed, 27 Mar 2019 08:53:38 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:54:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:54:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:01:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:06:26 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:06:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:06:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:06:30 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 08:58:56 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:58:56 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 09:00:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:30:31 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 09:30:32 GMT
ENV GOSU_VERSION=1.7
# Thu, 28 Mar 2019 09:30:37 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Fri, 12 Apr 2019 08:49:38 GMT
ENV FLINK_VERSION=1.8.0 HADOOP_SCALA_VARIANT=scala_2.12
# Fri, 12 Apr 2019 08:49:38 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 12 Apr 2019 08:49:39 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Apr 2019 08:49:40 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Fri, 12 Apr 2019 08:49:41 GMT
WORKDIR /opt/flink
# Fri, 12 Apr 2019 08:49:41 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz
# Fri, 12 Apr 2019 08:49:41 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz.asc
# Fri, 12 Apr 2019 08:49:42 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Fri, 12 Apr 2019 08:50:22 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Fri, 12 Apr 2019 08:50:23 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Fri, 12 Apr 2019 08:50:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 12 Apr 2019 08:50:24 GMT
EXPOSE 6123 8081
# Fri, 12 Apr 2019 08:50:25 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:f924f7b5a6a0a527f783d52778b09ae800121ce3fdd0812c44366174092a5573`  
		Last Modified: Wed, 27 Mar 2019 08:59:18 GMT  
		Size: 44.0 MB (44029721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9493ad08ec9883c81689003b68a06292c9e69f0d1227c28f63a7ec4ed0c17739`  
		Last Modified: Wed, 27 Mar 2019 10:09:42 GMT  
		Size: 9.9 MB (9851920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63792336dd728e502aed649c428b2e9514dce0e6c6b3f7d19491d103567bbdb1`  
		Last Modified: Wed, 27 Mar 2019 10:09:40 GMT  
		Size: 4.2 MB (4158987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36a7f122df934d8328e113872e47a73005356d1d3c40be62cd8d9a980e065c0`  
		Last Modified: Wed, 27 Mar 2019 12:21:45 GMT  
		Size: 845.9 KB (845888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b3abe52baa65b86283f7e235d5237569d369ae77320f91b47da932fe8eed2f`  
		Last Modified: Thu, 28 Mar 2019 09:11:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4945cb29704e289c664314b9f7c016d526d98dd9cd6e6949b4a84fd5036957`  
		Last Modified: Thu, 28 Mar 2019 09:11:47 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a99bc44b6df6ae48853c8b4e35f7cea1d57455c93684ca7bd7f36815ecc28e`  
		Last Modified: Thu, 28 Mar 2019 09:12:19 GMT  
		Size: 112.0 MB (111952139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a50cca822cc775b88740fe78949fccb0fa123305101340288dcd6402a461ce`  
		Last Modified: Thu, 28 Mar 2019 09:59:38 GMT  
		Size: 466.4 KB (466425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b3af9fe877c3f1b0f930c88c2dc487d1ccaa125e1d334623e0f1baf39f8767`  
		Last Modified: Thu, 28 Mar 2019 09:59:38 GMT  
		Size: 777.7 KB (777668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7d5e04201ffcfcd5a745a86f2e8f32d5a0baffbdb531856ec594c2749f61b5`  
		Last Modified: Fri, 12 Apr 2019 08:51:39 GMT  
		Size: 4.5 KB (4538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f1241508e27877eff8ab336c167400b41363a27a1a49817ac3b7390dcb5c20`  
		Last Modified: Fri, 12 Apr 2019 08:51:38 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d07c2a05d80de2cc70a17de60b0e9949dc7772a14b22c37a337000252be6b1`  
		Last Modified: Fri, 12 Apr 2019 08:51:39 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4190e032a1c80e8a45a787fee534db8d4102a56c80b14de558fa9dd098c544ed`  
		Last Modified: Fri, 12 Apr 2019 08:52:17 GMT  
		Size: 287.1 MB (287122196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3716af564d1082f2f2b69302c215596d7e0cbc7a4747eefdf0fdb970d59ea3a6`  
		Last Modified: Fri, 12 Apr 2019 08:51:38 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.12` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:d5a62181b4b18a4ee4255838bebd5485cd6cc26dbe5ee18e154bd0e99aaba094
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.3 MB (459294314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:841850d574f17be7db2362daa559dad7cfd792de0fa28b71d5291b24be457cef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 19:27:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:36:54 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 19:36:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 19:36:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 19:37:00 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 04:01:01 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 04:01:05 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 04:06:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 05:29:59 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 05:30:00 GMT
ENV GOSU_VERSION=1.7
# Thu, 28 Mar 2019 05:30:08 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Fri, 12 Apr 2019 08:47:20 GMT
ENV FLINK_VERSION=1.8.0 HADOOP_SCALA_VARIANT=scala_2.12
# Fri, 12 Apr 2019 08:47:21 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 12 Apr 2019 08:47:22 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Apr 2019 08:47:24 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Fri, 12 Apr 2019 08:47:25 GMT
WORKDIR /opt/flink
# Fri, 12 Apr 2019 08:47:25 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz
# Fri, 12 Apr 2019 08:47:26 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz.asc
# Fri, 12 Apr 2019 08:47:27 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Fri, 12 Apr 2019 08:49:10 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Fri, 12 Apr 2019 08:49:11 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Fri, 12 Apr 2019 08:49:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 12 Apr 2019 08:49:13 GMT
EXPOSE 6123 8081
# Fri, 12 Apr 2019 08:49:14 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f9a2434e166bc5bb8f8a3bf11f42053e0ab7483f5ba117a8d95cda3949a304`  
		Last Modified: Wed, 27 Mar 2019 19:43:23 GMT  
		Size: 839.2 KB (839168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35de3b06942b0872f8bddc0e61fbd0adcd351bda7995a3c1498e0bf28d39c9a8`  
		Last Modified: Thu, 28 Mar 2019 04:13:07 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8d78217f184ff677815878b71fbb8c673f93b382d9d09c8cc34a671f085cc8`  
		Last Modified: Thu, 28 Mar 2019 04:13:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d9e5d36c3694ad4709069f3b65061eb834f5f5a252b8db0bc73eea230e88f7`  
		Last Modified: Thu, 28 Mar 2019 04:13:43 GMT  
		Size: 113.1 MB (113075196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1473a9e9a29d015b2a5c4a2910aa4e3ffaaa2035d6670411f8f81a837503926`  
		Last Modified: Thu, 28 Mar 2019 07:33:42 GMT  
		Size: 466.9 KB (466890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09175a1dd0fadb82103d965365829417be2449e5870c3838d741488881106f15`  
		Last Modified: Thu, 28 Mar 2019 07:33:42 GMT  
		Size: 764.4 KB (764414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc189f924feeba31b7b70043d2a2cd7998ef9ed63746c1d814392fb2d794e90`  
		Last Modified: Fri, 12 Apr 2019 08:55:00 GMT  
		Size: 4.6 KB (4649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec711272cbeef572a183292f2ebfb730159629a35404b8878f0e6492fe8ca1c`  
		Last Modified: Fri, 12 Apr 2019 08:54:58 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3bcc1a6033e3573abeb9d3ccc56f47fa8ebbfefd747f23105a8b6b7b3dd646`  
		Last Modified: Fri, 12 Apr 2019 08:54:58 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2112af3b0ed07844f3fe000d3301f144215505309d72a0b2508fc505d8abf3e0`  
		Last Modified: Fri, 12 Apr 2019 08:55:41 GMT  
		Size: 287.1 MB (287121762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7d4a05cc2f1ab44993d7105f48a519a02ae96a1116b1bce0a7fc789d219d12`  
		Last Modified: Fri, 12 Apr 2019 08:54:58 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.12` - linux; ppc64le

```console
$ docker pull flink@sha256:cd2c98b1e01ade97ed82bea435b531742a0bc5e9cb39423e17a0c2da461c2205
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.8 MB (463782686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7443dd2cbdbfee44e37fa8a5e772746183f3249ba35f1ceeac718cde0425f9f2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:48:16 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:48:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:48:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:48:30 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 08:29:25 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:29:30 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:35:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 10:27:05 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 10:27:08 GMT
ENV GOSU_VERSION=1.7
# Thu, 28 Mar 2019 10:27:18 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Fri, 12 Apr 2019 08:23:32 GMT
ENV FLINK_VERSION=1.8.0 HADOOP_SCALA_VARIANT=scala_2.12
# Fri, 12 Apr 2019 08:23:35 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 12 Apr 2019 08:23:36 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Apr 2019 08:23:41 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Fri, 12 Apr 2019 08:23:45 GMT
WORKDIR /opt/flink
# Fri, 12 Apr 2019 08:23:48 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz
# Fri, 12 Apr 2019 08:23:50 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz.asc
# Fri, 12 Apr 2019 08:23:52 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Fri, 12 Apr 2019 08:24:17 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Fri, 12 Apr 2019 08:24:20 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Fri, 12 Apr 2019 08:24:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 12 Apr 2019 08:24:24 GMT
EXPOSE 6123 8081
# Fri, 12 Apr 2019 08:24:27 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b8b69d784b5d3f08693229333e0994dd9eb8c79afdfa1ff80a24190714d019`  
		Last Modified: Wed, 27 Mar 2019 12:57:24 GMT  
		Size: 848.4 KB (848351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec55eb306e259c22f5f85e9e1ab2674681fbe25c9f6a46c26306a67256b5279d`  
		Last Modified: Thu, 28 Mar 2019 08:45:13 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d19db8724fba414a27d7be8145ed3a9c64b5d9f5f1fcc87ee340a4c2ff4e33`  
		Last Modified: Thu, 28 Mar 2019 08:45:12 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efde2cf64d691f2b71780a6fc9401996c98a1c1c5978140f5c3d6ed0cc31450`  
		Last Modified: Thu, 28 Mar 2019 08:47:01 GMT  
		Size: 114.6 MB (114610443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd4ac788437dc867e6790b6000b415842795c677118e01adb7254bde91357f3`  
		Last Modified: Thu, 28 Mar 2019 12:33:49 GMT  
		Size: 468.4 KB (468380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6af81a08017f9cfa9cabe3cd6856d9d23f067c65e3314fef17dc1d4c92909d`  
		Last Modified: Thu, 28 Mar 2019 12:33:50 GMT  
		Size: 767.0 KB (766995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6353e2a273866530d26d66803a9eb248da8e5b1ffb5c19f1c8098acafcae563c`  
		Last Modified: Fri, 12 Apr 2019 08:30:45 GMT  
		Size: 4.6 KB (4614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f8d84bfd3e879aa9885cbccdcf132f2a10d79efdc5c04a7a89626aa95448f7`  
		Last Modified: Fri, 12 Apr 2019 08:30:45 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127d48653db777bf3788e112fa03f1635069de3cf5b5edebac4caf88d43a3fab`  
		Last Modified: Fri, 12 Apr 2019 08:30:45 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10bc84e2191dfc7082bad3e839ec46090b6a4b5e098b24db6e669f0a3ba63fcc`  
		Last Modified: Fri, 12 Apr 2019 08:31:17 GMT  
		Size: 287.1 MB (287122209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7e30a71dcb36dc9573305559f344f64dac3b1aea6d5287d4543da636aaa37d7`  
		Last Modified: Fri, 12 Apr 2019 08:30:45 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

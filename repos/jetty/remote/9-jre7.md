## `jetty:9-jre7`

```console
$ docker pull jetty@sha256:f74c4f0792a8bac3d230491f010e218de8e7fad66cde3b2665a90be91f22f928
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `jetty:9-jre7` - linux; amd64

```console
$ docker pull jetty@sha256:0b24deb35a5000742c162d09b939decfc2b744111f6d950bd59b821e248e98a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (164960570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bf82acbd0985f50513b345e477dccdf27832eebed73d3d4007bf1175f596760`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:07:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:07:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:48:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:48:03 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:48:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:48:04 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:48:05 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Jun 2018 00:32:40 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 00:32:40 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 00:33:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Jun 2018 01:07:33 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 12 Jun 2018 01:07:33 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 12 Jun 2018 01:07:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Jun 2018 01:07:34 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 12 Jun 2018 01:07:34 GMT
WORKDIR /usr/local/jetty
# Tue, 12 Jun 2018 01:07:34 GMT
ENV JETTY_VERSION=9.2.24.v20180105
# Tue, 12 Jun 2018 01:07:34 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.24.v20180105/jetty-distribution-9.2.24.v20180105.tar.gz
# Tue, 12 Jun 2018 01:07:34 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 12 Jun 2018 01:07:38 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 12 Jun 2018 01:07:38 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 12 Jun 2018 01:07:39 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 12 Jun 2018 01:07:39 GMT
WORKDIR /var/lib/jetty
# Tue, 12 Jun 2018 01:07:40 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 12 Jun 2018 01:07:41 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 12 Jun 2018 01:07:41 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 12 Jun 2018 01:07:42 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 12 Jun 2018 01:07:42 GMT
USER [jetty]
# Tue, 12 Jun 2018 01:07:42 GMT
EXPOSE 8080/tcp
# Tue, 12 Jun 2018 01:07:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 01:07:42 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2f329349632fac6046432536420d15d630b68e7c536dcb28714fadb45a8a14`  
		Last Modified: Tue, 05 Jun 2018 23:37:57 GMT  
		Size: 17.6 MB (17584925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddbd23379289c18b84482ad4cd36dd37132ec2524e3ab15cb8e55e520d35694`  
		Last Modified: Wed, 06 Jun 2018 19:08:29 GMT  
		Size: 795.4 KB (795368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9362ba1f9a4f2d5e05b7070ee3e48fbec0bd1266ca08bd8e0ad185c808ecbe`  
		Last Modified: Wed, 06 Jun 2018 19:08:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eaf25a6c03a762fb7b02c56530d212d94b7a9fb7576cbd52bd849b0f6bce1da`  
		Last Modified: Wed, 06 Jun 2018 19:08:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff401ba50bfd66cdca5b6fceeff8a0f49d1d022202d6ffac51164f4eea6ca431`  
		Last Modified: Tue, 12 Jun 2018 00:49:16 GMT  
		Size: 82.3 MB (82283141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc97fd815f877d35a1f6e50271ece2152cf22bb61ae0fb97c006109e129ac424`  
		Last Modified: Tue, 12 Jun 2018 01:10:15 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7d6a6e2d8769b5a7271c9e407e6cf0fddd1e4bd62a3b616ab04edc0cfae746`  
		Last Modified: Tue, 12 Jun 2018 01:10:15 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48a89d61e24bb7b6359753084a9c74ebfc65979fbf97d49a2a489569c418d8de`  
		Last Modified: Tue, 12 Jun 2018 01:10:14 GMT  
		Size: 10.0 MB (10028818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2adbe07d3b71c24446c720bd1f0db79eb9fcf589a8ea266d8e85f71972735990`  
		Last Modified: Tue, 12 Jun 2018 01:10:14 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae883d00f639804a274eb6cd555e4c5bf098a6bdbe8836deade064f5bf8ee3ba`  
		Last Modified: Tue, 12 Jun 2018 01:10:13 GMT  
		Size: 1.5 KB (1469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6244703cd34cc2917143aa65e3c063d9768ec82cd68b136e46c37fe36d905f3d`  
		Last Modified: Tue, 12 Jun 2018 01:10:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804822f6cd48a41f3d9a97ef59b0db0265a90e5583f3c7b3cb90723168f6b126`  
		Last Modified: Tue, 12 Jun 2018 01:10:12 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-jre7` - linux; arm variant v5

```console
$ docker pull jetty@sha256:10427ee4e23781358bb9507264828dbd009cad314469bd1628cc8545fd7a306c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.3 MB (152325901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50bea9a79bd575ea1e98638dc3f89c6e78fd9373498d4ccf16a0da0649e06f64`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:23 GMT
ADD file:2d2cd360e66aeff5557c7e7117985a00d109278c3f456ee970afcc9a46483264 in / 
# Sat, 28 Apr 2018 08:49:23 GMT
CMD ["bash"]
# Sat, 05 May 2018 08:53:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:53:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:35:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:35:58 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 09:35:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 09:35:59 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 09:36:00 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Jun 2018 09:03:17 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 09:03:17 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 09:04:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Jun 2018 09:28:31 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 12 Jun 2018 09:28:31 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 12 Jun 2018 09:28:31 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Jun 2018 09:28:32 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 12 Jun 2018 09:28:32 GMT
WORKDIR /usr/local/jetty
# Tue, 12 Jun 2018 09:28:33 GMT
ENV JETTY_VERSION=9.2.24.v20180105
# Tue, 12 Jun 2018 09:28:33 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.24.v20180105/jetty-distribution-9.2.24.v20180105.tar.gz
# Tue, 12 Jun 2018 09:28:33 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 12 Jun 2018 09:28:36 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 12 Jun 2018 09:28:36 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 12 Jun 2018 09:28:37 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 12 Jun 2018 09:28:37 GMT
WORKDIR /var/lib/jetty
# Tue, 12 Jun 2018 09:28:40 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 12 Jun 2018 09:28:40 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 12 Jun 2018 09:28:41 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 12 Jun 2018 09:28:41 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 12 Jun 2018 09:28:42 GMT
USER [jetty]
# Tue, 12 Jun 2018 09:28:42 GMT
EXPOSE 8080/tcp
# Tue, 12 Jun 2018 09:28:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Jun 2018 09:28:42 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:81fc0826192f72abe617753d378af4047dbce89faf17cdab9166877006a25d8e`  
		Last Modified: Sat, 28 Apr 2018 08:57:10 GMT  
		Size: 52.5 MB (52456037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceea42ca1c50a28c4602df4c2da5d4a49162eeeb7bd7c9b9bd9593f4ae0ccbc8`  
		Last Modified: Sat, 05 May 2018 09:09:51 GMT  
		Size: 17.1 MB (17084448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a66ea1754bee5106ca283a42342ae8d4c979c243c5d3bf3479ff0f70da2811`  
		Last Modified: Sat, 05 May 2018 10:02:46 GMT  
		Size: 788.1 KB (788105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d6c139fa427247de53422a1b0aeb2e8c054026f113523a3d78dd75783f262c`  
		Last Modified: Sat, 05 May 2018 10:02:46 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984619550ec48c1ca7f0056e409f5a55748b9bfd97f81b838e26c1958ab14ff2`  
		Last Modified: Sat, 05 May 2018 10:02:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03bcd8dbbfc64a07fd3c95a3823e9a5d53f18ee85f572ea4dadf4ed8c91d654`  
		Last Modified: Tue, 12 Jun 2018 09:12:26 GMT  
		Size: 72.0 MB (71962399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc175d4bba4eb3eac5dc77ee5cad32e4f0e6a2b1074c34f88837b6f472632432`  
		Last Modified: Tue, 12 Jun 2018 09:28:59 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fd8bfae634579e66d062a73aa739921d34f27a02dae3d8c0fdf404d6fd7d11`  
		Last Modified: Tue, 12 Jun 2018 09:28:59 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec74cae7c0a056795ca3074ea6dcf174ceb65464d0c253cb63a8625492bfd35e`  
		Last Modified: Tue, 12 Jun 2018 09:29:00 GMT  
		Size: 10.0 MB (10029007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:364ab590f474a3c870a4168c26dff4be1836cf414e3327bced243f44fb2a7ef0`  
		Last Modified: Tue, 12 Jun 2018 09:29:00 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6ad7d418df03a5b801c4f4b1a0575c59218b365b9b14a8fb6042a870643a04`  
		Last Modified: Tue, 12 Jun 2018 09:28:58 GMT  
		Size: 1.5 KB (1541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb482f1d6db52430200ee8514a3ae992587c5a2e14bd66b03960b59c9c64fd6`  
		Last Modified: Tue, 12 Jun 2018 09:28:58 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0038f65a614e1d36d6ceba30baf6a0698168a3c792adfc7bf01170cd0c398350`  
		Last Modified: Tue, 12 Jun 2018 09:28:58 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-jre7` - linux; arm variant v7

```console
$ docker pull jetty@sha256:c65d595d63504138afdc3d42dde929e2cf6afaff24f57a8e403f8428cad49a77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148243351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a37f644c1a7b5ff03c656e9aa73decf85d126055b6a18e3d7c4c5a3ebdfe5d1e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:05 GMT
ADD file:4e9c283075c120ce66f83bf541b0aeaa8a46f74c21d38e4ab1578e7f1b892823 in / 
# Sat, 28 Apr 2018 11:59:05 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:07:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:07:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 13:05:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:05:38 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 13:05:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 13:05:40 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 13:05:40 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 13:05:41 GMT
ENV JAVA_VERSION=7u171
# Sat, 05 May 2018 13:05:41 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Tue, 15 May 2018 12:25:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 31 May 2018 12:54:39 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 31 May 2018 12:54:39 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 31 May 2018 12:54:40 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 May 2018 12:54:41 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 31 May 2018 12:54:41 GMT
WORKDIR /usr/local/jetty
# Thu, 31 May 2018 12:54:42 GMT
ENV JETTY_VERSION=9.2.24.v20180105
# Thu, 31 May 2018 12:54:42 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.24.v20180105/jetty-distribution-9.2.24.v20180105.tar.gz
# Thu, 31 May 2018 12:54:43 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 31 May 2018 12:54:46 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 31 May 2018 12:54:46 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 31 May 2018 12:54:47 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 31 May 2018 12:54:48 GMT
WORKDIR /var/lib/jetty
# Thu, 31 May 2018 12:54:50 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 31 May 2018 12:55:01 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 31 May 2018 12:55:02 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 31 May 2018 12:55:03 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 31 May 2018 12:55:03 GMT
USER [jetty]
# Thu, 31 May 2018 12:55:04 GMT
EXPOSE 8080/tcp
# Thu, 31 May 2018 12:55:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 May 2018 12:55:05 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5c478157e28e3c26a0209484edb518799e1c21863d4700579c010b7203e0537f`  
		Last Modified: Sat, 28 Apr 2018 12:10:24 GMT  
		Size: 50.2 MB (50195697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec0195f0b71282f9e483da45354cbd4936eb181ab7c78e1b2d06e1a66dfc9314`  
		Last Modified: Sat, 05 May 2018 12:31:38 GMT  
		Size: 16.8 MB (16762537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a752ba200b146188d9aa01696172fdb19550fbbd96898b1cfcd8b6cae83294`  
		Last Modified: Sat, 05 May 2018 13:33:17 GMT  
		Size: 762.7 KB (762721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a9c245d978efa7ef2f3262152633e25df59645bb569b0c15b8fca600c4a53cc`  
		Last Modified: Sat, 05 May 2018 13:33:16 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5915cf16dbfadc7df80208fd30cd4ed6929fb6b93590b4c6f273ee1f8060ace`  
		Last Modified: Sat, 05 May 2018 13:33:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f6c6ae3eb01ef0abe42c54e3118503abac3c3d1fcd637d8aca626a5cb7055b`  
		Last Modified: Tue, 15 May 2018 13:03:25 GMT  
		Size: 70.5 MB (70487467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98b60263ad1f257b9bc5a6c7bdcd36573324e264c3ce9d941b9943fe857a64d`  
		Last Modified: Thu, 31 May 2018 13:00:24 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a8f67d962901aa7e88a64ef155236524e8639a345dbbf13212c9c3ad8e3f97`  
		Last Modified: Thu, 31 May 2018 13:00:24 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6cf32c17280e77c537f6fcced4ab75e7b414e66c996ac651d00ccdd034b27b3`  
		Last Modified: Thu, 31 May 2018 13:00:24 GMT  
		Size: 10.0 MB (10029019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85193c9e1c9125b1f0534709998c42fc37282b93b21a692667174fca29ade95`  
		Last Modified: Thu, 31 May 2018 13:00:23 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4696a0d7076147aa80f726d439a5435057335f1a2b79fd536b31b439cfb09fca`  
		Last Modified: Thu, 31 May 2018 13:00:23 GMT  
		Size: 1.5 KB (1540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50f8a73425cc58e47d61f815f71e1bc1f35ae0630574d76cb7983f39fd88d39`  
		Last Modified: Thu, 31 May 2018 13:00:23 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1143592e411415fcd161919a330fe76bcc5b59e1ad509f28a5361352ef7dda5`  
		Last Modified: Thu, 31 May 2018 13:00:23 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-jre7` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:745ae96d16c00d184f050cfc8387dd5b8a0bd4d3c46eadf6d8b2496fb4eadf44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.3 MB (152306454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40ae35525a89ea4e8565bea8de32ffbd501e4c871aecaf9f75251f3f459c8858`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:16:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:23:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:23:13 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:23:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:23:19 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:23:19 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:23:20 GMT
ENV JAVA_VERSION=7u171
# Sat, 05 May 2018 12:23:21 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Tue, 15 May 2018 10:14:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 22 May 2018 00:02:56 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 22 May 2018 00:02:57 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 22 May 2018 00:02:58 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 May 2018 00:02:59 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 22 May 2018 00:03:00 GMT
WORKDIR /usr/local/jetty
# Tue, 22 May 2018 00:03:00 GMT
ENV JETTY_VERSION=9.2.24.v20180105
# Tue, 22 May 2018 00:03:01 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.24.v20180105/jetty-distribution-9.2.24.v20180105.tar.gz
# Tue, 22 May 2018 00:03:01 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 22 May 2018 00:03:07 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 22 May 2018 00:03:08 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 22 May 2018 00:03:09 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 22 May 2018 00:03:10 GMT
WORKDIR /var/lib/jetty
# Tue, 22 May 2018 00:03:13 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 22 May 2018 00:03:14 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 22 May 2018 00:03:16 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 22 May 2018 00:03:16 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 22 May 2018 00:03:17 GMT
USER [jetty]
# Tue, 22 May 2018 00:03:18 GMT
EXPOSE 8080/tcp
# Tue, 22 May 2018 00:03:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 May 2018 00:03:19 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc4956efcaf7d30060a373d34961e3c6e71ee0317cb5381a180230a397c5442`  
		Last Modified: Sat, 05 May 2018 09:43:52 GMT  
		Size: 17.2 MB (17213842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5a7eee17f6bef9ce5302547df05502e21dcac9b6267c7278c219ee2c708b37`  
		Last Modified: Sat, 05 May 2018 13:08:41 GMT  
		Size: 789.2 KB (789162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ce7463a7e9eae4cc97131c58d9692029eef5b8f004c62ed65742a00c70773e`  
		Last Modified: Sat, 05 May 2018 13:08:39 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1882b9550551affc5f6b6d20713252201f4d2633d8be9a4763e11fcb60f99f1a`  
		Last Modified: Sat, 05 May 2018 13:08:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb080c96e8a5c284a214bea136061013aaff4282701b2e474372475cf65e17b1`  
		Last Modified: Tue, 15 May 2018 11:08:25 GMT  
		Size: 72.8 MB (72822014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d04cbf055ed6cde0db8a223c6d776b2458b727f7cf254f6e1de20b434764fd1`  
		Last Modified: Tue, 22 May 2018 00:08:48 GMT  
		Size: 2.1 KB (2112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ae218da7fa9eeebe97bde65105930ff8de8047f7c2639c5c9652aed594b1d9`  
		Last Modified: Tue, 22 May 2018 00:08:47 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4972379108f0c39ee86ddfaa48563626c6e468934c80f6b2ab3abfc0a11de78`  
		Last Modified: Tue, 22 May 2018 00:08:49 GMT  
		Size: 10.0 MB (10028820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b8cc750daae0042b8a41797987530b6be3d6643d7b391ce9d793609b063243`  
		Last Modified: Tue, 22 May 2018 00:08:46 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7c5075ba26a6562a6f653863dbc0b1686c7d542ea40350ce82d0ced2918546`  
		Last Modified: Tue, 22 May 2018 00:08:46 GMT  
		Size: 1.5 KB (1470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7948f0e6ef689d20b1cd03a92c573098db0bb88f6c807dca37217c46fc85b9d5`  
		Last Modified: Tue, 22 May 2018 00:08:46 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06e9f6c517affc0a50d50bb81588927b1b6c00a7c0db78e6dff87c8529db22d0`  
		Last Modified: Tue, 22 May 2018 00:08:46 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-jre7` - linux; 386

```console
$ docker pull jetty@sha256:f7f4003cfdc88ab57639b125e567bfba94e7bfeb7e0356f85221182ed54da13d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.3 MB (177305901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2014d76bde1fc507701a3c7e0d4c58ad402f3088d273fff47c11178bb10c0289`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:32 GMT
ADD file:ce5174f2b2c155a2421fac3ff37a02d9551d5d79e31a541189bcfd2416a6903a in / 
# Sat, 28 Apr 2018 10:39:32 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:33:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:33:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 13:30:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:30:21 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 13:30:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 13:30:23 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 13:30:23 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 13:30:23 GMT
ENV JAVA_VERSION=7u171
# Wed, 06 Jun 2018 13:30:23 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Wed, 06 Jun 2018 13:32:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 15:28:03 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 06 Jun 2018 15:28:03 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 06 Jun 2018 15:28:03 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:28:04 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 06 Jun 2018 15:28:04 GMT
WORKDIR /usr/local/jetty
# Wed, 06 Jun 2018 15:28:05 GMT
ENV JETTY_VERSION=9.2.24.v20180105
# Wed, 06 Jun 2018 15:28:05 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.24.v20180105/jetty-distribution-9.2.24.v20180105.tar.gz
# Wed, 06 Jun 2018 15:28:05 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 06 Jun 2018 15:28:09 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 06 Jun 2018 15:28:09 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 06 Jun 2018 15:28:10 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 06 Jun 2018 15:28:10 GMT
WORKDIR /var/lib/jetty
# Wed, 06 Jun 2018 15:28:12 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 06 Jun 2018 15:28:12 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 06 Jun 2018 15:28:13 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 06 Jun 2018 15:28:13 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 06 Jun 2018 15:28:14 GMT
USER [jetty]
# Wed, 06 Jun 2018 15:28:14 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 15:28:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Jun 2018 15:28:14 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:05b419d667f793c8c2edf0ff0aec14fc4d66733cdb89957ac89e8bfbeaddd0fa`  
		Last Modified: Sat, 28 Apr 2018 10:44:20 GMT  
		Size: 54.5 MB (54486782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea56a1d0660db2d98662e1123cf4c76981e83fc15a761aae4015085b0d051d7`  
		Last Modified: Wed, 06 Jun 2018 12:12:39 GMT  
		Size: 19.9 MB (19880810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c0d3a4f85b5fd090d0d6affff15606440e71d0811c9d82376bb748f9530022`  
		Last Modified: Wed, 06 Jun 2018 13:58:20 GMT  
		Size: 798.3 KB (798332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37e79ab5eaced1035c504dd89f71a511f3e53c293ee01c17c2e394d3fd0e6f2`  
		Last Modified: Wed, 06 Jun 2018 13:58:19 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d633cbaedd8e78bac9e9c2c0a64056decfe8f3d373a0dc3b113f4db52ab7e4`  
		Last Modified: Wed, 06 Jun 2018 13:58:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c8b74a0ed4c0462edf87aa5c65ff7f5d8a4a15b2210796c715e85100d12178`  
		Last Modified: Wed, 06 Jun 2018 13:58:48 GMT  
		Size: 92.1 MB (92105407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b296865b838ae400406bf997465312379e799dcb84aa69cf695f75c938f00246`  
		Last Modified: Wed, 06 Jun 2018 15:31:18 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a5ba7d31a725167b8a0303858554d6fd02e668abca487d585d48c8b0aee76d`  
		Last Modified: Wed, 06 Jun 2018 15:31:20 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f252188d80ff4a3dda1d8ec14b7bc70f62f7922876ca5e613830cf7e2fd6600`  
		Last Modified: Wed, 06 Jun 2018 15:31:25 GMT  
		Size: 10.0 MB (10028818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b921a43a069ad0c249b3e153f9874fa09cf2da8b139b6fb8daecf799f276243`  
		Last Modified: Wed, 06 Jun 2018 15:31:15 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b124c59e6f0b4febba9cd7692ec8d66201c7e1b3d4bb38b4a0f74ace231847a6`  
		Last Modified: Wed, 06 Jun 2018 15:31:15 GMT  
		Size: 1.5 KB (1476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b35d5fccbe5bd38bdaafd4854ebd1af3f275fe7b7d04d172a0f7df73ad743a`  
		Last Modified: Wed, 06 Jun 2018 15:31:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec246429f1dc86c137e477e829c8298eacbf45c99bc650c60461c5c0996b164`  
		Last Modified: Wed, 06 Jun 2018 15:31:14 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-jre7` - linux; ppc64le

```console
$ docker pull jetty@sha256:f699623b3c49659cb2c37e81a80b8d0be13c53aace96f1b81db2c0ad76136a92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.7 MB (155741599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb08c83b1f99bc8d089a15427dcb735d5ea3d5723e741040bffa41b83c69e54`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 05 May 2018 08:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:58:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 14:40:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 14:40:50 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 14:40:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 14:40:54 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 14:40:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 14:40:55 GMT
ENV JAVA_VERSION=7u171
# Sat, 05 May 2018 14:40:56 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Tue, 15 May 2018 09:05:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 21 May 2018 23:56:32 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Mon, 21 May 2018 23:56:32 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 21 May 2018 23:56:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 May 2018 23:56:35 GMT
RUN mkdir -p "$JETTY_HOME"
# Mon, 21 May 2018 23:56:35 GMT
WORKDIR /usr/local/jetty
# Mon, 21 May 2018 23:56:36 GMT
ENV JETTY_VERSION=9.2.24.v20180105
# Mon, 21 May 2018 23:56:37 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.24.v20180105/jetty-distribution-9.2.24.v20180105.tar.gz
# Mon, 21 May 2018 23:56:37 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Mon, 21 May 2018 23:56:42 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 21 May 2018 23:56:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 21 May 2018 23:56:45 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 21 May 2018 23:56:46 GMT
WORKDIR /var/lib/jetty
# Mon, 21 May 2018 23:56:50 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 21 May 2018 23:56:50 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 21 May 2018 23:56:52 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 21 May 2018 23:56:55 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Mon, 21 May 2018 23:56:56 GMT
USER [jetty]
# Mon, 21 May 2018 23:56:57 GMT
EXPOSE 8080/tcp
# Mon, 21 May 2018 23:56:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 21 May 2018 23:56:58 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4330bc6a5e0bcfbe95c4a5b5982f6866f41b6cdc2d95042061dac233ebb605c`  
		Last Modified: Sat, 05 May 2018 10:53:05 GMT  
		Size: 17.6 MB (17586999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62808c556cbd0edb13c1bdc0672028bc333139d66cdd2f508eb98becf5d5ecd4`  
		Last Modified: Sat, 05 May 2018 15:17:37 GMT  
		Size: 791.0 KB (790978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1bd439f7dc98417f8b4e0b334b6a8f3e349b1c8bd81c4af83e0344ee9f9bd0e`  
		Last Modified: Sat, 05 May 2018 15:17:36 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802e363d6798794314c4626d0bf023452db3024b735b510b634d6d21866d6eda`  
		Last Modified: Sat, 05 May 2018 15:17:36 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43af96f38cbec4462c985bc0edbca7f63cefd86040c263b68942dfa102984158`  
		Last Modified: Tue, 15 May 2018 09:47:18 GMT  
		Size: 73.9 MB (73935871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4687a3c0b435fd58222b5b688449860b11b42cd34bc91dacf7d00000cee9e277`  
		Last Modified: Tue, 22 May 2018 00:04:07 GMT  
		Size: 2.1 KB (2109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a637d0bc324879a3ac34383aad7c82d9d7c69e635a1fd75a84aa5134b6c0cf`  
		Last Modified: Tue, 22 May 2018 00:04:06 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975216508019bab776aceeaeef64a4df8fbcffd1a1199a9ab7588fc5387b1416`  
		Last Modified: Tue, 22 May 2018 00:04:05 GMT  
		Size: 10.0 MB (10029015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96798bd0bb93d5c0bbaa12669d6c648a35cb6fc755faefa66109a8bcf5449ce`  
		Last Modified: Tue, 22 May 2018 00:04:03 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea8e894f96107dc57e686a9b5c6e45621418fdeee085ac32822e4c36c1a7b62`  
		Last Modified: Tue, 22 May 2018 00:04:04 GMT  
		Size: 1.5 KB (1538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce1d138032bccbdff9247b3869ac6d5ba1add5d141b14de2ef15119727b9252`  
		Last Modified: Tue, 22 May 2018 00:04:04 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b313469af8de571203e6aff35f8ce1d37608c92ad5a99b0b226967a242b64d2`  
		Last Modified: Tue, 22 May 2018 00:04:04 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-jre7` - linux; s390x

```console
$ docker pull jetty@sha256:36d0bb49b0df45e3d86bce317d9c58dcbc3e26d37cfb83f3073ee3fda2760d4e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.8 MB (156751272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecdd3f7e9384cb272c8e5aca13b99e72de07aa2d809dd4701ada73c7052c39d2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:30:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 13:16:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:16:57 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 13:16:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 13:16:58 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 13:16:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 13:16:59 GMT
ENV JAVA_VERSION=7u171
# Sat, 05 May 2018 13:16:59 GMT
ENV JAVA_DEBIAN_VERSION=7u171-2.6.13-1~deb8u1
# Tue, 15 May 2018 12:12:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 21 May 2018 23:53:17 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Mon, 21 May 2018 23:53:17 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 21 May 2018 23:53:17 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 May 2018 23:53:18 GMT
RUN mkdir -p "$JETTY_HOME"
# Mon, 21 May 2018 23:53:18 GMT
WORKDIR /usr/local/jetty
# Mon, 21 May 2018 23:53:18 GMT
ENV JETTY_VERSION=9.2.24.v20180105
# Mon, 21 May 2018 23:53:18 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.24.v20180105/jetty-distribution-9.2.24.v20180105.tar.gz
# Mon, 21 May 2018 23:53:19 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Mon, 21 May 2018 23:53:20 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 21 May 2018 23:53:20 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 21 May 2018 23:53:21 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 21 May 2018 23:53:21 GMT
WORKDIR /var/lib/jetty
# Mon, 21 May 2018 23:53:23 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 21 May 2018 23:53:23 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 21 May 2018 23:53:24 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 21 May 2018 23:53:24 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Mon, 21 May 2018 23:53:24 GMT
USER [jetty]
# Mon, 21 May 2018 23:53:24 GMT
EXPOSE 8080/tcp
# Mon, 21 May 2018 23:53:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 21 May 2018 23:53:25 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37be7fda6df150d239266145f4a84caa9f37d32c535a19acbb408973995140fd`  
		Last Modified: Sat, 05 May 2018 12:45:40 GMT  
		Size: 17.8 MB (17787031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ee0611e7e673e3a0c80e59f3c1428955b30858e5eeb1b9ae8f76b149e0fdaf`  
		Last Modified: Sat, 05 May 2018 13:32:33 GMT  
		Size: 804.0 KB (804004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0f05e4588b7d9986cddfc7fe413479b1207d65cd974d48345294cd4a91ab26`  
		Last Modified: Sat, 05 May 2018 13:32:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5dfe35e52e265c6289d75bd0d3f4d8cd4e97a2d59980978230c597277a93560`  
		Last Modified: Sat, 05 May 2018 13:32:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28357a564a48b083a3e8bf0d922be9a6f687659213541338652e235bc7b5f4ea`  
		Last Modified: Tue, 15 May 2018 12:48:53 GMT  
		Size: 73.7 MB (73659829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6e6477239b5814cdc164e6800dba18289960a47142270d9e76d8f071dfdbd6`  
		Last Modified: Tue, 22 May 2018 00:03:48 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d4bee840cb3fb415e7b2f89d4319d8f8aca5aee471aaef72d7e6c59760b7d6`  
		Last Modified: Tue, 22 May 2018 00:03:48 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8216652bd7ccd270348ba304ed2d4796605b18a370fa21e25aa4515859964e8b`  
		Last Modified: Tue, 22 May 2018 00:03:48 GMT  
		Size: 10.0 MB (10028805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f14fd9477cd86e7b98ca1f5ff8e1e49d05c760dcb8ce2a8caf8aa3bee6c557`  
		Last Modified: Tue, 22 May 2018 00:03:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14b08f5aca580784c46bb9f24899c1571f3021d3e9be9e2981d814cee18f63f`  
		Last Modified: Tue, 22 May 2018 00:03:46 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd3b125578753f3ab63e0b8aa945bc5d3b08b617505b821943aa9b2b283af58`  
		Last Modified: Tue, 22 May 2018 00:03:46 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1c308ee12b32f7ada493d3cb28a6ec3c8888a19f91a792cc24abcf79606a6b`  
		Last Modified: Tue, 22 May 2018 00:03:46 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

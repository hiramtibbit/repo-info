## `jetty:9-jre7`

```console
$ docker pull jetty@sha256:621aa303c6adad2c78041740975351237e46f194a5c199175e10945cfc3681e9
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
$ docker pull jetty@sha256:6a2aba37ec07a24c5f0b8f9949e85708006afccf12a59506241e5347394bfe4c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164574274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec4fc3497f33d03b28d560bf9852a45bf2ca6a583b18046ff8bd86b619834ed2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:30 GMT
ADD file:3a1c24c30fbdad1dd44e5f38c66b10a2ddbeb517b2e441dbcf82c221b45b143b in / 
# Wed, 06 Feb 2019 03:27:31 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:43:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:43:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:42:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:42:43 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:42:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:42:45 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:42:45 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 08:42:45 GMT
ENV JAVA_VERSION=7u181
# Wed, 06 Feb 2019 08:42:46 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 06 Feb 2019 08:45:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 16:20:33 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 06 Feb 2019 16:20:33 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 06 Feb 2019 16:20:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 16:20:34 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 06 Feb 2019 16:20:35 GMT
WORKDIR /usr/local/jetty
# Wed, 06 Feb 2019 16:20:35 GMT
ENV JETTY_VERSION=9.2.26.v20180806
# Wed, 06 Feb 2019 16:20:35 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.26.v20180806/jetty-distribution-9.2.26.v20180806.tar.gz
# Wed, 06 Feb 2019 16:20:36 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 06 Feb 2019 22:27:23 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 06 Feb 2019 22:27:23 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 06 Feb 2019 22:27:24 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 06 Feb 2019 22:27:24 GMT
WORKDIR /var/lib/jetty
# Wed, 06 Feb 2019 22:27:27 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 06 Feb 2019 22:27:27 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 06 Feb 2019 22:27:28 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 06 Feb 2019 22:27:28 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Wed, 06 Feb 2019 22:27:28 GMT
USER jetty
# Wed, 06 Feb 2019 22:27:28 GMT
EXPOSE 8080
# Wed, 06 Feb 2019 22:27:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Feb 2019 22:27:29 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:ff42297909573059acb8e981efbc12eff68641f8449f04470a4f218e53a1e80e`  
		Last Modified: Wed, 06 Feb 2019 03:33:25 GMT  
		Size: 54.4 MB (54384652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1f85cbc0218759652e5a51e5c5a13006ac20b8ab141c05f1e67a1444a9e62a`  
		Last Modified: Wed, 06 Feb 2019 06:00:08 GMT  
		Size: 17.5 MB (17539308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39bc51c8ce6e0239d8dba25acf6df1aa19b6d0796260977b73f1aee076bb61f0`  
		Last Modified: Wed, 06 Feb 2019 08:56:13 GMT  
		Size: 795.1 KB (795150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7032334b0b248028287687815babf69db51a75707a458e9a9ca143f69f15bf`  
		Last Modified: Wed, 06 Feb 2019 08:56:12 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8f4d571fd374b50d3f0a03a27625446ea0aa3d85254331f4e2b1b7fe07b1ad`  
		Last Modified: Wed, 06 Feb 2019 08:56:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b72b1c4306a80534eb9012c3312b87d1cdbce0f84b5f19844bb856edf5a9ccf`  
		Last Modified: Wed, 06 Feb 2019 08:56:28 GMT  
		Size: 81.8 MB (81819689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9938256496ba51b706473cc50e81326c8499135b5a3ed0faa4baa8022cb505f3`  
		Last Modified: Wed, 06 Feb 2019 16:21:37 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555a0a0a07bf52f3a599d0d19b9cc4cdf6d70781c9270a7bbb1b52099ebf4211`  
		Last Modified: Wed, 06 Feb 2019 16:21:36 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793a1fa9d981aacd95658d26c524c8d2bca02c66ec98afa7bbd6abc3b70e40e9`  
		Last Modified: Wed, 06 Feb 2019 22:28:36 GMT  
		Size: 10.0 MB (10029732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f59235b331159de6fb6ce0e3220338f9e0182734086395ab4e777b61552e57e`  
		Last Modified: Wed, 06 Feb 2019 22:28:34 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4298a664561ee8e7888b18ba2f4f510c92088726ced957085bc688ef3ee4b903`  
		Last Modified: Wed, 06 Feb 2019 22:28:34 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb138e4d2a22bd85ea780aa7ed5781197d8179da039e2837194be65008a9d738`  
		Last Modified: Wed, 06 Feb 2019 22:28:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea2328b0e1405a1caabf64f7f76cdabc11db4c5dac92510d0af4e2c9cadd502`  
		Last Modified: Wed, 06 Feb 2019 22:28:34 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-jre7` - linux; arm variant v5

```console
$ docker pull jetty@sha256:a8d3701562ad630a595c90c0adac9785e8204bb1c417e939ea6e31fbdb049f6a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151913152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae9abcf33f81cf293c5f135e385e5a02ed8e390fbc4105f2d353be0f9500114`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:30:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:01:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:01:03 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:01:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 13:01:06 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 13:01:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 23 Jan 2019 13:01:07 GMT
ENV JAVA_VERSION=7u181
# Wed, 23 Jan 2019 13:01:07 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 23 Jan 2019 13:02:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 16:42:52 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 23 Jan 2019 16:42:52 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 23 Jan 2019 16:42:53 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 16:42:54 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 23 Jan 2019 16:42:54 GMT
WORKDIR /usr/local/jetty
# Wed, 23 Jan 2019 16:42:55 GMT
ENV JETTY_VERSION=9.2.26.v20180806
# Wed, 23 Jan 2019 16:42:55 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.26.v20180806/jetty-distribution-9.2.26.v20180806.tar.gz
# Wed, 23 Jan 2019 16:42:56 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 23 Jan 2019 16:42:59 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 23 Jan 2019 16:42:59 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 23 Jan 2019 16:43:00 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 23 Jan 2019 16:43:01 GMT
WORKDIR /var/lib/jetty
# Wed, 23 Jan 2019 16:43:04 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 23 Jan 2019 16:43:04 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 23 Jan 2019 16:43:06 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 23 Jan 2019 16:43:06 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Wed, 23 Jan 2019 16:43:07 GMT
USER jetty
# Wed, 23 Jan 2019 16:43:07 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 16:43:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Jan 2019 16:43:08 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e5089c7dbd37156a16aa333e82a8047c39870627ad13f9d513f514eba1f9`  
		Last Modified: Wed, 23 Jan 2019 10:46:53 GMT  
		Size: 17.0 MB (17030345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9359813d020b0d9ce651f05a10df633df9b32819ce2a73abd95d616e4c97aae0`  
		Last Modified: Wed, 23 Jan 2019 13:12:52 GMT  
		Size: 788.0 KB (787968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf087ed004deb2058d24ae6cd910445d78d754ce9d873d663a291d9909a03d0`  
		Last Modified: Wed, 23 Jan 2019 13:12:52 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c18c846b876ec307325eaf8af3c9e7164a6dc0098df74bf3a7081af1e7d40f`  
		Last Modified: Wed, 23 Jan 2019 13:12:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b6b8b572290c49d1e79a6a89b740fdbbae1cea4e9b4959f808f7c4ec5934c9`  
		Last Modified: Wed, 23 Jan 2019 13:13:08 GMT  
		Size: 71.5 MB (71484477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1461978030b412788d99d544d6054e2744315e3a4ec066ab95f59bba5d9a1f4d`  
		Last Modified: Wed, 23 Jan 2019 16:43:55 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21902748c65634940a3764d331a1675a203bcd0b39f00ca0392890623c4f2adf`  
		Last Modified: Wed, 23 Jan 2019 16:43:54 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d166bde3950284e70ed7d1fdced61e6da825c76f02f4a5c2f38d5ee2098c50da`  
		Last Modified: Wed, 23 Jan 2019 16:43:55 GMT  
		Size: 10.0 MB (10029896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95d089c3f4ad03a6ca0b3b7e3c70c093ea32116b4990494f72f9b042bd4c3c4`  
		Last Modified: Wed, 23 Jan 2019 16:43:53 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3e9c2ff8a516b27fe6faaba8f3e5fd333bc54c4d69da5b88961bb1a3e030f4`  
		Last Modified: Wed, 23 Jan 2019 16:43:53 GMT  
		Size: 1.5 KB (1540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b80b7c82e2ae87ea77763fed003cf41dda38e367ce9048d15d7751aca479c7f2`  
		Last Modified: Wed, 23 Jan 2019 16:43:54 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed261c6c47f7e3bfca8db0f19e1f50f133b78c84f7e5ecc4bebd9601ca2081a0`  
		Last Modified: Wed, 23 Jan 2019 16:43:53 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-jre7` - linux; arm variant v7

```console
$ docker pull jetty@sha256:fae07aea317d38914ac4a144d45903422e2467281225ace17f2dda90a8bf9da9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147823897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8fdc7e4fb0b4cb6668153724ba1a7b8b13555bddfbae0b12f1be7f3f16558bb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 23 Jan 2019 12:59:26 GMT
ADD file:82fbc1afc65e113a763fd56969e610ee7f80938bd2f37ffc964d6f5b4525b68b in / 
# Wed, 23 Jan 2019 12:59:27 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:35:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:35:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 14:59:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:59:34 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 14:59:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 14:59:37 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 14:59:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 23 Jan 2019 14:59:38 GMT
ENV JAVA_VERSION=7u181
# Wed, 23 Jan 2019 14:59:39 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 23 Jan 2019 15:01:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 19:07:06 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 23 Jan 2019 19:07:06 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 23 Jan 2019 19:07:07 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 19:07:09 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 23 Jan 2019 19:07:09 GMT
WORKDIR /usr/local/jetty
# Wed, 23 Jan 2019 19:07:10 GMT
ENV JETTY_VERSION=9.2.26.v20180806
# Wed, 23 Jan 2019 19:07:10 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.26.v20180806/jetty-distribution-9.2.26.v20180806.tar.gz
# Wed, 23 Jan 2019 19:07:11 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 23 Jan 2019 19:07:22 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 23 Jan 2019 19:07:23 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 23 Jan 2019 19:07:25 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 23 Jan 2019 19:07:26 GMT
WORKDIR /var/lib/jetty
# Wed, 23 Jan 2019 19:07:30 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 23 Jan 2019 19:07:30 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 23 Jan 2019 19:07:32 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 23 Jan 2019 19:07:33 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Wed, 23 Jan 2019 19:07:33 GMT
USER jetty
# Wed, 23 Jan 2019 19:07:34 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 19:07:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Jan 2019 19:07:35 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:8d0ee67914252a6f8316bcf4f5de02a5d7894abb8061e33223a2a3691b209217`  
		Last Modified: Wed, 23 Jan 2019 13:09:16 GMT  
		Size: 50.3 MB (50291632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf121bdd5ab54c14416ccb673e4d49a933fe0fbd4e82f9b83a4bcdb965555be`  
		Last Modified: Wed, 23 Jan 2019 14:03:10 GMT  
		Size: 16.7 MB (16713234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6abe191702b18ab189ddca1f0774fde4dab251e150ae9674a5fb807cd56cc1`  
		Last Modified: Wed, 23 Jan 2019 15:09:17 GMT  
		Size: 762.5 KB (762495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b182e4af8b9a826187990996b5a608b6125b11b9c712f76969fd97fe04aae76`  
		Last Modified: Wed, 23 Jan 2019 15:09:16 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789956c3ef42ed78f20234fa1a96f874e7eebaa271968d44fc699e061a170799`  
		Last Modified: Wed, 23 Jan 2019 15:09:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5af368f4f91823372350a75e1ad8754abd4c5627b2af06184cf0aabf7da6bd2`  
		Last Modified: Wed, 23 Jan 2019 15:09:30 GMT  
		Size: 70.0 MB (70020731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b02da56b5e4bf8321d99617d1ea946ac6c473cc99f4984c4e8ce54b0a8b19d`  
		Last Modified: Wed, 23 Jan 2019 19:09:15 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02147c60042a6f04bd64692e860b7d0d17ccd493d04da42973581d95a473160f`  
		Last Modified: Wed, 23 Jan 2019 19:09:16 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ddd23fbb52704335eb4eec0d1541c14ba613f94edb01ea3bae85e3c1f59528f`  
		Last Modified: Wed, 23 Jan 2019 19:09:15 GMT  
		Size: 10.0 MB (10029906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d77a3613df217c64c3f56cd3f2a380229487ec9ec41e837e8190e536729b53fd`  
		Last Modified: Wed, 23 Jan 2019 19:09:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861badfc8f33427d3d7580469045636a8398bde6c24ca4327c58e1521bce2250`  
		Last Modified: Wed, 23 Jan 2019 19:09:13 GMT  
		Size: 1.5 KB (1538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c3166b7d5ff860384beb55cee30a8fc16e792ad0cdd3ba1c2f025becb574d6`  
		Last Modified: Wed, 23 Jan 2019 19:09:13 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08fd46d0b2f093dfdda6e3662d997aa0fd3bc04f1e22e5a8dbc0aed20e0722e`  
		Last Modified: Wed, 23 Jan 2019 19:09:12 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-jre7` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:3bf2e794cf4dd6b387c397df095ab95e44571a4105b8d7d1670d356efdf3f264
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.3 MB (152322233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:052deeede636c21f109a40f1aa059b8b8502961cf3ed107822fe0eccf7b3cfc7`
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
# Tue, 12 Jun 2018 09:27:47 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 09:27:48 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 09:33:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Jun 2018 10:23:09 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 12 Jun 2018 10:23:10 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 12 Jun 2018 10:23:11 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Jun 2018 10:23:14 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 12 Jun 2018 10:23:15 GMT
WORKDIR /usr/local/jetty
# Sat, 15 Sep 2018 09:40:46 GMT
ENV JETTY_VERSION=9.2.26.v20180806
# Sat, 15 Sep 2018 09:40:47 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.26.v20180806/jetty-distribution-9.2.26.v20180806.tar.gz
# Sat, 15 Sep 2018 09:40:48 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 15 Sep 2018 09:40:54 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sat, 15 Sep 2018 09:40:55 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 15 Sep 2018 09:40:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 15 Sep 2018 09:40:58 GMT
WORKDIR /var/lib/jetty
# Sat, 15 Sep 2018 09:41:03 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 15 Sep 2018 09:41:04 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 15 Sep 2018 09:41:07 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 25 Jan 2019 10:46:25 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 25 Jan 2019 10:46:26 GMT
USER jetty
# Fri, 25 Jan 2019 10:46:26 GMT
EXPOSE 8080
# Fri, 25 Jan 2019 10:46:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Jan 2019 10:46:28 GMT
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
	-	`sha256:67cca9fb180900266ac32872326adbd48d14c1186f2b2571fdfc703a65cd865a`  
		Last Modified: Tue, 12 Jun 2018 09:48:52 GMT  
		Size: 72.8 MB (72836916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e79b899b84a8ac261126b52391fba36a37fca59bb6bc1015c6f2a901b2efe5`  
		Last Modified: Tue, 12 Jun 2018 10:24:26 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9b381842fd30bdc8d3a546a0144a5567bfa9837103bfa7b0863992c5f7d31a6`  
		Last Modified: Tue, 12 Jun 2018 10:24:25 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b302088595bf5f17d42f6666a8b0acfd2a2c975241054cb086fba1a77f208e`  
		Last Modified: Sat, 15 Sep 2018 09:45:28 GMT  
		Size: 10.0 MB (10029702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb69ef3f2adb6ca5a1e7f6d70324baa47ab88c5a91ec178d092a8c34ab5f7879`  
		Last Modified: Sat, 15 Sep 2018 09:45:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dda64b0675815a37e674cd6a681d6fc549091407b86d29ee609c38f102b8d45`  
		Last Modified: Sat, 15 Sep 2018 09:45:27 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5fd30bb0299c240e1666f7ef4bc705f547df5c29120a34ade4139668a89caf`  
		Last Modified: Sat, 15 Sep 2018 09:45:26 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ba0014d33ec7a3329270181ef9c0f6af1dd5d254a5c2c3506e1a064dcedcd2`  
		Last Modified: Fri, 25 Jan 2019 10:46:59 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-jre7` - linux; 386

```console
$ docker pull jetty@sha256:c7f1f8725c994b63f40549df6a9f04faaadf119cf79edf5b918a0d1c352aa8ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176955736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e82380344e2937ff53f1a209f062718c005da1ba5316b6bf167a66a21091ad9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 23 Jan 2019 11:42:56 GMT
ADD file:34c4d7be20c87ed251d0f5a99c46920d29f51e7050390664fe342895d416cf26 in / 
# Wed, 23 Jan 2019 11:42:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:38:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 18:16:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 18:16:02 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 18:16:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 18:16:03 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 18:16:04 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 23 Jan 2019 18:16:04 GMT
ENV JAVA_VERSION=7u181
# Wed, 23 Jan 2019 18:16:04 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 23 Jan 2019 18:19:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 24 Jan 2019 02:38:24 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 24 Jan 2019 02:38:24 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 24 Jan 2019 02:38:24 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Jan 2019 02:38:25 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 24 Jan 2019 02:38:25 GMT
WORKDIR /usr/local/jetty
# Thu, 24 Jan 2019 02:38:25 GMT
ENV JETTY_VERSION=9.2.26.v20180806
# Thu, 24 Jan 2019 02:38:26 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.26.v20180806/jetty-distribution-9.2.26.v20180806.tar.gz
# Thu, 24 Jan 2019 02:38:26 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 24 Jan 2019 02:38:28 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 24 Jan 2019 02:38:28 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 24 Jan 2019 02:38:29 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 24 Jan 2019 02:38:29 GMT
WORKDIR /var/lib/jetty
# Thu, 24 Jan 2019 02:38:31 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 24 Jan 2019 02:38:31 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 24 Jan 2019 02:38:31 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 24 Jan 2019 02:38:32 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Thu, 24 Jan 2019 02:38:32 GMT
USER jetty
# Thu, 24 Jan 2019 02:38:32 GMT
EXPOSE 8080
# Thu, 24 Jan 2019 02:38:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 24 Jan 2019 02:38:32 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c9e90e967f2e8ff1c9bcd2f542cedbcf4ef3dd2e4601b2f3c66fdbef5125fe84`  
		Last Modified: Wed, 23 Jan 2019 11:59:12 GMT  
		Size: 54.6 MB (54598497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f41350de1b8c9a9aaef88261e4271f1d2cdbfcd19c25b6ff74b91d18449ccf3`  
		Last Modified: Wed, 23 Jan 2019 13:08:22 GMT  
		Size: 19.8 MB (19846606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e48adfb17eca1e46bc839ba8c38ba760d7e2bc9e8ac6779a1e62a1aae048bfe`  
		Last Modified: Wed, 23 Jan 2019 18:29:46 GMT  
		Size: 798.2 KB (798157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272ea4d6b4930e1162d015f630b873f2d324eaaf42db6ad4c436d8e6d4bcc68d`  
		Last Modified: Wed, 23 Jan 2019 18:29:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77583c27ba7c8b8d17aacf10bcfb24e0bbfc740d9def584b61348411e9c3b7e2`  
		Last Modified: Wed, 23 Jan 2019 18:29:45 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cde60fadda7ee18ea30b29ecc3b9884e27db0d54c8adf615f000c2bce987b58`  
		Last Modified: Wed, 23 Jan 2019 18:30:00 GMT  
		Size: 91.7 MB (91677068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca2c8a26d5bba0ed9020c6b30fd8743a0713e1e99f173451292798a67d5870b`  
		Last Modified: Thu, 24 Jan 2019 02:39:07 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf352a6a7344ce040c09f112b4d32798ebfd2defb0ec5ebf66002bafe792db3`  
		Last Modified: Thu, 24 Jan 2019 02:39:07 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1beebe38a2d4ffb587392e2ee07185f9e28c3b313362e4008c75fcfb43b2982`  
		Last Modified: Thu, 24 Jan 2019 02:39:07 GMT  
		Size: 10.0 MB (10029683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd3b8f247faa44029fab12dde17a069e4e0278fbd3c2f53316acb94193f47e0`  
		Last Modified: Thu, 24 Jan 2019 02:39:06 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d837ea699cc04c3950de4a04d10cbf5225856f28bf50fab6178577267498bdba`  
		Last Modified: Thu, 24 Jan 2019 02:39:06 GMT  
		Size: 1.5 KB (1465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87203cdc02d69c6b755a8720d4e6a630758a3bc5b1a5740a3b7966c4ad13ab3`  
		Last Modified: Thu, 24 Jan 2019 02:39:06 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c85bc9538a7016c831a055155b830558a8fae395f8f9e5a3bbcdaa3b672add`  
		Last Modified: Thu, 24 Jan 2019 02:39:06 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-jre7` - linux; ppc64le

```console
$ docker pull jetty@sha256:22cefb2d23186fa8be1105e0bec87ac18d6fbecc9d729bdde0e42a040bd42899
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.8 MB (155754280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9855cdd2f7c3ce73ecf8a21eaec392b170b4f063b87f4dc187c5e5ac2480e631`
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
# Tue, 12 Jun 2018 08:54:35 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 08:54:38 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 09:00:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Jun 2018 09:45:07 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 12 Jun 2018 09:45:09 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 12 Jun 2018 09:45:10 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Jun 2018 09:45:13 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 12 Jun 2018 09:45:14 GMT
WORKDIR /usr/local/jetty
# Fri, 14 Sep 2018 08:20:32 GMT
ENV JETTY_VERSION=9.2.26.v20180806
# Fri, 14 Sep 2018 08:20:33 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.26.v20180806/jetty-distribution-9.2.26.v20180806.tar.gz
# Fri, 14 Sep 2018 08:20:34 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 14 Sep 2018 08:20:41 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 14 Sep 2018 08:20:42 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 14 Sep 2018 08:20:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 14 Sep 2018 08:20:45 GMT
WORKDIR /var/lib/jetty
# Fri, 14 Sep 2018 08:20:58 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 14 Sep 2018 08:20:58 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 14 Sep 2018 08:21:00 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 28 Dec 2018 11:00:22 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Fri, 28 Dec 2018 11:00:24 GMT
USER jetty
# Fri, 28 Dec 2018 11:00:27 GMT
EXPOSE 8080
# Fri, 28 Dec 2018 11:00:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 28 Dec 2018 11:00:31 GMT
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
	-	`sha256:882d4683fa5e55a3169ffd52657f1ee2158e7c4eb6143833439074d9ae4cd59f`  
		Last Modified: Tue, 12 Jun 2018 09:15:01 GMT  
		Size: 73.9 MB (73947674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9b504edee9910b572ac8deebda0f5edc7037227f5b71647daf6e6d26efad90`  
		Last Modified: Tue, 12 Jun 2018 09:46:06 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e02996b21e4e6d0380a31a8a38a4c2bfbadc18f4abac1e9070f903e75e871e`  
		Last Modified: Tue, 12 Jun 2018 09:46:05 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ca0d449b71f6f7329724dddc79364b96bf42a4a5f7fd048360d601747dd68d`  
		Last Modified: Fri, 14 Sep 2018 08:26:30 GMT  
		Size: 10.0 MB (10029907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9a0249e6180f010d4ce2c8f9aa609120f2424ec4bbf0faee31bf98c7d95eb0`  
		Last Modified: Fri, 14 Sep 2018 08:26:28 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb7d0d2e7fb0384d80089228d539c35410a918ff44d92e3914f89771c9b3049`  
		Last Modified: Fri, 14 Sep 2018 08:26:28 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1c96f7f67602093bebddddebcce2bac1027b4415b22c1c7446c9b8513f9e4b`  
		Last Modified: Fri, 14 Sep 2018 08:26:28 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87501c402334c8164bdea51a50b6b8fb2ae1db65319627447ac166af73c7a92a`  
		Last Modified: Fri, 28 Dec 2018 11:01:00 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-jre7` - linux; s390x

```console
$ docker pull jetty@sha256:d44e86d0cdb04c6a84778fc45191af88ebc80a6d36dcaebf9ca47f074388418f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.8 MB (156767731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175f7acae8a19e38eda9d9bf07c89824c026b84cfda76984448257ff762e5f1e`
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
# Tue, 12 Jun 2018 11:55:55 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 11:55:55 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 11:56:29 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Jun 2018 12:22:19 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 12 Jun 2018 12:22:19 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 12 Jun 2018 12:22:19 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Jun 2018 12:22:20 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 12 Jun 2018 12:22:20 GMT
WORKDIR /usr/local/jetty
# Fri, 14 Sep 2018 11:48:11 GMT
ENV JETTY_VERSION=9.2.26.v20180806
# Fri, 14 Sep 2018 11:48:11 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.26.v20180806/jetty-distribution-9.2.26.v20180806.tar.gz
# Fri, 14 Sep 2018 11:48:12 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 06 Feb 2019 23:55:50 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 06 Feb 2019 23:55:50 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 06 Feb 2019 23:55:51 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 06 Feb 2019 23:55:51 GMT
WORKDIR /var/lib/jetty
# Wed, 06 Feb 2019 23:55:53 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 06 Feb 2019 23:55:53 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 06 Feb 2019 23:55:54 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 06 Feb 2019 23:55:54 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Wed, 06 Feb 2019 23:55:55 GMT
USER jetty
# Wed, 06 Feb 2019 23:55:55 GMT
EXPOSE 8080
# Wed, 06 Feb 2019 23:55:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Feb 2019 23:55:55 GMT
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
	-	`sha256:c3d2de52a9757f90b0c0901a60c17b39074186b037e07a5fd69d2a736ed9e9eb`  
		Last Modified: Tue, 12 Jun 2018 12:02:32 GMT  
		Size: 73.7 MB (73675365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f47d8c31fe847fe38c42c5c05993150cbcabe32c15c2d4470796bc8a1a3730`  
		Last Modified: Tue, 12 Jun 2018 12:22:43 GMT  
		Size: 2.1 KB (2104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d99d1b7cc13de476fd72ce63ff54110ecf808d93c9441946b0ce0e5fdac0ed`  
		Last Modified: Tue, 12 Jun 2018 12:22:42 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0fc9d90b65253c94412fca6cd7da5b362c09376b165b851e8eaa427584efc9`  
		Last Modified: Wed, 06 Feb 2019 23:57:16 GMT  
		Size: 10.0 MB (10029720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0b47a97618b22cde12d0904138426901f868a2e955661566591a887e2bf450`  
		Last Modified: Wed, 06 Feb 2019 23:57:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48dc0f947c68ae9bcd34ada9e2c77c44821356d61b8dd70fe3f039233daf8cbd`  
		Last Modified: Wed, 06 Feb 2019 23:57:13 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211630b8ff69458bf61dd61bf9ebdda88c6f201cb3f75da8179583505da8fad8`  
		Last Modified: Wed, 06 Feb 2019 23:57:13 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66482414d6b90d6715854af2efe0178a0802b0e20c9f8b1f08de3720c3cada6`  
		Last Modified: Wed, 06 Feb 2019 23:57:13 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

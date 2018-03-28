<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jetty`

-	[`jetty:9`](#jetty9)
-	[`jetty:9.2`](#jetty92)
-	[`jetty:9.2.24`](#jetty9224)
-	[`jetty:9.2.24-jre7`](#jetty9224-jre7)
-	[`jetty:9.2.24-jre8`](#jetty9224-jre8)
-	[`jetty:9.2-jre7`](#jetty92-jre7)
-	[`jetty:9.2-jre8`](#jetty92-jre8)
-	[`jetty:9.3`](#jetty93)
-	[`jetty:9.3.23`](#jetty9323)
-	[`jetty:9.3.23-alpine`](#jetty9323-alpine)
-	[`jetty:9.3.23-jre8`](#jetty9323-jre8)
-	[`jetty:9.3.23-jre8-alpine`](#jetty9323-jre8-alpine)
-	[`jetty:9.3-alpine`](#jetty93-alpine)
-	[`jetty:9.3-jre8`](#jetty93-jre8)
-	[`jetty:9.3-jre8-alpine`](#jetty93-jre8-alpine)
-	[`jetty:9.4`](#jetty94)
-	[`jetty:9.4.9`](#jetty949)
-	[`jetty:9.4.9-alpine`](#jetty949-alpine)
-	[`jetty:9.4.9-jre8`](#jetty949-jre8)
-	[`jetty:9.4.9-jre8-alpine`](#jetty949-jre8-alpine)
-	[`jetty:9.4-alpine`](#jetty94-alpine)
-	[`jetty:9.4-jre8`](#jetty94-jre8)
-	[`jetty:9.4-jre8-alpine`](#jetty94-jre8-alpine)
-	[`jetty:9-alpine`](#jetty9-alpine)
-	[`jetty:9-jre7`](#jetty9-jre7)
-	[`jetty:9-jre8`](#jetty9-jre8)
-	[`jetty:9-jre8-alpine`](#jetty9-jre8-alpine)
-	[`jetty:alpine`](#jettyalpine)
-	[`jetty:jre7`](#jettyjre7)
-	[`jetty:jre8`](#jettyjre8)
-	[`jetty:jre8-alpine`](#jettyjre8-alpine)
-	[`jetty:latest`](#jettylatest)

## `jetty:9`

```console
$ docker pull jetty@sha256:4c145ec305dfdaa87a3519c4c62785e7ddec23e9e6f54672e06b869dec4751f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9` - linux; amd64

```console
$ docker pull jetty@sha256:7fffbbedc56e841bc690a1e485c5f0c6a8759b2718475e51f0de982c658da92c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.1 MB (409127781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb80c4e6aa9fc5058748172a99394d9eda614d96ad45378f31089f3e0d7afdb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 10:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:41:30 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:15:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:16:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 20:16:52 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 00:23:35 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 00:23:36 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 28 Mar 2018 00:23:36 GMT
WORKDIR /usr/local/jetty
# Wed, 28 Mar 2018 00:23:36 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Wed, 28 Mar 2018 00:23:37 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Wed, 28 Mar 2018 00:23:37 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 28 Mar 2018 00:24:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:24:03 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 28 Mar 2018 00:24:04 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 28 Mar 2018 00:24:04 GMT
WORKDIR /var/lib/jetty
# Wed, 28 Mar 2018 00:24:07 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:24:07 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 28 Mar 2018 00:24:08 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 28 Mar 2018 00:24:09 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 28 Mar 2018 00:24:09 GMT
USER [jetty]
# Wed, 28 Mar 2018 00:24:09 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 00:24:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 00:24:10 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9a53c345d81ad8a261443a92d603617b7b0f3c8d61c2828f08ad172829a4e`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af2dd6a0a77f77827f0c10883cc97695d08bd9fa8d203124b63bce5d8e32c0a`  
		Last Modified: Wed, 14 Mar 2018 11:52:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0519972ef87d1d7dc8cc2b734fad1999d79abd8e5c2b0e32b4c70fe85e25005`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712efbf66aaf3944af91c3f31d1d452922b4160c7b0fc8f7a505eac2ca36d04c`  
		Last Modified: Mon, 19 Mar 2018 22:03:59 GMT  
		Size: 284.8 MB (284826900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b99eee195b390c3d0dbc6478022e7a561a0c3df72e8522277c7879e9e2c5f5f`  
		Last Modified: Wed, 28 Mar 2018 00:26:46 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8466e363e0a8a1117a07d4dc94168524b3a2c3aa2fc4cf20f0082d90b1014`  
		Last Modified: Wed, 28 Mar 2018 00:26:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e500c4b796626c477fa63c3188d568d3ac31eefca33425a77c5891b5f4360502`  
		Last Modified: Wed, 28 Mar 2018 00:26:44 GMT  
		Size: 8.4 MB (8398441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8235f74bea20bc07da8f1c4cc5effbf5bf83385456dfb933405b58aaf2d44a3d`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9c7eaf50c6992768d355ac71b8d4a55b21015783dbaac75ed8c070959b1a6`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cadbfb62992349eb78f9ab5c00cf4f97736c7776453f8eec3ad833b8b99af7`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80899169fe3d70e8413133470860c1b9395c8e6bbed215a94ab0976594865925`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2`

```console
$ docker pull jetty@sha256:27eb643fb572dad4ea166425c2aaa21be4de3db05ed521a764df8526584d792e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2` - linux; amd64

```console
$ docker pull jetty@sha256:88bdacaabf3185e1ba857c4be32748e4204e4199ba8a6c6894ab46974bd97437
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.8 MB (410757603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e157ae879cca66f81f43a2f0acf0ea8760606a607019060d09efb108b03bd64`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 10:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:41:30 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:15:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:16:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 20:16:52 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 00:23:35 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 00:23:36 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 28 Mar 2018 00:23:36 GMT
WORKDIR /usr/local/jetty
# Wed, 28 Mar 2018 00:25:21 GMT
ENV JETTY_VERSION=9.2.24.v20180105
# Wed, 28 Mar 2018 00:25:21 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.24.v20180105/jetty-distribution-9.2.24.v20180105.tar.gz
# Wed, 28 Mar 2018 00:25:21 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 28 Mar 2018 00:25:50 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:25:50 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 28 Mar 2018 00:25:51 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 28 Mar 2018 00:25:51 GMT
WORKDIR /var/lib/jetty
# Wed, 28 Mar 2018 00:25:53 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:25:53 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 28 Mar 2018 00:25:54 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 28 Mar 2018 00:25:54 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 28 Mar 2018 00:25:55 GMT
USER [jetty]
# Wed, 28 Mar 2018 00:25:55 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 00:25:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 00:25:55 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9a53c345d81ad8a261443a92d603617b7b0f3c8d61c2828f08ad172829a4e`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af2dd6a0a77f77827f0c10883cc97695d08bd9fa8d203124b63bce5d8e32c0a`  
		Last Modified: Wed, 14 Mar 2018 11:52:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0519972ef87d1d7dc8cc2b734fad1999d79abd8e5c2b0e32b4c70fe85e25005`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712efbf66aaf3944af91c3f31d1d452922b4160c7b0fc8f7a505eac2ca36d04c`  
		Last Modified: Mon, 19 Mar 2018 22:03:59 GMT  
		Size: 284.8 MB (284826900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b99eee195b390c3d0dbc6478022e7a561a0c3df72e8522277c7879e9e2c5f5f`  
		Last Modified: Wed, 28 Mar 2018 00:26:46 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8466e363e0a8a1117a07d4dc94168524b3a2c3aa2fc4cf20f0082d90b1014`  
		Last Modified: Wed, 28 Mar 2018 00:26:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85842f316a7cc8bf44347aa562d52cc6f99c4482a1f79de9f008c8bb42acb824`  
		Last Modified: Wed, 28 Mar 2018 00:30:52 GMT  
		Size: 10.0 MB (10028791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d863b6c425fe51f497bab3b6fee5655f6cea3f96b12815071e121946a39cd752`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400a1ca1ef8ce2cf022b8a3feee136d92b8bdd037123e81cb6a906529a1d82c4`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0893b01e169f54b6ae3a89d742c8d7d67ab61e3f2583910d264754193226aca7`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:002d7f640b011cea4b911137e5ff5a9f4e084f00506d0a093bbdb025217bed4b`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.24`

```console
$ docker pull jetty@sha256:27eb643fb572dad4ea166425c2aaa21be4de3db05ed521a764df8526584d792e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2.24` - linux; amd64

```console
$ docker pull jetty@sha256:88bdacaabf3185e1ba857c4be32748e4204e4199ba8a6c6894ab46974bd97437
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.8 MB (410757603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e157ae879cca66f81f43a2f0acf0ea8760606a607019060d09efb108b03bd64`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 10:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:41:30 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:15:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:16:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 20:16:52 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 00:23:35 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 00:23:36 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 28 Mar 2018 00:23:36 GMT
WORKDIR /usr/local/jetty
# Wed, 28 Mar 2018 00:25:21 GMT
ENV JETTY_VERSION=9.2.24.v20180105
# Wed, 28 Mar 2018 00:25:21 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.24.v20180105/jetty-distribution-9.2.24.v20180105.tar.gz
# Wed, 28 Mar 2018 00:25:21 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 28 Mar 2018 00:25:50 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:25:50 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 28 Mar 2018 00:25:51 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 28 Mar 2018 00:25:51 GMT
WORKDIR /var/lib/jetty
# Wed, 28 Mar 2018 00:25:53 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:25:53 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 28 Mar 2018 00:25:54 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 28 Mar 2018 00:25:54 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 28 Mar 2018 00:25:55 GMT
USER [jetty]
# Wed, 28 Mar 2018 00:25:55 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 00:25:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 00:25:55 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9a53c345d81ad8a261443a92d603617b7b0f3c8d61c2828f08ad172829a4e`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af2dd6a0a77f77827f0c10883cc97695d08bd9fa8d203124b63bce5d8e32c0a`  
		Last Modified: Wed, 14 Mar 2018 11:52:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0519972ef87d1d7dc8cc2b734fad1999d79abd8e5c2b0e32b4c70fe85e25005`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712efbf66aaf3944af91c3f31d1d452922b4160c7b0fc8f7a505eac2ca36d04c`  
		Last Modified: Mon, 19 Mar 2018 22:03:59 GMT  
		Size: 284.8 MB (284826900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b99eee195b390c3d0dbc6478022e7a561a0c3df72e8522277c7879e9e2c5f5f`  
		Last Modified: Wed, 28 Mar 2018 00:26:46 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8466e363e0a8a1117a07d4dc94168524b3a2c3aa2fc4cf20f0082d90b1014`  
		Last Modified: Wed, 28 Mar 2018 00:26:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85842f316a7cc8bf44347aa562d52cc6f99c4482a1f79de9f008c8bb42acb824`  
		Last Modified: Wed, 28 Mar 2018 00:30:52 GMT  
		Size: 10.0 MB (10028791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d863b6c425fe51f497bab3b6fee5655f6cea3f96b12815071e121946a39cd752`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400a1ca1ef8ce2cf022b8a3feee136d92b8bdd037123e81cb6a906529a1d82c4`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0893b01e169f54b6ae3a89d742c8d7d67ab61e3f2583910d264754193226aca7`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:002d7f640b011cea4b911137e5ff5a9f4e084f00506d0a093bbdb025217bed4b`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.24-jre7`

```console
$ docker pull jetty@sha256:27eb643fb572dad4ea166425c2aaa21be4de3db05ed521a764df8526584d792e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2.24-jre7` - linux; amd64

```console
$ docker pull jetty@sha256:88bdacaabf3185e1ba857c4be32748e4204e4199ba8a6c6894ab46974bd97437
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.8 MB (410757603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e157ae879cca66f81f43a2f0acf0ea8760606a607019060d09efb108b03bd64`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 10:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:41:30 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:15:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:16:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 20:16:52 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 00:23:35 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 00:23:36 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 28 Mar 2018 00:23:36 GMT
WORKDIR /usr/local/jetty
# Wed, 28 Mar 2018 00:25:21 GMT
ENV JETTY_VERSION=9.2.24.v20180105
# Wed, 28 Mar 2018 00:25:21 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.24.v20180105/jetty-distribution-9.2.24.v20180105.tar.gz
# Wed, 28 Mar 2018 00:25:21 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 28 Mar 2018 00:25:50 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:25:50 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 28 Mar 2018 00:25:51 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 28 Mar 2018 00:25:51 GMT
WORKDIR /var/lib/jetty
# Wed, 28 Mar 2018 00:25:53 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:25:53 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 28 Mar 2018 00:25:54 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 28 Mar 2018 00:25:54 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 28 Mar 2018 00:25:55 GMT
USER [jetty]
# Wed, 28 Mar 2018 00:25:55 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 00:25:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 00:25:55 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9a53c345d81ad8a261443a92d603617b7b0f3c8d61c2828f08ad172829a4e`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af2dd6a0a77f77827f0c10883cc97695d08bd9fa8d203124b63bce5d8e32c0a`  
		Last Modified: Wed, 14 Mar 2018 11:52:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0519972ef87d1d7dc8cc2b734fad1999d79abd8e5c2b0e32b4c70fe85e25005`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712efbf66aaf3944af91c3f31d1d452922b4160c7b0fc8f7a505eac2ca36d04c`  
		Last Modified: Mon, 19 Mar 2018 22:03:59 GMT  
		Size: 284.8 MB (284826900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b99eee195b390c3d0dbc6478022e7a561a0c3df72e8522277c7879e9e2c5f5f`  
		Last Modified: Wed, 28 Mar 2018 00:26:46 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8466e363e0a8a1117a07d4dc94168524b3a2c3aa2fc4cf20f0082d90b1014`  
		Last Modified: Wed, 28 Mar 2018 00:26:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85842f316a7cc8bf44347aa562d52cc6f99c4482a1f79de9f008c8bb42acb824`  
		Last Modified: Wed, 28 Mar 2018 00:30:52 GMT  
		Size: 10.0 MB (10028791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d863b6c425fe51f497bab3b6fee5655f6cea3f96b12815071e121946a39cd752`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400a1ca1ef8ce2cf022b8a3feee136d92b8bdd037123e81cb6a906529a1d82c4`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0893b01e169f54b6ae3a89d742c8d7d67ab61e3f2583910d264754193226aca7`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:002d7f640b011cea4b911137e5ff5a9f4e084f00506d0a093bbdb025217bed4b`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.24-jre8`

```console
$ docker pull jetty@sha256:27eb643fb572dad4ea166425c2aaa21be4de3db05ed521a764df8526584d792e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2.24-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:88bdacaabf3185e1ba857c4be32748e4204e4199ba8a6c6894ab46974bd97437
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.8 MB (410757603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e157ae879cca66f81f43a2f0acf0ea8760606a607019060d09efb108b03bd64`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 10:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:41:30 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:15:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:16:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 20:16:52 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 00:23:35 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 00:23:36 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 28 Mar 2018 00:23:36 GMT
WORKDIR /usr/local/jetty
# Wed, 28 Mar 2018 00:25:21 GMT
ENV JETTY_VERSION=9.2.24.v20180105
# Wed, 28 Mar 2018 00:25:21 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.24.v20180105/jetty-distribution-9.2.24.v20180105.tar.gz
# Wed, 28 Mar 2018 00:25:21 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 28 Mar 2018 00:25:50 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:25:50 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 28 Mar 2018 00:25:51 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 28 Mar 2018 00:25:51 GMT
WORKDIR /var/lib/jetty
# Wed, 28 Mar 2018 00:25:53 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:25:53 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 28 Mar 2018 00:25:54 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 28 Mar 2018 00:25:54 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 28 Mar 2018 00:25:55 GMT
USER [jetty]
# Wed, 28 Mar 2018 00:25:55 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 00:25:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 00:25:55 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9a53c345d81ad8a261443a92d603617b7b0f3c8d61c2828f08ad172829a4e`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af2dd6a0a77f77827f0c10883cc97695d08bd9fa8d203124b63bce5d8e32c0a`  
		Last Modified: Wed, 14 Mar 2018 11:52:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0519972ef87d1d7dc8cc2b734fad1999d79abd8e5c2b0e32b4c70fe85e25005`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712efbf66aaf3944af91c3f31d1d452922b4160c7b0fc8f7a505eac2ca36d04c`  
		Last Modified: Mon, 19 Mar 2018 22:03:59 GMT  
		Size: 284.8 MB (284826900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b99eee195b390c3d0dbc6478022e7a561a0c3df72e8522277c7879e9e2c5f5f`  
		Last Modified: Wed, 28 Mar 2018 00:26:46 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8466e363e0a8a1117a07d4dc94168524b3a2c3aa2fc4cf20f0082d90b1014`  
		Last Modified: Wed, 28 Mar 2018 00:26:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85842f316a7cc8bf44347aa562d52cc6f99c4482a1f79de9f008c8bb42acb824`  
		Last Modified: Wed, 28 Mar 2018 00:30:52 GMT  
		Size: 10.0 MB (10028791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d863b6c425fe51f497bab3b6fee5655f6cea3f96b12815071e121946a39cd752`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400a1ca1ef8ce2cf022b8a3feee136d92b8bdd037123e81cb6a906529a1d82c4`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0893b01e169f54b6ae3a89d742c8d7d67ab61e3f2583910d264754193226aca7`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:002d7f640b011cea4b911137e5ff5a9f4e084f00506d0a093bbdb025217bed4b`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre7`

```console
$ docker pull jetty@sha256:27eb643fb572dad4ea166425c2aaa21be4de3db05ed521a764df8526584d792e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre7` - linux; amd64

```console
$ docker pull jetty@sha256:88bdacaabf3185e1ba857c4be32748e4204e4199ba8a6c6894ab46974bd97437
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.8 MB (410757603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e157ae879cca66f81f43a2f0acf0ea8760606a607019060d09efb108b03bd64`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 10:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:41:30 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:15:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:16:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 20:16:52 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 00:23:35 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 00:23:36 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 28 Mar 2018 00:23:36 GMT
WORKDIR /usr/local/jetty
# Wed, 28 Mar 2018 00:25:21 GMT
ENV JETTY_VERSION=9.2.24.v20180105
# Wed, 28 Mar 2018 00:25:21 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.24.v20180105/jetty-distribution-9.2.24.v20180105.tar.gz
# Wed, 28 Mar 2018 00:25:21 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 28 Mar 2018 00:25:50 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:25:50 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 28 Mar 2018 00:25:51 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 28 Mar 2018 00:25:51 GMT
WORKDIR /var/lib/jetty
# Wed, 28 Mar 2018 00:25:53 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:25:53 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 28 Mar 2018 00:25:54 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 28 Mar 2018 00:25:54 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 28 Mar 2018 00:25:55 GMT
USER [jetty]
# Wed, 28 Mar 2018 00:25:55 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 00:25:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 00:25:55 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9a53c345d81ad8a261443a92d603617b7b0f3c8d61c2828f08ad172829a4e`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af2dd6a0a77f77827f0c10883cc97695d08bd9fa8d203124b63bce5d8e32c0a`  
		Last Modified: Wed, 14 Mar 2018 11:52:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0519972ef87d1d7dc8cc2b734fad1999d79abd8e5c2b0e32b4c70fe85e25005`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712efbf66aaf3944af91c3f31d1d452922b4160c7b0fc8f7a505eac2ca36d04c`  
		Last Modified: Mon, 19 Mar 2018 22:03:59 GMT  
		Size: 284.8 MB (284826900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b99eee195b390c3d0dbc6478022e7a561a0c3df72e8522277c7879e9e2c5f5f`  
		Last Modified: Wed, 28 Mar 2018 00:26:46 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8466e363e0a8a1117a07d4dc94168524b3a2c3aa2fc4cf20f0082d90b1014`  
		Last Modified: Wed, 28 Mar 2018 00:26:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85842f316a7cc8bf44347aa562d52cc6f99c4482a1f79de9f008c8bb42acb824`  
		Last Modified: Wed, 28 Mar 2018 00:30:52 GMT  
		Size: 10.0 MB (10028791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d863b6c425fe51f497bab3b6fee5655f6cea3f96b12815071e121946a39cd752`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400a1ca1ef8ce2cf022b8a3feee136d92b8bdd037123e81cb6a906529a1d82c4`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0893b01e169f54b6ae3a89d742c8d7d67ab61e3f2583910d264754193226aca7`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:002d7f640b011cea4b911137e5ff5a9f4e084f00506d0a093bbdb025217bed4b`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre8`

```console
$ docker pull jetty@sha256:27eb643fb572dad4ea166425c2aaa21be4de3db05ed521a764df8526584d792e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:88bdacaabf3185e1ba857c4be32748e4204e4199ba8a6c6894ab46974bd97437
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.8 MB (410757603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e157ae879cca66f81f43a2f0acf0ea8760606a607019060d09efb108b03bd64`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 10:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:41:30 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:15:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:16:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 20:16:52 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 00:23:35 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 00:23:36 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 28 Mar 2018 00:23:36 GMT
WORKDIR /usr/local/jetty
# Wed, 28 Mar 2018 00:25:21 GMT
ENV JETTY_VERSION=9.2.24.v20180105
# Wed, 28 Mar 2018 00:25:21 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.24.v20180105/jetty-distribution-9.2.24.v20180105.tar.gz
# Wed, 28 Mar 2018 00:25:21 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 28 Mar 2018 00:25:50 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:25:50 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 28 Mar 2018 00:25:51 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 28 Mar 2018 00:25:51 GMT
WORKDIR /var/lib/jetty
# Wed, 28 Mar 2018 00:25:53 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:25:53 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 28 Mar 2018 00:25:54 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 28 Mar 2018 00:25:54 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 28 Mar 2018 00:25:55 GMT
USER [jetty]
# Wed, 28 Mar 2018 00:25:55 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 00:25:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 00:25:55 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9a53c345d81ad8a261443a92d603617b7b0f3c8d61c2828f08ad172829a4e`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af2dd6a0a77f77827f0c10883cc97695d08bd9fa8d203124b63bce5d8e32c0a`  
		Last Modified: Wed, 14 Mar 2018 11:52:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0519972ef87d1d7dc8cc2b734fad1999d79abd8e5c2b0e32b4c70fe85e25005`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712efbf66aaf3944af91c3f31d1d452922b4160c7b0fc8f7a505eac2ca36d04c`  
		Last Modified: Mon, 19 Mar 2018 22:03:59 GMT  
		Size: 284.8 MB (284826900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b99eee195b390c3d0dbc6478022e7a561a0c3df72e8522277c7879e9e2c5f5f`  
		Last Modified: Wed, 28 Mar 2018 00:26:46 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8466e363e0a8a1117a07d4dc94168524b3a2c3aa2fc4cf20f0082d90b1014`  
		Last Modified: Wed, 28 Mar 2018 00:26:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85842f316a7cc8bf44347aa562d52cc6f99c4482a1f79de9f008c8bb42acb824`  
		Last Modified: Wed, 28 Mar 2018 00:30:52 GMT  
		Size: 10.0 MB (10028791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d863b6c425fe51f497bab3b6fee5655f6cea3f96b12815071e121946a39cd752`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400a1ca1ef8ce2cf022b8a3feee136d92b8bdd037123e81cb6a906529a1d82c4`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0893b01e169f54b6ae3a89d742c8d7d67ab61e3f2583910d264754193226aca7`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:002d7f640b011cea4b911137e5ff5a9f4e084f00506d0a093bbdb025217bed4b`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3`

```console
$ docker pull jetty@sha256:98227b7275057090f84a428a63c695bc070b22bffd1132385e7fc0662348a08e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3` - linux; amd64

```console
$ docker pull jetty@sha256:2c5551cd9e0e844b606f3839518017087864d9f9f4f2bd790ee537f69600ca08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.8 MB (408841449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1cb4696694e5756dcff2e69561d01027b801617e6978bb61eb08d1571394a63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 10:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:41:30 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:15:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:16:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 20:16:52 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 00:23:35 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 00:23:36 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 28 Mar 2018 00:23:36 GMT
WORKDIR /usr/local/jetty
# Wed, 28 Mar 2018 00:24:30 GMT
ENV JETTY_VERSION=9.3.23.v20180228
# Wed, 28 Mar 2018 00:24:30 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.23.v20180228/jetty-distribution-9.3.23.v20180228.tar.gz
# Wed, 28 Mar 2018 00:24:31 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 28 Mar 2018 00:24:53 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:24:53 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 28 Mar 2018 00:24:54 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 28 Mar 2018 00:24:54 GMT
WORKDIR /var/lib/jetty
# Wed, 28 Mar 2018 00:24:55 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:24:56 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 28 Mar 2018 00:24:56 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 28 Mar 2018 00:24:57 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 28 Mar 2018 00:24:57 GMT
USER [jetty]
# Wed, 28 Mar 2018 00:24:57 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 00:24:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 00:24:58 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9a53c345d81ad8a261443a92d603617b7b0f3c8d61c2828f08ad172829a4e`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af2dd6a0a77f77827f0c10883cc97695d08bd9fa8d203124b63bce5d8e32c0a`  
		Last Modified: Wed, 14 Mar 2018 11:52:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0519972ef87d1d7dc8cc2b734fad1999d79abd8e5c2b0e32b4c70fe85e25005`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712efbf66aaf3944af91c3f31d1d452922b4160c7b0fc8f7a505eac2ca36d04c`  
		Last Modified: Mon, 19 Mar 2018 22:03:59 GMT  
		Size: 284.8 MB (284826900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b99eee195b390c3d0dbc6478022e7a561a0c3df72e8522277c7879e9e2c5f5f`  
		Last Modified: Wed, 28 Mar 2018 00:26:46 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8466e363e0a8a1117a07d4dc94168524b3a2c3aa2fc4cf20f0082d90b1014`  
		Last Modified: Wed, 28 Mar 2018 00:26:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a0a8782ba37d82357b1c7baebda6e628f2b205d64ba638c39e4ef3ef9cfbf8`  
		Last Modified: Wed, 28 Mar 2018 00:29:29 GMT  
		Size: 8.1 MB (8112349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88eeacd6aa0c953c929c7c77228479c4c2d0a1b11f800992fe32ab02ee15274d`  
		Last Modified: Wed, 28 Mar 2018 00:29:28 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fdf6e0c8eff9db0f2fd5b3ff89501aa3759be37083043e252a190dc683f5c4`  
		Last Modified: Wed, 28 Mar 2018 00:29:29 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b01ee076c59cf9698df4a40480fe57cdfb221313c9c3b87f3715a66ed69988`  
		Last Modified: Wed, 28 Mar 2018 00:29:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e22f8dfff213a957ed05b3b743a56a9cc2ab71f6038dee27a805434ec9746a7`  
		Last Modified: Wed, 28 Mar 2018 00:29:28 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.23`

```console
$ docker pull jetty@sha256:98227b7275057090f84a428a63c695bc070b22bffd1132385e7fc0662348a08e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3.23` - linux; amd64

```console
$ docker pull jetty@sha256:2c5551cd9e0e844b606f3839518017087864d9f9f4f2bd790ee537f69600ca08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.8 MB (408841449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1cb4696694e5756dcff2e69561d01027b801617e6978bb61eb08d1571394a63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 10:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:41:30 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:15:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:16:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 20:16:52 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 00:23:35 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 00:23:36 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 28 Mar 2018 00:23:36 GMT
WORKDIR /usr/local/jetty
# Wed, 28 Mar 2018 00:24:30 GMT
ENV JETTY_VERSION=9.3.23.v20180228
# Wed, 28 Mar 2018 00:24:30 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.23.v20180228/jetty-distribution-9.3.23.v20180228.tar.gz
# Wed, 28 Mar 2018 00:24:31 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 28 Mar 2018 00:24:53 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:24:53 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 28 Mar 2018 00:24:54 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 28 Mar 2018 00:24:54 GMT
WORKDIR /var/lib/jetty
# Wed, 28 Mar 2018 00:24:55 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:24:56 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 28 Mar 2018 00:24:56 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 28 Mar 2018 00:24:57 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 28 Mar 2018 00:24:57 GMT
USER [jetty]
# Wed, 28 Mar 2018 00:24:57 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 00:24:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 00:24:58 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9a53c345d81ad8a261443a92d603617b7b0f3c8d61c2828f08ad172829a4e`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af2dd6a0a77f77827f0c10883cc97695d08bd9fa8d203124b63bce5d8e32c0a`  
		Last Modified: Wed, 14 Mar 2018 11:52:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0519972ef87d1d7dc8cc2b734fad1999d79abd8e5c2b0e32b4c70fe85e25005`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712efbf66aaf3944af91c3f31d1d452922b4160c7b0fc8f7a505eac2ca36d04c`  
		Last Modified: Mon, 19 Mar 2018 22:03:59 GMT  
		Size: 284.8 MB (284826900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b99eee195b390c3d0dbc6478022e7a561a0c3df72e8522277c7879e9e2c5f5f`  
		Last Modified: Wed, 28 Mar 2018 00:26:46 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8466e363e0a8a1117a07d4dc94168524b3a2c3aa2fc4cf20f0082d90b1014`  
		Last Modified: Wed, 28 Mar 2018 00:26:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a0a8782ba37d82357b1c7baebda6e628f2b205d64ba638c39e4ef3ef9cfbf8`  
		Last Modified: Wed, 28 Mar 2018 00:29:29 GMT  
		Size: 8.1 MB (8112349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88eeacd6aa0c953c929c7c77228479c4c2d0a1b11f800992fe32ab02ee15274d`  
		Last Modified: Wed, 28 Mar 2018 00:29:28 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fdf6e0c8eff9db0f2fd5b3ff89501aa3759be37083043e252a190dc683f5c4`  
		Last Modified: Wed, 28 Mar 2018 00:29:29 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b01ee076c59cf9698df4a40480fe57cdfb221313c9c3b87f3715a66ed69988`  
		Last Modified: Wed, 28 Mar 2018 00:29:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e22f8dfff213a957ed05b3b743a56a9cc2ab71f6038dee27a805434ec9746a7`  
		Last Modified: Wed, 28 Mar 2018 00:29:28 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.23-alpine`

```console
$ docker pull jetty@sha256:712f7977c5a3f23245ac63be88b15f18e3010c8dc6e6b392c0d93bfa0fb124fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3.23-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:803cda5bd6f49f3d01754ed2610d0238e5259727650459285e823183933a5f76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64706357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:222f97a1740e0fce05401b1bfcfe83f2ec2ad0c1f331717bbdd7ab8c0abd7f71`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:08:55 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 10 Jan 2018 08:08:55 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 10 Jan 2018 08:09:04 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 08:09:05 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 10 Jan 2018 08:09:15 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:45:38 GMT
ENV JETTY_VERSION=9.3.23.v20180228
# Thu, 22 Mar 2018 02:45:38 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.23.v20180228/jetty-distribution-9.3.23.v20180228.tar.gz
# Thu, 22 Mar 2018 02:45:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:45:50 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:45:50 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:45:51 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:45:51 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:45:55 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:45:55 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:45:56 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:45:56 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:45:57 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:45:57 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:45:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:45:57 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e13391b3ecf9aadc6968371a4f783b8dacf673035afd804a877ac29ce481aac`  
		Last Modified: Wed, 10 Jan 2018 08:11:26 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a98da51f7d11a5a36433e908f3d3853158b15186bd21dc38bd66924d3a963`  
		Last Modified: Wed, 10 Jan 2018 08:11:25 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615f2911ef497dd2227f8c0c9031938d1d8f03964999da7bc8eab6c99ab54306`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 8.1 MB (8146467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729d2acedf80c6600b290e4127c0453128cf6bca01736a0cdc564c5324bb23de`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0b5536aafeecebf3c7bbd8aadf31368d3c87836eb92d0cef87893cf67704e`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 37.3 KB (37275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b80b0d18df26e9ce9ad14473fa012fadf40dc42ed25b35f0d99d445333c415`  
		Last Modified: Thu, 22 Mar 2018 02:54:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebdb6e03d6f4156a6579b742d815e8d39469a12ef2c7e2d1a2987c603403f1b`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.23-jre8`

```console
$ docker pull jetty@sha256:98227b7275057090f84a428a63c695bc070b22bffd1132385e7fc0662348a08e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3.23-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:2c5551cd9e0e844b606f3839518017087864d9f9f4f2bd790ee537f69600ca08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.8 MB (408841449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1cb4696694e5756dcff2e69561d01027b801617e6978bb61eb08d1571394a63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 10:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:41:30 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:15:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:16:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 20:16:52 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 00:23:35 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 00:23:36 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 28 Mar 2018 00:23:36 GMT
WORKDIR /usr/local/jetty
# Wed, 28 Mar 2018 00:24:30 GMT
ENV JETTY_VERSION=9.3.23.v20180228
# Wed, 28 Mar 2018 00:24:30 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.23.v20180228/jetty-distribution-9.3.23.v20180228.tar.gz
# Wed, 28 Mar 2018 00:24:31 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 28 Mar 2018 00:24:53 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:24:53 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 28 Mar 2018 00:24:54 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 28 Mar 2018 00:24:54 GMT
WORKDIR /var/lib/jetty
# Wed, 28 Mar 2018 00:24:55 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:24:56 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 28 Mar 2018 00:24:56 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 28 Mar 2018 00:24:57 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 28 Mar 2018 00:24:57 GMT
USER [jetty]
# Wed, 28 Mar 2018 00:24:57 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 00:24:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 00:24:58 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9a53c345d81ad8a261443a92d603617b7b0f3c8d61c2828f08ad172829a4e`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af2dd6a0a77f77827f0c10883cc97695d08bd9fa8d203124b63bce5d8e32c0a`  
		Last Modified: Wed, 14 Mar 2018 11:52:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0519972ef87d1d7dc8cc2b734fad1999d79abd8e5c2b0e32b4c70fe85e25005`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712efbf66aaf3944af91c3f31d1d452922b4160c7b0fc8f7a505eac2ca36d04c`  
		Last Modified: Mon, 19 Mar 2018 22:03:59 GMT  
		Size: 284.8 MB (284826900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b99eee195b390c3d0dbc6478022e7a561a0c3df72e8522277c7879e9e2c5f5f`  
		Last Modified: Wed, 28 Mar 2018 00:26:46 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8466e363e0a8a1117a07d4dc94168524b3a2c3aa2fc4cf20f0082d90b1014`  
		Last Modified: Wed, 28 Mar 2018 00:26:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a0a8782ba37d82357b1c7baebda6e628f2b205d64ba638c39e4ef3ef9cfbf8`  
		Last Modified: Wed, 28 Mar 2018 00:29:29 GMT  
		Size: 8.1 MB (8112349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88eeacd6aa0c953c929c7c77228479c4c2d0a1b11f800992fe32ab02ee15274d`  
		Last Modified: Wed, 28 Mar 2018 00:29:28 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fdf6e0c8eff9db0f2fd5b3ff89501aa3759be37083043e252a190dc683f5c4`  
		Last Modified: Wed, 28 Mar 2018 00:29:29 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b01ee076c59cf9698df4a40480fe57cdfb221313c9c3b87f3715a66ed69988`  
		Last Modified: Wed, 28 Mar 2018 00:29:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e22f8dfff213a957ed05b3b743a56a9cc2ab71f6038dee27a805434ec9746a7`  
		Last Modified: Wed, 28 Mar 2018 00:29:28 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.23-jre8-alpine`

```console
$ docker pull jetty@sha256:712f7977c5a3f23245ac63be88b15f18e3010c8dc6e6b392c0d93bfa0fb124fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3.23-jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:803cda5bd6f49f3d01754ed2610d0238e5259727650459285e823183933a5f76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64706357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:222f97a1740e0fce05401b1bfcfe83f2ec2ad0c1f331717bbdd7ab8c0abd7f71`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:08:55 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 10 Jan 2018 08:08:55 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 10 Jan 2018 08:09:04 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 08:09:05 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 10 Jan 2018 08:09:15 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:45:38 GMT
ENV JETTY_VERSION=9.3.23.v20180228
# Thu, 22 Mar 2018 02:45:38 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.23.v20180228/jetty-distribution-9.3.23.v20180228.tar.gz
# Thu, 22 Mar 2018 02:45:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:45:50 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:45:50 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:45:51 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:45:51 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:45:55 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:45:55 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:45:56 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:45:56 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:45:57 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:45:57 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:45:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:45:57 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e13391b3ecf9aadc6968371a4f783b8dacf673035afd804a877ac29ce481aac`  
		Last Modified: Wed, 10 Jan 2018 08:11:26 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a98da51f7d11a5a36433e908f3d3853158b15186bd21dc38bd66924d3a963`  
		Last Modified: Wed, 10 Jan 2018 08:11:25 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615f2911ef497dd2227f8c0c9031938d1d8f03964999da7bc8eab6c99ab54306`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 8.1 MB (8146467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729d2acedf80c6600b290e4127c0453128cf6bca01736a0cdc564c5324bb23de`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0b5536aafeecebf3c7bbd8aadf31368d3c87836eb92d0cef87893cf67704e`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 37.3 KB (37275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b80b0d18df26e9ce9ad14473fa012fadf40dc42ed25b35f0d99d445333c415`  
		Last Modified: Thu, 22 Mar 2018 02:54:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebdb6e03d6f4156a6579b742d815e8d39469a12ef2c7e2d1a2987c603403f1b`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-alpine`

```console
$ docker pull jetty@sha256:712f7977c5a3f23245ac63be88b15f18e3010c8dc6e6b392c0d93bfa0fb124fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:803cda5bd6f49f3d01754ed2610d0238e5259727650459285e823183933a5f76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64706357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:222f97a1740e0fce05401b1bfcfe83f2ec2ad0c1f331717bbdd7ab8c0abd7f71`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:08:55 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 10 Jan 2018 08:08:55 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 10 Jan 2018 08:09:04 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 08:09:05 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 10 Jan 2018 08:09:15 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:45:38 GMT
ENV JETTY_VERSION=9.3.23.v20180228
# Thu, 22 Mar 2018 02:45:38 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.23.v20180228/jetty-distribution-9.3.23.v20180228.tar.gz
# Thu, 22 Mar 2018 02:45:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:45:50 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:45:50 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:45:51 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:45:51 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:45:55 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:45:55 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:45:56 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:45:56 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:45:57 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:45:57 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:45:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:45:57 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e13391b3ecf9aadc6968371a4f783b8dacf673035afd804a877ac29ce481aac`  
		Last Modified: Wed, 10 Jan 2018 08:11:26 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a98da51f7d11a5a36433e908f3d3853158b15186bd21dc38bd66924d3a963`  
		Last Modified: Wed, 10 Jan 2018 08:11:25 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615f2911ef497dd2227f8c0c9031938d1d8f03964999da7bc8eab6c99ab54306`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 8.1 MB (8146467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729d2acedf80c6600b290e4127c0453128cf6bca01736a0cdc564c5324bb23de`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0b5536aafeecebf3c7bbd8aadf31368d3c87836eb92d0cef87893cf67704e`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 37.3 KB (37275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b80b0d18df26e9ce9ad14473fa012fadf40dc42ed25b35f0d99d445333c415`  
		Last Modified: Thu, 22 Mar 2018 02:54:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebdb6e03d6f4156a6579b742d815e8d39469a12ef2c7e2d1a2987c603403f1b`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-jre8`

```console
$ docker pull jetty@sha256:98227b7275057090f84a428a63c695bc070b22bffd1132385e7fc0662348a08e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:2c5551cd9e0e844b606f3839518017087864d9f9f4f2bd790ee537f69600ca08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.8 MB (408841449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1cb4696694e5756dcff2e69561d01027b801617e6978bb61eb08d1571394a63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 10:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:41:30 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:15:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:16:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 20:16:52 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 00:23:35 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 00:23:36 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 28 Mar 2018 00:23:36 GMT
WORKDIR /usr/local/jetty
# Wed, 28 Mar 2018 00:24:30 GMT
ENV JETTY_VERSION=9.3.23.v20180228
# Wed, 28 Mar 2018 00:24:30 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.23.v20180228/jetty-distribution-9.3.23.v20180228.tar.gz
# Wed, 28 Mar 2018 00:24:31 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 28 Mar 2018 00:24:53 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:24:53 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 28 Mar 2018 00:24:54 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 28 Mar 2018 00:24:54 GMT
WORKDIR /var/lib/jetty
# Wed, 28 Mar 2018 00:24:55 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:24:56 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 28 Mar 2018 00:24:56 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 28 Mar 2018 00:24:57 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 28 Mar 2018 00:24:57 GMT
USER [jetty]
# Wed, 28 Mar 2018 00:24:57 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 00:24:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 00:24:58 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9a53c345d81ad8a261443a92d603617b7b0f3c8d61c2828f08ad172829a4e`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af2dd6a0a77f77827f0c10883cc97695d08bd9fa8d203124b63bce5d8e32c0a`  
		Last Modified: Wed, 14 Mar 2018 11:52:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0519972ef87d1d7dc8cc2b734fad1999d79abd8e5c2b0e32b4c70fe85e25005`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712efbf66aaf3944af91c3f31d1d452922b4160c7b0fc8f7a505eac2ca36d04c`  
		Last Modified: Mon, 19 Mar 2018 22:03:59 GMT  
		Size: 284.8 MB (284826900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b99eee195b390c3d0dbc6478022e7a561a0c3df72e8522277c7879e9e2c5f5f`  
		Last Modified: Wed, 28 Mar 2018 00:26:46 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8466e363e0a8a1117a07d4dc94168524b3a2c3aa2fc4cf20f0082d90b1014`  
		Last Modified: Wed, 28 Mar 2018 00:26:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a0a8782ba37d82357b1c7baebda6e628f2b205d64ba638c39e4ef3ef9cfbf8`  
		Last Modified: Wed, 28 Mar 2018 00:29:29 GMT  
		Size: 8.1 MB (8112349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88eeacd6aa0c953c929c7c77228479c4c2d0a1b11f800992fe32ab02ee15274d`  
		Last Modified: Wed, 28 Mar 2018 00:29:28 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fdf6e0c8eff9db0f2fd5b3ff89501aa3759be37083043e252a190dc683f5c4`  
		Last Modified: Wed, 28 Mar 2018 00:29:29 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b01ee076c59cf9698df4a40480fe57cdfb221313c9c3b87f3715a66ed69988`  
		Last Modified: Wed, 28 Mar 2018 00:29:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e22f8dfff213a957ed05b3b743a56a9cc2ab71f6038dee27a805434ec9746a7`  
		Last Modified: Wed, 28 Mar 2018 00:29:28 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-jre8-alpine`

```console
$ docker pull jetty@sha256:712f7977c5a3f23245ac63be88b15f18e3010c8dc6e6b392c0d93bfa0fb124fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:803cda5bd6f49f3d01754ed2610d0238e5259727650459285e823183933a5f76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64706357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:222f97a1740e0fce05401b1bfcfe83f2ec2ad0c1f331717bbdd7ab8c0abd7f71`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:08:55 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 10 Jan 2018 08:08:55 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 10 Jan 2018 08:09:04 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 08:09:05 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 10 Jan 2018 08:09:15 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:45:38 GMT
ENV JETTY_VERSION=9.3.23.v20180228
# Thu, 22 Mar 2018 02:45:38 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.23.v20180228/jetty-distribution-9.3.23.v20180228.tar.gz
# Thu, 22 Mar 2018 02:45:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:45:50 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:45:50 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:45:51 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:45:51 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:45:55 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:45:55 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:45:56 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:45:56 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:45:57 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:45:57 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:45:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:45:57 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e13391b3ecf9aadc6968371a4f783b8dacf673035afd804a877ac29ce481aac`  
		Last Modified: Wed, 10 Jan 2018 08:11:26 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a98da51f7d11a5a36433e908f3d3853158b15186bd21dc38bd66924d3a963`  
		Last Modified: Wed, 10 Jan 2018 08:11:25 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615f2911ef497dd2227f8c0c9031938d1d8f03964999da7bc8eab6c99ab54306`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 8.1 MB (8146467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729d2acedf80c6600b290e4127c0453128cf6bca01736a0cdc564c5324bb23de`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d0b5536aafeecebf3c7bbd8aadf31368d3c87836eb92d0cef87893cf67704e`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 37.3 KB (37275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b80b0d18df26e9ce9ad14473fa012fadf40dc42ed25b35f0d99d445333c415`  
		Last Modified: Thu, 22 Mar 2018 02:54:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebdb6e03d6f4156a6579b742d815e8d39469a12ef2c7e2d1a2987c603403f1b`  
		Last Modified: Thu, 22 Mar 2018 02:54:11 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4`

```console
$ docker pull jetty@sha256:4c145ec305dfdaa87a3519c4c62785e7ddec23e9e6f54672e06b869dec4751f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4` - linux; amd64

```console
$ docker pull jetty@sha256:7fffbbedc56e841bc690a1e485c5f0c6a8759b2718475e51f0de982c658da92c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.1 MB (409127781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb80c4e6aa9fc5058748172a99394d9eda614d96ad45378f31089f3e0d7afdb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 10:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:41:30 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:15:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:16:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 20:16:52 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 00:23:35 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 00:23:36 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 28 Mar 2018 00:23:36 GMT
WORKDIR /usr/local/jetty
# Wed, 28 Mar 2018 00:23:36 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Wed, 28 Mar 2018 00:23:37 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Wed, 28 Mar 2018 00:23:37 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 28 Mar 2018 00:24:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:24:03 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 28 Mar 2018 00:24:04 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 28 Mar 2018 00:24:04 GMT
WORKDIR /var/lib/jetty
# Wed, 28 Mar 2018 00:24:07 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:24:07 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 28 Mar 2018 00:24:08 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 28 Mar 2018 00:24:09 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 28 Mar 2018 00:24:09 GMT
USER [jetty]
# Wed, 28 Mar 2018 00:24:09 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 00:24:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 00:24:10 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9a53c345d81ad8a261443a92d603617b7b0f3c8d61c2828f08ad172829a4e`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af2dd6a0a77f77827f0c10883cc97695d08bd9fa8d203124b63bce5d8e32c0a`  
		Last Modified: Wed, 14 Mar 2018 11:52:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0519972ef87d1d7dc8cc2b734fad1999d79abd8e5c2b0e32b4c70fe85e25005`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712efbf66aaf3944af91c3f31d1d452922b4160c7b0fc8f7a505eac2ca36d04c`  
		Last Modified: Mon, 19 Mar 2018 22:03:59 GMT  
		Size: 284.8 MB (284826900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b99eee195b390c3d0dbc6478022e7a561a0c3df72e8522277c7879e9e2c5f5f`  
		Last Modified: Wed, 28 Mar 2018 00:26:46 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8466e363e0a8a1117a07d4dc94168524b3a2c3aa2fc4cf20f0082d90b1014`  
		Last Modified: Wed, 28 Mar 2018 00:26:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e500c4b796626c477fa63c3188d568d3ac31eefca33425a77c5891b5f4360502`  
		Last Modified: Wed, 28 Mar 2018 00:26:44 GMT  
		Size: 8.4 MB (8398441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8235f74bea20bc07da8f1c4cc5effbf5bf83385456dfb933405b58aaf2d44a3d`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9c7eaf50c6992768d355ac71b8d4a55b21015783dbaac75ed8c070959b1a6`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cadbfb62992349eb78f9ab5c00cf4f97736c7776453f8eec3ad833b8b99af7`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80899169fe3d70e8413133470860c1b9395c8e6bbed215a94ab0976594865925`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.9`

```console
$ docker pull jetty@sha256:4c145ec305dfdaa87a3519c4c62785e7ddec23e9e6f54672e06b869dec4751f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4.9` - linux; amd64

```console
$ docker pull jetty@sha256:7fffbbedc56e841bc690a1e485c5f0c6a8759b2718475e51f0de982c658da92c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.1 MB (409127781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb80c4e6aa9fc5058748172a99394d9eda614d96ad45378f31089f3e0d7afdb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 10:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:41:30 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:15:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:16:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 20:16:52 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 00:23:35 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 00:23:36 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 28 Mar 2018 00:23:36 GMT
WORKDIR /usr/local/jetty
# Wed, 28 Mar 2018 00:23:36 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Wed, 28 Mar 2018 00:23:37 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Wed, 28 Mar 2018 00:23:37 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 28 Mar 2018 00:24:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:24:03 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 28 Mar 2018 00:24:04 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 28 Mar 2018 00:24:04 GMT
WORKDIR /var/lib/jetty
# Wed, 28 Mar 2018 00:24:07 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:24:07 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 28 Mar 2018 00:24:08 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 28 Mar 2018 00:24:09 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 28 Mar 2018 00:24:09 GMT
USER [jetty]
# Wed, 28 Mar 2018 00:24:09 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 00:24:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 00:24:10 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9a53c345d81ad8a261443a92d603617b7b0f3c8d61c2828f08ad172829a4e`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af2dd6a0a77f77827f0c10883cc97695d08bd9fa8d203124b63bce5d8e32c0a`  
		Last Modified: Wed, 14 Mar 2018 11:52:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0519972ef87d1d7dc8cc2b734fad1999d79abd8e5c2b0e32b4c70fe85e25005`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712efbf66aaf3944af91c3f31d1d452922b4160c7b0fc8f7a505eac2ca36d04c`  
		Last Modified: Mon, 19 Mar 2018 22:03:59 GMT  
		Size: 284.8 MB (284826900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b99eee195b390c3d0dbc6478022e7a561a0c3df72e8522277c7879e9e2c5f5f`  
		Last Modified: Wed, 28 Mar 2018 00:26:46 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8466e363e0a8a1117a07d4dc94168524b3a2c3aa2fc4cf20f0082d90b1014`  
		Last Modified: Wed, 28 Mar 2018 00:26:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e500c4b796626c477fa63c3188d568d3ac31eefca33425a77c5891b5f4360502`  
		Last Modified: Wed, 28 Mar 2018 00:26:44 GMT  
		Size: 8.4 MB (8398441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8235f74bea20bc07da8f1c4cc5effbf5bf83385456dfb933405b58aaf2d44a3d`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9c7eaf50c6992768d355ac71b8d4a55b21015783dbaac75ed8c070959b1a6`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cadbfb62992349eb78f9ab5c00cf4f97736c7776453f8eec3ad833b8b99af7`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80899169fe3d70e8413133470860c1b9395c8e6bbed215a94ab0976594865925`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.9-alpine`

```console
$ docker pull jetty@sha256:840bbf942e6a5aad384e460983491dcf8e9245e187b54761083030458ff08807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4.9-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:e9eee839ab9a4ab4fb5b8ece09f706d73d9b16a16ba6f648d90fe920d3f0e7ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64957694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e374463672d6360632892ac24459fedbf6c3a199e8e598c23085264fd5be59`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:08:55 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 10 Jan 2018 08:08:55 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 10 Jan 2018 08:09:04 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 08:09:05 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 10 Jan 2018 08:09:15 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:43:57 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:43:57 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:43:58 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:43:58 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:44:03 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:44:03 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:44:04 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:44:04 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:44:05 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:44:05 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:44:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:44:05 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e13391b3ecf9aadc6968371a4f783b8dacf673035afd804a877ac29ce481aac`  
		Last Modified: Wed, 10 Jan 2018 08:11:26 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a98da51f7d11a5a36433e908f3d3853158b15186bd21dc38bd66924d3a963`  
		Last Modified: Wed, 10 Jan 2018 08:11:25 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a4259f5f32446975ebb6eb10172917f1dd57132104ffe1ac6a00025ea96cdb`  
		Last Modified: Thu, 22 Mar 2018 02:50:14 GMT  
		Size: 8.4 MB (8433083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069251f2bd68e94fb4bb0ec4bb7d4d02c7afa389c8a0551e3669c9b459204b1a`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947a5a0d9626b38e3b979467a64e8437684f4ad8bca95478f3fcb668c622ed92`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9de715454250d52b9ad4cd4db1f96480ef68312cccc84decb7bc826a8bc0d33`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25c1aac58f097a6782b04b36c309565b8d68a52d28932aaffb0e48072c25388`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.9-jre8`

```console
$ docker pull jetty@sha256:4c145ec305dfdaa87a3519c4c62785e7ddec23e9e6f54672e06b869dec4751f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4.9-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:7fffbbedc56e841bc690a1e485c5f0c6a8759b2718475e51f0de982c658da92c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.1 MB (409127781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb80c4e6aa9fc5058748172a99394d9eda614d96ad45378f31089f3e0d7afdb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 10:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:41:30 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:15:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:16:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 20:16:52 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 00:23:35 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 00:23:36 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 28 Mar 2018 00:23:36 GMT
WORKDIR /usr/local/jetty
# Wed, 28 Mar 2018 00:23:36 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Wed, 28 Mar 2018 00:23:37 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Wed, 28 Mar 2018 00:23:37 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 28 Mar 2018 00:24:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:24:03 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 28 Mar 2018 00:24:04 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 28 Mar 2018 00:24:04 GMT
WORKDIR /var/lib/jetty
# Wed, 28 Mar 2018 00:24:07 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:24:07 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 28 Mar 2018 00:24:08 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 28 Mar 2018 00:24:09 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 28 Mar 2018 00:24:09 GMT
USER [jetty]
# Wed, 28 Mar 2018 00:24:09 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 00:24:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 00:24:10 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9a53c345d81ad8a261443a92d603617b7b0f3c8d61c2828f08ad172829a4e`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af2dd6a0a77f77827f0c10883cc97695d08bd9fa8d203124b63bce5d8e32c0a`  
		Last Modified: Wed, 14 Mar 2018 11:52:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0519972ef87d1d7dc8cc2b734fad1999d79abd8e5c2b0e32b4c70fe85e25005`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712efbf66aaf3944af91c3f31d1d452922b4160c7b0fc8f7a505eac2ca36d04c`  
		Last Modified: Mon, 19 Mar 2018 22:03:59 GMT  
		Size: 284.8 MB (284826900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b99eee195b390c3d0dbc6478022e7a561a0c3df72e8522277c7879e9e2c5f5f`  
		Last Modified: Wed, 28 Mar 2018 00:26:46 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8466e363e0a8a1117a07d4dc94168524b3a2c3aa2fc4cf20f0082d90b1014`  
		Last Modified: Wed, 28 Mar 2018 00:26:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e500c4b796626c477fa63c3188d568d3ac31eefca33425a77c5891b5f4360502`  
		Last Modified: Wed, 28 Mar 2018 00:26:44 GMT  
		Size: 8.4 MB (8398441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8235f74bea20bc07da8f1c4cc5effbf5bf83385456dfb933405b58aaf2d44a3d`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9c7eaf50c6992768d355ac71b8d4a55b21015783dbaac75ed8c070959b1a6`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cadbfb62992349eb78f9ab5c00cf4f97736c7776453f8eec3ad833b8b99af7`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80899169fe3d70e8413133470860c1b9395c8e6bbed215a94ab0976594865925`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.9-jre8-alpine`

```console
$ docker pull jetty@sha256:840bbf942e6a5aad384e460983491dcf8e9245e187b54761083030458ff08807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4.9-jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:e9eee839ab9a4ab4fb5b8ece09f706d73d9b16a16ba6f648d90fe920d3f0e7ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64957694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e374463672d6360632892ac24459fedbf6c3a199e8e598c23085264fd5be59`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:08:55 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 10 Jan 2018 08:08:55 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 10 Jan 2018 08:09:04 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 08:09:05 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 10 Jan 2018 08:09:15 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:43:57 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:43:57 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:43:58 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:43:58 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:44:03 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:44:03 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:44:04 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:44:04 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:44:05 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:44:05 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:44:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:44:05 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e13391b3ecf9aadc6968371a4f783b8dacf673035afd804a877ac29ce481aac`  
		Last Modified: Wed, 10 Jan 2018 08:11:26 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a98da51f7d11a5a36433e908f3d3853158b15186bd21dc38bd66924d3a963`  
		Last Modified: Wed, 10 Jan 2018 08:11:25 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a4259f5f32446975ebb6eb10172917f1dd57132104ffe1ac6a00025ea96cdb`  
		Last Modified: Thu, 22 Mar 2018 02:50:14 GMT  
		Size: 8.4 MB (8433083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069251f2bd68e94fb4bb0ec4bb7d4d02c7afa389c8a0551e3669c9b459204b1a`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947a5a0d9626b38e3b979467a64e8437684f4ad8bca95478f3fcb668c622ed92`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9de715454250d52b9ad4cd4db1f96480ef68312cccc84decb7bc826a8bc0d33`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25c1aac58f097a6782b04b36c309565b8d68a52d28932aaffb0e48072c25388`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4-alpine`

```console
$ docker pull jetty@sha256:840bbf942e6a5aad384e460983491dcf8e9245e187b54761083030458ff08807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:e9eee839ab9a4ab4fb5b8ece09f706d73d9b16a16ba6f648d90fe920d3f0e7ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64957694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e374463672d6360632892ac24459fedbf6c3a199e8e598c23085264fd5be59`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:08:55 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 10 Jan 2018 08:08:55 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 10 Jan 2018 08:09:04 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 08:09:05 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 10 Jan 2018 08:09:15 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:43:57 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:43:57 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:43:58 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:43:58 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:44:03 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:44:03 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:44:04 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:44:04 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:44:05 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:44:05 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:44:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:44:05 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e13391b3ecf9aadc6968371a4f783b8dacf673035afd804a877ac29ce481aac`  
		Last Modified: Wed, 10 Jan 2018 08:11:26 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a98da51f7d11a5a36433e908f3d3853158b15186bd21dc38bd66924d3a963`  
		Last Modified: Wed, 10 Jan 2018 08:11:25 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a4259f5f32446975ebb6eb10172917f1dd57132104ffe1ac6a00025ea96cdb`  
		Last Modified: Thu, 22 Mar 2018 02:50:14 GMT  
		Size: 8.4 MB (8433083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069251f2bd68e94fb4bb0ec4bb7d4d02c7afa389c8a0551e3669c9b459204b1a`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947a5a0d9626b38e3b979467a64e8437684f4ad8bca95478f3fcb668c622ed92`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9de715454250d52b9ad4cd4db1f96480ef68312cccc84decb7bc826a8bc0d33`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25c1aac58f097a6782b04b36c309565b8d68a52d28932aaffb0e48072c25388`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4-jre8`

```console
$ docker pull jetty@sha256:4c145ec305dfdaa87a3519c4c62785e7ddec23e9e6f54672e06b869dec4751f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:7fffbbedc56e841bc690a1e485c5f0c6a8759b2718475e51f0de982c658da92c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.1 MB (409127781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb80c4e6aa9fc5058748172a99394d9eda614d96ad45378f31089f3e0d7afdb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 10:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:41:30 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:15:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:16:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 20:16:52 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 00:23:35 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 00:23:36 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 28 Mar 2018 00:23:36 GMT
WORKDIR /usr/local/jetty
# Wed, 28 Mar 2018 00:23:36 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Wed, 28 Mar 2018 00:23:37 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Wed, 28 Mar 2018 00:23:37 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 28 Mar 2018 00:24:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:24:03 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 28 Mar 2018 00:24:04 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 28 Mar 2018 00:24:04 GMT
WORKDIR /var/lib/jetty
# Wed, 28 Mar 2018 00:24:07 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:24:07 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 28 Mar 2018 00:24:08 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 28 Mar 2018 00:24:09 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 28 Mar 2018 00:24:09 GMT
USER [jetty]
# Wed, 28 Mar 2018 00:24:09 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 00:24:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 00:24:10 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9a53c345d81ad8a261443a92d603617b7b0f3c8d61c2828f08ad172829a4e`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af2dd6a0a77f77827f0c10883cc97695d08bd9fa8d203124b63bce5d8e32c0a`  
		Last Modified: Wed, 14 Mar 2018 11:52:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0519972ef87d1d7dc8cc2b734fad1999d79abd8e5c2b0e32b4c70fe85e25005`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712efbf66aaf3944af91c3f31d1d452922b4160c7b0fc8f7a505eac2ca36d04c`  
		Last Modified: Mon, 19 Mar 2018 22:03:59 GMT  
		Size: 284.8 MB (284826900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b99eee195b390c3d0dbc6478022e7a561a0c3df72e8522277c7879e9e2c5f5f`  
		Last Modified: Wed, 28 Mar 2018 00:26:46 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8466e363e0a8a1117a07d4dc94168524b3a2c3aa2fc4cf20f0082d90b1014`  
		Last Modified: Wed, 28 Mar 2018 00:26:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e500c4b796626c477fa63c3188d568d3ac31eefca33425a77c5891b5f4360502`  
		Last Modified: Wed, 28 Mar 2018 00:26:44 GMT  
		Size: 8.4 MB (8398441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8235f74bea20bc07da8f1c4cc5effbf5bf83385456dfb933405b58aaf2d44a3d`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9c7eaf50c6992768d355ac71b8d4a55b21015783dbaac75ed8c070959b1a6`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cadbfb62992349eb78f9ab5c00cf4f97736c7776453f8eec3ad833b8b99af7`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80899169fe3d70e8413133470860c1b9395c8e6bbed215a94ab0976594865925`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4-jre8-alpine`

```console
$ docker pull jetty@sha256:840bbf942e6a5aad384e460983491dcf8e9245e187b54761083030458ff08807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9.4-jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:e9eee839ab9a4ab4fb5b8ece09f706d73d9b16a16ba6f648d90fe920d3f0e7ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64957694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e374463672d6360632892ac24459fedbf6c3a199e8e598c23085264fd5be59`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:08:55 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 10 Jan 2018 08:08:55 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 10 Jan 2018 08:09:04 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 08:09:05 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 10 Jan 2018 08:09:15 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:43:57 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:43:57 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:43:58 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:43:58 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:44:03 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:44:03 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:44:04 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:44:04 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:44:05 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:44:05 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:44:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:44:05 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e13391b3ecf9aadc6968371a4f783b8dacf673035afd804a877ac29ce481aac`  
		Last Modified: Wed, 10 Jan 2018 08:11:26 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a98da51f7d11a5a36433e908f3d3853158b15186bd21dc38bd66924d3a963`  
		Last Modified: Wed, 10 Jan 2018 08:11:25 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a4259f5f32446975ebb6eb10172917f1dd57132104ffe1ac6a00025ea96cdb`  
		Last Modified: Thu, 22 Mar 2018 02:50:14 GMT  
		Size: 8.4 MB (8433083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069251f2bd68e94fb4bb0ec4bb7d4d02c7afa389c8a0551e3669c9b459204b1a`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947a5a0d9626b38e3b979467a64e8437684f4ad8bca95478f3fcb668c622ed92`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9de715454250d52b9ad4cd4db1f96480ef68312cccc84decb7bc826a8bc0d33`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25c1aac58f097a6782b04b36c309565b8d68a52d28932aaffb0e48072c25388`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-alpine`

```console
$ docker pull jetty@sha256:840bbf942e6a5aad384e460983491dcf8e9245e187b54761083030458ff08807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:e9eee839ab9a4ab4fb5b8ece09f706d73d9b16a16ba6f648d90fe920d3f0e7ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64957694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e374463672d6360632892ac24459fedbf6c3a199e8e598c23085264fd5be59`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:08:55 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 10 Jan 2018 08:08:55 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 10 Jan 2018 08:09:04 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 08:09:05 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 10 Jan 2018 08:09:15 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:43:57 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:43:57 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:43:58 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:43:58 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:44:03 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:44:03 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:44:04 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:44:04 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:44:05 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:44:05 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:44:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:44:05 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e13391b3ecf9aadc6968371a4f783b8dacf673035afd804a877ac29ce481aac`  
		Last Modified: Wed, 10 Jan 2018 08:11:26 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a98da51f7d11a5a36433e908f3d3853158b15186bd21dc38bd66924d3a963`  
		Last Modified: Wed, 10 Jan 2018 08:11:25 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a4259f5f32446975ebb6eb10172917f1dd57132104ffe1ac6a00025ea96cdb`  
		Last Modified: Thu, 22 Mar 2018 02:50:14 GMT  
		Size: 8.4 MB (8433083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069251f2bd68e94fb4bb0ec4bb7d4d02c7afa389c8a0551e3669c9b459204b1a`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947a5a0d9626b38e3b979467a64e8437684f4ad8bca95478f3fcb668c622ed92`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9de715454250d52b9ad4cd4db1f96480ef68312cccc84decb7bc826a8bc0d33`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25c1aac58f097a6782b04b36c309565b8d68a52d28932aaffb0e48072c25388`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre7`

```console
$ docker pull jetty@sha256:27eb643fb572dad4ea166425c2aaa21be4de3db05ed521a764df8526584d792e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9-jre7` - linux; amd64

```console
$ docker pull jetty@sha256:88bdacaabf3185e1ba857c4be32748e4204e4199ba8a6c6894ab46974bd97437
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.8 MB (410757603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e157ae879cca66f81f43a2f0acf0ea8760606a607019060d09efb108b03bd64`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 10:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:41:30 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:15:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:16:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 20:16:52 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 00:23:35 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 00:23:36 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 28 Mar 2018 00:23:36 GMT
WORKDIR /usr/local/jetty
# Wed, 28 Mar 2018 00:25:21 GMT
ENV JETTY_VERSION=9.2.24.v20180105
# Wed, 28 Mar 2018 00:25:21 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.24.v20180105/jetty-distribution-9.2.24.v20180105.tar.gz
# Wed, 28 Mar 2018 00:25:21 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 28 Mar 2018 00:25:50 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:25:50 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 28 Mar 2018 00:25:51 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 28 Mar 2018 00:25:51 GMT
WORKDIR /var/lib/jetty
# Wed, 28 Mar 2018 00:25:53 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:25:53 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 28 Mar 2018 00:25:54 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 28 Mar 2018 00:25:54 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 28 Mar 2018 00:25:55 GMT
USER [jetty]
# Wed, 28 Mar 2018 00:25:55 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 00:25:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 00:25:55 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9a53c345d81ad8a261443a92d603617b7b0f3c8d61c2828f08ad172829a4e`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af2dd6a0a77f77827f0c10883cc97695d08bd9fa8d203124b63bce5d8e32c0a`  
		Last Modified: Wed, 14 Mar 2018 11:52:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0519972ef87d1d7dc8cc2b734fad1999d79abd8e5c2b0e32b4c70fe85e25005`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712efbf66aaf3944af91c3f31d1d452922b4160c7b0fc8f7a505eac2ca36d04c`  
		Last Modified: Mon, 19 Mar 2018 22:03:59 GMT  
		Size: 284.8 MB (284826900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b99eee195b390c3d0dbc6478022e7a561a0c3df72e8522277c7879e9e2c5f5f`  
		Last Modified: Wed, 28 Mar 2018 00:26:46 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8466e363e0a8a1117a07d4dc94168524b3a2c3aa2fc4cf20f0082d90b1014`  
		Last Modified: Wed, 28 Mar 2018 00:26:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85842f316a7cc8bf44347aa562d52cc6f99c4482a1f79de9f008c8bb42acb824`  
		Last Modified: Wed, 28 Mar 2018 00:30:52 GMT  
		Size: 10.0 MB (10028791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d863b6c425fe51f497bab3b6fee5655f6cea3f96b12815071e121946a39cd752`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400a1ca1ef8ce2cf022b8a3feee136d92b8bdd037123e81cb6a906529a1d82c4`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0893b01e169f54b6ae3a89d742c8d7d67ab61e3f2583910d264754193226aca7`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:002d7f640b011cea4b911137e5ff5a9f4e084f00506d0a093bbdb025217bed4b`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8`

```console
$ docker pull jetty@sha256:4c145ec305dfdaa87a3519c4c62785e7ddec23e9e6f54672e06b869dec4751f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:7fffbbedc56e841bc690a1e485c5f0c6a8759b2718475e51f0de982c658da92c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.1 MB (409127781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb80c4e6aa9fc5058748172a99394d9eda614d96ad45378f31089f3e0d7afdb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 10:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:41:30 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:15:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:16:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 20:16:52 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 00:23:35 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 00:23:36 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 28 Mar 2018 00:23:36 GMT
WORKDIR /usr/local/jetty
# Wed, 28 Mar 2018 00:23:36 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Wed, 28 Mar 2018 00:23:37 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Wed, 28 Mar 2018 00:23:37 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 28 Mar 2018 00:24:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:24:03 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 28 Mar 2018 00:24:04 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 28 Mar 2018 00:24:04 GMT
WORKDIR /var/lib/jetty
# Wed, 28 Mar 2018 00:24:07 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:24:07 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 28 Mar 2018 00:24:08 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 28 Mar 2018 00:24:09 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 28 Mar 2018 00:24:09 GMT
USER [jetty]
# Wed, 28 Mar 2018 00:24:09 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 00:24:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 00:24:10 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9a53c345d81ad8a261443a92d603617b7b0f3c8d61c2828f08ad172829a4e`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af2dd6a0a77f77827f0c10883cc97695d08bd9fa8d203124b63bce5d8e32c0a`  
		Last Modified: Wed, 14 Mar 2018 11:52:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0519972ef87d1d7dc8cc2b734fad1999d79abd8e5c2b0e32b4c70fe85e25005`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712efbf66aaf3944af91c3f31d1d452922b4160c7b0fc8f7a505eac2ca36d04c`  
		Last Modified: Mon, 19 Mar 2018 22:03:59 GMT  
		Size: 284.8 MB (284826900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b99eee195b390c3d0dbc6478022e7a561a0c3df72e8522277c7879e9e2c5f5f`  
		Last Modified: Wed, 28 Mar 2018 00:26:46 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8466e363e0a8a1117a07d4dc94168524b3a2c3aa2fc4cf20f0082d90b1014`  
		Last Modified: Wed, 28 Mar 2018 00:26:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e500c4b796626c477fa63c3188d568d3ac31eefca33425a77c5891b5f4360502`  
		Last Modified: Wed, 28 Mar 2018 00:26:44 GMT  
		Size: 8.4 MB (8398441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8235f74bea20bc07da8f1c4cc5effbf5bf83385456dfb933405b58aaf2d44a3d`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9c7eaf50c6992768d355ac71b8d4a55b21015783dbaac75ed8c070959b1a6`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cadbfb62992349eb78f9ab5c00cf4f97736c7776453f8eec3ad833b8b99af7`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80899169fe3d70e8413133470860c1b9395c8e6bbed215a94ab0976594865925`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8-alpine`

```console
$ docker pull jetty@sha256:840bbf942e6a5aad384e460983491dcf8e9245e187b54761083030458ff08807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9-jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:e9eee839ab9a4ab4fb5b8ece09f706d73d9b16a16ba6f648d90fe920d3f0e7ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64957694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e374463672d6360632892ac24459fedbf6c3a199e8e598c23085264fd5be59`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:08:55 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 10 Jan 2018 08:08:55 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 10 Jan 2018 08:09:04 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 08:09:05 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 10 Jan 2018 08:09:15 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:43:57 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:43:57 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:43:58 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:43:58 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:44:03 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:44:03 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:44:04 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:44:04 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:44:05 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:44:05 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:44:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:44:05 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e13391b3ecf9aadc6968371a4f783b8dacf673035afd804a877ac29ce481aac`  
		Last Modified: Wed, 10 Jan 2018 08:11:26 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a98da51f7d11a5a36433e908f3d3853158b15186bd21dc38bd66924d3a963`  
		Last Modified: Wed, 10 Jan 2018 08:11:25 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a4259f5f32446975ebb6eb10172917f1dd57132104ffe1ac6a00025ea96cdb`  
		Last Modified: Thu, 22 Mar 2018 02:50:14 GMT  
		Size: 8.4 MB (8433083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069251f2bd68e94fb4bb0ec4bb7d4d02c7afa389c8a0551e3669c9b459204b1a`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947a5a0d9626b38e3b979467a64e8437684f4ad8bca95478f3fcb668c622ed92`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9de715454250d52b9ad4cd4db1f96480ef68312cccc84decb7bc826a8bc0d33`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25c1aac58f097a6782b04b36c309565b8d68a52d28932aaffb0e48072c25388`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:alpine`

```console
$ docker pull jetty@sha256:840bbf942e6a5aad384e460983491dcf8e9245e187b54761083030458ff08807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:alpine` - linux; amd64

```console
$ docker pull jetty@sha256:e9eee839ab9a4ab4fb5b8ece09f706d73d9b16a16ba6f648d90fe920d3f0e7ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64957694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e374463672d6360632892ac24459fedbf6c3a199e8e598c23085264fd5be59`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:08:55 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 10 Jan 2018 08:08:55 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 10 Jan 2018 08:09:04 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 08:09:05 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 10 Jan 2018 08:09:15 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:43:57 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:43:57 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:43:58 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:43:58 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:44:03 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:44:03 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:44:04 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:44:04 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:44:05 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:44:05 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:44:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:44:05 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e13391b3ecf9aadc6968371a4f783b8dacf673035afd804a877ac29ce481aac`  
		Last Modified: Wed, 10 Jan 2018 08:11:26 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a98da51f7d11a5a36433e908f3d3853158b15186bd21dc38bd66924d3a963`  
		Last Modified: Wed, 10 Jan 2018 08:11:25 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a4259f5f32446975ebb6eb10172917f1dd57132104ffe1ac6a00025ea96cdb`  
		Last Modified: Thu, 22 Mar 2018 02:50:14 GMT  
		Size: 8.4 MB (8433083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069251f2bd68e94fb4bb0ec4bb7d4d02c7afa389c8a0551e3669c9b459204b1a`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947a5a0d9626b38e3b979467a64e8437684f4ad8bca95478f3fcb668c622ed92`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9de715454250d52b9ad4cd4db1f96480ef68312cccc84decb7bc826a8bc0d33`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25c1aac58f097a6782b04b36c309565b8d68a52d28932aaffb0e48072c25388`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre7`

```console
$ docker pull jetty@sha256:27eb643fb572dad4ea166425c2aaa21be4de3db05ed521a764df8526584d792e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:jre7` - linux; amd64

```console
$ docker pull jetty@sha256:88bdacaabf3185e1ba857c4be32748e4204e4199ba8a6c6894ab46974bd97437
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.8 MB (410757603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e157ae879cca66f81f43a2f0acf0ea8760606a607019060d09efb108b03bd64`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 10:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:41:30 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:15:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:16:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 20:16:52 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 00:23:35 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 00:23:36 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 28 Mar 2018 00:23:36 GMT
WORKDIR /usr/local/jetty
# Wed, 28 Mar 2018 00:25:21 GMT
ENV JETTY_VERSION=9.2.24.v20180105
# Wed, 28 Mar 2018 00:25:21 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.24.v20180105/jetty-distribution-9.2.24.v20180105.tar.gz
# Wed, 28 Mar 2018 00:25:21 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 28 Mar 2018 00:25:50 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:25:50 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 28 Mar 2018 00:25:51 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 28 Mar 2018 00:25:51 GMT
WORKDIR /var/lib/jetty
# Wed, 28 Mar 2018 00:25:53 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:25:53 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 28 Mar 2018 00:25:54 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 28 Mar 2018 00:25:54 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 28 Mar 2018 00:25:55 GMT
USER [jetty]
# Wed, 28 Mar 2018 00:25:55 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 00:25:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 00:25:55 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9a53c345d81ad8a261443a92d603617b7b0f3c8d61c2828f08ad172829a4e`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af2dd6a0a77f77827f0c10883cc97695d08bd9fa8d203124b63bce5d8e32c0a`  
		Last Modified: Wed, 14 Mar 2018 11:52:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0519972ef87d1d7dc8cc2b734fad1999d79abd8e5c2b0e32b4c70fe85e25005`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712efbf66aaf3944af91c3f31d1d452922b4160c7b0fc8f7a505eac2ca36d04c`  
		Last Modified: Mon, 19 Mar 2018 22:03:59 GMT  
		Size: 284.8 MB (284826900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b99eee195b390c3d0dbc6478022e7a561a0c3df72e8522277c7879e9e2c5f5f`  
		Last Modified: Wed, 28 Mar 2018 00:26:46 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8466e363e0a8a1117a07d4dc94168524b3a2c3aa2fc4cf20f0082d90b1014`  
		Last Modified: Wed, 28 Mar 2018 00:26:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85842f316a7cc8bf44347aa562d52cc6f99c4482a1f79de9f008c8bb42acb824`  
		Last Modified: Wed, 28 Mar 2018 00:30:52 GMT  
		Size: 10.0 MB (10028791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d863b6c425fe51f497bab3b6fee5655f6cea3f96b12815071e121946a39cd752`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400a1ca1ef8ce2cf022b8a3feee136d92b8bdd037123e81cb6a906529a1d82c4`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0893b01e169f54b6ae3a89d742c8d7d67ab61e3f2583910d264754193226aca7`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:002d7f640b011cea4b911137e5ff5a9f4e084f00506d0a093bbdb025217bed4b`  
		Last Modified: Wed, 28 Mar 2018 00:30:51 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8`

```console
$ docker pull jetty@sha256:4c145ec305dfdaa87a3519c4c62785e7ddec23e9e6f54672e06b869dec4751f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:jre8` - linux; amd64

```console
$ docker pull jetty@sha256:7fffbbedc56e841bc690a1e485c5f0c6a8759b2718475e51f0de982c658da92c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.1 MB (409127781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb80c4e6aa9fc5058748172a99394d9eda614d96ad45378f31089f3e0d7afdb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 10:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:41:30 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:15:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:16:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 20:16:52 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 00:23:35 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 00:23:36 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 28 Mar 2018 00:23:36 GMT
WORKDIR /usr/local/jetty
# Wed, 28 Mar 2018 00:23:36 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Wed, 28 Mar 2018 00:23:37 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Wed, 28 Mar 2018 00:23:37 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 28 Mar 2018 00:24:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:24:03 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 28 Mar 2018 00:24:04 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 28 Mar 2018 00:24:04 GMT
WORKDIR /var/lib/jetty
# Wed, 28 Mar 2018 00:24:07 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:24:07 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 28 Mar 2018 00:24:08 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 28 Mar 2018 00:24:09 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 28 Mar 2018 00:24:09 GMT
USER [jetty]
# Wed, 28 Mar 2018 00:24:09 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 00:24:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 00:24:10 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9a53c345d81ad8a261443a92d603617b7b0f3c8d61c2828f08ad172829a4e`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af2dd6a0a77f77827f0c10883cc97695d08bd9fa8d203124b63bce5d8e32c0a`  
		Last Modified: Wed, 14 Mar 2018 11:52:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0519972ef87d1d7dc8cc2b734fad1999d79abd8e5c2b0e32b4c70fe85e25005`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712efbf66aaf3944af91c3f31d1d452922b4160c7b0fc8f7a505eac2ca36d04c`  
		Last Modified: Mon, 19 Mar 2018 22:03:59 GMT  
		Size: 284.8 MB (284826900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b99eee195b390c3d0dbc6478022e7a561a0c3df72e8522277c7879e9e2c5f5f`  
		Last Modified: Wed, 28 Mar 2018 00:26:46 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8466e363e0a8a1117a07d4dc94168524b3a2c3aa2fc4cf20f0082d90b1014`  
		Last Modified: Wed, 28 Mar 2018 00:26:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e500c4b796626c477fa63c3188d568d3ac31eefca33425a77c5891b5f4360502`  
		Last Modified: Wed, 28 Mar 2018 00:26:44 GMT  
		Size: 8.4 MB (8398441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8235f74bea20bc07da8f1c4cc5effbf5bf83385456dfb933405b58aaf2d44a3d`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9c7eaf50c6992768d355ac71b8d4a55b21015783dbaac75ed8c070959b1a6`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cadbfb62992349eb78f9ab5c00cf4f97736c7776453f8eec3ad833b8b99af7`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80899169fe3d70e8413133470860c1b9395c8e6bbed215a94ab0976594865925`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8-alpine`

```console
$ docker pull jetty@sha256:840bbf942e6a5aad384e460983491dcf8e9245e187b54761083030458ff08807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:e9eee839ab9a4ab4fb5b8ece09f706d73d9b16a16ba6f648d90fe920d3f0e7ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64957694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e374463672d6360632892ac24459fedbf6c3a199e8e598c23085264fd5be59`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:08:55 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 10 Jan 2018 08:08:55 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 10 Jan 2018 08:09:04 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 08:09:05 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 10 Jan 2018 08:09:15 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:43:57 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:43:57 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:43:58 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:43:58 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:44:03 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:44:03 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:44:04 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:44:04 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:44:05 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:44:05 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:44:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:44:05 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e13391b3ecf9aadc6968371a4f783b8dacf673035afd804a877ac29ce481aac`  
		Last Modified: Wed, 10 Jan 2018 08:11:26 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a98da51f7d11a5a36433e908f3d3853158b15186bd21dc38bd66924d3a963`  
		Last Modified: Wed, 10 Jan 2018 08:11:25 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a4259f5f32446975ebb6eb10172917f1dd57132104ffe1ac6a00025ea96cdb`  
		Last Modified: Thu, 22 Mar 2018 02:50:14 GMT  
		Size: 8.4 MB (8433083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069251f2bd68e94fb4bb0ec4bb7d4d02c7afa389c8a0551e3669c9b459204b1a`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947a5a0d9626b38e3b979467a64e8437684f4ad8bca95478f3fcb668c622ed92`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9de715454250d52b9ad4cd4db1f96480ef68312cccc84decb7bc826a8bc0d33`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25c1aac58f097a6782b04b36c309565b8d68a52d28932aaffb0e48072c25388`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:latest`

```console
$ docker pull jetty@sha256:4c145ec305dfdaa87a3519c4c62785e7ddec23e9e6f54672e06b869dec4751f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:latest` - linux; amd64

```console
$ docker pull jetty@sha256:7fffbbedc56e841bc690a1e485c5f0c6a8759b2718475e51f0de982c658da92c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.1 MB (409127781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb80c4e6aa9fc5058748172a99394d9eda614d96ad45378f31089f3e0d7afdb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 10:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:41:30 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:15:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:16:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 20:16:52 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 00:23:35 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 28 Mar 2018 00:23:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 00:23:36 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 28 Mar 2018 00:23:36 GMT
WORKDIR /usr/local/jetty
# Wed, 28 Mar 2018 00:23:36 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Wed, 28 Mar 2018 00:23:37 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Wed, 28 Mar 2018 00:23:37 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 28 Mar 2018 00:24:03 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:24:03 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 28 Mar 2018 00:24:04 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 28 Mar 2018 00:24:04 GMT
WORKDIR /var/lib/jetty
# Wed, 28 Mar 2018 00:24:07 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 28 Mar 2018 00:24:07 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 28 Mar 2018 00:24:08 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 28 Mar 2018 00:24:09 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 28 Mar 2018 00:24:09 GMT
USER [jetty]
# Wed, 28 Mar 2018 00:24:09 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 00:24:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 00:24:10 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9a53c345d81ad8a261443a92d603617b7b0f3c8d61c2828f08ad172829a4e`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af2dd6a0a77f77827f0c10883cc97695d08bd9fa8d203124b63bce5d8e32c0a`  
		Last Modified: Wed, 14 Mar 2018 11:52:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0519972ef87d1d7dc8cc2b734fad1999d79abd8e5c2b0e32b4c70fe85e25005`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712efbf66aaf3944af91c3f31d1d452922b4160c7b0fc8f7a505eac2ca36d04c`  
		Last Modified: Mon, 19 Mar 2018 22:03:59 GMT  
		Size: 284.8 MB (284826900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b99eee195b390c3d0dbc6478022e7a561a0c3df72e8522277c7879e9e2c5f5f`  
		Last Modified: Wed, 28 Mar 2018 00:26:46 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8466e363e0a8a1117a07d4dc94168524b3a2c3aa2fc4cf20f0082d90b1014`  
		Last Modified: Wed, 28 Mar 2018 00:26:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e500c4b796626c477fa63c3188d568d3ac31eefca33425a77c5891b5f4360502`  
		Last Modified: Wed, 28 Mar 2018 00:26:44 GMT  
		Size: 8.4 MB (8398441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8235f74bea20bc07da8f1c4cc5effbf5bf83385456dfb933405b58aaf2d44a3d`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9c7eaf50c6992768d355ac71b8d4a55b21015783dbaac75ed8c070959b1a6`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cadbfb62992349eb78f9ab5c00cf4f97736c7776453f8eec3ad833b8b99af7`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80899169fe3d70e8413133470860c1b9395c8e6bbed215a94ab0976594865925`  
		Last Modified: Wed, 28 Mar 2018 00:26:43 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

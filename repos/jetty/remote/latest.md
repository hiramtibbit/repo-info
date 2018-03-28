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

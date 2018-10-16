## `jetty:9-jre8`

```console
$ docker pull jetty@sha256:6716d950c56ae26118822acd5b881f9667719154a53a99d39d0a13540b590f69
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

### `jetty:9-jre8` - linux; amd64

```console
$ docker pull jetty@sha256:302a3223749ad5da8dc96f03c27fd48855857f9c64076a27e2ea1fb8744797ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.1 MB (192122577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:933d32291d35d6be9b8ebef951253bd8a95b56d624c2b28e573f12d80a413719`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Tue, 16 Oct 2018 17:29:41 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 16 Oct 2018 17:29:41 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 16 Oct 2018 17:29:41 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 17:29:42 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 16 Oct 2018 17:29:42 GMT
WORKDIR /usr/local/jetty
# Tue, 16 Oct 2018 17:29:42 GMT
ENV JETTY_VERSION=9.4.12.v20180830
# Tue, 16 Oct 2018 17:29:43 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.12.v20180830/jetty-home-9.4.12.v20180830.tar.gz
# Tue, 16 Oct 2018 17:29:43 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 16 Oct 2018 17:29:48 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 16 Oct 2018 17:29:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 16 Oct 2018 17:29:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 16 Oct 2018 17:29:49 GMT
WORKDIR /var/lib/jetty
# Tue, 16 Oct 2018 17:29:52 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 16 Oct 2018 17:29:52 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 16 Oct 2018 17:29:53 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 16 Oct 2018 17:29:54 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 16 Oct 2018 17:29:54 GMT
USER [jetty]
# Tue, 16 Oct 2018 17:29:54 GMT
EXPOSE 8080/tcp
# Tue, 16 Oct 2018 17:29:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 17:29:55 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:0eb15be4266431e6ff37aefa3bcf8f43bda16aa1c6f81ed880917c34eda9e2ae`  
		Last Modified: Tue, 16 Oct 2018 17:32:21 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb465c693323bdf1ff14b3046df2c86246b23aff202c9ea62ed303a952cccef1`  
		Last Modified: Tue, 16 Oct 2018 17:32:21 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da66caddfbb55b2fb3ed783aa21281e0902f69f2168cef919434ebcfb71ef832`  
		Last Modified: Tue, 16 Oct 2018 17:32:22 GMT  
		Size: 8.5 MB (8508605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e0adab8947d02eded346277fea9e9f93b41da44df19f2047c0380ba4ac21955`  
		Last Modified: Tue, 16 Oct 2018 17:32:20 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493d55a1364367fde97aee65f9e628c90bc9308328dfe32ae03ae09094873d24`  
		Last Modified: Tue, 16 Oct 2018 17:32:20 GMT  
		Size: 2.0 KB (1958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c09cf3d25e9ec7a4e5db0b041c3ede92379f996532b55d01861613eddbcf8e`  
		Last Modified: Tue, 16 Oct 2018 17:32:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ffdb4b60f8f066ce3c7d46518f24b9986d84d2f6681468457d398e9498083d0`  
		Last Modified: Tue, 16 Oct 2018 17:32:20 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-jre8` - linux; arm variant v5

```console
$ docker pull jetty@sha256:419a215c9cdd90c5c0881d8de02e625dabec86e958826a284541866d30192869
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.5 MB (179508370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:341a702751d1eef56ed3ea103e18d66a8f9e48af1143f0ce2f9c5f2cb362d9a2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Tue, 16 Oct 2018 12:47:32 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 12:47:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 12:48:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 12:48:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 12:58:23 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 16 Oct 2018 12:58:25 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 16 Oct 2018 12:58:27 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 12:58:28 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 16 Oct 2018 12:58:29 GMT
WORKDIR /usr/local/jetty
# Tue, 16 Oct 2018 12:58:34 GMT
ENV JETTY_VERSION=9.4.12.v20180830
# Tue, 16 Oct 2018 12:58:34 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.12.v20180830/jetty-home-9.4.12.v20180830.tar.gz
# Tue, 16 Oct 2018 12:58:35 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 16 Oct 2018 12:58:42 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 16 Oct 2018 12:58:42 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 16 Oct 2018 12:58:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 16 Oct 2018 12:58:45 GMT
WORKDIR /var/lib/jetty
# Tue, 16 Oct 2018 12:58:50 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 16 Oct 2018 12:58:50 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 16 Oct 2018 12:58:53 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 16 Oct 2018 12:58:54 GMT
USER [jetty]
# Tue, 16 Oct 2018 12:58:54 GMT
EXPOSE 8080/tcp
# Tue, 16 Oct 2018 12:58:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 12:58:57 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:38651e7e006c33697138c557d5ac86f7730c2ceb742bcea24c460ba18f4bceb1`  
		Last Modified: Tue, 16 Oct 2018 12:57:32 GMT  
		Size: 111.9 MB (111903744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b98c7adfbef1a14ffe720f34f6f9a395a398783d3b6edcfe96b88defea79cb`  
		Last Modified: Tue, 16 Oct 2018 12:56:56 GMT  
		Size: 246.8 KB (246750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aeb4406f81ca75b8c0485d0095de0b9b2589a0f24c6f10a93694e0b8e8a1def`  
		Last Modified: Tue, 16 Oct 2018 13:00:23 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87ffd636089cd2c2c9da86b2426943a6f274a2008869a7903e17dda60c1445b`  
		Last Modified: Tue, 16 Oct 2018 13:00:23 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da79a6ad57733c8e7b88348e8efe872191fbcc7830aa88de3496a7ba84d3437d`  
		Last Modified: Tue, 16 Oct 2018 13:00:23 GMT  
		Size: 8.5 MB (8508706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d2c450420b709e310ec380b16cfb10f0e3321af567a4c77fb3ca48646389ea`  
		Last Modified: Tue, 16 Oct 2018 13:00:21 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d58b63158b8c4b5fcee33ebed861c8bb9d122a1117237cf6b67350c225dd400`  
		Last Modified: Tue, 16 Oct 2018 13:00:21 GMT  
		Size: 2.0 KB (2030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10730340ff2806afc197e87efc50354156bd75e25f88c6241d5d09082b95ff4d`  
		Last Modified: Tue, 16 Oct 2018 13:00:21 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e2196dd60e0028ab31b2637f9c877c68c8613fa294dff741cfc97754ace7c51`  
		Last Modified: Tue, 16 Oct 2018 13:00:21 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-jre8` - linux; arm variant v7

```console
$ docker pull jetty@sha256:8ea82b58654564fb462abcce8e1f6440fe8a25d1819ef8f21191efece336d67d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.6 MB (204568024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb83ca22a83b627995f6fdf93035909956ffd1ae314853b09f66f50a37578165`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Thu, 31 May 2018 12:51:45 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 31 May 2018 12:51:45 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 31 May 2018 12:51:45 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 May 2018 12:51:46 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 31 May 2018 12:51:47 GMT
WORKDIR /usr/local/jetty
# Fri, 14 Sep 2018 11:58:42 GMT
ENV JETTY_VERSION=9.4.12.v20180830
# Fri, 14 Sep 2018 11:58:43 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.12.v20180830/jetty-home-9.4.12.v20180830.tar.gz
# Fri, 14 Sep 2018 11:58:43 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 14 Sep 2018 11:58:47 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 14 Sep 2018 11:58:51 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 14 Sep 2018 11:59:00 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 14 Sep 2018 11:59:08 GMT
WORKDIR /var/lib/jetty
# Fri, 14 Sep 2018 11:59:10 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 14 Sep 2018 11:59:10 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 14 Sep 2018 11:59:11 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 14 Sep 2018 11:59:12 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 14 Sep 2018 11:59:12 GMT
USER [jetty]
# Fri, 14 Sep 2018 11:59:13 GMT
EXPOSE 8080/tcp
# Fri, 14 Sep 2018 11:59:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Sep 2018 11:59:21 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:12efdc71b9e99bd7995b3b0f47852504778ff84f64fcb8754e411477c41efbdc`  
		Last Modified: Thu, 31 May 2018 12:55:31 GMT  
		Size: 1.8 KB (1779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6b73c2bee605f60c6c47b42b1fe14e9019a844adc98533a4d356c4decc7e4c`  
		Last Modified: Thu, 31 May 2018 12:55:30 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9499ea44e9df00aa94551f7bf678a6407dbfd0ca95648636d6cc03ab7336b371`  
		Last Modified: Fri, 14 Sep 2018 12:01:11 GMT  
		Size: 8.5 MB (8508716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cecf12252074d8d4d5cc239ee3eaaf4e1f7277f6e5e592804bf997678901099`  
		Last Modified: Fri, 14 Sep 2018 12:01:08 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3568e6f85efb2935e2b44b59ffff3d94e864c02e1cf55b20e116f962ec8e1171`  
		Last Modified: Fri, 14 Sep 2018 12:01:07 GMT  
		Size: 2.0 KB (2029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5c3864be354180fe34318bd16a25c1efdc4045390a0f71855d7361fd056dc7`  
		Last Modified: Fri, 14 Sep 2018 12:01:07 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0adf8f0fbe8a565b7ba3d2489db3fa34062a07cedf49b742b8596b3480ab794`  
		Last Modified: Fri, 14 Sep 2018 12:01:08 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-jre8` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:749f0a606b39cbd9f84ea31837086e2c19a1ade0dd5742dcfd393b18b8a8e717
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.3 MB (179253298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0e80236f8a7fb4759877843efc542c3b93e1b0a1ae2d78afb676d3321df4250`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Thu, 06 Sep 2018 02:27:27 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 06 Sep 2018 02:27:28 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 06 Sep 2018 02:27:29 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 02:27:32 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 06 Sep 2018 02:27:34 GMT
WORKDIR /usr/local/jetty
# Sat, 15 Sep 2018 09:38:33 GMT
ENV JETTY_VERSION=9.4.12.v20180830
# Sat, 15 Sep 2018 09:38:34 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.12.v20180830/jetty-home-9.4.12.v20180830.tar.gz
# Sat, 15 Sep 2018 09:38:35 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 15 Sep 2018 09:38:41 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sat, 15 Sep 2018 09:38:42 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 15 Sep 2018 09:38:45 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 15 Sep 2018 09:38:45 GMT
WORKDIR /var/lib/jetty
# Sat, 15 Sep 2018 09:38:49 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 15 Sep 2018 09:38:49 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 15 Sep 2018 09:38:52 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 15 Sep 2018 09:38:53 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Sat, 15 Sep 2018 09:38:54 GMT
USER [jetty]
# Sat, 15 Sep 2018 09:38:54 GMT
EXPOSE 8080/tcp
# Sat, 15 Sep 2018 09:38:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 15 Sep 2018 09:38:56 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:fb94801d28587074d87753414b9186d09d7c6c568f2605d93b9dcd9cfee70186`  
		Last Modified: Thu, 06 Sep 2018 02:33:27 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9ced7621cee748a6ce3ae5467d9690ea52434b991fe73f439fae51a408138a`  
		Last Modified: Thu, 06 Sep 2018 02:33:26 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e536a218888d51d99be12306841869fadb50efe68e7208e969ffb2cd9f603d`  
		Last Modified: Sat, 15 Sep 2018 09:41:43 GMT  
		Size: 8.5 MB (8508594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ce3bb6b1bd288f2523b8af4e335503d2df646fe1e57a6d2f5cf3fc578ede1ea`  
		Last Modified: Sat, 15 Sep 2018 09:41:41 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f39afd21993ac16ffbd0cbaedf64b8f6e73ae41b763860bd2c42758175962b`  
		Last Modified: Sat, 15 Sep 2018 09:41:41 GMT  
		Size: 2.0 KB (1957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5014235b334cc2b960dce72be3ba133c0d35577c4de31a35b7703391cca4246`  
		Last Modified: Sat, 15 Sep 2018 09:41:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ef39622f8df6d8d87a1166e880d32c98313fba2ac0f001bfe77265588ac5d4`  
		Last Modified: Sat, 15 Sep 2018 09:41:41 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-jre8` - linux; 386

```console
$ docker pull jetty@sha256:ddccb9cf98cb0c5f1714d4cc2d1561ae355f8e1622f202f2b8d82944146b69ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.6 MB (193564026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10151e09e95054b07fca6469593c2839ab0151391d44da875718d6921ef275f6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Fri, 07 Sep 2018 02:22:43 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Fri, 07 Sep 2018 02:22:43 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 07 Sep 2018 02:22:44 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Sep 2018 02:22:44 GMT
RUN mkdir -p "$JETTY_HOME"
# Fri, 07 Sep 2018 02:22:44 GMT
WORKDIR /usr/local/jetty
# Fri, 14 Sep 2018 10:54:47 GMT
ENV JETTY_VERSION=9.4.12.v20180830
# Fri, 14 Sep 2018 10:54:47 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.12.v20180830/jetty-home-9.4.12.v20180830.tar.gz
# Fri, 14 Sep 2018 10:54:47 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 14 Sep 2018 10:54:52 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Fri, 14 Sep 2018 10:54:52 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 14 Sep 2018 10:54:53 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 14 Sep 2018 10:54:53 GMT
WORKDIR /var/lib/jetty
# Fri, 14 Sep 2018 10:54:54 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 14 Sep 2018 10:54:55 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 14 Sep 2018 10:54:55 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 14 Sep 2018 10:54:56 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 14 Sep 2018 10:54:56 GMT
USER [jetty]
# Fri, 14 Sep 2018 10:54:56 GMT
EXPOSE 8080/tcp
# Fri, 14 Sep 2018 10:54:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Sep 2018 10:54:56 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:afc14915dc06f007f74c15be9e94097e9fa7dc8f7ded8dab17ec96523eb33826`  
		Last Modified: Fri, 07 Sep 2018 02:24:14 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3835166f235920df9a710fa946cddd7148fbc92be31e9b124f0f5c8c9e0ceb`  
		Last Modified: Fri, 07 Sep 2018 02:24:15 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69ce0465a743075c1ead4ce1f207b20487c635b73f6a6f4d9fd3bac0357db63`  
		Last Modified: Fri, 14 Sep 2018 10:56:04 GMT  
		Size: 8.5 MB (8508588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e822836225cc7ce296874006372404389f18c41616efc89a088f8beffe4853`  
		Last Modified: Fri, 14 Sep 2018 10:56:03 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4dc722bd109d50058d16098ec9b6e081f1e56789aaeb1fcc5f0684e678074dd`  
		Last Modified: Fri, 14 Sep 2018 10:56:03 GMT  
		Size: 2.0 KB (1956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db80e9b7f5e063798d96c3ae32913b3e7bc7f8df1ec45aa5342bbf56e5f0550e`  
		Last Modified: Fri, 14 Sep 2018 10:56:03 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b77d0db27ceb0f27ad319646a4132c2c7efde2de97dab814fc4947275eeb995`  
		Last Modified: Fri, 14 Sep 2018 10:56:03 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-jre8` - linux; ppc64le

```console
$ docker pull jetty@sha256:0ee08ee74a1cf3b155b9c213d29898344b269b1ec203dd341d710db8a1636506
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.0 MB (183974133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac8adcae23c8c588ba8b7698431cca73299e5f1c67e27403fd4ce1b80042a62c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Tue, 16 Oct 2018 16:43:25 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 16 Oct 2018 16:43:26 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 16 Oct 2018 16:43:27 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 16:43:29 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 16 Oct 2018 16:43:32 GMT
WORKDIR /usr/local/jetty
# Tue, 16 Oct 2018 16:43:33 GMT
ENV JETTY_VERSION=9.4.12.v20180830
# Tue, 16 Oct 2018 16:43:34 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.12.v20180830/jetty-home-9.4.12.v20180830.tar.gz
# Tue, 16 Oct 2018 16:43:36 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 16 Oct 2018 16:43:45 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 16 Oct 2018 16:43:45 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 16 Oct 2018 16:43:48 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 16 Oct 2018 16:43:52 GMT
WORKDIR /var/lib/jetty
# Tue, 16 Oct 2018 16:43:56 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 16 Oct 2018 16:43:59 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 16 Oct 2018 16:44:03 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 16 Oct 2018 16:44:08 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 16 Oct 2018 16:44:09 GMT
USER [jetty]
# Tue, 16 Oct 2018 16:44:10 GMT
EXPOSE 8080/tcp
# Tue, 16 Oct 2018 16:44:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 16:44:13 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:13ebfe29849eced1a1407f794f8cd6e9caf263f8788111ae889c7917f9eff3f9`  
		Last Modified: Tue, 16 Oct 2018 16:45:50 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d7daa805ce288ba378f8dbca172aee5194ed3903d2984437db952ab17e8aab`  
		Last Modified: Tue, 16 Oct 2018 16:45:49 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1b330c750bda107ed11529a06ee374fe770ce6461463a3844fd46190d1d57b`  
		Last Modified: Tue, 16 Oct 2018 16:45:47 GMT  
		Size: 8.5 MB (8508720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da54a8e83c51e2fa3a7c962eb5e38638a1b3767b5075e371bd8e425f9c35e6cf`  
		Last Modified: Tue, 16 Oct 2018 16:45:46 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702d9f6a9bd0c8f7a2bfc0bbf770fc2b3c3fd32f83f62673b0cc05fcb48b2f53`  
		Last Modified: Tue, 16 Oct 2018 16:45:46 GMT  
		Size: 2.0 KB (2029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f41338cb9741f13b0b09cfae0f2ae160f1dc4a752306c87917398598f99929`  
		Last Modified: Tue, 16 Oct 2018 16:45:47 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab764c7c6b25b5a368c9260519ef29890e08029f03bbf9346e573a40d8d370e4`  
		Last Modified: Tue, 16 Oct 2018 16:45:46 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-jre8` - linux; s390x

```console
$ docker pull jetty@sha256:bd9b82b1ef882341170991c2ee2cd28b7976e4080b9fc8639e261be3f2537468
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.6 MB (183594472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8210c78978b586e19a66e225060913d8ed602c1b9fc3fd9570d7f29a3b131dd5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 13:06:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:06:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:06:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 13:06:09 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 13:06:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 13:06:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 13:06:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 15:01:52 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 16 Oct 2018 15:01:52 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 16 Oct 2018 15:01:52 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 15:01:54 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 16 Oct 2018 15:01:54 GMT
WORKDIR /usr/local/jetty
# Tue, 16 Oct 2018 15:01:54 GMT
ENV JETTY_VERSION=9.4.12.v20180830
# Tue, 16 Oct 2018 15:01:55 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.12.v20180830/jetty-home-9.4.12.v20180830.tar.gz
# Tue, 16 Oct 2018 15:01:55 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 16 Oct 2018 15:02:01 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 16 Oct 2018 15:02:01 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 16 Oct 2018 15:02:02 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 16 Oct 2018 15:02:02 GMT
WORKDIR /var/lib/jetty
# Tue, 16 Oct 2018 15:02:05 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 16 Oct 2018 15:02:05 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 16 Oct 2018 15:02:06 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 16 Oct 2018 15:02:07 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 16 Oct 2018 15:02:07 GMT
USER [jetty]
# Tue, 16 Oct 2018 15:02:08 GMT
EXPOSE 8080/tcp
# Tue, 16 Oct 2018 15:02:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 15:02:08 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadb55fe60f3a83b7078ad97271acf0fd19b4414edf56bfbb07929744d5f7dce`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 863.7 KB (863652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecb5fac3a19302c69f5ee9494fd6c23d3d5dd418d59b9ea6a400cde0b0ae69e`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3565def30ebfc0c8c4a44f336ec11f69a92101319367ead0b1272905de65b629`  
		Last Modified: Tue, 16 Oct 2018 13:12:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc06f99df4ff7fa2bf4603381752ff38c130f128f66b4c4f07d24b68a4bbde3`  
		Last Modified: Tue, 16 Oct 2018 13:12:26 GMT  
		Size: 114.1 MB (114135469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7430f563774d0aed0a8285460ab4e29259708fc9c7a5c9e52e2ee09f7fb3f`  
		Last Modified: Tue, 16 Oct 2018 13:12:09 GMT  
		Size: 246.7 KB (246691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0000a6beca67a1a3b4fcacb1e6e6596caf183966a13e686c4d270d99d774df2d`  
		Last Modified: Tue, 16 Oct 2018 15:03:10 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3f98cd82551c58b7dbdbf719052dbc1d768fda298febdb18654bbaaef65a3d`  
		Last Modified: Tue, 16 Oct 2018 15:03:10 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07bd43fff4b9c012eb915acb285dd0ea463a7ea4433460d067f939c71fca7dd5`  
		Last Modified: Tue, 16 Oct 2018 15:03:10 GMT  
		Size: 8.5 MB (8508601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd55b19144f84952d6e6d52638a03e0566ed4933c25a2ee92f82216b8900316`  
		Last Modified: Tue, 16 Oct 2018 15:03:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8de4fd0835b70b7ef8f5432c00f174205156837dc920155b71f143558a844a`  
		Last Modified: Tue, 16 Oct 2018 15:03:09 GMT  
		Size: 2.0 KB (1958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac337d715446aeac01f2d55c1e96442c6cb6daf0a32ced5e907964a8b6c3fc1`  
		Last Modified: Tue, 16 Oct 2018 15:03:09 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f09f2f107f6ed9d768c519e86fb90c869a995e4fa8966935c6e85ddf3e41c6d`  
		Last Modified: Tue, 16 Oct 2018 15:03:10 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

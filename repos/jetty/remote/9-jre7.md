## `jetty:9-jre7`

```console
$ docker pull jetty@sha256:3a676a24c15917160cfb1054df2cd2f8a5174053c2e956b5bed3e4000f282a0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `jetty:9-jre7` - linux; amd64

```console
$ docker pull jetty@sha256:c78768495cbdf97c91928d7955fa02ba250f0df93c7d1999ca2edb63e6951f68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164649889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f8ad34ac0388267af2366349d36698a5fbb2c7a5e50d13dc30edd36aef3ca26`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 08 May 2019 00:30:19 GMT
ADD file:47970bdb20c0c84f9d64aeb394f690c79bfceefd0331c1fc4041af1de0d5bcb1 in / 
# Wed, 08 May 2019 00:30:19 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:31:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:31:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 05:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:20:32 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:20:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:20:33 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:20:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:20:34 GMT
ENV JAVA_VERSION=7u211
# Wed, 08 May 2019 05:20:34 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 08 May 2019 05:22:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 12:04:18 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 08 May 2019 12:04:18 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 08 May 2019 12:04:19 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 12:04:20 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 08 May 2019 12:04:20 GMT
WORKDIR /usr/local/jetty
# Wed, 08 May 2019 12:04:21 GMT
ENV JETTY_VERSION=9.2.28.v20190418
# Wed, 08 May 2019 12:04:21 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.28.v20190418/jetty-distribution-9.2.28.v20190418.tar.gz
# Wed, 08 May 2019 12:04:21 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 08 May 2019 12:04:25 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 08 May 2019 12:04:25 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 08 May 2019 12:04:27 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 08 May 2019 12:04:27 GMT
WORKDIR /var/lib/jetty
# Wed, 08 May 2019 12:04:32 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 08 May 2019 12:04:32 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 08 May 2019 12:04:33 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 08 May 2019 12:04:34 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Wed, 08 May 2019 12:04:34 GMT
USER jetty
# Wed, 08 May 2019 12:04:34 GMT
EXPOSE 8080
# Wed, 08 May 2019 12:04:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 12:04:35 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:db0035920883a73fe23c2f4c2c361e2508a9f8b9b410080817800c1f906323b7`  
		Last Modified: Wed, 08 May 2019 00:36:03 GMT  
		Size: 54.4 MB (54385705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ebd83b4a4725c8e5e54f2aa7d3ee259492cbb89de0a4315c3533b84b32d3ee`  
		Last Modified: Wed, 08 May 2019 01:43:57 GMT  
		Size: 17.5 MB (17541651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ef9e65a664c31717d28b5860445405dc277057ca1a1e3aabdde053669bc4f0`  
		Last Modified: Wed, 08 May 2019 05:31:34 GMT  
		Size: 795.2 KB (795180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2786dccb0cc0174c18ba7cea8cb9e3ad67a9c6967590c1b2aa93a9947a1707b`  
		Last Modified: Wed, 08 May 2019 05:31:34 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b809e89f352cb980641786f9fed5c83af31c74caeca25ed068677fe9149d9c6`  
		Last Modified: Wed, 08 May 2019 05:31:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e9aefc2bf740c48f120043ec92fe21954194b1688a49d690b0485193294612`  
		Last Modified: Wed, 08 May 2019 05:31:53 GMT  
		Size: 81.9 MB (81885912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ef3a8f0fca9f4abc007db9010a8f36437edbe69e429a9b81a89403d49bfe42`  
		Last Modified: Wed, 08 May 2019 12:05:59 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d813456ef80d1c362a00afb5968a4bb3f67382122ba15c6349c4014c417732`  
		Last Modified: Wed, 08 May 2019 12:05:59 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac09f9cb13917fe37618fe3cdc2e6831b6c16696b5b13f3558a635a75ee2685`  
		Last Modified: Wed, 08 May 2019 12:05:59 GMT  
		Size: 10.0 MB (10035695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f274a180c5d056e9105a1a1323029d7da8bc45eb0be922b057f63c31e2d0ef34`  
		Last Modified: Wed, 08 May 2019 12:05:58 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3074f73d63120886700b5a5f587653f860a210d2ae2ea2d875e979fa1ba29659`  
		Last Modified: Wed, 08 May 2019 12:05:58 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b5bc516ac981d4febe9466fab326217d0e4b567150c5587431e3dbc1457fd5`  
		Last Modified: Wed, 08 May 2019 12:05:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e189e89cd0ca2451fcd87fec6595bb17ead97a38d6be3269b5a4cdbf4062b128`  
		Last Modified: Wed, 08 May 2019 12:05:58 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-jre7` - linux; arm variant v5

```console
$ docker pull jetty@sha256:d980b27940639b709b7cb7b706f69fb653a3eea597e4ec811312392ca3323675
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.0 MB (151985648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9307f3c04214e78b01be17be159832c859551d8d4aea1318eaf4ec0d0a26833a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 08 May 2019 08:50:00 GMT
ADD file:997d555f96b00623491142f0b815ef37769d2f880a8b40c0fff320960771453d in / 
# Wed, 08 May 2019 08:50:02 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:53:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 09:53:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:44:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:44:22 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 11:44:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 11:44:24 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 11:44:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 11:44:25 GMT
ENV JAVA_VERSION=7u211
# Wed, 08 May 2019 11:44:25 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 08 May 2019 11:46:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 16:16:36 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 08 May 2019 16:16:36 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 08 May 2019 16:16:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 16:16:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 08 May 2019 16:16:39 GMT
WORKDIR /usr/local/jetty
# Wed, 08 May 2019 16:16:40 GMT
ENV JETTY_VERSION=9.2.28.v20190418
# Wed, 08 May 2019 16:16:40 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.28.v20190418/jetty-distribution-9.2.28.v20190418.tar.gz
# Wed, 08 May 2019 16:16:41 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 08 May 2019 16:16:44 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 08 May 2019 16:16:45 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 08 May 2019 16:16:47 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 08 May 2019 16:16:48 GMT
WORKDIR /var/lib/jetty
# Wed, 08 May 2019 16:16:51 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 08 May 2019 16:16:51 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 08 May 2019 16:16:53 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 08 May 2019 16:16:54 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Wed, 08 May 2019 16:16:54 GMT
USER jetty
# Wed, 08 May 2019 16:16:55 GMT
EXPOSE 8080
# Wed, 08 May 2019 16:16:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 16:16:56 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:6d0312bf9f8207dd961236544595b270fcfea05ff71dac15ac7c00f5e0427a7d`  
		Last Modified: Wed, 08 May 2019 08:56:45 GMT  
		Size: 52.6 MB (52575055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c5b66973862969fdf9e67a84145501ba3d04f73b4611e6d46d7728d5e9e606`  
		Last Modified: Wed, 08 May 2019 10:06:51 GMT  
		Size: 17.0 MB (17032492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46949af4d7aece585f16cab14d12372f3e0662e72a742aba443eb280ad4c6f18`  
		Last Modified: Wed, 08 May 2019 11:54:45 GMT  
		Size: 788.0 KB (788004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dddb6c9472653686b94536761170e18c98acde6abc6f88de1a66b36b5e1c2b`  
		Last Modified: Wed, 08 May 2019 11:54:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d958aa9801ad5afe27a102c2f1e1b46d7d1452f441dd41ee9382927fe52c0a`  
		Last Modified: Wed, 08 May 2019 11:54:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2831e1ed2e48367b0602bd144b9f22258c294b969799bcd2ef8c311fe6aa82c6`  
		Last Modified: Wed, 08 May 2019 11:55:00 GMT  
		Size: 71.5 MB (71548422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723bb5b221c6f4d5a251d4957bff1ba598abc0cfb394bb0c0c721d26bcc9d9d9`  
		Last Modified: Wed, 08 May 2019 16:18:14 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438b03ff35ec906cd744e93e8b4954ada9ac41b9cf041160d4a95e4dad58ccf5`  
		Last Modified: Wed, 08 May 2019 16:18:13 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbbba47335d40e806c8f632bd777edf02c909320eb847c60919b1b9cde6d7918`  
		Last Modified: Wed, 08 May 2019 16:18:14 GMT  
		Size: 10.0 MB (10035783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e6f739fefa706325a1a29c300cae83f5f47313d70b5e009438dcf499f93643`  
		Last Modified: Wed, 08 May 2019 16:18:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255f32811a2c2e1aea8d42ba345cc2f84fc1334fc267be3be69eae22d4d58003`  
		Last Modified: Wed, 08 May 2019 16:18:12 GMT  
		Size: 1.5 KB (1533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e0604851e04021177a20b3d3035f87e08039e62c1e47c12fdab348af4dcc95`  
		Last Modified: Wed, 08 May 2019 16:18:12 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0fecbe8deb3b57efbe79b8144e61eee94149663cb4a592a6167954bfe11e28a`  
		Last Modified: Wed, 08 May 2019 16:18:12 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-jre7` - linux; arm variant v7

```console
$ docker pull jetty@sha256:3fc50d7bdc705cbc7956eab876d056c6c57658317492103a4dd1b37d9f63f1ea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.9 MB (147909679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cfccfb660ccbb81496869982a35bdca15ce92985870cb6ed973175ef49345e4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 08 May 2019 11:59:37 GMT
ADD file:8608ce29a1acb528a48ba5eb2c83088709ec606374a9247e14b143e6893abb4e in / 
# Wed, 08 May 2019 11:59:38 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:56:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:56:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 14:24:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:24:13 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 14:24:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 14:24:19 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 14:24:20 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 14:24:21 GMT
ENV JAVA_VERSION=7u211
# Wed, 08 May 2019 14:24:22 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 08 May 2019 14:26:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 17:56:27 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 08 May 2019 17:56:28 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 08 May 2019 17:56:28 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 17:56:30 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 08 May 2019 17:56:31 GMT
WORKDIR /usr/local/jetty
# Wed, 08 May 2019 17:56:32 GMT
ENV JETTY_VERSION=9.2.28.v20190418
# Wed, 08 May 2019 17:56:32 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.28.v20190418/jetty-distribution-9.2.28.v20190418.tar.gz
# Wed, 08 May 2019 17:56:33 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 08 May 2019 17:56:37 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 08 May 2019 17:56:37 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 08 May 2019 17:56:39 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 08 May 2019 17:56:39 GMT
WORKDIR /var/lib/jetty
# Wed, 08 May 2019 17:56:42 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 08 May 2019 17:56:42 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 08 May 2019 17:56:44 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 08 May 2019 17:56:44 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Wed, 08 May 2019 17:56:45 GMT
USER jetty
# Wed, 08 May 2019 17:56:45 GMT
EXPOSE 8080
# Wed, 08 May 2019 17:56:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 17:56:46 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:15cfb32571a95dcaa3a8408897c92bd923327a52abf09ce9c125ed6b5e9257ef`  
		Last Modified: Wed, 08 May 2019 12:07:22 GMT  
		Size: 50.3 MB (50297181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284ec6226ea641062369562b37a4579db6937f39a7a9f2141e2aee7b588399c8`  
		Last Modified: Wed, 08 May 2019 13:09:39 GMT  
		Size: 16.7 MB (16718239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017beffb8b23665d3f1bfdcb56a278510037d249ac21c0a493a6da43357db7c7`  
		Last Modified: Wed, 08 May 2019 14:35:44 GMT  
		Size: 762.5 KB (762533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74637465dc72fdd6abbdbe209e7f14282b804bd972b94fe8c5193a26a70851b6`  
		Last Modified: Wed, 08 May 2019 14:35:44 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03aaffeaa1278167851170a5e71b1b27817427d4b7521998d3b895d92e29033e`  
		Last Modified: Wed, 08 May 2019 14:35:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6b0a7b948269e7aa3987eb352b7d1476356f3727b3c6acf2e41fba810a6e31`  
		Last Modified: Wed, 08 May 2019 14:35:59 GMT  
		Size: 70.1 MB (70090038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00afc43051d48fb9c0945b93bdf5f79592bf089afb2328c5d23fc637b9f93d23`  
		Last Modified: Wed, 08 May 2019 17:58:08 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c67990513fe1fdc1fa917e7378b4ccb28361eacead1ae0b91e869c4113c820`  
		Last Modified: Wed, 08 May 2019 17:58:08 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:031bf9e69050784f937387f07c830b14d8b8b8a0b4b27a125ea4060aec7fd079`  
		Last Modified: Wed, 08 May 2019 17:58:08 GMT  
		Size: 10.0 MB (10035787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e196a4df51b27ed4386ccdc2407c23abe229eafd674e2f79ede10d93c80baefa`  
		Last Modified: Wed, 08 May 2019 17:58:07 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64063d8c1420f902bed63c1a5d3c31445ac8a08fe3f935e23d08d034596814be`  
		Last Modified: Wed, 08 May 2019 17:58:07 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5a3943295e6cb38586039aebccb5657bc7b6a522706f367a5133d4c0a2e209`  
		Last Modified: Wed, 08 May 2019 17:58:07 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddec5b59a3eb783e354c2328a9e692f8ec4d465a729fe9df6965e9fa2dc4ab5f`  
		Last Modified: Wed, 08 May 2019 17:58:07 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-jre7` - linux; 386

```console
$ docker pull jetty@sha256:43da9ef419e850994d27536e4be97e8bce443d5a9e5fc1a54e7770d6f4f4b97e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (177038118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4944b43945fffeb35824b7322e0495d9d437d9a5f4cfc60a4b9efb20f2170203`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 08 May 2019 10:42:11 GMT
ADD file:383a4648827e4920fc38f6ee93e3a1b0198694530961012a3ac4ff2b60d469f0 in / 
# Wed, 08 May 2019 10:42:12 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:57:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:57:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 22:35:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 22:35:07 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 22:35:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 22:35:09 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 22:35:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 22:35:10 GMT
ENV JAVA_VERSION=7u211
# Wed, 08 May 2019 22:35:10 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 08 May 2019 22:39:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 09 May 2019 04:57:55 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 09 May 2019 04:57:55 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 09 May 2019 04:57:55 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 04:57:56 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 09 May 2019 04:57:56 GMT
WORKDIR /usr/local/jetty
# Thu, 09 May 2019 04:57:56 GMT
ENV JETTY_VERSION=9.2.28.v20190418
# Thu, 09 May 2019 04:57:57 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.28.v20190418/jetty-distribution-9.2.28.v20190418.tar.gz
# Thu, 09 May 2019 04:57:57 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 09 May 2019 04:57:59 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 09 May 2019 04:57:59 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 09 May 2019 04:58:00 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 09 May 2019 04:58:00 GMT
WORKDIR /var/lib/jetty
# Thu, 09 May 2019 04:58:01 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 09 May 2019 04:58:01 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 09 May 2019 04:58:02 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 09 May 2019 04:58:02 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Thu, 09 May 2019 04:58:03 GMT
USER jetty
# Thu, 09 May 2019 04:58:03 GMT
EXPOSE 8080
# Thu, 09 May 2019 04:58:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 May 2019 04:58:03 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:6b6ce677eea2e67f795221107c4a01e07d07480fa9706aa20331a88f2a6f8617`  
		Last Modified: Wed, 08 May 2019 10:54:05 GMT  
		Size: 54.6 MB (54605091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f48be8120c22e9a5375fa05aea15ce2e87362772a9df12046625d8fcaba344`  
		Last Modified: Wed, 08 May 2019 19:12:01 GMT  
		Size: 19.8 MB (19849905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a8e2c6eb765550667da189d586c3b73d307abeeea430d6d5c95f55d65c9056`  
		Last Modified: Wed, 08 May 2019 22:54:56 GMT  
		Size: 798.2 KB (798171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861335b3e62345784c37710932c592a66747027b4ad36cba37649d6dd5894e79`  
		Last Modified: Wed, 08 May 2019 22:54:55 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8cd31e512b600c9e451dd70c35aa35ac41226a2b3b6b7bb8a381d4e8e564e`  
		Last Modified: Wed, 08 May 2019 22:54:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454f5e8f66468101f115e0bf0a8b6864b9cd98c9d9c32eb1d324cbc5ca88e691`  
		Last Modified: Wed, 08 May 2019 22:55:26 GMT  
		Size: 91.7 MB (91743543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2470ec5ac886f99faa89e018cfdc5763ea961bf99f75937752fd0a0e408b1f7`  
		Last Modified: Thu, 09 May 2019 04:59:16 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11983f738fc98dad2cad62fea86c1831024018ec8365643b3237d74d9f9b4fed`  
		Last Modified: Thu, 09 May 2019 04:59:16 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155c18074a70a7532392e3d17b1e7b8ecc3a77667c4638705a917f22cf2eed9a`  
		Last Modified: Thu, 09 May 2019 04:59:16 GMT  
		Size: 10.0 MB (10035674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9bc90d8c93b4c3625f2ff927b63ff3992959bc9527478bc287e453924b29f3`  
		Last Modified: Thu, 09 May 2019 04:59:15 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f4ddc8adf3c7618e252217f95647981d6823e390ad3ffaf4c05fc40c39ff35`  
		Last Modified: Thu, 09 May 2019 04:59:15 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6934b2d70a16aac341c13ce1373f72ebef23865bd46b1be0b3d50e9c94d6e607`  
		Last Modified: Thu, 09 May 2019 04:59:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0584f48a6b1a77c50cc0c1f9ff30e424cab8c22ba88438e6ff7674815a932980`  
		Last Modified: Thu, 09 May 2019 04:59:15 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

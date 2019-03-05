## `jetty:jre7`

```console
$ docker pull jetty@sha256:de0f86b67ef158d650e616772449dd5d9f8ad1c7bd62cdf89ac50902ea609f18
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

### `jetty:jre7` - linux; amd64

```console
$ docker pull jetty@sha256:07e5f3492b727f118dbe81b00bdc5d4587acabc2d9c45b29bc34b1633f60856e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164573315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a832f927c5e3807b18126532f8d96deef64dde15c4bf5e817ad8d33fb229ad33`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 04 Mar 2019 23:20:17 GMT
ADD file:e044496893d9e2cbf5a4b69ccfbb7d2997209962a78a52b6fc091c5b004cc33f in / 
# Mon, 04 Mar 2019 23:20:18 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:26:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:26:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 04:17:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:17:03 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:17:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:17:05 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:17:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 04:17:06 GMT
ENV JAVA_VERSION=7u181
# Tue, 05 Mar 2019 04:17:06 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Tue, 05 Mar 2019 04:19:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 14:19:23 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 05 Mar 2019 14:19:23 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 05 Mar 2019 14:19:24 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 14:19:26 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 05 Mar 2019 14:19:26 GMT
WORKDIR /usr/local/jetty
# Tue, 05 Mar 2019 14:19:27 GMT
ENV JETTY_VERSION=9.2.26.v20180806
# Tue, 05 Mar 2019 14:19:27 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.26.v20180806/jetty-distribution-9.2.26.v20180806.tar.gz
# Tue, 05 Mar 2019 14:19:28 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 05 Mar 2019 14:19:31 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 05 Mar 2019 14:19:31 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 05 Mar 2019 14:19:33 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 05 Mar 2019 14:19:33 GMT
WORKDIR /var/lib/jetty
# Tue, 05 Mar 2019 14:19:37 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 05 Mar 2019 14:19:37 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 05 Mar 2019 14:19:39 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 05 Mar 2019 14:19:39 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Tue, 05 Mar 2019 14:19:40 GMT
USER jetty
# Tue, 05 Mar 2019 14:19:40 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 14:19:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:19:41 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:85199fa09ec1510ee053da666286c385d07b8fab9fa61ae73a5b8c454e1b3397`  
		Last Modified: Mon, 04 Mar 2019 23:24:27 GMT  
		Size: 54.4 MB (54381658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aca5925aec20fece01837f6f93c55c62c38dfba443d19404e7be3a37f3bdf85`  
		Last Modified: Tue, 05 Mar 2019 02:41:52 GMT  
		Size: 17.5 MB (17539744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2804cbb1435bc2e32a66d185b3a714b9c3f97141f1d4a8c09a3675f213c004da`  
		Last Modified: Tue, 05 Mar 2019 04:29:03 GMT  
		Size: 795.2 KB (795158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d24da622655ce6014113d76763828275ccc5cd50156517ed85b9fb273749c6`  
		Last Modified: Tue, 05 Mar 2019 04:29:03 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602ecacd96f4b325230dbae121fe62fc8a03f775f91f886514eba5ebe29cdcd0`  
		Last Modified: Tue, 05 Mar 2019 04:29:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa0bc495b76d17d820e3a8fbc02c09b53742381874f6237e416ded5498127ac`  
		Last Modified: Tue, 05 Mar 2019 04:29:17 GMT  
		Size: 81.8 MB (81821305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4508e92416a99c1c0acfcdf09a04203d8c88d9bf3861e89bdf57b2ad7fda3798`  
		Last Modified: Tue, 05 Mar 2019 14:20:28 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c844be8e0f070caef63461bd00b89119b4c83fa6907c4f694d865fa4a6c6cc5`  
		Last Modified: Tue, 05 Mar 2019 14:20:28 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2025fd0a4c087e27afa8d7e0fd3eaaa5e69703d8fb4593f25464e9668077fc95`  
		Last Modified: Tue, 05 Mar 2019 14:20:28 GMT  
		Size: 10.0 MB (10029700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d594ae43b7ae4cd10d32ad65c0aa084611960eebd95498706afbc42b22ea646`  
		Last Modified: Tue, 05 Mar 2019 14:20:27 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6656751de36918a7b80b3a0df494f59f617cc2c70451f2c98191142ed09b08`  
		Last Modified: Tue, 05 Mar 2019 14:20:27 GMT  
		Size: 1.5 KB (1469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e529498739f6d5e1339c119ffb4231ac62cb29cd232559cd65d41c698376c3da`  
		Last Modified: Tue, 05 Mar 2019 14:20:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faeffc7801f203cff315ea80ba15d05457ffbf8c22b41469c0f3c1ac3ff8e36`  
		Last Modified: Tue, 05 Mar 2019 14:20:27 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre7` - linux; arm variant v5

```console
$ docker pull jetty@sha256:43d8d9d77ea7030b0dc97adf06547a97385c386ccf542d3a51451b6147835d36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151911380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc4b5f90568ee5854981fb0404cf2bac31079e3c2af64f5a0f9a35a7029bd3e5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 05 Mar 2019 09:50:03 GMT
ADD file:66cba1ce0f57ac1885e087b1deba2b541e37c4eaf6eacf3f6677cb41af388c87 in / 
# Tue, 05 Mar 2019 09:50:05 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:24:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:24:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 11:32:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:32:55 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 11:32:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 11:32:58 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 11:32:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 11:32:58 GMT
ENV JAVA_VERSION=7u181
# Tue, 05 Mar 2019 11:32:59 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Tue, 05 Mar 2019 11:34:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 16:19:36 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 05 Mar 2019 16:19:36 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 05 Mar 2019 16:19:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 16:19:38 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 05 Mar 2019 16:19:39 GMT
WORKDIR /usr/local/jetty
# Tue, 05 Mar 2019 16:19:39 GMT
ENV JETTY_VERSION=9.2.26.v20180806
# Tue, 05 Mar 2019 16:19:40 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.26.v20180806/jetty-distribution-9.2.26.v20180806.tar.gz
# Tue, 05 Mar 2019 16:19:40 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 05 Mar 2019 16:19:44 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 05 Mar 2019 16:19:45 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 05 Mar 2019 16:19:47 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 05 Mar 2019 16:19:47 GMT
WORKDIR /var/lib/jetty
# Tue, 05 Mar 2019 16:19:52 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 05 Mar 2019 16:19:53 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 05 Mar 2019 16:19:55 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 05 Mar 2019 16:19:56 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Tue, 05 Mar 2019 16:19:57 GMT
USER jetty
# Tue, 05 Mar 2019 16:19:58 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 16:19:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 16:19:59 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b7c40827a2a74bdfea27defa43e5568bacb59e6f9773735453da8b888b31d953`  
		Last Modified: Tue, 05 Mar 2019 09:59:19 GMT  
		Size: 52.6 MB (52568284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf75e00cc6a814dff9dda90a02a717aaff0d1ff8982516e907a703574296a1e`  
		Last Modified: Tue, 05 Mar 2019 10:40:38 GMT  
		Size: 17.0 MB (17030963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d697d1b8be3edff6937f9b589f72cc1a383e0fb95734910a33a0f19e0d7a6b4`  
		Last Modified: Tue, 05 Mar 2019 11:43:55 GMT  
		Size: 788.0 KB (787981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2733ec1595297ac233332cda9270b850d5be82c9be41aa2154d66a7de5940a`  
		Last Modified: Tue, 05 Mar 2019 11:43:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058bc94a9597f4304c7c5d1b5275632f33096a2ebc746532d6e3301cf430a8da`  
		Last Modified: Tue, 05 Mar 2019 11:43:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1021ea9ae881ce03fbbb19c0f28ec1c7a88de737678bdd7f01f3b2e5219e5f0d`  
		Last Modified: Tue, 05 Mar 2019 11:44:10 GMT  
		Size: 71.5 MB (71488337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9079427d16ed01d9fb3c480fd98867140b936dafefabe4eba643e2fcda00da87`  
		Last Modified: Tue, 05 Mar 2019 16:21:18 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f89dca914e6e322ee697384fd2dc8525276987af1e36951faf6820caa508f5`  
		Last Modified: Tue, 05 Mar 2019 16:21:19 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e8834f5d3f72f2c3524cde6fcb70948d5bd238a23d9c3c413f95a05f96858e`  
		Last Modified: Tue, 05 Mar 2019 16:21:19 GMT  
		Size: 10.0 MB (10029910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89967ff36059e7f726149d9e92cd28a653a4a5d54413212667081d948d27432`  
		Last Modified: Tue, 05 Mar 2019 16:21:17 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751f4a822feecae4f595b3c94c6984fcbc3c0b7e030297f17a4ba44be13095a3`  
		Last Modified: Tue, 05 Mar 2019 16:21:17 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fed1efb93142a2c70cfa981361da597a485014511fe69ed8f61a70cfdae92b`  
		Last Modified: Tue, 05 Mar 2019 16:21:18 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f6474c4ea3b703a144ea777b4f36b512db7e6131ea3423fadc836dd3638d5e`  
		Last Modified: Tue, 05 Mar 2019 16:21:17 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre7` - linux; arm variant v7

```console
$ docker pull jetty@sha256:1d4c931fba4e7b1cdf9ea4044520f76ba4839e2d352008faf1dad43acce9f375
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147824586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f67cee7905063fb312e36938ac0cb6112a6c3e054db136ca14c58fbd6510731`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 07 Feb 2019 12:59:04 GMT
ADD file:e2ec14698f9dbf6f9e69be1417badea55f51ce760c6134600720d78041923242 in / 
# Thu, 07 Feb 2019 12:59:05 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:30:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:30:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 16:33:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 16:34:00 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 16:34:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 16:34:02 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 16:34:03 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 07 Feb 2019 16:34:03 GMT
ENV JAVA_VERSION=7u181
# Thu, 07 Feb 2019 16:34:04 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Thu, 07 Feb 2019 16:35:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 19:32:57 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 07 Feb 2019 19:32:57 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 07 Feb 2019 19:32:58 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 19:32:59 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 07 Feb 2019 19:32:59 GMT
WORKDIR /usr/local/jetty
# Thu, 07 Feb 2019 19:33:00 GMT
ENV JETTY_VERSION=9.2.26.v20180806
# Thu, 07 Feb 2019 19:33:00 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.26.v20180806/jetty-distribution-9.2.26.v20180806.tar.gz
# Thu, 07 Feb 2019 19:33:01 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 07 Feb 2019 19:33:05 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 07 Feb 2019 19:33:06 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 07 Feb 2019 19:33:07 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 07 Feb 2019 19:33:07 GMT
WORKDIR /var/lib/jetty
# Thu, 07 Feb 2019 19:33:10 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 07 Feb 2019 19:33:11 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 07 Feb 2019 19:33:12 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 07 Feb 2019 19:33:12 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Thu, 07 Feb 2019 19:33:13 GMT
USER jetty
# Thu, 07 Feb 2019 19:33:13 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 19:33:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 19:33:14 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:9800246268d2ef744bda6da9d267fc24b9e904492c8abae95a2ea4e9a64a93ae`  
		Last Modified: Thu, 07 Feb 2019 01:20:17 GMT  
		Size: 50.3 MB (50291667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a417a1381c3b2efadb424349e0ed96d849692fb1454d122112ddb3f26f93e59a`  
		Last Modified: Thu, 07 Feb 2019 15:49:32 GMT  
		Size: 16.7 MB (16714301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f524ac8a4618fd0ed09998d53e5767cc65264e85266029a77d346922729643d`  
		Last Modified: Thu, 07 Feb 2019 16:36:32 GMT  
		Size: 762.5 KB (762525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083e9b0515eb0da25cb537a51ae45994ab154980443e61302c50b8e4ce9a9101`  
		Last Modified: Thu, 07 Feb 2019 16:36:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5dbf96fdba7e83a69c629b3ad15d7643be9f3b6fe5ff27c241e7d836076455`  
		Last Modified: Thu, 07 Feb 2019 16:36:31 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40999a81ad5cceb22e1fda1261f3506b3ba7eac24d230ad4ca14157c96db9bdc`  
		Last Modified: Thu, 07 Feb 2019 16:36:46 GMT  
		Size: 70.0 MB (70020297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ef9decac2ed3270e81a002bd55e0ab5304a9b36addf497c1c3d1232253fdd7`  
		Last Modified: Thu, 07 Feb 2019 19:33:38 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3597694bc08aa5e5eecc9bb665974353db27c221722622d0ae205dbd54f3303`  
		Last Modified: Thu, 07 Feb 2019 19:33:38 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ffd1f647503222297de8ae4f9db92692b89e10cd90985f973e4ef8439959bf`  
		Last Modified: Thu, 07 Feb 2019 19:33:39 GMT  
		Size: 10.0 MB (10029901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec87bfee4cb81ab78cca5bef8744e456a4b50fb59b121176a3e5aa200f1e8a2b`  
		Last Modified: Thu, 07 Feb 2019 19:33:37 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89709eaf0ace23f88a0da57e59a4081996fa523dd3af47cdbc2ce9f158b3d479`  
		Last Modified: Thu, 07 Feb 2019 19:33:37 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392118ca7e61e898241778ce063712de1012d1f435e2332dfd38654e15e09c96`  
		Last Modified: Thu, 07 Feb 2019 19:33:37 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebe58dabbbafe6a4e29261a0500d44cb31c173bda3adb445b42d61c8006f242`  
		Last Modified: Thu, 07 Feb 2019 19:33:37 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre7` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:e90cd2890013e1504c223c940fd244740cb03515e731a75db835665f1230ee98
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.3 MB (152322256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:078f1d55098640d34ad5187caf0a5263e9fdc1ff397b2016422c52c7b490c218`
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
# Thu, 07 Feb 2019 06:27:38 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 07 Feb 2019 06:27:39 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 07 Feb 2019 06:27:42 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 07 Feb 2019 06:27:44 GMT
WORKDIR /var/lib/jetty
# Thu, 07 Feb 2019 06:27:54 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 07 Feb 2019 06:27:55 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 07 Feb 2019 06:27:59 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 07 Feb 2019 06:28:01 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Thu, 07 Feb 2019 06:28:02 GMT
USER jetty
# Thu, 07 Feb 2019 06:28:03 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 06:28:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 06:28:05 GMT
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
	-	`sha256:c8aa1319ed316cff7782f458f3de0072f80ac8ed43a92ab14b3684c94ec7a434`  
		Last Modified: Thu, 07 Feb 2019 06:32:10 GMT  
		Size: 10.0 MB (10029728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea21542242642af0f1489658db8a8b666260b1c83e2bb7936ae06ba124a793c2`  
		Last Modified: Thu, 07 Feb 2019 06:32:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15681a70ba05ae2a57423f68294530a030b0594130fc0bba6045563b384ca721`  
		Last Modified: Thu, 07 Feb 2019 06:32:05 GMT  
		Size: 1.5 KB (1471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e1b58f8144eec7e76c446ef14ffa8452f0fae8abe1b8f0df63421cb521d520`  
		Last Modified: Thu, 07 Feb 2019 06:32:06 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3795ea766d058ff6202ba08a1d0d1dd1b3296cfe2d553366a8e9ebc93e29d880`  
		Last Modified: Thu, 07 Feb 2019 06:32:05 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre7` - linux; 386

```console
$ docker pull jetty@sha256:095e3ff1230e0d22356be937382521c9ac3adb16cf4175dc209428cb2742067b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176957404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec336231fda1664f5034dfb235592ad039e1cf6ebe22d335c1c57b94373c18de`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 06 Feb 2019 11:58:36 GMT
ADD file:7ee301fb17cb469725296eb34fd4c88b06658dab08befc626157c94e1b1264ae in / 
# Wed, 06 Feb 2019 11:58:37 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:37:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:37:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 06:34:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 06:34:28 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 06:34:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 06:34:30 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 06:34:30 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 07 Feb 2019 06:34:30 GMT
ENV JAVA_VERSION=7u181
# Thu, 07 Feb 2019 06:34:30 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Thu, 07 Feb 2019 06:37:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 06:59:25 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 07 Feb 2019 06:59:25 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 07 Feb 2019 06:59:25 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 06:59:26 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 07 Feb 2019 06:59:26 GMT
WORKDIR /usr/local/jetty
# Thu, 07 Feb 2019 06:59:26 GMT
ENV JETTY_VERSION=9.2.26.v20180806
# Thu, 07 Feb 2019 06:59:26 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.26.v20180806/jetty-distribution-9.2.26.v20180806.tar.gz
# Thu, 07 Feb 2019 06:59:27 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 07 Feb 2019 06:59:29 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 07 Feb 2019 06:59:30 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 07 Feb 2019 06:59:30 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 07 Feb 2019 06:59:30 GMT
WORKDIR /var/lib/jetty
# Thu, 07 Feb 2019 06:59:32 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 07 Feb 2019 06:59:32 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 07 Feb 2019 06:59:33 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 07 Feb 2019 06:59:33 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Thu, 07 Feb 2019 06:59:33 GMT
USER jetty
# Thu, 07 Feb 2019 06:59:34 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 06:59:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 06:59:34 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:0d2c60a99fbfd5389008365663b1914f58c65ad5174908669d2fd547813d4df9`  
		Last Modified: Wed, 06 Feb 2019 12:04:25 GMT  
		Size: 54.6 MB (54599595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f8a1642cca50fb512e186f15c61d2abd8bcf91ea3f8de5b6f58faa9de847ac`  
		Last Modified: Thu, 07 Feb 2019 02:00:51 GMT  
		Size: 19.8 MB (19846893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc046b01f8fb56cc870992326fb0ad9baba544226c64eebf5b95f0b7643c0a89`  
		Last Modified: Thu, 07 Feb 2019 06:42:16 GMT  
		Size: 798.2 KB (798178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4932cfb690c1120e723f4a9aed7adf98bc39c9572ae8eb189e4c5b1f54ff9dff`  
		Last Modified: Thu, 07 Feb 2019 06:42:16 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b58d5aa00f6dd55026f1daf486d00154bf2690efbd6bd90f1fba71b0558a5183`  
		Last Modified: Thu, 07 Feb 2019 06:42:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc119601fe5cfe236f903143d96846a9bc1a37db7208b490bcbae5ef89e2e95d`  
		Last Modified: Thu, 07 Feb 2019 06:42:33 GMT  
		Size: 91.7 MB (91677282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5262f2572d84125c99e39c93e2a6aeea8819e07f6824d0af0b93a08d5d1475`  
		Last Modified: Thu, 07 Feb 2019 07:00:39 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd50c16bcfa0af848756bcbe7626c9f2b14f4c3eb8e2e81807b212ead36e9e4`  
		Last Modified: Thu, 07 Feb 2019 07:00:37 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226977a1323fac14a672d434cb43867304bb9d73cfa0b0b9039a5daafe88d585`  
		Last Modified: Thu, 07 Feb 2019 07:00:38 GMT  
		Size: 10.0 MB (10029718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b6c3715449eb18d2043113cad701492514711b3693784f626c1e8c084b8fb6`  
		Last Modified: Thu, 07 Feb 2019 07:00:37 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8bae9a10f325ff641474dc1b3eacf3bc7a5c711b09ea090eb955432a34ad286`  
		Last Modified: Thu, 07 Feb 2019 07:00:37 GMT  
		Size: 1.5 KB (1473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d016a922ba09831b70db91d03bc4e83bca90076db65933b2ab0971a2b1bd8577`  
		Last Modified: Thu, 07 Feb 2019 07:00:36 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32ebd4fee1f3529e1348b8a441b7a1088a1dd934a46d000bbba42969619a1c7`  
		Last Modified: Thu, 07 Feb 2019 07:00:37 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre7` - linux; ppc64le

```console
$ docker pull jetty@sha256:d5d8e2b32850c548484b991b2498c547674ff73443f2bbf6612b91243c9ef43b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.8 MB (155754280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:435471db8908d5f12df8b0d9266fd071b9bdb582ef9fef99960f8baece9b55f7`
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
# Thu, 07 Feb 2019 02:07:48 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 07 Feb 2019 02:07:50 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 07 Feb 2019 02:07:53 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 07 Feb 2019 02:07:55 GMT
WORKDIR /var/lib/jetty
# Thu, 07 Feb 2019 02:08:01 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 07 Feb 2019 02:08:03 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 07 Feb 2019 02:08:06 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 07 Feb 2019 02:08:07 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Thu, 07 Feb 2019 02:08:08 GMT
USER jetty
# Thu, 07 Feb 2019 02:08:10 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 02:08:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 02:08:13 GMT
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
	-	`sha256:afc4cc3750b4567143bd9811679cfaa0290aa8ac7e1c177f183c8272794c816d`  
		Last Modified: Thu, 07 Feb 2019 02:11:06 GMT  
		Size: 10.0 MB (10029907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996a59064cdc2e7a47bfddee6162e9082ec4c945dfcd3de5d1d7f1dcbf2e91c2`  
		Last Modified: Thu, 07 Feb 2019 02:11:05 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5667eec8c62492b599264ac228f321a25c2baaca75cdcb208562f26f214cec71`  
		Last Modified: Thu, 07 Feb 2019 02:11:05 GMT  
		Size: 1.5 KB (1532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324fdfe9935ebffe78d0d0f53d0f8e2a55b1b8891feb0ac6e2d417c3286f558e`  
		Last Modified: Thu, 07 Feb 2019 02:11:05 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1106f0091321bd4f41402b66e27633bd706f5144162ec2e604787233e2ab1de2`  
		Last Modified: Thu, 07 Feb 2019 02:11:05 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre7` - linux; s390x

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

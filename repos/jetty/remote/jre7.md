## `jetty:jre7`

```console
$ docker pull jetty@sha256:c48c0da5778ac0e8714c7af83668d074a01b6b42ff6359982c1aceb268906a67
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
$ docker pull jetty@sha256:37ce9e41ca7a74bcfa171d1a9214e5cba7092a560bbba8729251f4f04585674e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147828346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f72c74e1bea4d703e7584cb0ea96aa6ff1ec758405d5741ec68111c578082cd4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 05 Mar 2019 13:05:29 GMT
ADD file:57888dd979a80adc65c1fdc390ca77df7dbb7549c7ce655276ef11f54284319a in / 
# Tue, 05 Mar 2019 13:05:30 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:40:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:40:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 14:36:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:36:07 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 14:36:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 14:36:10 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 14:36:11 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 14:36:11 GMT
ENV JAVA_VERSION=7u181
# Tue, 05 Mar 2019 14:36:12 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Tue, 05 Mar 2019 14:37:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 17:58:36 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 05 Mar 2019 17:58:36 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 05 Mar 2019 17:58:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 17:58:38 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 05 Mar 2019 17:58:39 GMT
WORKDIR /usr/local/jetty
# Tue, 05 Mar 2019 17:58:39 GMT
ENV JETTY_VERSION=9.2.26.v20180806
# Tue, 05 Mar 2019 17:58:40 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.26.v20180806/jetty-distribution-9.2.26.v20180806.tar.gz
# Tue, 05 Mar 2019 17:58:40 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 05 Mar 2019 17:58:44 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 05 Mar 2019 17:58:44 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 05 Mar 2019 17:58:46 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 05 Mar 2019 17:58:46 GMT
WORKDIR /var/lib/jetty
# Tue, 05 Mar 2019 17:58:49 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 05 Mar 2019 17:58:50 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 05 Mar 2019 17:58:51 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 05 Mar 2019 17:58:52 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Tue, 05 Mar 2019 17:58:53 GMT
USER jetty
# Tue, 05 Mar 2019 17:58:53 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 17:58:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 17:58:54 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:27fb1932f7b947e1aae56957f613528117f9be31e33b703972bcca01326c7045`  
		Last Modified: Tue, 05 Mar 2019 13:15:24 GMT  
		Size: 50.3 MB (50293558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6fb81616fd7699aa8083e0f181a045340e3b72ce596c8e46aafee6cc994cc6`  
		Last Modified: Tue, 05 Mar 2019 14:00:26 GMT  
		Size: 16.7 MB (16715898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f25a3ea5b59b09ddb22fd7794a2edf7d9268ee3cfcdd46e557b18b09b7c4a3`  
		Last Modified: Tue, 05 Mar 2019 14:43:30 GMT  
		Size: 762.5 KB (762530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73179b7e54991d3f0c27a2c30ad2f30a89a77026e563efc36fd002cf33d4bae`  
		Last Modified: Tue, 05 Mar 2019 14:43:30 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d0d821ceccb612d739122725e8ae94dde30a6b2f0b9f071b20060c8638d312`  
		Last Modified: Tue, 05 Mar 2019 14:43:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea10cc4e8eab9bde119d1fa5ba719435ae43003d50dd1dfaf5d6d4273c01e055`  
		Last Modified: Tue, 05 Mar 2019 14:43:44 GMT  
		Size: 70.0 MB (70020560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ef63727527ee6c5ba82528ca5bf01e5c344cb0b3a0f107a21fdd455214245c`  
		Last Modified: Tue, 05 Mar 2019 17:59:58 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d8e5d15966ac725822b9ea718a608b9a6212db3c5e9177ce8f1af0b9a22be7`  
		Last Modified: Tue, 05 Mar 2019 17:59:58 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf58150dcf3d45d8bd78e2717bb11d0e33345b8f4b00a204fd14684fe604d4a`  
		Last Modified: Tue, 05 Mar 2019 17:59:59 GMT  
		Size: 10.0 MB (10029895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c63da522500cbc1ed101a92afa9d6c5332374b0510431669f04f20c6082baf`  
		Last Modified: Tue, 05 Mar 2019 17:59:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8196ac2019b9ac1427f945275a993c8909a26161b07e5d9aa0650d3e4ecd35a1`  
		Last Modified: Tue, 05 Mar 2019 17:59:57 GMT  
		Size: 1.5 KB (1538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6566207ca9d1ed3802f95a05f89222cf995d244553095411b1b13e082fac492b`  
		Last Modified: Tue, 05 Mar 2019 17:59:57 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc65fe486459874346d1103cf4e7cd2cc133f4d05ccfc1917572409be6d20d1`  
		Last Modified: Tue, 05 Mar 2019 17:59:57 GMT  
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
$ docker pull jetty@sha256:b7c86a39a8f8f4dd4bc8192a5caa7d2026ffcc32947343bcfc498edb0ff5a20e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176963409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c014fcb862f6927ab846e3b1c4b97d8ce81146e97176745c8050058464ed1826`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 05 Mar 2019 11:40:55 GMT
ADD file:195af36095959161134ae0fc4d9bcb4aee6197916a6ee7b54451a229d2db3e89 in / 
# Tue, 05 Mar 2019 11:40:56 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 20:59:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 20:59:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Mar 2019 03:31:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Mar 2019 03:31:57 GMT
ENV LANG=C.UTF-8
# Wed, 06 Mar 2019 03:31:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Mar 2019 03:31:59 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Mar 2019 03:31:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Mar 2019 03:31:59 GMT
ENV JAVA_VERSION=7u181
# Wed, 06 Mar 2019 03:31:59 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 06 Mar 2019 03:35:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Mar 2019 05:16:49 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 06 Mar 2019 05:16:49 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 06 Mar 2019 05:16:49 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Mar 2019 05:16:50 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 06 Mar 2019 05:16:50 GMT
WORKDIR /usr/local/jetty
# Wed, 06 Mar 2019 05:16:50 GMT
ENV JETTY_VERSION=9.2.26.v20180806
# Wed, 06 Mar 2019 05:16:50 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.26.v20180806/jetty-distribution-9.2.26.v20180806.tar.gz
# Wed, 06 Mar 2019 05:16:51 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 06 Mar 2019 05:16:53 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 06 Mar 2019 05:16:53 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 06 Mar 2019 05:16:54 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 06 Mar 2019 05:16:54 GMT
WORKDIR /var/lib/jetty
# Wed, 06 Mar 2019 05:16:55 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 06 Mar 2019 05:16:56 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 06 Mar 2019 05:16:56 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 06 Mar 2019 05:16:57 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Wed, 06 Mar 2019 05:16:57 GMT
USER jetty
# Wed, 06 Mar 2019 05:16:57 GMT
EXPOSE 8080
# Wed, 06 Mar 2019 05:16:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Mar 2019 05:16:57 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:f7ce4d781f3676a0be48b8d3d34d6f425e873120e0e4f57aa109f394b797292d`  
		Last Modified: Tue, 05 Mar 2019 11:51:08 GMT  
		Size: 54.6 MB (54604426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7a0d5b8eca14fd26922c4d3f67119113f60045f853d3af1882dca1ad76136d`  
		Last Modified: Tue, 05 Mar 2019 21:15:47 GMT  
		Size: 19.8 MB (19847940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313ed9e9764204bfc765a5d932bc64f2c9d4cdcfe882c2e0b990669c61a14211`  
		Last Modified: Wed, 06 Mar 2019 03:39:17 GMT  
		Size: 798.2 KB (798167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0391b8782fe2735aab018af561adc17c31ddfde83aae74b70afddd9f207ae42`  
		Last Modified: Wed, 06 Mar 2019 03:39:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fbff692061471c423726c310582211a190d832067cf8f68920f0adf9cec196`  
		Last Modified: Wed, 06 Mar 2019 03:39:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ed32c0c050bf03ebb3c4604a107dbb9633db5c3185b7320e5e751dd1788c74`  
		Last Modified: Wed, 06 Mar 2019 03:39:31 GMT  
		Size: 91.7 MB (91677409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef2a8bec50f1b3265677dc888339473384e6db4897e618b82de62abeecb6486`  
		Last Modified: Wed, 06 Mar 2019 05:17:47 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382241a8eb0f01046ef82b586444f2c8483b2f93045623d9b9b8c7e942e555ff`  
		Last Modified: Wed, 06 Mar 2019 05:17:46 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e86d346ff497da2721e2dac66dbb941098b7f83af949fcc3acb8133e4798c7`  
		Last Modified: Wed, 06 Mar 2019 05:17:47 GMT  
		Size: 10.0 MB (10029730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7ba843ecd754573155494139bb592e5688effa130b33e3978404a75a30b9cc`  
		Last Modified: Wed, 06 Mar 2019 05:17:46 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6c754b25e8764fd2d7cf5888c297898891946fb9340f9a719358e61b3dd3ed`  
		Last Modified: Wed, 06 Mar 2019 05:17:46 GMT  
		Size: 1.5 KB (1468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4fc69a382a215588b9af9859b4a7a468564af859cb86635b30b1a79178ea0a`  
		Last Modified: Wed, 06 Mar 2019 05:17:46 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86046d737b7b41701ae2ef5271c5204f92845b97e4297e695aa3b460ba442f0f`  
		Last Modified: Wed, 06 Mar 2019 05:17:46 GMT  
		Size: 1.4 KB (1388 bytes)  
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

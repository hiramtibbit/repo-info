## `jetty:jre8`

```console
$ docker pull jetty@sha256:675afbb17f45dcc6e028d4c0d3e6fc1779d6c7af2f93a1d214a5dcb4d38e61a1
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

### `jetty:jre8` - linux; amd64

```console
$ docker pull jetty@sha256:d26d5b58e22d9e82a5cc860075f928eac5503d7551a486cd9cfdbe710f9c9b84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115131062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1426c6cbb20384d35f3c3a1ea441ba164ada6df56f866229056c115cb7e69127`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 07:20:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:20:52 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:20:53 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Tue, 11 Jun 2019 07:20:53 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 07:20:54 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 11 Jun 2019 07:20:54 GMT
ENV JAVA_VERSION=8u212-b04
# Tue, 11 Jun 2019 07:20:54 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Tue, 11 Jun 2019 07:20:55 GMT
ENV JAVA_URL_VERSION=8u212b04
# Tue, 11 Jun 2019 07:21:03 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -version
# Tue, 11 Jun 2019 17:03:38 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 11 Jun 2019 17:03:39 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 11 Jun 2019 17:03:39 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 17:03:40 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 11 Jun 2019 17:03:40 GMT
WORKDIR /usr/local/jetty
# Tue, 11 Jun 2019 17:03:41 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Tue, 11 Jun 2019 17:03:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Tue, 11 Jun 2019 17:03:41 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 11 Jun 2019 17:03:47 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 11 Jun 2019 17:03:47 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 11 Jun 2019 17:03:48 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 11 Jun 2019 17:03:49 GMT
WORKDIR /var/lib/jetty
# Tue, 11 Jun 2019 17:03:52 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 11 Jun 2019 17:03:52 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 11 Jun 2019 17:03:54 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 11 Jun 2019 17:03:54 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Tue, 11 Jun 2019 17:03:55 GMT
USER jetty
# Tue, 11 Jun 2019 17:03:55 GMT
EXPOSE 8080
# Tue, 11 Jun 2019 17:03:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 17:03:55 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e739bce2743683774dcb24e994ea43f4d0639f48687a6518730238fb21b1f15`  
		Last Modified: Tue, 11 Jun 2019 07:25:24 GMT  
		Size: 5.1 MB (5123229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dde2a90460d8f918a06d73e0f8484f281a925a6e5988434148ccdf9c3b1c323`  
		Last Modified: Tue, 11 Jun 2019 07:25:23 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5b8585072c24a7a03a8f240f59b8d4e0cff14a3ebcb693dc1a55e1a6679714`  
		Last Modified: Tue, 11 Jun 2019 07:25:35 GMT  
		Size: 40.1 MB (40113105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858b6590ed295a3e0d85a5068372d76571649f9714b447c7de0f8ab46240686c`  
		Last Modified: Tue, 11 Jun 2019 17:05:31 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78280ee59a35886ed69ce4f03233bf4261908a0ceae172cd4d344ebf6dc9af4e`  
		Last Modified: Tue, 11 Jun 2019 17:05:31 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587bacad53fa36ce66e2aec9767cdcb6285feb800ceb1edc40667879da7ccc93`  
		Last Modified: Tue, 11 Jun 2019 17:05:37 GMT  
		Size: 9.4 MB (9424370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f16bf9ffd0f78b0f1dd22d29f7025564cd8f45def32563c76d8c79e407b682`  
		Last Modified: Tue, 11 Jun 2019 17:05:30 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50078ecc17ed9a99c4a887434c5537cc30ffb53037316d11da596bb1143c8080`  
		Last Modified: Tue, 11 Jun 2019 17:05:30 GMT  
		Size: 2.0 KB (1994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64796e3d997e15375151cd345ea0c4ff6e75efc8fff4226a15e88108d9c364fe`  
		Last Modified: Tue, 11 Jun 2019 17:05:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b316f9373901a66c101e433ee740bb2b1128dd85258ef30a614d0825d128cdf7`  
		Last Modified: Tue, 11 Jun 2019 17:05:30 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre8` - linux; arm variant v5

```console
$ docker pull jetty@sha256:6b79ec2ccfa3ee643017cecbdeee7565e32a4b74912ab39d95bbb17a1d1f7700
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.3 MB (180287052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:965e56aa7b329cf860c5d90d360d6f490b43bfdb9ec51dfb7235b27e1cabbcbb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 08 May 2019 08:53:17 GMT
ADD file:5dfe3b771bd67a2856913544993e219cb8c7933c33523cc56fe13a3a0e76ce9b in / 
# Wed, 08 May 2019 08:53:18 GMT
CMD ["bash"]
# Wed, 08 May 2019 10:01:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:01:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:29:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:35:27 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 11:35:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 11:35:30 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 11:35:30 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 11:35:30 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 11:35:31 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 11:36:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 16:15:13 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 08 May 2019 16:15:13 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 08 May 2019 16:15:14 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 16:15:16 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 08 May 2019 16:15:16 GMT
WORKDIR /usr/local/jetty
# Wed, 08 May 2019 16:15:17 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Wed, 08 May 2019 16:15:17 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Wed, 08 May 2019 16:15:18 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 08 May 2019 16:15:24 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 08 May 2019 16:15:25 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 08 May 2019 16:15:27 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 08 May 2019 16:15:27 GMT
WORKDIR /var/lib/jetty
# Wed, 08 May 2019 16:15:32 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 08 May 2019 16:15:32 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 08 May 2019 16:15:35 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 08 May 2019 16:15:36 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Wed, 08 May 2019 16:15:37 GMT
USER jetty
# Wed, 08 May 2019 16:15:37 GMT
EXPOSE 8080
# Wed, 08 May 2019 16:15:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 16:15:38 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:ca892ced475bf1c51c1f13b76a64549cfc5d1a0b55d33d8b9418efbb47887bf8`  
		Last Modified: Wed, 08 May 2019 08:59:09 GMT  
		Size: 44.0 MB (44045778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7b30b379469b50f6ada866964876f5c4ba164c22896bf3a08aabab61869e51`  
		Last Modified: Wed, 08 May 2019 10:09:26 GMT  
		Size: 9.9 MB (9854225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e257762b4747840fc09dce269e7f68146ac9864b8bf218e57475b4af367a74`  
		Last Modified: Wed, 08 May 2019 10:09:24 GMT  
		Size: 4.2 MB (4159009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0d161136f55f6e5c26bbd9fde30327cf06dec15e40d7ac330b8db368e4b9ee`  
		Last Modified: Wed, 08 May 2019 11:50:21 GMT  
		Size: 846.1 KB (846058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56a59da16addae7a15d26d4edba174883fd994d29bb943085361990730c6787`  
		Last Modified: Wed, 08 May 2019 11:52:50 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d14b7a612bfb82f68156f623a22e64ab4524cbf82c592f9365a904bac033a5`  
		Last Modified: Wed, 08 May 2019 11:52:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e798df308d1bafc2c22d22386cb75aa71c9b8fc3c7b9ff5e736c1464c83bea`  
		Last Modified: Wed, 08 May 2019 11:53:24 GMT  
		Size: 112.0 MB (111951438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5962f9d6fd65875c9975a6db12ff0c916944d89184389e3ae3272c6d5690381`  
		Last Modified: Wed, 08 May 2019 16:17:29 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085503a369edcce69a9e4e547a07f501228a3e71b00141b07bf7e4bf3beb4cf2`  
		Last Modified: Wed, 08 May 2019 16:17:29 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5110522604cdddba047cc0be366f16edb6238a77df6c0b690e81f538401402c6`  
		Last Modified: Wed, 08 May 2019 16:17:30 GMT  
		Size: 9.4 MB (9424456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9dc9134cb78fa8c8012494e966655a51906b8fbb9a287ff677f112cb6df5b7b`  
		Last Modified: Wed, 08 May 2019 16:17:28 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a1cc6aa008e3c92d0e543846f48ffc0278671ad3336e433360f2bbab577e4b7`  
		Last Modified: Wed, 08 May 2019 16:17:28 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62368ad6255191b9e3dafc29336216dd0f25b1acacf11eacdfa4a0a9d95b2f5c`  
		Last Modified: Wed, 08 May 2019 16:17:28 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c246600f5484d9d71da31a270a9f1543cf79da2bf94a224314c659b9a66a875e`  
		Last Modified: Wed, 08 May 2019 16:17:28 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre8` - linux; arm variant v7

```console
$ docker pull jetty@sha256:9f4c641dc0a44707812e694e8eade3015b6c059b468a4e688634a3c20ed24d0c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.1 MB (176059054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eea2dba1b53efa6f56de5449b6625a4945aaa26e65463ca0f2ae298f2ad8ab22`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:04:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:04:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 14:10:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:14:59 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 14:15:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 14:15:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 14:15:02 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 14:15:03 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 14:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 14:16:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 17:55:00 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 08 May 2019 17:55:01 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 08 May 2019 17:55:01 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 17:55:03 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 08 May 2019 17:55:03 GMT
WORKDIR /usr/local/jetty
# Wed, 08 May 2019 17:55:03 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Wed, 08 May 2019 17:55:04 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Wed, 08 May 2019 17:55:04 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 08 May 2019 17:55:10 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 08 May 2019 17:55:10 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 08 May 2019 17:55:12 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 08 May 2019 17:55:12 GMT
WORKDIR /var/lib/jetty
# Wed, 08 May 2019 17:55:14 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 08 May 2019 17:55:15 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 08 May 2019 17:55:16 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 08 May 2019 17:55:17 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Wed, 08 May 2019 17:55:18 GMT
USER jetty
# Wed, 08 May 2019 17:55:18 GMT
EXPOSE 8080
# Wed, 08 May 2019 17:55:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 17:55:19 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047df9a92c9f7376283a8d6af526f5126d95995ba48dd7de49979ef57da3e15b`  
		Last Modified: Wed, 08 May 2019 13:12:20 GMT  
		Size: 9.5 MB (9485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeed4ac8d1e2c751afd6fd3517f1d154365467039353c377c8206fd5eb81d4b`  
		Last Modified: Wed, 08 May 2019 13:12:18 GMT  
		Size: 3.9 MB (3918605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3c646a29b8c83d854b86dccdbf390a7b296f5144aef4e38276c8a7b649e0804`  
		Last Modified: Wed, 08 May 2019 14:31:13 GMT  
		Size: 830.4 KB (830410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb3a067c54308aa02398bf021c38a952c18f27646b736d71732cbbc9b1010b0`  
		Last Modified: Wed, 08 May 2019 14:33:42 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2c033d6c592b7d46aafecc714f1393be324b57f01f5e6c76e832e8ea04576a`  
		Last Modified: Wed, 08 May 2019 14:33:42 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe0d9e8d93d276090a71cd6c8346c468c9e051903bf52760756359c4451d33b`  
		Last Modified: Wed, 08 May 2019 14:34:14 GMT  
		Size: 110.3 MB (110311680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2f07a446b7fe57fd236711da5953265e8d532d43c9cb8f25a533320e93a636`  
		Last Modified: Wed, 08 May 2019 17:57:17 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6395f8d7de3564b4ae1e386bf6ed4e0f7723e94d4940a70b485a86504a75926`  
		Last Modified: Wed, 08 May 2019 17:57:17 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc147ed50354f0d2a7587b28055ead9eec49df4f8eb5341d91e746671a6890d9`  
		Last Modified: Wed, 08 May 2019 17:57:20 GMT  
		Size: 9.4 MB (9424492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c93706301b9ef0c48c932aa219a1caa545887de6b3900e134bce06740648f8b`  
		Last Modified: Wed, 08 May 2019 17:57:16 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d03e292fef5d40aada56fd958955f649c1637f1247f0ce20ccbe82940b6ccfd`  
		Last Modified: Wed, 08 May 2019 17:57:16 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f2350cc0ff9abae232377501904cbd64860bdbd5db9ef7c24bce5508cf073c`  
		Last Modified: Wed, 08 May 2019 17:57:16 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d04c42b72f7e6024f6fdb7413c30b11da394d870eaa464bda596aa3e99142fc`  
		Last Modified: Wed, 08 May 2019 17:57:16 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre8` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:3ee1ddb288d71f4b1ad1ce763a20f04829648b47b561dafbbbe53c94b08dc09f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.3 MB (180316238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:065202e34003732b82405d032f365e0ce4b88ca12a833e8f985f4832b4e32003`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:06:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:20:20 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:20:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:20:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:20:25 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 16:20:25 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 16:20:26 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 16:26:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 09 May 2019 06:36:46 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 09 May 2019 06:36:47 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 09 May 2019 06:36:47 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 06:36:50 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 09 May 2019 06:36:51 GMT
WORKDIR /usr/local/jetty
# Thu, 09 May 2019 06:36:51 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Thu, 09 May 2019 06:36:52 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Thu, 09 May 2019 06:36:53 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 09 May 2019 06:37:00 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 09 May 2019 06:37:00 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 09 May 2019 06:37:04 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 09 May 2019 06:37:06 GMT
WORKDIR /var/lib/jetty
# Thu, 09 May 2019 06:37:17 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 09 May 2019 06:37:18 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 09 May 2019 06:37:20 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 09 May 2019 06:37:21 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Thu, 09 May 2019 06:37:22 GMT
USER jetty
# Thu, 09 May 2019 06:37:23 GMT
EXPOSE 8080
# Thu, 09 May 2019 06:37:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 May 2019 06:37:25 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266e07372d3cf38feb8825ddae8cb9f335282ad809bba6aeaac01c34a13b9394`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 839.5 KB (839462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a659800b4725d142bb026865f3fe7c0783f10d06c59d098da99786f2d1651351`  
		Last Modified: Wed, 08 May 2019 16:35:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b72fcad374b58026407e0d656f469140e3725eb1baa7468dfaba55fc642503d`  
		Last Modified: Wed, 08 May 2019 16:35:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06f957e19b2a1bce1a9143c3ec174bda06b3a5d74ef7122a0b81a3a730deae6`  
		Last Modified: Wed, 08 May 2019 16:35:55 GMT  
		Size: 113.1 MB (113077224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f791aa27f1747c37c9c5acd34101fcc84ec1a536e8a02228aa4b287b73ef3bd0`  
		Last Modified: Thu, 09 May 2019 06:39:38 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5221d80232700ebc6c1719351fd3a61e0abf1fe0b48279c9d12ce2c1938a4d7`  
		Last Modified: Thu, 09 May 2019 06:39:37 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b87cf9efd288805cba6b9239384dc775dbc746658a2680be42dc3a224d083c46`  
		Last Modified: Thu, 09 May 2019 06:39:37 GMT  
		Size: 9.4 MB (9424405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0cfea8bf92b317bcbd695e15634538bf2982ba018719a3b51830587da01ca4`  
		Last Modified: Thu, 09 May 2019 06:39:36 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0a476f5b3aaec2efeb9fbddb91b0166de7dff79442931c544bcc272c752b64`  
		Last Modified: Thu, 09 May 2019 06:39:36 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629a38d5b61a139180c3ab365ce37d6248a8392996bc67bbaa9a99c7b4c45df3`  
		Last Modified: Thu, 09 May 2019 06:39:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ecc4e7eccb7ca4d8d3af7a890cf10ab5135744987fc04119a8e04e3f3d0917`  
		Last Modified: Thu, 09 May 2019 06:39:36 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre8` - linux; 386

```console
$ docker pull jetty@sha256:f532a68e9bbf79732ee7dbfaa205e1b742f0c2fefb7e19ba5c0d6d1491cbba08
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194362543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd22310a1a4ac81a7cd7b96c967f835781080ad5f817dd7161256eb8ae0207e2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:08:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:08:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 22:13:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 22:16:13 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 22:16:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 22:16:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 22:16:15 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 22:16:15 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 22:16:15 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 22:16:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 09 May 2019 04:57:10 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 09 May 2019 04:57:10 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 09 May 2019 04:57:10 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 04:57:11 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 09 May 2019 04:57:11 GMT
WORKDIR /usr/local/jetty
# Thu, 09 May 2019 04:57:12 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Thu, 09 May 2019 04:57:12 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Thu, 09 May 2019 04:57:12 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 09 May 2019 04:57:16 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 09 May 2019 04:57:16 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 09 May 2019 04:57:17 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 09 May 2019 04:57:17 GMT
WORKDIR /var/lib/jetty
# Thu, 09 May 2019 04:57:19 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 09 May 2019 04:57:19 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 09 May 2019 04:57:20 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 09 May 2019 04:57:20 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Thu, 09 May 2019 04:57:20 GMT
USER jetty
# Thu, 09 May 2019 04:57:20 GMT
EXPOSE 8080
# Thu, 09 May 2019 04:57:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 May 2019 04:57:21 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b18ff57de8d55737be40848138cbd66efcc99443ae507217ae5dd45e3cf41a`  
		Last Modified: Wed, 08 May 2019 19:14:07 GMT  
		Size: 10.8 MB (10802110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc701b379559241c696cd079ff9b83f0bba19faec8747d75654fe5bc7e8adb03`  
		Last Modified: Wed, 08 May 2019 19:14:05 GMT  
		Size: 4.6 MB (4561353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad72e88a4544f4570c0df9df66b43ca05325a8df5fe4bdac5e0240836f47d28`  
		Last Modified: Wed, 08 May 2019 22:48:29 GMT  
		Size: 862.0 KB (862001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9215fde6b1eafb43012d68d65388471bca2066ad401d508df13b046aa8b830e1`  
		Last Modified: Wed, 08 May 2019 22:51:58 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf128bb9e196d3a692d14dc4ed9c91920ab3ecb3fcb3d7e4c968fb1f18b9ce1`  
		Last Modified: Wed, 08 May 2019 22:51:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47742760e75d51e74c18576e2a0b2d447e91b2c3a023dc9e3b1e4a83aa7bdc1a`  
		Last Modified: Wed, 08 May 2019 22:52:46 GMT  
		Size: 122.6 MB (122643377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13df399b06606cedbc7ffce659af330dab9041dfebd5d98933853a74a0be48d3`  
		Last Modified: Thu, 09 May 2019 04:58:48 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95d50318d694cf0cf2727460d2057498228249819a1d83c2f92296c96dbfb1e`  
		Last Modified: Thu, 09 May 2019 04:58:48 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad229b08fbaea588098dc7e42976c29d5b7a16be0e2a84b3ba0d811c5d724494`  
		Last Modified: Thu, 09 May 2019 04:58:53 GMT  
		Size: 9.4 MB (9424415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7161f78a4fe1f1d0ee6787a7f6f28b0a0241c7390a5c919ee688aac0caf3fef`  
		Last Modified: Thu, 09 May 2019 04:58:47 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4163317071202eac58e9e3c5ec95d8b071ae013148d4f1376fdc09a340c7ed6b`  
		Last Modified: Thu, 09 May 2019 04:58:47 GMT  
		Size: 2.0 KB (1993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4d72a3ad59ec8fada471aa84164b581dd500aea022f038334b0eda00c0ec19`  
		Last Modified: Thu, 09 May 2019 04:58:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7621b6c4a7959d913a05ce51aa49a199c616badaaa439ea6873fe8c5a9b89ee`  
		Last Modified: Thu, 09 May 2019 04:58:47 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre8` - linux; ppc64le

```console
$ docker pull jetty@sha256:1c8d35096fdcfc3c448b203db5c12734655105f9f779d3734522511764e58233
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.8 MB (184781497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eacbfac25da6c191d70cca800f7ed9b015a19adef7c4ab701c0b31540a6159e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 08 May 2019 09:03:26 GMT
ADD file:844cea0aa071f0f6b2640d4c452590a8777485fa27a0aad789553110eaeb7081 in / 
# Wed, 08 May 2019 09:03:33 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:06:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:07:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 12:39:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:57:43 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 12:57:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 12:57:56 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 12:57:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 12:58:03 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 12:58:05 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 13:05:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 21:43:25 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 08 May 2019 21:43:27 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 08 May 2019 21:43:30 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 21:43:42 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 08 May 2019 21:43:51 GMT
WORKDIR /usr/local/jetty
# Wed, 08 May 2019 21:43:57 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Wed, 08 May 2019 21:44:01 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Wed, 08 May 2019 21:44:06 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 08 May 2019 21:44:22 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 08 May 2019 21:44:26 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 08 May 2019 21:44:33 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 08 May 2019 21:44:40 GMT
WORKDIR /var/lib/jetty
# Wed, 08 May 2019 21:44:57 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 08 May 2019 21:45:03 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 08 May 2019 21:45:10 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 08 May 2019 21:45:11 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Wed, 08 May 2019 21:45:13 GMT
USER jetty
# Wed, 08 May 2019 21:45:18 GMT
EXPOSE 8080
# Wed, 08 May 2019 21:45:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 May 2019 21:45:22 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c6c4df30bc4ffa8fb97a3dda6f8758fb0ddeb8929d159369cf5974dd3f2ac117`  
		Last Modified: Wed, 08 May 2019 09:21:32 GMT  
		Size: 45.6 MB (45603184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8b6d64c78121ab5074c55b90272e1a13e72e3b7854d6a6c7e638eff77307ba`  
		Last Modified: Wed, 08 May 2019 12:24:57 GMT  
		Size: 10.0 MB (9991084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663d68dc2e1243453bf4b04afcb5394452ca5371b05a1c96f41a0df4189631e8`  
		Last Modified: Wed, 08 May 2019 12:24:54 GMT  
		Size: 4.3 MB (4296597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98e4e060b9a0f1aadc5647d44be482b1363697a3fd8a4aeb6a4b9c53e17ecc4`  
		Last Modified: Wed, 08 May 2019 13:14:21 GMT  
		Size: 848.6 KB (848616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e24f3bccdd6d1d666b5c75ba2971c3c1d1b974352776ac0c8d91b0244f35cb`  
		Last Modified: Wed, 08 May 2019 13:20:14 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f7a6e570eaf9c696f99b09d6fb9eaf034d87e7a1e9bf092cd38e9f71777a8b`  
		Last Modified: Wed, 08 May 2019 13:20:15 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5a3232b209a6e8e5f133bb2d4b9c377dab2d71b8b57de44e32eefb5584bfd2`  
		Last Modified: Wed, 08 May 2019 13:21:49 GMT  
		Size: 114.6 MB (114611463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9321ac118136d891526d4b7d585903133a760850fd8ba7b73f5608b51d289a8a`  
		Last Modified: Wed, 08 May 2019 21:50:41 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86141b28655e4b923da175ff032f463f8ef7bf16d23578dd00d25badfdce9b79`  
		Last Modified: Wed, 08 May 2019 21:50:40 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0e68a17da043f652f2d812d9c650558c382a9c2be40bb8fd901e19d89cb162`  
		Last Modified: Wed, 08 May 2019 21:50:38 GMT  
		Size: 9.4 MB (9424473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec696722258c05e106b7c921898aac4da7e2ab6ae65076942a12749f1049140b`  
		Last Modified: Wed, 08 May 2019 21:50:37 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85cae7017c7325beea0f896b47ae71aa44260cac66b36379a32dbb0ed9309eaf`  
		Last Modified: Wed, 08 May 2019 21:50:37 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8302b92229dab552b306d2b48fba615a169e28af57e2c7fae6324ef3b4b028`  
		Last Modified: Wed, 08 May 2019 21:50:37 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffadd387f05feedbcf33516453c4c46c64a80261af3ff1e6ebf007ccac52a95b`  
		Last Modified: Wed, 08 May 2019 21:50:37 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre8` - linux; s390x

```console
$ docker pull jetty@sha256:eb8f97a23898ccdc5be026ea051ef231615b9455a4d78a72cbeb093439440cf5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.4 MB (184363097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55031fcaf6fba1a2c7256bad7bbcc09b11b036dbceb1807ceeacc9202792f231`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 08 May 2019 11:46:30 GMT
ADD file:35b243252442c1fc6a9e4f7bea498f5b7302c530eb804ed6a79c5b84a68a96fd in / 
# Wed, 08 May 2019 11:46:31 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 14:42:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:52:21 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 14:52:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 14:52:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 14:52:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 14:52:36 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 14:52:36 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 14:54:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 09 May 2019 05:12:37 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 09 May 2019 05:12:38 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 09 May 2019 05:12:38 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 05:12:42 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 09 May 2019 05:12:42 GMT
WORKDIR /usr/local/jetty
# Thu, 09 May 2019 05:12:44 GMT
ENV JETTY_VERSION=9.4.18.v20190429
# Thu, 09 May 2019 05:12:44 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.18.v20190429/jetty-home-9.4.18.v20190429.tar.gz
# Thu, 09 May 2019 05:12:46 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 09 May 2019 05:12:59 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 09 May 2019 05:13:00 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 09 May 2019 05:13:05 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 09 May 2019 05:13:06 GMT
WORKDIR /var/lib/jetty
# Thu, 09 May 2019 05:13:16 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 09 May 2019 05:13:16 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 09 May 2019 05:13:20 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 09 May 2019 05:13:21 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Thu, 09 May 2019 05:13:22 GMT
USER jetty
# Thu, 09 May 2019 05:13:23 GMT
EXPOSE 8080
# Thu, 09 May 2019 05:13:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 May 2019 05:13:24 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3602dd773e45048fcb10569c368bf7ddac54267760f371efbe1bb65ba8d67361`  
		Last Modified: Wed, 08 May 2019 11:52:15 GMT  
		Size: 45.2 MB (45197648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412a17b553a57c91ed490be0279a1aafa108b9a60b10f8c482ed85ca94de3a3c`  
		Last Modified: Wed, 08 May 2019 14:00:34 GMT  
		Size: 10.3 MB (10314565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5007dca2cc2afa05648742b75324a09e45eae504d384750ed7c6de3e5e5d65d2`  
		Last Modified: Wed, 08 May 2019 14:00:30 GMT  
		Size: 4.4 MB (4372280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf61465b03d8ec5e8064ba91220d0e97c4dd5b75a7d2fe644aab7cc4a0a514c`  
		Last Modified: Wed, 08 May 2019 15:01:34 GMT  
		Size: 863.9 KB (863943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35375a807e76af07efe2bf1c77fce29498511166f4b41f158e181805528ce229`  
		Last Modified: Wed, 08 May 2019 15:04:54 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da53975ff11a25b69ce30d4b02d88f1b27cff3e5b1a2e08d05f6721e388f4a5d`  
		Last Modified: Wed, 08 May 2019 15:04:54 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d381e46be773491220b0199e519c4f97308fee82af49481321e3d769db7b7b0a`  
		Last Modified: Wed, 08 May 2019 15:05:36 GMT  
		Size: 114.2 MB (114184348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e456897b935f1efded84a648055389e6c4fffbee3a50167ab95bf7cf047142`  
		Last Modified: Thu, 09 May 2019 05:17:26 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace4f725dd5f318c30a864c4400d34b9d1dfeb8dba95f242af7e8668945d2a20`  
		Last Modified: Thu, 09 May 2019 05:17:26 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6df7195f7b6c83e938c25f1940930649b862e2b5369ec6e041631c4cb1ebef`  
		Last Modified: Thu, 09 May 2019 05:17:27 GMT  
		Size: 9.4 MB (9424383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef61c6677aef99352724f560861db552edff24e57f288598be141e49f0802c8`  
		Last Modified: Thu, 09 May 2019 05:17:24 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16572dc3fb4702653a0252ed5b29eb536479f0085f7ec2596c9d1c2e8214fd2f`  
		Last Modified: Thu, 09 May 2019 05:17:24 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0aa75b063a662a0cd7f4af7b720863dfa8c7643b98bfc4b8ee5124a1bb069e`  
		Last Modified: Thu, 09 May 2019 05:17:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ce48b6bff7dbea769d046b7311e98e7ea33aec40dca23a246a4b2c1fe530c5`  
		Last Modified: Thu, 09 May 2019 05:17:24 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

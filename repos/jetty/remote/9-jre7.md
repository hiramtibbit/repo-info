## `jetty:9-jre7`

```console
$ docker pull jetty@sha256:d8453127de76e3068954bdf4df74a3cb90c7e3c18cf1cbff060339681e319f09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `jetty:9-jre7` - linux; amd64

```console
$ docker pull jetty@sha256:7c225fcd3809d988f5010dad6ba30bc994f81fb0a0b4b992d49df0d469032785
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164654833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00659b0295385e477a75db0c645a362aa56a429dade512df9939b5341ff72e9b`
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
# Tue, 14 May 2019 00:32:03 GMT
ENV JAVA_VERSION=7u221
# Tue, 14 May 2019 00:32:03 GMT
ENV JAVA_DEBIAN_VERSION=7u221-2.6.18-1~deb8u1
# Tue, 14 May 2019 00:34:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 14 May 2019 00:58:05 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 14 May 2019 00:58:05 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 14 May 2019 00:58:05 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 May 2019 00:58:06 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 14 May 2019 00:58:06 GMT
WORKDIR /usr/local/jetty
# Tue, 14 May 2019 00:58:06 GMT
ENV JETTY_VERSION=9.2.28.v20190418
# Tue, 14 May 2019 00:58:07 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.28.v20190418/jetty-distribution-9.2.28.v20190418.tar.gz
# Tue, 14 May 2019 00:58:07 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 14 May 2019 00:58:10 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 14 May 2019 00:58:10 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 14 May 2019 00:58:11 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 14 May 2019 00:58:11 GMT
WORKDIR /var/lib/jetty
# Tue, 14 May 2019 00:58:13 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 14 May 2019 00:58:13 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 14 May 2019 00:58:14 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 14 May 2019 00:58:14 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Tue, 14 May 2019 00:58:14 GMT
USER jetty
# Tue, 14 May 2019 00:58:14 GMT
EXPOSE 8080
# Tue, 14 May 2019 00:58:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 May 2019 00:58:14 GMT
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
	-	`sha256:bf313a79ccc89a195395841961e578ee6c39b41a831746ea332173ccd9f7108e`  
		Last Modified: Tue, 14 May 2019 00:39:16 GMT  
		Size: 81.9 MB (81890892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a072a9a5b0e8060bc3d8e57fe3068930bfc4c23164e78f439ad2009dabcff394`  
		Last Modified: Tue, 14 May 2019 00:58:36 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016f1f262e9f872251bb73ea59ef5ed063e128035b1d7a92474aac0332f6cc8f`  
		Last Modified: Tue, 14 May 2019 00:58:36 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6575cb325a3390f5e1883dbf0fafb3e8eb8b660a1261dc3b1d5a4281e137d10b`  
		Last Modified: Tue, 14 May 2019 00:58:35 GMT  
		Size: 10.0 MB (10035662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a6d4b6500cc0c27e3c0ea00d1b50bcf19f71916c322456df6cb896c2e574ac`  
		Last Modified: Tue, 14 May 2019 00:58:35 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5176632ea221aa4a90ffdaefce75096785f9d4f63120d06aed4892adcf1b6b02`  
		Last Modified: Tue, 14 May 2019 00:58:35 GMT  
		Size: 1.5 KB (1467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a45dd2d70ab7dc5da662c77da540d8b25073a5081fb1e41e7f4918b6a64ff6`  
		Last Modified: Tue, 14 May 2019 00:58:35 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d88eee3c3f56e48bae8b159d521753af531e02fe90b3edb637eee4d1f18a1e`  
		Last Modified: Tue, 14 May 2019 00:58:35 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-jre7` - linux; arm variant v5

```console
$ docker pull jetty@sha256:9567b2f603f64535f45993007769b21a9d1b943074a529b51befcf9485d3c812
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.0 MB (151998773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da265fd0efc4fad4375f5025a2b0d7b790e335c558295aa66c3c20e17cc8a10f`
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
# Tue, 14 May 2019 00:00:41 GMT
ENV JAVA_VERSION=7u221
# Tue, 14 May 2019 00:00:42 GMT
ENV JAVA_DEBIAN_VERSION=7u221-2.6.18-1~deb8u1
# Tue, 14 May 2019 00:02:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 14 May 2019 00:34:21 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 14 May 2019 00:34:22 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 14 May 2019 00:34:22 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 May 2019 00:34:25 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 14 May 2019 00:34:26 GMT
WORKDIR /usr/local/jetty
# Tue, 14 May 2019 00:34:26 GMT
ENV JETTY_VERSION=9.2.28.v20190418
# Tue, 14 May 2019 00:34:27 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.28.v20190418/jetty-distribution-9.2.28.v20190418.tar.gz
# Tue, 14 May 2019 00:34:28 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 14 May 2019 00:34:32 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 14 May 2019 00:34:33 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 14 May 2019 00:34:35 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 14 May 2019 00:34:35 GMT
WORKDIR /var/lib/jetty
# Tue, 14 May 2019 00:34:39 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 14 May 2019 00:34:40 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 14 May 2019 00:34:43 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 14 May 2019 00:34:44 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Tue, 14 May 2019 00:34:44 GMT
USER jetty
# Tue, 14 May 2019 00:34:45 GMT
EXPOSE 8080
# Tue, 14 May 2019 00:34:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 May 2019 00:34:46 GMT
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
	-	`sha256:4e4c4364c964247177abea121d1b68fd2e6d9f58506176b8a18f8af065e5dd1d`  
		Last Modified: Tue, 14 May 2019 00:06:23 GMT  
		Size: 71.6 MB (71561549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d77b6e50376eb49c024e2f7687fb98e7a6464ef9e5199e42bd834964e4d6d5`  
		Last Modified: Tue, 14 May 2019 00:35:08 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66fe087416ff34922d376ba1dabaf6f8e993ea06d888543b6a90a4d80cabc51`  
		Last Modified: Tue, 14 May 2019 00:35:08 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380a050da2f4ccae6e069ac0f9ad94100b5c11238173ab253e5ca72aa11c651c`  
		Last Modified: Tue, 14 May 2019 00:35:10 GMT  
		Size: 10.0 MB (10035778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d59fa644b0c1e18bbc4652689e3a523f189b74b629df7033fd08100907c55e`  
		Last Modified: Tue, 14 May 2019 00:35:07 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a364dd0a12cbcb45a29223072da511fa8c927c4032ed7248e874ad1e4d3c7633`  
		Last Modified: Tue, 14 May 2019 00:35:08 GMT  
		Size: 1.5 KB (1533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1c82ee9310f4aa18bc0ace16c0e2b04cdbd85a73fabcf0440bf9064e7a1a860`  
		Last Modified: Tue, 14 May 2019 00:35:07 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9212a6cc5a3d215f2f5ebff9abe8b42c130e314fc34e102d835ef2dbe6788b89`  
		Last Modified: Tue, 14 May 2019 00:35:07 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-jre7` - linux; arm variant v7

```console
$ docker pull jetty@sha256:3336190d29aba53039d2b9b0b28b5fc35cbf7106a6a790dad9f656d7de3a18ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.9 MB (147915943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0561cc8d263c122434df2d9646e31e5ce8bb2be8a6fb20c777acd5ae3c13511`
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
# Tue, 14 May 2019 00:03:15 GMT
ENV JAVA_VERSION=7u221
# Tue, 14 May 2019 00:03:16 GMT
ENV JAVA_DEBIAN_VERSION=7u221-2.6.18-1~deb8u1
# Tue, 14 May 2019 00:04:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 14 May 2019 00:34:19 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 14 May 2019 00:34:21 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 14 May 2019 00:34:22 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 May 2019 00:34:24 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 14 May 2019 00:34:25 GMT
WORKDIR /usr/local/jetty
# Tue, 14 May 2019 00:34:26 GMT
ENV JETTY_VERSION=9.2.28.v20190418
# Tue, 14 May 2019 00:34:26 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.28.v20190418/jetty-distribution-9.2.28.v20190418.tar.gz
# Tue, 14 May 2019 00:34:27 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 14 May 2019 00:34:32 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 14 May 2019 00:34:33 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 14 May 2019 00:34:35 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 14 May 2019 00:34:35 GMT
WORKDIR /var/lib/jetty
# Tue, 14 May 2019 00:34:39 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 14 May 2019 00:34:40 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 14 May 2019 00:34:43 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 14 May 2019 00:34:44 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Tue, 14 May 2019 00:34:44 GMT
USER jetty
# Tue, 14 May 2019 00:34:45 GMT
EXPOSE 8080
# Tue, 14 May 2019 00:34:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 May 2019 00:34:46 GMT
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
	-	`sha256:2a9174e14c812191ba1457bbcd8d776518599762fdc9ab0f5b2e130a4f5ff211`  
		Last Modified: Tue, 14 May 2019 00:09:01 GMT  
		Size: 70.1 MB (70096306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4506e774b2ba8da3c90144ff2c9c61edb2923fb57f6931a31746371d1cf8fa7`  
		Last Modified: Tue, 14 May 2019 00:35:09 GMT  
		Size: 2.1 KB (2084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c9f91704ca1ab5446ab7883e979faf3dc3fab2b54864daa0cc5a8f5ee4cf11`  
		Last Modified: Tue, 14 May 2019 00:35:08 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf04760a266ece0f5bf71440cf8f6f16bd4e29672fdc4ef44603e1abf4472f17`  
		Last Modified: Tue, 14 May 2019 00:35:08 GMT  
		Size: 10.0 MB (10035788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d59fa644b0c1e18bbc4652689e3a523f189b74b629df7033fd08100907c55e`  
		Last Modified: Tue, 14 May 2019 00:35:07 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d003aedd2f40d82e0f3d5d3adb24d0d7f95d785bf32cb0a7b5baa729735cc3f`  
		Last Modified: Tue, 14 May 2019 00:35:07 GMT  
		Size: 1.5 KB (1536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1c82ee9310f4aa18bc0ace16c0e2b04cdbd85a73fabcf0440bf9064e7a1a860`  
		Last Modified: Tue, 14 May 2019 00:35:07 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17700ee5c322ec607269688add205c4ec53734ae7d87214fc9463ae9816e66c0`  
		Last Modified: Tue, 14 May 2019 00:35:07 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-jre7` - linux; 386

```console
$ docker pull jetty@sha256:a8bd96a60fdb1535e38c767f4d7e14beeed3a515db12bf4ca3eef12322a8f4d5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.1 MB (177051667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50de25a82b0f49b1e79249af9130b3fc63e496520abe768a5f373485c9334c9c`
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
# Mon, 13 May 2019 23:53:53 GMT
ENV JAVA_VERSION=7u221
# Mon, 13 May 2019 23:53:53 GMT
ENV JAVA_DEBIAN_VERSION=7u221-2.6.18-1~deb8u1
# Mon, 13 May 2019 23:57:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 14 May 2019 00:58:21 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 14 May 2019 00:58:22 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 14 May 2019 00:58:22 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 May 2019 00:58:22 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 14 May 2019 00:58:23 GMT
WORKDIR /usr/local/jetty
# Tue, 14 May 2019 00:58:23 GMT
ENV JETTY_VERSION=9.2.28.v20190418
# Tue, 14 May 2019 00:58:23 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.28.v20190418/jetty-distribution-9.2.28.v20190418.tar.gz
# Tue, 14 May 2019 00:58:23 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 14 May 2019 00:58:26 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Tue, 14 May 2019 00:58:26 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 14 May 2019 00:58:27 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 14 May 2019 00:58:27 GMT
WORKDIR /var/lib/jetty
# Tue, 14 May 2019 00:58:29 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 14 May 2019 00:58:29 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 14 May 2019 00:58:29 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 14 May 2019 00:58:30 GMT
COPY multi:87587db67954487ef9f6dc57fa1fcab90f0134d7aa6d2af7a98d1b98a6047a64 in / 
# Tue, 14 May 2019 00:58:30 GMT
USER jetty
# Tue, 14 May 2019 00:58:30 GMT
EXPOSE 8080
# Tue, 14 May 2019 00:58:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 May 2019 00:58:31 GMT
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
	-	`sha256:0b28f11ab37edab67cc8a8f7e13418e263406ae4ded8531ed39d500f8acd28e5`  
		Last Modified: Tue, 14 May 2019 00:02:41 GMT  
		Size: 91.8 MB (91757080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e2437ae5b9fab98ee9d6b3083a3b9902e75faf066d84c9b3cebd85d205ea1`  
		Last Modified: Tue, 14 May 2019 00:58:53 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d65c639a717960bcc74bac7380c4f5518365ff9a31f4bfd01b3d41e60d2886c`  
		Last Modified: Tue, 14 May 2019 00:58:53 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f169ba382c56013139aa2b7cc6a7851cb4fcaeb2d466a5780d9be7b9effa00d`  
		Last Modified: Tue, 14 May 2019 00:58:53 GMT  
		Size: 10.0 MB (10035683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4aebe3a499bf7897543ce62686f73c2ea38484ef0070e4ba1bdb1e5e487b923`  
		Last Modified: Tue, 14 May 2019 00:58:52 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fed9479d2991cc77d3023f7ca36252a94c8b013ae0396e1a671b52f0b7eea07`  
		Last Modified: Tue, 14 May 2019 00:58:52 GMT  
		Size: 1.5 KB (1467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928d7492e80f918764ce6403d5fe98bbbedf799e351965e3f2c7a41f7080db70`  
		Last Modified: Tue, 14 May 2019 00:58:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:522fa96234c6317e1fc7d3be7f4580c3d16bc8866e763ba969e3b71d37b5efa3`  
		Last Modified: Tue, 14 May 2019 00:58:52 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

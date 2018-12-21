<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `lightstreamer`

-	[`lightstreamer:6`](#lightstreamer6)
-	[`lightstreamer:6.0`](#lightstreamer60)
-	[`lightstreamer:6.0.3`](#lightstreamer603)
-	[`lightstreamer:6.1`](#lightstreamer61)
-	[`lightstreamer:6.1.0`](#lightstreamer610)
-	[`lightstreamer:7`](#lightstreamer7)
-	[`lightstreamer:7.0`](#lightstreamer70)
-	[`lightstreamer:7.0.2`](#lightstreamer702)
-	[`lightstreamer:7.0.2-alpine`](#lightstreamer702-alpine)
-	[`lightstreamer:7.0.2-jre10`](#lightstreamer702-jre10)
-	[`lightstreamer:7.0.2-jre11`](#lightstreamer702-jre11)
-	[`lightstreamer:7.0.2-jre8`](#lightstreamer702-jre8)
-	[`lightstreamer:7.0.2-jre8-alpine`](#lightstreamer702-jre8-alpine)
-	[`lightstreamer:7.0-alpine`](#lightstreamer70-alpine)
-	[`lightstreamer:7.0-jre10`](#lightstreamer70-jre10)
-	[`lightstreamer:7.0-jre11`](#lightstreamer70-jre11)
-	[`lightstreamer:7.0-jre8`](#lightstreamer70-jre8)
-	[`lightstreamer:7.0-jre8-alpine`](#lightstreamer70-jre8-alpine)
-	[`lightstreamer:7-alpine`](#lightstreamer7-alpine)
-	[`lightstreamer:7-jre10`](#lightstreamer7-jre10)
-	[`lightstreamer:7-jre11`](#lightstreamer7-jre11)
-	[`lightstreamer:7-jre8`](#lightstreamer7-jre8)
-	[`lightstreamer:7-jre8-alpine`](#lightstreamer7-jre8-alpine)
-	[`lightstreamer:latest`](#lightstreamerlatest)

## `lightstreamer:6`

```console
$ docker pull lightstreamer@sha256:a6a2ca02f8815bf82d11559927183b8f592baedecbd54927367541dc5bec2a67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:6` - linux; amd64

```console
$ docker pull lightstreamer@sha256:f99e6e4ad196e781d8d4db5a06b55829b09e63d8216f2b55e09ee257b4fd4da6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220173328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e4b939b68d38a7c62b2e9d90c019b27ad7e145a26a1f4a4b181a84562305ba6`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 15:01:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 15:01:54 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 15:01:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 15:01:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 15:01:57 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Nov 2018 15:01:58 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 15:01:58 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 16 Nov 2018 15:01:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 15:02:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 15:02:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 07:24:24 GMT
MAINTAINER Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 17 Nov 2018 07:24:28 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Sat, 17 Nov 2018 07:24:28 GMT
ENV LIGHSTREAMER_EDITION=Allegro-Presto-Vivace
# Sat, 17 Nov 2018 07:25:04 GMT
ENV LIGHSTREAMER_VERSION=6_1_0_20170123
# Sat, 17 Nov 2018 07:25:05 GMT
ENV LIGHSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_Allegro-Presto-Vivace_6_1_0_20170123.tar.gz
# Sat, 17 Nov 2018 07:25:05 GMT
WORKDIR /lightstreamer
# Sat, 17 Nov 2018 07:25:15 GMT
RUN set -x         && curl -fSL -o Lightstreamer.tar.gz ${LIGHSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '123,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<appender-ref ref="LSDailyRolling" \/>/ d' conf/lightstreamer_log_conf.xml
# Sat, 17 Nov 2018 07:25:15 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 07:25:16 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 17 Nov 2018 07:25:16 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95065f2209613c11cdaf4499a2dba0c6cb9c53fc05732dc76c4c6f4b47453717`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0887630ce5768a45764e3bf0ed5382223216df24ba08ce3e4c952a88398647ba`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c375d1959fab484c9c7450d5ee70b2cfc05ff12fb04bcd3bed888cc8a84bb2de`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00a5e6055ccdd1c0491227009508127273e65aceaccad709eb6a10692fb68e3`  
		Last Modified: Fri, 16 Nov 2018 16:04:08 GMT  
		Size: 122.1 MB (122118624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8319f5fb56cff26b699a967e4afa404e605c23c58ae1952b0b19765a66db6a61`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 246.7 KB (246722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9335acc1ef9ad8ee035db24f2956007a755ba382dc5ac5769043269615829168`  
		Last Modified: Sat, 17 Nov 2018 07:27:44 GMT  
		Size: 2.1 KB (2130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b9d3f1dc17fdd794f635474d24015591809ea9b60a7fcadf4950f3610a669b`  
		Last Modified: Sat, 17 Nov 2018 07:28:36 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cba8b7c553a2c7f755b7d4fa427b066ed941484eb43683e4425a302f5662cae`  
		Last Modified: Sat, 17 Nov 2018 07:28:41 GMT  
		Size: 36.6 MB (36551878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:6` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:4625e651c55badde6338f66d32086de1499b68b01df8040a9ccc94de3e97f1a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.3 MB (207295976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64b3928cace4d5c0ede0a5cda0ef8ac7cab38efba75b2cb9089f26f719451b5e`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 05:03:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:03:28 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 05:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 05:03:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 05:03:32 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 17 Nov 2018 05:03:33 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 05:03:34 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 17 Nov 2018 05:03:34 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 17 Nov 2018 05:09:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 05:09:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 23:07:22 GMT
MAINTAINER Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 17 Nov 2018 23:07:32 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Sat, 17 Nov 2018 23:07:33 GMT
ENV LIGHSTREAMER_EDITION=Allegro-Presto-Vivace
# Sat, 17 Nov 2018 23:08:31 GMT
ENV LIGHSTREAMER_VERSION=6_1_0_20170123
# Sat, 17 Nov 2018 23:08:35 GMT
ENV LIGHSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_Allegro-Presto-Vivace_6_1_0_20170123.tar.gz
# Sat, 17 Nov 2018 23:08:38 GMT
WORKDIR /lightstreamer
# Sat, 17 Nov 2018 23:08:55 GMT
RUN set -x         && curl -fSL -o Lightstreamer.tar.gz ${LIGHSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '123,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<appender-ref ref="LSDailyRolling" \/>/ d' conf/lightstreamer_log_conf.xml
# Sat, 17 Nov 2018 23:08:56 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 23:08:57 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 17 Nov 2018 23:08:59 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8050ba47b282917e868af6eab2ca0f22a9fbb40ba6452b38af97d53ba97c6248`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 839.1 KB (839146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032f795239efef8545d838438d4209bd38dc66778df9a09b73278274bc1768b5`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e4c7cd5a44f16ca5ee171f6fd3d991c115f02b94c885e76cb35b40a2a6d04a`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3029270d925de617b3e3fa4ea41b595ef66c57c9a25063d295ede56a11cfb4f`  
		Last Modified: Sat, 17 Nov 2018 05:53:10 GMT  
		Size: 112.8 MB (112755573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c612a06709926434d069b9b01132e7a8e6063fca60e4d2f7e231e8c777ac5bc1`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 246.7 KB (246666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa0ee9ab8d04a8a3a7c41f0aee957f414218841ff64f366df05462950af97a1`  
		Last Modified: Sat, 17 Nov 2018 23:14:46 GMT  
		Size: 2.1 KB (2139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eabcb8f0797b313231670b110b780f69fca285d5bfcad77f39957f13979076ba`  
		Last Modified: Sat, 17 Nov 2018 23:15:53 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712be71bef8b6567eff40fb368fce6afb3ee42e5ee4e26cde34986c374f2c5d1`  
		Last Modified: Sat, 17 Nov 2018 23:16:02 GMT  
		Size: 36.6 MB (36551883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:6.0`

```console
$ docker pull lightstreamer@sha256:de3c6dc6ae55b0705a5aced7edec7411ea172606f811dfd9e55146ee9a643b3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:6.0` - linux; amd64

```console
$ docker pull lightstreamer@sha256:1ae6921be14641780e32ffa16f65a51eac3d2bbfd6587f0c178785cdcd36f2fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.5 MB (221458421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e2d9763df986c763c900ce061bc4f273581d25e5d5c8663335b989fbe65104d`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 15:01:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 15:01:54 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 15:01:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 15:01:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 15:01:57 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Nov 2018 15:01:58 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 15:01:58 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 16 Nov 2018 15:01:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 15:02:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 15:02:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 07:24:24 GMT
MAINTAINER Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 17 Nov 2018 07:24:28 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Sat, 17 Nov 2018 07:24:28 GMT
ENV LIGHSTREAMER_EDITION=Allegro-Presto-Vivace
# Sat, 17 Nov 2018 07:24:28 GMT
ENV LIGHSTREAMER_VERSION=6_0_3_20160905
# Sat, 17 Nov 2018 07:24:29 GMT
ENV LIGHSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_Allegro-Presto-Vivace_6_0_3_20160905.tar.gz
# Sat, 17 Nov 2018 07:24:29 GMT
WORKDIR /lightstreamer
# Sat, 17 Nov 2018 07:24:38 GMT
RUN set -x         && curl -fSL -o Lightstreamer.tar.gz ${LIGHSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '123,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<appender-ref ref="LSDailyRolling" \/>/ d' conf/lightstreamer_log_conf.xml
# Sat, 17 Nov 2018 07:24:39 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 07:24:39 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 17 Nov 2018 07:24:40 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95065f2209613c11cdaf4499a2dba0c6cb9c53fc05732dc76c4c6f4b47453717`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0887630ce5768a45764e3bf0ed5382223216df24ba08ce3e4c952a88398647ba`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c375d1959fab484c9c7450d5ee70b2cfc05ff12fb04bcd3bed888cc8a84bb2de`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00a5e6055ccdd1c0491227009508127273e65aceaccad709eb6a10692fb68e3`  
		Last Modified: Fri, 16 Nov 2018 16:04:08 GMT  
		Size: 122.1 MB (122118624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8319f5fb56cff26b699a967e4afa404e605c23c58ae1952b0b19765a66db6a61`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 246.7 KB (246722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9335acc1ef9ad8ee035db24f2956007a755ba382dc5ac5769043269615829168`  
		Last Modified: Sat, 17 Nov 2018 07:27:44 GMT  
		Size: 2.1 KB (2130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd76617072bcd7fa17745a28181b6ca3c467aa3e491d517183b16d6fe1f4acf`  
		Last Modified: Sat, 17 Nov 2018 07:27:44 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf8eaa929df95a02a8231e630c912e8e056c9aab0b3c72b2fb7206dfec4cfe0`  
		Last Modified: Sat, 17 Nov 2018 07:27:50 GMT  
		Size: 37.8 MB (37836973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:6.0` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:536388f201ec8ce39d4fdb0b674d3e6d57c65f0c5f69ab940c57b36ff41b6f03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208581029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0df3773ca48c5787d7ac807f35bdf5955407d2ff67735b268627663abe793ef0`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 05:03:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:03:28 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 05:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 05:03:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 05:03:32 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 17 Nov 2018 05:03:33 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 05:03:34 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 17 Nov 2018 05:03:34 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 17 Nov 2018 05:09:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 05:09:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 23:07:22 GMT
MAINTAINER Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 17 Nov 2018 23:07:32 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Sat, 17 Nov 2018 23:07:33 GMT
ENV LIGHSTREAMER_EDITION=Allegro-Presto-Vivace
# Sat, 17 Nov 2018 23:07:34 GMT
ENV LIGHSTREAMER_VERSION=6_0_3_20160905
# Sat, 17 Nov 2018 23:07:36 GMT
ENV LIGHSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_Allegro-Presto-Vivace_6_0_3_20160905.tar.gz
# Sat, 17 Nov 2018 23:07:37 GMT
WORKDIR /lightstreamer
# Sat, 17 Nov 2018 23:07:55 GMT
RUN set -x         && curl -fSL -o Lightstreamer.tar.gz ${LIGHSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '123,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<appender-ref ref="LSDailyRolling" \/>/ d' conf/lightstreamer_log_conf.xml
# Sat, 17 Nov 2018 23:07:57 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 23:08:00 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 17 Nov 2018 23:08:02 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8050ba47b282917e868af6eab2ca0f22a9fbb40ba6452b38af97d53ba97c6248`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 839.1 KB (839146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032f795239efef8545d838438d4209bd38dc66778df9a09b73278274bc1768b5`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e4c7cd5a44f16ca5ee171f6fd3d991c115f02b94c885e76cb35b40a2a6d04a`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3029270d925de617b3e3fa4ea41b595ef66c57c9a25063d295ede56a11cfb4f`  
		Last Modified: Sat, 17 Nov 2018 05:53:10 GMT  
		Size: 112.8 MB (112755573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c612a06709926434d069b9b01132e7a8e6063fca60e4d2f7e231e8c777ac5bc1`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 246.7 KB (246666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa0ee9ab8d04a8a3a7c41f0aee957f414218841ff64f366df05462950af97a1`  
		Last Modified: Sat, 17 Nov 2018 23:14:46 GMT  
		Size: 2.1 KB (2139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b4fbdcf0afcaed6b826ccb1381f1592aa906cff1f8fd832f63f85d45ff34a1`  
		Last Modified: Sat, 17 Nov 2018 23:14:46 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0eee1d28650932dd0454864d116c437121585d6f5bf4dc2cbdbfa6a7dd88d97`  
		Last Modified: Sat, 17 Nov 2018 23:14:56 GMT  
		Size: 37.8 MB (37836936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:6.0.3`

```console
$ docker pull lightstreamer@sha256:de3c6dc6ae55b0705a5aced7edec7411ea172606f811dfd9e55146ee9a643b3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:6.0.3` - linux; amd64

```console
$ docker pull lightstreamer@sha256:1ae6921be14641780e32ffa16f65a51eac3d2bbfd6587f0c178785cdcd36f2fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.5 MB (221458421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e2d9763df986c763c900ce061bc4f273581d25e5d5c8663335b989fbe65104d`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 15:01:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 15:01:54 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 15:01:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 15:01:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 15:01:57 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Nov 2018 15:01:58 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 15:01:58 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 16 Nov 2018 15:01:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 15:02:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 15:02:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 07:24:24 GMT
MAINTAINER Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 17 Nov 2018 07:24:28 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Sat, 17 Nov 2018 07:24:28 GMT
ENV LIGHSTREAMER_EDITION=Allegro-Presto-Vivace
# Sat, 17 Nov 2018 07:24:28 GMT
ENV LIGHSTREAMER_VERSION=6_0_3_20160905
# Sat, 17 Nov 2018 07:24:29 GMT
ENV LIGHSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_Allegro-Presto-Vivace_6_0_3_20160905.tar.gz
# Sat, 17 Nov 2018 07:24:29 GMT
WORKDIR /lightstreamer
# Sat, 17 Nov 2018 07:24:38 GMT
RUN set -x         && curl -fSL -o Lightstreamer.tar.gz ${LIGHSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '123,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<appender-ref ref="LSDailyRolling" \/>/ d' conf/lightstreamer_log_conf.xml
# Sat, 17 Nov 2018 07:24:39 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 07:24:39 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 17 Nov 2018 07:24:40 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95065f2209613c11cdaf4499a2dba0c6cb9c53fc05732dc76c4c6f4b47453717`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0887630ce5768a45764e3bf0ed5382223216df24ba08ce3e4c952a88398647ba`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c375d1959fab484c9c7450d5ee70b2cfc05ff12fb04bcd3bed888cc8a84bb2de`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00a5e6055ccdd1c0491227009508127273e65aceaccad709eb6a10692fb68e3`  
		Last Modified: Fri, 16 Nov 2018 16:04:08 GMT  
		Size: 122.1 MB (122118624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8319f5fb56cff26b699a967e4afa404e605c23c58ae1952b0b19765a66db6a61`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 246.7 KB (246722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9335acc1ef9ad8ee035db24f2956007a755ba382dc5ac5769043269615829168`  
		Last Modified: Sat, 17 Nov 2018 07:27:44 GMT  
		Size: 2.1 KB (2130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd76617072bcd7fa17745a28181b6ca3c467aa3e491d517183b16d6fe1f4acf`  
		Last Modified: Sat, 17 Nov 2018 07:27:44 GMT  
		Size: 100.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf8eaa929df95a02a8231e630c912e8e056c9aab0b3c72b2fb7206dfec4cfe0`  
		Last Modified: Sat, 17 Nov 2018 07:27:50 GMT  
		Size: 37.8 MB (37836973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:6.0.3` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:536388f201ec8ce39d4fdb0b674d3e6d57c65f0c5f69ab940c57b36ff41b6f03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208581029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0df3773ca48c5787d7ac807f35bdf5955407d2ff67735b268627663abe793ef0`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 05:03:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:03:28 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 05:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 05:03:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 05:03:32 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 17 Nov 2018 05:03:33 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 05:03:34 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 17 Nov 2018 05:03:34 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 17 Nov 2018 05:09:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 05:09:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 23:07:22 GMT
MAINTAINER Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 17 Nov 2018 23:07:32 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Sat, 17 Nov 2018 23:07:33 GMT
ENV LIGHSTREAMER_EDITION=Allegro-Presto-Vivace
# Sat, 17 Nov 2018 23:07:34 GMT
ENV LIGHSTREAMER_VERSION=6_0_3_20160905
# Sat, 17 Nov 2018 23:07:36 GMT
ENV LIGHSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_Allegro-Presto-Vivace_6_0_3_20160905.tar.gz
# Sat, 17 Nov 2018 23:07:37 GMT
WORKDIR /lightstreamer
# Sat, 17 Nov 2018 23:07:55 GMT
RUN set -x         && curl -fSL -o Lightstreamer.tar.gz ${LIGHSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '123,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<appender-ref ref="LSDailyRolling" \/>/ d' conf/lightstreamer_log_conf.xml
# Sat, 17 Nov 2018 23:07:57 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 23:08:00 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 17 Nov 2018 23:08:02 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8050ba47b282917e868af6eab2ca0f22a9fbb40ba6452b38af97d53ba97c6248`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 839.1 KB (839146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032f795239efef8545d838438d4209bd38dc66778df9a09b73278274bc1768b5`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e4c7cd5a44f16ca5ee171f6fd3d991c115f02b94c885e76cb35b40a2a6d04a`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3029270d925de617b3e3fa4ea41b595ef66c57c9a25063d295ede56a11cfb4f`  
		Last Modified: Sat, 17 Nov 2018 05:53:10 GMT  
		Size: 112.8 MB (112755573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c612a06709926434d069b9b01132e7a8e6063fca60e4d2f7e231e8c777ac5bc1`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 246.7 KB (246666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa0ee9ab8d04a8a3a7c41f0aee957f414218841ff64f366df05462950af97a1`  
		Last Modified: Sat, 17 Nov 2018 23:14:46 GMT  
		Size: 2.1 KB (2139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b4fbdcf0afcaed6b826ccb1381f1592aa906cff1f8fd832f63f85d45ff34a1`  
		Last Modified: Sat, 17 Nov 2018 23:14:46 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0eee1d28650932dd0454864d116c437121585d6f5bf4dc2cbdbfa6a7dd88d97`  
		Last Modified: Sat, 17 Nov 2018 23:14:56 GMT  
		Size: 37.8 MB (37836936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:6.1`

```console
$ docker pull lightstreamer@sha256:a6a2ca02f8815bf82d11559927183b8f592baedecbd54927367541dc5bec2a67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:6.1` - linux; amd64

```console
$ docker pull lightstreamer@sha256:f99e6e4ad196e781d8d4db5a06b55829b09e63d8216f2b55e09ee257b4fd4da6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220173328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e4b939b68d38a7c62b2e9d90c019b27ad7e145a26a1f4a4b181a84562305ba6`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 15:01:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 15:01:54 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 15:01:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 15:01:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 15:01:57 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Nov 2018 15:01:58 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 15:01:58 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 16 Nov 2018 15:01:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 15:02:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 15:02:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 07:24:24 GMT
MAINTAINER Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 17 Nov 2018 07:24:28 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Sat, 17 Nov 2018 07:24:28 GMT
ENV LIGHSTREAMER_EDITION=Allegro-Presto-Vivace
# Sat, 17 Nov 2018 07:25:04 GMT
ENV LIGHSTREAMER_VERSION=6_1_0_20170123
# Sat, 17 Nov 2018 07:25:05 GMT
ENV LIGHSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_Allegro-Presto-Vivace_6_1_0_20170123.tar.gz
# Sat, 17 Nov 2018 07:25:05 GMT
WORKDIR /lightstreamer
# Sat, 17 Nov 2018 07:25:15 GMT
RUN set -x         && curl -fSL -o Lightstreamer.tar.gz ${LIGHSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '123,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<appender-ref ref="LSDailyRolling" \/>/ d' conf/lightstreamer_log_conf.xml
# Sat, 17 Nov 2018 07:25:15 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 07:25:16 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 17 Nov 2018 07:25:16 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95065f2209613c11cdaf4499a2dba0c6cb9c53fc05732dc76c4c6f4b47453717`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0887630ce5768a45764e3bf0ed5382223216df24ba08ce3e4c952a88398647ba`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c375d1959fab484c9c7450d5ee70b2cfc05ff12fb04bcd3bed888cc8a84bb2de`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00a5e6055ccdd1c0491227009508127273e65aceaccad709eb6a10692fb68e3`  
		Last Modified: Fri, 16 Nov 2018 16:04:08 GMT  
		Size: 122.1 MB (122118624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8319f5fb56cff26b699a967e4afa404e605c23c58ae1952b0b19765a66db6a61`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 246.7 KB (246722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9335acc1ef9ad8ee035db24f2956007a755ba382dc5ac5769043269615829168`  
		Last Modified: Sat, 17 Nov 2018 07:27:44 GMT  
		Size: 2.1 KB (2130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b9d3f1dc17fdd794f635474d24015591809ea9b60a7fcadf4950f3610a669b`  
		Last Modified: Sat, 17 Nov 2018 07:28:36 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cba8b7c553a2c7f755b7d4fa427b066ed941484eb43683e4425a302f5662cae`  
		Last Modified: Sat, 17 Nov 2018 07:28:41 GMT  
		Size: 36.6 MB (36551878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:6.1` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:4625e651c55badde6338f66d32086de1499b68b01df8040a9ccc94de3e97f1a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.3 MB (207295976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64b3928cace4d5c0ede0a5cda0ef8ac7cab38efba75b2cb9089f26f719451b5e`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 05:03:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:03:28 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 05:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 05:03:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 05:03:32 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 17 Nov 2018 05:03:33 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 05:03:34 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 17 Nov 2018 05:03:34 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 17 Nov 2018 05:09:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 05:09:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 23:07:22 GMT
MAINTAINER Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 17 Nov 2018 23:07:32 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Sat, 17 Nov 2018 23:07:33 GMT
ENV LIGHSTREAMER_EDITION=Allegro-Presto-Vivace
# Sat, 17 Nov 2018 23:08:31 GMT
ENV LIGHSTREAMER_VERSION=6_1_0_20170123
# Sat, 17 Nov 2018 23:08:35 GMT
ENV LIGHSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_Allegro-Presto-Vivace_6_1_0_20170123.tar.gz
# Sat, 17 Nov 2018 23:08:38 GMT
WORKDIR /lightstreamer
# Sat, 17 Nov 2018 23:08:55 GMT
RUN set -x         && curl -fSL -o Lightstreamer.tar.gz ${LIGHSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '123,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<appender-ref ref="LSDailyRolling" \/>/ d' conf/lightstreamer_log_conf.xml
# Sat, 17 Nov 2018 23:08:56 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 23:08:57 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 17 Nov 2018 23:08:59 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8050ba47b282917e868af6eab2ca0f22a9fbb40ba6452b38af97d53ba97c6248`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 839.1 KB (839146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032f795239efef8545d838438d4209bd38dc66778df9a09b73278274bc1768b5`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e4c7cd5a44f16ca5ee171f6fd3d991c115f02b94c885e76cb35b40a2a6d04a`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3029270d925de617b3e3fa4ea41b595ef66c57c9a25063d295ede56a11cfb4f`  
		Last Modified: Sat, 17 Nov 2018 05:53:10 GMT  
		Size: 112.8 MB (112755573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c612a06709926434d069b9b01132e7a8e6063fca60e4d2f7e231e8c777ac5bc1`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 246.7 KB (246666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa0ee9ab8d04a8a3a7c41f0aee957f414218841ff64f366df05462950af97a1`  
		Last Modified: Sat, 17 Nov 2018 23:14:46 GMT  
		Size: 2.1 KB (2139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eabcb8f0797b313231670b110b780f69fca285d5bfcad77f39957f13979076ba`  
		Last Modified: Sat, 17 Nov 2018 23:15:53 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712be71bef8b6567eff40fb368fce6afb3ee42e5ee4e26cde34986c374f2c5d1`  
		Last Modified: Sat, 17 Nov 2018 23:16:02 GMT  
		Size: 36.6 MB (36551883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:6.1.0`

```console
$ docker pull lightstreamer@sha256:a6a2ca02f8815bf82d11559927183b8f592baedecbd54927367541dc5bec2a67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:6.1.0` - linux; amd64

```console
$ docker pull lightstreamer@sha256:f99e6e4ad196e781d8d4db5a06b55829b09e63d8216f2b55e09ee257b4fd4da6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220173328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e4b939b68d38a7c62b2e9d90c019b27ad7e145a26a1f4a4b181a84562305ba6`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 15:01:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 15:01:54 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 15:01:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 15:01:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 15:01:57 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Nov 2018 15:01:58 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 15:01:58 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 16 Nov 2018 15:01:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 15:02:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 15:02:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 07:24:24 GMT
MAINTAINER Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 17 Nov 2018 07:24:28 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Sat, 17 Nov 2018 07:24:28 GMT
ENV LIGHSTREAMER_EDITION=Allegro-Presto-Vivace
# Sat, 17 Nov 2018 07:25:04 GMT
ENV LIGHSTREAMER_VERSION=6_1_0_20170123
# Sat, 17 Nov 2018 07:25:05 GMT
ENV LIGHSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_Allegro-Presto-Vivace_6_1_0_20170123.tar.gz
# Sat, 17 Nov 2018 07:25:05 GMT
WORKDIR /lightstreamer
# Sat, 17 Nov 2018 07:25:15 GMT
RUN set -x         && curl -fSL -o Lightstreamer.tar.gz ${LIGHSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '123,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<appender-ref ref="LSDailyRolling" \/>/ d' conf/lightstreamer_log_conf.xml
# Sat, 17 Nov 2018 07:25:15 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 07:25:16 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 17 Nov 2018 07:25:16 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95065f2209613c11cdaf4499a2dba0c6cb9c53fc05732dc76c4c6f4b47453717`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0887630ce5768a45764e3bf0ed5382223216df24ba08ce3e4c952a88398647ba`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c375d1959fab484c9c7450d5ee70b2cfc05ff12fb04bcd3bed888cc8a84bb2de`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00a5e6055ccdd1c0491227009508127273e65aceaccad709eb6a10692fb68e3`  
		Last Modified: Fri, 16 Nov 2018 16:04:08 GMT  
		Size: 122.1 MB (122118624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8319f5fb56cff26b699a967e4afa404e605c23c58ae1952b0b19765a66db6a61`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 246.7 KB (246722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9335acc1ef9ad8ee035db24f2956007a755ba382dc5ac5769043269615829168`  
		Last Modified: Sat, 17 Nov 2018 07:27:44 GMT  
		Size: 2.1 KB (2130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b9d3f1dc17fdd794f635474d24015591809ea9b60a7fcadf4950f3610a669b`  
		Last Modified: Sat, 17 Nov 2018 07:28:36 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cba8b7c553a2c7f755b7d4fa427b066ed941484eb43683e4425a302f5662cae`  
		Last Modified: Sat, 17 Nov 2018 07:28:41 GMT  
		Size: 36.6 MB (36551878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:6.1.0` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:4625e651c55badde6338f66d32086de1499b68b01df8040a9ccc94de3e97f1a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.3 MB (207295976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64b3928cace4d5c0ede0a5cda0ef8ac7cab38efba75b2cb9089f26f719451b5e`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 05:03:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:03:28 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 05:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 05:03:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 05:03:32 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 17 Nov 2018 05:03:33 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 05:03:34 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 17 Nov 2018 05:03:34 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 17 Nov 2018 05:09:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 05:09:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 23:07:22 GMT
MAINTAINER Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 17 Nov 2018 23:07:32 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Sat, 17 Nov 2018 23:07:33 GMT
ENV LIGHSTREAMER_EDITION=Allegro-Presto-Vivace
# Sat, 17 Nov 2018 23:08:31 GMT
ENV LIGHSTREAMER_VERSION=6_1_0_20170123
# Sat, 17 Nov 2018 23:08:35 GMT
ENV LIGHSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_Allegro-Presto-Vivace_6_1_0_20170123.tar.gz
# Sat, 17 Nov 2018 23:08:38 GMT
WORKDIR /lightstreamer
# Sat, 17 Nov 2018 23:08:55 GMT
RUN set -x         && curl -fSL -o Lightstreamer.tar.gz ${LIGHSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '123,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<appender-ref ref="LSDailyRolling" \/>/ d' conf/lightstreamer_log_conf.xml
# Sat, 17 Nov 2018 23:08:56 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 23:08:57 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 17 Nov 2018 23:08:59 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8050ba47b282917e868af6eab2ca0f22a9fbb40ba6452b38af97d53ba97c6248`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 839.1 KB (839146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032f795239efef8545d838438d4209bd38dc66778df9a09b73278274bc1768b5`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e4c7cd5a44f16ca5ee171f6fd3d991c115f02b94c885e76cb35b40a2a6d04a`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3029270d925de617b3e3fa4ea41b595ef66c57c9a25063d295ede56a11cfb4f`  
		Last Modified: Sat, 17 Nov 2018 05:53:10 GMT  
		Size: 112.8 MB (112755573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c612a06709926434d069b9b01132e7a8e6063fca60e4d2f7e231e8c777ac5bc1`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 246.7 KB (246666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa0ee9ab8d04a8a3a7c41f0aee957f414218841ff64f366df05462950af97a1`  
		Last Modified: Sat, 17 Nov 2018 23:14:46 GMT  
		Size: 2.1 KB (2139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eabcb8f0797b313231670b110b780f69fca285d5bfcad77f39957f13979076ba`  
		Last Modified: Sat, 17 Nov 2018 23:15:53 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712be71bef8b6567eff40fb368fce6afb3ee42e5ee4e26cde34986c374f2c5d1`  
		Last Modified: Sat, 17 Nov 2018 23:16:02 GMT  
		Size: 36.6 MB (36551883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7`

```console
$ docker pull lightstreamer@sha256:3f1d7b0a9347e0da6ac3b9f8c094bb1afc5363aa56589f4804c9d7c71422eae6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7` - linux; amd64

```console
$ docker pull lightstreamer@sha256:d6b1fd5781c5a6c0040908b8fadb52be0954d7efa9283d6df9350cd0cbc20993
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282868743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f4129ffbec879b800ae90b7f86bfd216c3f32095c846b7cf41e6088c970b693`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Thu, 15 Nov 2018 22:39:40 GMT
ADD file:84029df3086c983b05fbe43604e262a3500994b6a3ecfe0d463f3c8c58e0a7a1 in / 
# Thu, 15 Nov 2018 22:39:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:12:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:12:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 14:47:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:47:35 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:47:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:47:38 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:47:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:47:38 GMT
ENV JAVA_VERSION=11.0.1
# Tue, 04 Dec 2018 23:25:54 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Tue, 04 Dec 2018 23:26:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 00:18:34 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 05 Dec 2018 00:18:35 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 05 Dec 2018 00:18:36 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Wed, 05 Dec 2018 00:18:36 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Wed, 05 Dec 2018 00:18:36 GMT
WORKDIR /lightstreamer
# Wed, 05 Dec 2018 00:19:02 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Wed, 05 Dec 2018 00:19:09 GMT
EXPOSE 8080/tcp
# Wed, 05 Dec 2018 00:19:09 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 05 Dec 2018 00:19:10 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:16e82e17faef9e90ceefcd8175e9899edce768aa6008cc16dd1e3fe7d3b88bb8`  
		Last Modified: Thu, 15 Nov 2018 23:04:08 GMT  
		Size: 49.3 MB (49259589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117dc02416a34c62e28a030f27828f2f31af6b8b1f02c85b009a1ffb390d01dc`  
		Last Modified: Fri, 16 Nov 2018 11:30:56 GMT  
		Size: 7.4 MB (7375503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4c717259ac9c550efbbf41c6fe0dc9598046f4bfd4b398deb63f7a0c19cb3f`  
		Last Modified: Fri, 16 Nov 2018 11:30:57 GMT  
		Size: 9.8 MB (9780063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff78688707a851f0821b98d726bd73c923f82850c650aa07bb2b079c9239443f`  
		Last Modified: Fri, 16 Nov 2018 15:29:59 GMT  
		Size: 847.8 KB (847791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836f4a8d99d340e17ffa455950c9b8b92303a875c4d20e0794156bbd463a4520`  
		Last Modified: Fri, 16 Nov 2018 15:29:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebeef34911947e582305caa31fb4742319808febaf576d9b866be8b31b629e6`  
		Last Modified: Fri, 16 Nov 2018 15:29:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abb0b61efceea81f933e16f572a04f717d98120cd1d334ab8e51e1149a87046`  
		Last Modified: Tue, 04 Dec 2018 23:47:03 GMT  
		Size: 175.7 MB (175735369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76452d8097df75694ba61428871da07cb631856d6263063aed9b5206e5afbadf`  
		Last Modified: Wed, 05 Dec 2018 00:19:38 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a042d22b614e7d8e70bea5c7d358b5b811fe8787f79d37953e23f9851f196ad4`  
		Last Modified: Wed, 05 Dec 2018 00:19:38 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f790b43789f6d292a367dc832c595eedc0ba2ba4cebe0db1be4a755de70faed1`  
		Last Modified: Wed, 05 Dec 2018 00:19:42 GMT  
		Size: 39.9 MB (39867774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:0150b27fa0151b587f988bb358559e6ff9b52797d617f20c010b6b4b8afbebde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.9 MB (268908100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107eace68888d6b66a7ad664fd7c685bd45a1cf4449ab96a5e8a13e5182ffd47`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 16 Nov 2018 10:10:09 GMT
ADD file:832a9af57620f627dd172e1887e8dd24971e52fd5eee7d5f5d2a43532d6be776 in / 
# Fri, 16 Nov 2018 10:10:17 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:17:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:17:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 04:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:27:51 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:27:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 04:27:57 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 04:27:58 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 04:28:00 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 05 Dec 2018 10:15:30 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Wed, 05 Dec 2018 10:22:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 11:32:18 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 05 Dec 2018 11:32:20 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 05 Dec 2018 11:32:20 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Wed, 05 Dec 2018 11:32:21 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Wed, 05 Dec 2018 11:32:21 GMT
WORKDIR /lightstreamer
# Wed, 05 Dec 2018 11:32:35 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Wed, 05 Dec 2018 11:32:35 GMT
EXPOSE 8080/tcp
# Wed, 05 Dec 2018 11:32:36 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 05 Dec 2018 11:32:37 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:3da09231e583a9a3b7103f6be2d0679bc461005f2d2ff624366b0eb98f3dbfd5`  
		Last Modified: Thu, 15 Nov 2018 01:31:37 GMT  
		Size: 47.6 MB (47624414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9075e353d5a562472189e3052838c7ae3ae6d1010aaaa24fdee045e71c553ecb`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 7.3 MB (7251197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645fc9dd9541251810eb8e2a2465a257a66a4c0e930c37f2b9233063083fffdf`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 9.8 MB (9760021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879c479169f4e3cf871cb7473458a1c638712121d2b914ffeaf1d7ed9dc70b52`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 834.4 KB (834363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a2c82579098ae8c4a99671559e893d0eb98d41fc2fb948c1455cf7a31394ab`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e40cd1fba289216546fab6aced2c405bc1762bbab01ce8f92506e4f3d079eb5`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e6e377c33a99edd4a108ae456e389dabb154873e7ad5f55e2d54e320403dcf`  
		Last Modified: Wed, 05 Dec 2018 10:33:28 GMT  
		Size: 163.6 MB (163567714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799be8df96e4986a9f17c2584462b3e3c947663c9085a5373a63476b4e9c33f5`  
		Last Modified: Wed, 05 Dec 2018 11:33:01 GMT  
		Size: 2.2 KB (2183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f58be6f94267b43f9c3f4a7ceaaa2f68ce3ed639a60f9ff57baac3fd3b3834`  
		Last Modified: Wed, 05 Dec 2018 11:33:01 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3be4d7054970dc597e58108ab58f1df98bb02a547e6af5c57e15422d3ea6f4`  
		Last Modified: Wed, 05 Dec 2018 11:33:09 GMT  
		Size: 39.9 MB (39867737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7.0`

```console
$ docker pull lightstreamer@sha256:3f1d7b0a9347e0da6ac3b9f8c094bb1afc5363aa56589f4804c9d7c71422eae6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7.0` - linux; amd64

```console
$ docker pull lightstreamer@sha256:d6b1fd5781c5a6c0040908b8fadb52be0954d7efa9283d6df9350cd0cbc20993
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282868743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f4129ffbec879b800ae90b7f86bfd216c3f32095c846b7cf41e6088c970b693`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Thu, 15 Nov 2018 22:39:40 GMT
ADD file:84029df3086c983b05fbe43604e262a3500994b6a3ecfe0d463f3c8c58e0a7a1 in / 
# Thu, 15 Nov 2018 22:39:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:12:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:12:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 14:47:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:47:35 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:47:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:47:38 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:47:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:47:38 GMT
ENV JAVA_VERSION=11.0.1
# Tue, 04 Dec 2018 23:25:54 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Tue, 04 Dec 2018 23:26:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 00:18:34 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 05 Dec 2018 00:18:35 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 05 Dec 2018 00:18:36 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Wed, 05 Dec 2018 00:18:36 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Wed, 05 Dec 2018 00:18:36 GMT
WORKDIR /lightstreamer
# Wed, 05 Dec 2018 00:19:02 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Wed, 05 Dec 2018 00:19:09 GMT
EXPOSE 8080/tcp
# Wed, 05 Dec 2018 00:19:09 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 05 Dec 2018 00:19:10 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:16e82e17faef9e90ceefcd8175e9899edce768aa6008cc16dd1e3fe7d3b88bb8`  
		Last Modified: Thu, 15 Nov 2018 23:04:08 GMT  
		Size: 49.3 MB (49259589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117dc02416a34c62e28a030f27828f2f31af6b8b1f02c85b009a1ffb390d01dc`  
		Last Modified: Fri, 16 Nov 2018 11:30:56 GMT  
		Size: 7.4 MB (7375503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4c717259ac9c550efbbf41c6fe0dc9598046f4bfd4b398deb63f7a0c19cb3f`  
		Last Modified: Fri, 16 Nov 2018 11:30:57 GMT  
		Size: 9.8 MB (9780063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff78688707a851f0821b98d726bd73c923f82850c650aa07bb2b079c9239443f`  
		Last Modified: Fri, 16 Nov 2018 15:29:59 GMT  
		Size: 847.8 KB (847791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836f4a8d99d340e17ffa455950c9b8b92303a875c4d20e0794156bbd463a4520`  
		Last Modified: Fri, 16 Nov 2018 15:29:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebeef34911947e582305caa31fb4742319808febaf576d9b866be8b31b629e6`  
		Last Modified: Fri, 16 Nov 2018 15:29:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abb0b61efceea81f933e16f572a04f717d98120cd1d334ab8e51e1149a87046`  
		Last Modified: Tue, 04 Dec 2018 23:47:03 GMT  
		Size: 175.7 MB (175735369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76452d8097df75694ba61428871da07cb631856d6263063aed9b5206e5afbadf`  
		Last Modified: Wed, 05 Dec 2018 00:19:38 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a042d22b614e7d8e70bea5c7d358b5b811fe8787f79d37953e23f9851f196ad4`  
		Last Modified: Wed, 05 Dec 2018 00:19:38 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f790b43789f6d292a367dc832c595eedc0ba2ba4cebe0db1be4a755de70faed1`  
		Last Modified: Wed, 05 Dec 2018 00:19:42 GMT  
		Size: 39.9 MB (39867774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7.0` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:0150b27fa0151b587f988bb358559e6ff9b52797d617f20c010b6b4b8afbebde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.9 MB (268908100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107eace68888d6b66a7ad664fd7c685bd45a1cf4449ab96a5e8a13e5182ffd47`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 16 Nov 2018 10:10:09 GMT
ADD file:832a9af57620f627dd172e1887e8dd24971e52fd5eee7d5f5d2a43532d6be776 in / 
# Fri, 16 Nov 2018 10:10:17 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:17:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:17:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 04:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:27:51 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:27:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 04:27:57 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 04:27:58 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 04:28:00 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 05 Dec 2018 10:15:30 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Wed, 05 Dec 2018 10:22:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 11:32:18 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 05 Dec 2018 11:32:20 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 05 Dec 2018 11:32:20 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Wed, 05 Dec 2018 11:32:21 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Wed, 05 Dec 2018 11:32:21 GMT
WORKDIR /lightstreamer
# Wed, 05 Dec 2018 11:32:35 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Wed, 05 Dec 2018 11:32:35 GMT
EXPOSE 8080/tcp
# Wed, 05 Dec 2018 11:32:36 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 05 Dec 2018 11:32:37 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:3da09231e583a9a3b7103f6be2d0679bc461005f2d2ff624366b0eb98f3dbfd5`  
		Last Modified: Thu, 15 Nov 2018 01:31:37 GMT  
		Size: 47.6 MB (47624414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9075e353d5a562472189e3052838c7ae3ae6d1010aaaa24fdee045e71c553ecb`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 7.3 MB (7251197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645fc9dd9541251810eb8e2a2465a257a66a4c0e930c37f2b9233063083fffdf`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 9.8 MB (9760021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879c479169f4e3cf871cb7473458a1c638712121d2b914ffeaf1d7ed9dc70b52`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 834.4 KB (834363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a2c82579098ae8c4a99671559e893d0eb98d41fc2fb948c1455cf7a31394ab`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e40cd1fba289216546fab6aced2c405bc1762bbab01ce8f92506e4f3d079eb5`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e6e377c33a99edd4a108ae456e389dabb154873e7ad5f55e2d54e320403dcf`  
		Last Modified: Wed, 05 Dec 2018 10:33:28 GMT  
		Size: 163.6 MB (163567714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799be8df96e4986a9f17c2584462b3e3c947663c9085a5373a63476b4e9c33f5`  
		Last Modified: Wed, 05 Dec 2018 11:33:01 GMT  
		Size: 2.2 KB (2183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f58be6f94267b43f9c3f4a7ceaaa2f68ce3ed639a60f9ff57baac3fd3b3834`  
		Last Modified: Wed, 05 Dec 2018 11:33:01 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3be4d7054970dc597e58108ab58f1df98bb02a547e6af5c57e15422d3ea6f4`  
		Last Modified: Wed, 05 Dec 2018 11:33:09 GMT  
		Size: 39.9 MB (39867737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7.0.2`

```console
$ docker pull lightstreamer@sha256:3f1d7b0a9347e0da6ac3b9f8c094bb1afc5363aa56589f4804c9d7c71422eae6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7.0.2` - linux; amd64

```console
$ docker pull lightstreamer@sha256:d6b1fd5781c5a6c0040908b8fadb52be0954d7efa9283d6df9350cd0cbc20993
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282868743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f4129ffbec879b800ae90b7f86bfd216c3f32095c846b7cf41e6088c970b693`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Thu, 15 Nov 2018 22:39:40 GMT
ADD file:84029df3086c983b05fbe43604e262a3500994b6a3ecfe0d463f3c8c58e0a7a1 in / 
# Thu, 15 Nov 2018 22:39:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:12:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:12:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 14:47:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:47:35 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:47:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:47:38 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:47:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:47:38 GMT
ENV JAVA_VERSION=11.0.1
# Tue, 04 Dec 2018 23:25:54 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Tue, 04 Dec 2018 23:26:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 00:18:34 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 05 Dec 2018 00:18:35 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 05 Dec 2018 00:18:36 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Wed, 05 Dec 2018 00:18:36 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Wed, 05 Dec 2018 00:18:36 GMT
WORKDIR /lightstreamer
# Wed, 05 Dec 2018 00:19:02 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Wed, 05 Dec 2018 00:19:09 GMT
EXPOSE 8080/tcp
# Wed, 05 Dec 2018 00:19:09 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 05 Dec 2018 00:19:10 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:16e82e17faef9e90ceefcd8175e9899edce768aa6008cc16dd1e3fe7d3b88bb8`  
		Last Modified: Thu, 15 Nov 2018 23:04:08 GMT  
		Size: 49.3 MB (49259589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117dc02416a34c62e28a030f27828f2f31af6b8b1f02c85b009a1ffb390d01dc`  
		Last Modified: Fri, 16 Nov 2018 11:30:56 GMT  
		Size: 7.4 MB (7375503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4c717259ac9c550efbbf41c6fe0dc9598046f4bfd4b398deb63f7a0c19cb3f`  
		Last Modified: Fri, 16 Nov 2018 11:30:57 GMT  
		Size: 9.8 MB (9780063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff78688707a851f0821b98d726bd73c923f82850c650aa07bb2b079c9239443f`  
		Last Modified: Fri, 16 Nov 2018 15:29:59 GMT  
		Size: 847.8 KB (847791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836f4a8d99d340e17ffa455950c9b8b92303a875c4d20e0794156bbd463a4520`  
		Last Modified: Fri, 16 Nov 2018 15:29:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebeef34911947e582305caa31fb4742319808febaf576d9b866be8b31b629e6`  
		Last Modified: Fri, 16 Nov 2018 15:29:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abb0b61efceea81f933e16f572a04f717d98120cd1d334ab8e51e1149a87046`  
		Last Modified: Tue, 04 Dec 2018 23:47:03 GMT  
		Size: 175.7 MB (175735369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76452d8097df75694ba61428871da07cb631856d6263063aed9b5206e5afbadf`  
		Last Modified: Wed, 05 Dec 2018 00:19:38 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a042d22b614e7d8e70bea5c7d358b5b811fe8787f79d37953e23f9851f196ad4`  
		Last Modified: Wed, 05 Dec 2018 00:19:38 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f790b43789f6d292a367dc832c595eedc0ba2ba4cebe0db1be4a755de70faed1`  
		Last Modified: Wed, 05 Dec 2018 00:19:42 GMT  
		Size: 39.9 MB (39867774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7.0.2` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:0150b27fa0151b587f988bb358559e6ff9b52797d617f20c010b6b4b8afbebde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.9 MB (268908100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107eace68888d6b66a7ad664fd7c685bd45a1cf4449ab96a5e8a13e5182ffd47`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 16 Nov 2018 10:10:09 GMT
ADD file:832a9af57620f627dd172e1887e8dd24971e52fd5eee7d5f5d2a43532d6be776 in / 
# Fri, 16 Nov 2018 10:10:17 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:17:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:17:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 04:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:27:51 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:27:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 04:27:57 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 04:27:58 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 04:28:00 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 05 Dec 2018 10:15:30 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Wed, 05 Dec 2018 10:22:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 11:32:18 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 05 Dec 2018 11:32:20 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 05 Dec 2018 11:32:20 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Wed, 05 Dec 2018 11:32:21 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Wed, 05 Dec 2018 11:32:21 GMT
WORKDIR /lightstreamer
# Wed, 05 Dec 2018 11:32:35 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Wed, 05 Dec 2018 11:32:35 GMT
EXPOSE 8080/tcp
# Wed, 05 Dec 2018 11:32:36 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 05 Dec 2018 11:32:37 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:3da09231e583a9a3b7103f6be2d0679bc461005f2d2ff624366b0eb98f3dbfd5`  
		Last Modified: Thu, 15 Nov 2018 01:31:37 GMT  
		Size: 47.6 MB (47624414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9075e353d5a562472189e3052838c7ae3ae6d1010aaaa24fdee045e71c553ecb`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 7.3 MB (7251197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645fc9dd9541251810eb8e2a2465a257a66a4c0e930c37f2b9233063083fffdf`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 9.8 MB (9760021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879c479169f4e3cf871cb7473458a1c638712121d2b914ffeaf1d7ed9dc70b52`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 834.4 KB (834363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a2c82579098ae8c4a99671559e893d0eb98d41fc2fb948c1455cf7a31394ab`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e40cd1fba289216546fab6aced2c405bc1762bbab01ce8f92506e4f3d079eb5`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e6e377c33a99edd4a108ae456e389dabb154873e7ad5f55e2d54e320403dcf`  
		Last Modified: Wed, 05 Dec 2018 10:33:28 GMT  
		Size: 163.6 MB (163567714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799be8df96e4986a9f17c2584462b3e3c947663c9085a5373a63476b4e9c33f5`  
		Last Modified: Wed, 05 Dec 2018 11:33:01 GMT  
		Size: 2.2 KB (2183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f58be6f94267b43f9c3f4a7ceaaa2f68ce3ed639a60f9ff57baac3fd3b3834`  
		Last Modified: Wed, 05 Dec 2018 11:33:01 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3be4d7054970dc597e58108ab58f1df98bb02a547e6af5c57e15422d3ea6f4`  
		Last Modified: Wed, 05 Dec 2018 11:33:09 GMT  
		Size: 39.9 MB (39867737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7.0.2-alpine`

```console
$ docker pull lightstreamer@sha256:a7f6ea8c75ad29f81d2625547fcc6f739e22021c36a1feab2cd36cd672a782e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7.0.2-alpine` - linux; amd64

```console
$ docker pull lightstreamer@sha256:22c3cdda75f611d08a62c3e2911b99fe4734f5be6c2dbe8e001137bd40613fa2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.9 MB (96925129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:371f8ebfd2e9ac28890c9c164525cf38fad50e6e22cb1c4ab79dc455f4d6b0d1`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:40:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 00:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 00:41:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 00:41:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 00:41:18 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 00:41:19 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 00:41:23 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 05:29:33 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Fri, 21 Dec 2018 05:29:34 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Fri, 21 Dec 2018 05:29:34 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Fri, 21 Dec 2018 05:29:34 GMT
WORKDIR /lightstreamer
# Fri, 21 Dec 2018 05:29:50 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Fri, 21 Dec 2018 05:29:51 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 05:29:51 GMT
WORKDIR /lightstreamer/bin/unix-like
# Fri, 21 Dec 2018 05:29:51 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35920a071f912ae4c16897610e8e2d514efcfd0e14ec76c4c73bf9aa7c2c55ea`  
		Last Modified: Fri, 21 Dec 2018 00:44:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e4d568ad31b18826f29fce2a8e1643f8237b9adfbbbe1bd8073c5edfcced3b`  
		Last Modified: Fri, 21 Dec 2018 00:45:09 GMT  
		Size: 54.8 MB (54829758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a30a0403ad40ac50eeaaf05607316248b9de77337e388375f2f68484f2bdf59`  
		Last Modified: Fri, 21 Dec 2018 05:30:15 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ea8e800990b9fbe3ee7ac13af83d98d14196469392118b0682f40a997fbe29`  
		Last Modified: Fri, 21 Dec 2018 05:30:20 GMT  
		Size: 39.9 MB (39888007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7.0.2-alpine` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:a21009d539e98ace1a642e04cca1d7dd40510d538096807f0108b6249d2c1d14
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.3 MB (95334106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43fc0fe9605607eef026f56dd184e97b564453ef9e00838a8063af856e3d3cb1`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:05:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 13:05:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 13:06:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 13:06:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 13:06:37 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 13:06:38 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 13:06:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 16:34:20 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Fri, 21 Dec 2018 16:34:21 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Fri, 21 Dec 2018 16:34:22 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Fri, 21 Dec 2018 16:34:23 GMT
WORKDIR /lightstreamer
# Fri, 21 Dec 2018 16:34:45 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Fri, 21 Dec 2018 16:34:46 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 16:34:47 GMT
WORKDIR /lightstreamer/bin/unix-like
# Fri, 21 Dec 2018 16:34:48 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d8dfc4d0852b7a74d115eecd508b6a48a39664fe4129497ea3871524e33ce9`  
		Last Modified: Fri, 21 Dec 2018 13:09:35 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca65efb0684ca6d94b21ffe318a864419f84e648f059afac5439c1ca971f3ef`  
		Last Modified: Fri, 21 Dec 2018 13:10:23 GMT  
		Size: 53.3 MB (53345808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9198b4c47f145eb5939dc8118ff799df84f59906d25c0523aed3dbfb6e2a4b96`  
		Last Modified: Fri, 21 Dec 2018 16:35:26 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5419a7509499198b2a76664b7141b65467223e06687f7eb28b23fe12d118695f`  
		Last Modified: Fri, 21 Dec 2018 16:35:35 GMT  
		Size: 39.9 MB (39887944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7.0.2-jre10`

```console
$ docker pull lightstreamer@sha256:cbbec62d93e97e089f4fc0a9f31ff5b366b3178bbe9684d34cf676bf3bcc4b55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7.0.2-jre10` - linux; amd64

```console
$ docker pull lightstreamer@sha256:03d599f4d4c061275ed5e18d3b6b6e7407d9650ac9b6a07e3d268b18ac159729
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.9 MB (290909365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:887cedb6a2257251dee27c518a9ba8d72f54030f44e2917569bf997d7c26c237`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Thu, 15 Nov 2018 22:39:40 GMT
ADD file:84029df3086c983b05fbe43604e262a3500994b6a3ecfe0d463f3c8c58e0a7a1 in / 
# Thu, 15 Nov 2018 22:39:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:12:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:12:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 14:47:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:47:35 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:47:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:54:40 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:54:40 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:54:41 GMT
ENV JAVA_VERSION=10.0.2
# Fri, 16 Nov 2018 14:54:41 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Fri, 16 Nov 2018 14:56:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 07:26:26 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 17 Nov 2018 07:26:27 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Sat, 17 Nov 2018 07:26:28 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Sat, 17 Nov 2018 07:26:28 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Sat, 17 Nov 2018 07:26:28 GMT
WORKDIR /lightstreamer
# Sat, 17 Nov 2018 07:26:32 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Sat, 17 Nov 2018 07:26:33 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 07:26:33 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 17 Nov 2018 07:26:33 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:16e82e17faef9e90ceefcd8175e9899edce768aa6008cc16dd1e3fe7d3b88bb8`  
		Last Modified: Thu, 15 Nov 2018 23:04:08 GMT  
		Size: 49.3 MB (49259589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117dc02416a34c62e28a030f27828f2f31af6b8b1f02c85b009a1ffb390d01dc`  
		Last Modified: Fri, 16 Nov 2018 11:30:56 GMT  
		Size: 7.4 MB (7375503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4c717259ac9c550efbbf41c6fe0dc9598046f4bfd4b398deb63f7a0c19cb3f`  
		Last Modified: Fri, 16 Nov 2018 11:30:57 GMT  
		Size: 9.8 MB (9780063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff78688707a851f0821b98d726bd73c923f82850c650aa07bb2b079c9239443f`  
		Last Modified: Fri, 16 Nov 2018 15:29:59 GMT  
		Size: 847.8 KB (847791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836f4a8d99d340e17ffa455950c9b8b92303a875c4d20e0794156bbd463a4520`  
		Last Modified: Fri, 16 Nov 2018 15:29:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a243e264a0a15acfcf2aa672b0bea5e9751ac4dbb8e1befa84f4f51e19f9d1c9`  
		Last Modified: Fri, 16 Nov 2018 15:50:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c8cc19f4195a576044c0238997d9961acfebfa9d9964e9f0884eeeaabfc787`  
		Last Modified: Fri, 16 Nov 2018 15:51:18 GMT  
		Size: 183.8 MB (183775984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a8e0bc550a628bc349b0d614ecbc136ecb429c802a42906e01cbf8cea30a5f`  
		Last Modified: Sat, 17 Nov 2018 07:30:41 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6925d448760a3a2aad6706eeeb7202e7bfe88ace027b80c834d31280ada493`  
		Last Modified: Sat, 17 Nov 2018 07:30:40 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae62b4a68dc5ce5fa8a3b82766e614b1876a614878d3da3e660348f26a191f86`  
		Last Modified: Sat, 17 Nov 2018 07:30:45 GMT  
		Size: 39.9 MB (39867772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7.0.2-jre10` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:f4ebc76e905426528ecf8dc8fe8826cd786d71078be8e271474d35320de5ae18
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.0 MB (275975181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9156f8597c00766303ca4ec48daf4805fd91a532e205ccab7499924609c4657c`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 16 Nov 2018 10:10:09 GMT
ADD file:832a9af57620f627dd172e1887e8dd24971e52fd5eee7d5f5d2a43532d6be776 in / 
# Fri, 16 Nov 2018 10:10:17 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:17:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:17:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 04:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:27:51 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:27:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 04:45:45 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 04:45:46 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 04:45:46 GMT
ENV JAVA_VERSION=10.0.2
# Sat, 17 Nov 2018 04:45:47 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Sat, 17 Nov 2018 04:52:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 23:10:52 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 17 Nov 2018 23:10:54 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Sat, 17 Nov 2018 23:11:11 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Sat, 17 Nov 2018 23:11:12 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Sat, 17 Nov 2018 23:11:13 GMT
WORKDIR /lightstreamer
# Sat, 17 Nov 2018 23:11:22 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Sat, 17 Nov 2018 23:11:37 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 23:11:39 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 17 Nov 2018 23:11:56 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:3da09231e583a9a3b7103f6be2d0679bc461005f2d2ff624366b0eb98f3dbfd5`  
		Last Modified: Thu, 15 Nov 2018 01:31:37 GMT  
		Size: 47.6 MB (47624414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9075e353d5a562472189e3052838c7ae3ae6d1010aaaa24fdee045e71c553ecb`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 7.3 MB (7251197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645fc9dd9541251810eb8e2a2465a257a66a4c0e930c37f2b9233063083fffdf`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 9.8 MB (9760021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879c479169f4e3cf871cb7473458a1c638712121d2b914ffeaf1d7ed9dc70b52`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 834.4 KB (834363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a2c82579098ae8c4a99671559e893d0eb98d41fc2fb948c1455cf7a31394ab`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9e665eac0ecadd4eedc8b84fd4183db9aad63739bb65caae8d7ef67ac74406`  
		Last Modified: Sat, 17 Nov 2018 05:41:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5d68dcc5cd74baa0f3bb189411151a31938920587d21a9fb68394a363f9617`  
		Last Modified: Sat, 17 Nov 2018 05:42:06 GMT  
		Size: 170.6 MB (170634781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0431923a7742fa9250a050a59d0e5f9678884b54c3cf2dde2c677394693a0c`  
		Last Modified: Sat, 17 Nov 2018 23:19:18 GMT  
		Size: 2.2 KB (2183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e956c71cb7b03d812e2e3a05732a13921ab1bd64c66c657202120edc1cf51b`  
		Last Modified: Sat, 17 Nov 2018 23:19:18 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93336eca2a42133934eb8e00308cdc63084c3f2a01f3887d0aa3c2222b3626c`  
		Last Modified: Sat, 17 Nov 2018 23:19:30 GMT  
		Size: 39.9 MB (39867752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7.0.2-jre11`

```console
$ docker pull lightstreamer@sha256:3f1d7b0a9347e0da6ac3b9f8c094bb1afc5363aa56589f4804c9d7c71422eae6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7.0.2-jre11` - linux; amd64

```console
$ docker pull lightstreamer@sha256:d6b1fd5781c5a6c0040908b8fadb52be0954d7efa9283d6df9350cd0cbc20993
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282868743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f4129ffbec879b800ae90b7f86bfd216c3f32095c846b7cf41e6088c970b693`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Thu, 15 Nov 2018 22:39:40 GMT
ADD file:84029df3086c983b05fbe43604e262a3500994b6a3ecfe0d463f3c8c58e0a7a1 in / 
# Thu, 15 Nov 2018 22:39:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:12:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:12:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 14:47:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:47:35 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:47:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:47:38 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:47:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:47:38 GMT
ENV JAVA_VERSION=11.0.1
# Tue, 04 Dec 2018 23:25:54 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Tue, 04 Dec 2018 23:26:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 00:18:34 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 05 Dec 2018 00:18:35 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 05 Dec 2018 00:18:36 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Wed, 05 Dec 2018 00:18:36 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Wed, 05 Dec 2018 00:18:36 GMT
WORKDIR /lightstreamer
# Wed, 05 Dec 2018 00:19:02 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Wed, 05 Dec 2018 00:19:09 GMT
EXPOSE 8080/tcp
# Wed, 05 Dec 2018 00:19:09 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 05 Dec 2018 00:19:10 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:16e82e17faef9e90ceefcd8175e9899edce768aa6008cc16dd1e3fe7d3b88bb8`  
		Last Modified: Thu, 15 Nov 2018 23:04:08 GMT  
		Size: 49.3 MB (49259589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117dc02416a34c62e28a030f27828f2f31af6b8b1f02c85b009a1ffb390d01dc`  
		Last Modified: Fri, 16 Nov 2018 11:30:56 GMT  
		Size: 7.4 MB (7375503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4c717259ac9c550efbbf41c6fe0dc9598046f4bfd4b398deb63f7a0c19cb3f`  
		Last Modified: Fri, 16 Nov 2018 11:30:57 GMT  
		Size: 9.8 MB (9780063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff78688707a851f0821b98d726bd73c923f82850c650aa07bb2b079c9239443f`  
		Last Modified: Fri, 16 Nov 2018 15:29:59 GMT  
		Size: 847.8 KB (847791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836f4a8d99d340e17ffa455950c9b8b92303a875c4d20e0794156bbd463a4520`  
		Last Modified: Fri, 16 Nov 2018 15:29:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebeef34911947e582305caa31fb4742319808febaf576d9b866be8b31b629e6`  
		Last Modified: Fri, 16 Nov 2018 15:29:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abb0b61efceea81f933e16f572a04f717d98120cd1d334ab8e51e1149a87046`  
		Last Modified: Tue, 04 Dec 2018 23:47:03 GMT  
		Size: 175.7 MB (175735369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76452d8097df75694ba61428871da07cb631856d6263063aed9b5206e5afbadf`  
		Last Modified: Wed, 05 Dec 2018 00:19:38 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a042d22b614e7d8e70bea5c7d358b5b811fe8787f79d37953e23f9851f196ad4`  
		Last Modified: Wed, 05 Dec 2018 00:19:38 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f790b43789f6d292a367dc832c595eedc0ba2ba4cebe0db1be4a755de70faed1`  
		Last Modified: Wed, 05 Dec 2018 00:19:42 GMT  
		Size: 39.9 MB (39867774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7.0.2-jre11` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:0150b27fa0151b587f988bb358559e6ff9b52797d617f20c010b6b4b8afbebde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.9 MB (268908100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107eace68888d6b66a7ad664fd7c685bd45a1cf4449ab96a5e8a13e5182ffd47`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 16 Nov 2018 10:10:09 GMT
ADD file:832a9af57620f627dd172e1887e8dd24971e52fd5eee7d5f5d2a43532d6be776 in / 
# Fri, 16 Nov 2018 10:10:17 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:17:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:17:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 04:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:27:51 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:27:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 04:27:57 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 04:27:58 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 04:28:00 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 05 Dec 2018 10:15:30 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Wed, 05 Dec 2018 10:22:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 11:32:18 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 05 Dec 2018 11:32:20 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 05 Dec 2018 11:32:20 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Wed, 05 Dec 2018 11:32:21 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Wed, 05 Dec 2018 11:32:21 GMT
WORKDIR /lightstreamer
# Wed, 05 Dec 2018 11:32:35 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Wed, 05 Dec 2018 11:32:35 GMT
EXPOSE 8080/tcp
# Wed, 05 Dec 2018 11:32:36 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 05 Dec 2018 11:32:37 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:3da09231e583a9a3b7103f6be2d0679bc461005f2d2ff624366b0eb98f3dbfd5`  
		Last Modified: Thu, 15 Nov 2018 01:31:37 GMT  
		Size: 47.6 MB (47624414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9075e353d5a562472189e3052838c7ae3ae6d1010aaaa24fdee045e71c553ecb`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 7.3 MB (7251197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645fc9dd9541251810eb8e2a2465a257a66a4c0e930c37f2b9233063083fffdf`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 9.8 MB (9760021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879c479169f4e3cf871cb7473458a1c638712121d2b914ffeaf1d7ed9dc70b52`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 834.4 KB (834363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a2c82579098ae8c4a99671559e893d0eb98d41fc2fb948c1455cf7a31394ab`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e40cd1fba289216546fab6aced2c405bc1762bbab01ce8f92506e4f3d079eb5`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e6e377c33a99edd4a108ae456e389dabb154873e7ad5f55e2d54e320403dcf`  
		Last Modified: Wed, 05 Dec 2018 10:33:28 GMT  
		Size: 163.6 MB (163567714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799be8df96e4986a9f17c2584462b3e3c947663c9085a5373a63476b4e9c33f5`  
		Last Modified: Wed, 05 Dec 2018 11:33:01 GMT  
		Size: 2.2 KB (2183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f58be6f94267b43f9c3f4a7ceaaa2f68ce3ed639a60f9ff57baac3fd3b3834`  
		Last Modified: Wed, 05 Dec 2018 11:33:01 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3be4d7054970dc597e58108ab58f1df98bb02a547e6af5c57e15422d3ea6f4`  
		Last Modified: Wed, 05 Dec 2018 11:33:09 GMT  
		Size: 39.9 MB (39867737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7.0.2-jre8`

```console
$ docker pull lightstreamer@sha256:58eddc7de08f05e8f950ec24b08c9fe1161fc978c168b9c543e1de7229629745
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7.0.2-jre8` - linux; amd64

```console
$ docker pull lightstreamer@sha256:b76a3352b2497a4cf3862ce963daae2f4decc9d2f4bcb84ed46bb0fccacc9b0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.5 MB (223489094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43af570bb98de5e4b2e9c18478adc0e8b9fd579c7ad0e8f3fef11d4f32d181ae`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 15:01:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 15:01:54 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 15:01:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 15:01:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 15:01:57 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Nov 2018 15:01:58 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 15:01:58 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 16 Nov 2018 15:01:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 15:02:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 15:02:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 07:25:40 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 17 Nov 2018 07:25:43 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Sat, 17 Nov 2018 07:25:44 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Sat, 17 Nov 2018 07:25:44 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Sat, 17 Nov 2018 07:25:44 GMT
WORKDIR /lightstreamer
# Sat, 17 Nov 2018 07:25:55 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Sat, 17 Nov 2018 07:25:55 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 07:25:56 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 17 Nov 2018 07:25:56 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95065f2209613c11cdaf4499a2dba0c6cb9c53fc05732dc76c4c6f4b47453717`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0887630ce5768a45764e3bf0ed5382223216df24ba08ce3e4c952a88398647ba`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c375d1959fab484c9c7450d5ee70b2cfc05ff12fb04bcd3bed888cc8a84bb2de`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00a5e6055ccdd1c0491227009508127273e65aceaccad709eb6a10692fb68e3`  
		Last Modified: Fri, 16 Nov 2018 16:04:08 GMT  
		Size: 122.1 MB (122118624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8319f5fb56cff26b699a967e4afa404e605c23c58ae1952b0b19765a66db6a61`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 246.7 KB (246722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b72a4604179f8fc39e3372ef7e35ed3fbf0e6e7084bb92e9fc7112ed22e7435`  
		Last Modified: Sat, 17 Nov 2018 07:29:50 GMT  
		Size: 2.1 KB (2130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7b0894d1368a24e524abd416d2324c5956b8c859efb4959ed46519524b12d5`  
		Last Modified: Sat, 17 Nov 2018 07:29:50 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ea9ace2db298d61dcc5bd153bf0a47623f8f21ff9920409cf1d7068f7fccf6`  
		Last Modified: Sat, 17 Nov 2018 07:29:54 GMT  
		Size: 39.9 MB (39867644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7.0.2-jre8` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:7a1f1052111b15a60622751ed57deeaf2acef9e934fbe99582500ff3a548f9bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.6 MB (210611814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bfcf703519eb191e1c65098029bb23751a616ccfbae3e1936847633d046ac10`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 05:03:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:03:28 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 05:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 05:03:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 05:03:32 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 17 Nov 2018 05:03:33 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 05:03:34 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 17 Nov 2018 05:03:34 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 17 Nov 2018 05:09:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 05:09:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 23:09:24 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 17 Nov 2018 23:09:31 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Sat, 17 Nov 2018 23:09:31 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Sat, 17 Nov 2018 23:09:32 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Sat, 17 Nov 2018 23:09:33 GMT
WORKDIR /lightstreamer
# Sat, 17 Nov 2018 23:09:48 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Sat, 17 Nov 2018 23:09:53 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 23:09:54 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 17 Nov 2018 23:09:54 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8050ba47b282917e868af6eab2ca0f22a9fbb40ba6452b38af97d53ba97c6248`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 839.1 KB (839146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032f795239efef8545d838438d4209bd38dc66778df9a09b73278274bc1768b5`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e4c7cd5a44f16ca5ee171f6fd3d991c115f02b94c885e76cb35b40a2a6d04a`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3029270d925de617b3e3fa4ea41b595ef66c57c9a25063d295ede56a11cfb4f`  
		Last Modified: Sat, 17 Nov 2018 05:53:10 GMT  
		Size: 112.8 MB (112755573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c612a06709926434d069b9b01132e7a8e6063fca60e4d2f7e231e8c777ac5bc1`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 246.7 KB (246666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a85753f72beafcad764d93888bd8df62b18c59f81676c6ddfa5223f54fbb88`  
		Last Modified: Sat, 17 Nov 2018 23:17:35 GMT  
		Size: 2.1 KB (2140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c83a2de4cd8011e95b91473b6328b5417af397953dc52e3b3fa8a82df3503d9`  
		Last Modified: Sat, 17 Nov 2018 23:17:34 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1e5772c11209b4c33aa598b7d67bbf20b069612f3bfdb396a777d6c06f6bc6`  
		Last Modified: Sat, 17 Nov 2018 23:17:43 GMT  
		Size: 39.9 MB (39867720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7.0.2-jre8-alpine`

```console
$ docker pull lightstreamer@sha256:a7f6ea8c75ad29f81d2625547fcc6f739e22021c36a1feab2cd36cd672a782e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7.0.2-jre8-alpine` - linux; amd64

```console
$ docker pull lightstreamer@sha256:22c3cdda75f611d08a62c3e2911b99fe4734f5be6c2dbe8e001137bd40613fa2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.9 MB (96925129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:371f8ebfd2e9ac28890c9c164525cf38fad50e6e22cb1c4ab79dc455f4d6b0d1`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:40:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 00:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 00:41:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 00:41:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 00:41:18 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 00:41:19 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 00:41:23 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 05:29:33 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Fri, 21 Dec 2018 05:29:34 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Fri, 21 Dec 2018 05:29:34 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Fri, 21 Dec 2018 05:29:34 GMT
WORKDIR /lightstreamer
# Fri, 21 Dec 2018 05:29:50 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Fri, 21 Dec 2018 05:29:51 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 05:29:51 GMT
WORKDIR /lightstreamer/bin/unix-like
# Fri, 21 Dec 2018 05:29:51 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35920a071f912ae4c16897610e8e2d514efcfd0e14ec76c4c73bf9aa7c2c55ea`  
		Last Modified: Fri, 21 Dec 2018 00:44:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e4d568ad31b18826f29fce2a8e1643f8237b9adfbbbe1bd8073c5edfcced3b`  
		Last Modified: Fri, 21 Dec 2018 00:45:09 GMT  
		Size: 54.8 MB (54829758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a30a0403ad40ac50eeaaf05607316248b9de77337e388375f2f68484f2bdf59`  
		Last Modified: Fri, 21 Dec 2018 05:30:15 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ea8e800990b9fbe3ee7ac13af83d98d14196469392118b0682f40a997fbe29`  
		Last Modified: Fri, 21 Dec 2018 05:30:20 GMT  
		Size: 39.9 MB (39888007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7.0.2-jre8-alpine` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:a21009d539e98ace1a642e04cca1d7dd40510d538096807f0108b6249d2c1d14
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.3 MB (95334106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43fc0fe9605607eef026f56dd184e97b564453ef9e00838a8063af856e3d3cb1`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:05:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 13:05:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 13:06:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 13:06:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 13:06:37 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 13:06:38 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 13:06:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 16:34:20 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Fri, 21 Dec 2018 16:34:21 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Fri, 21 Dec 2018 16:34:22 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Fri, 21 Dec 2018 16:34:23 GMT
WORKDIR /lightstreamer
# Fri, 21 Dec 2018 16:34:45 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Fri, 21 Dec 2018 16:34:46 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 16:34:47 GMT
WORKDIR /lightstreamer/bin/unix-like
# Fri, 21 Dec 2018 16:34:48 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d8dfc4d0852b7a74d115eecd508b6a48a39664fe4129497ea3871524e33ce9`  
		Last Modified: Fri, 21 Dec 2018 13:09:35 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca65efb0684ca6d94b21ffe318a864419f84e648f059afac5439c1ca971f3ef`  
		Last Modified: Fri, 21 Dec 2018 13:10:23 GMT  
		Size: 53.3 MB (53345808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9198b4c47f145eb5939dc8118ff799df84f59906d25c0523aed3dbfb6e2a4b96`  
		Last Modified: Fri, 21 Dec 2018 16:35:26 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5419a7509499198b2a76664b7141b65467223e06687f7eb28b23fe12d118695f`  
		Last Modified: Fri, 21 Dec 2018 16:35:35 GMT  
		Size: 39.9 MB (39887944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7.0-alpine`

```console
$ docker pull lightstreamer@sha256:a7f6ea8c75ad29f81d2625547fcc6f739e22021c36a1feab2cd36cd672a782e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7.0-alpine` - linux; amd64

```console
$ docker pull lightstreamer@sha256:22c3cdda75f611d08a62c3e2911b99fe4734f5be6c2dbe8e001137bd40613fa2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.9 MB (96925129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:371f8ebfd2e9ac28890c9c164525cf38fad50e6e22cb1c4ab79dc455f4d6b0d1`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:40:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 00:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 00:41:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 00:41:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 00:41:18 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 00:41:19 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 00:41:23 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 05:29:33 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Fri, 21 Dec 2018 05:29:34 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Fri, 21 Dec 2018 05:29:34 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Fri, 21 Dec 2018 05:29:34 GMT
WORKDIR /lightstreamer
# Fri, 21 Dec 2018 05:29:50 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Fri, 21 Dec 2018 05:29:51 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 05:29:51 GMT
WORKDIR /lightstreamer/bin/unix-like
# Fri, 21 Dec 2018 05:29:51 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35920a071f912ae4c16897610e8e2d514efcfd0e14ec76c4c73bf9aa7c2c55ea`  
		Last Modified: Fri, 21 Dec 2018 00:44:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e4d568ad31b18826f29fce2a8e1643f8237b9adfbbbe1bd8073c5edfcced3b`  
		Last Modified: Fri, 21 Dec 2018 00:45:09 GMT  
		Size: 54.8 MB (54829758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a30a0403ad40ac50eeaaf05607316248b9de77337e388375f2f68484f2bdf59`  
		Last Modified: Fri, 21 Dec 2018 05:30:15 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ea8e800990b9fbe3ee7ac13af83d98d14196469392118b0682f40a997fbe29`  
		Last Modified: Fri, 21 Dec 2018 05:30:20 GMT  
		Size: 39.9 MB (39888007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7.0-alpine` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:a21009d539e98ace1a642e04cca1d7dd40510d538096807f0108b6249d2c1d14
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.3 MB (95334106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43fc0fe9605607eef026f56dd184e97b564453ef9e00838a8063af856e3d3cb1`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:05:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 13:05:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 13:06:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 13:06:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 13:06:37 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 13:06:38 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 13:06:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 16:34:20 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Fri, 21 Dec 2018 16:34:21 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Fri, 21 Dec 2018 16:34:22 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Fri, 21 Dec 2018 16:34:23 GMT
WORKDIR /lightstreamer
# Fri, 21 Dec 2018 16:34:45 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Fri, 21 Dec 2018 16:34:46 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 16:34:47 GMT
WORKDIR /lightstreamer/bin/unix-like
# Fri, 21 Dec 2018 16:34:48 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d8dfc4d0852b7a74d115eecd508b6a48a39664fe4129497ea3871524e33ce9`  
		Last Modified: Fri, 21 Dec 2018 13:09:35 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca65efb0684ca6d94b21ffe318a864419f84e648f059afac5439c1ca971f3ef`  
		Last Modified: Fri, 21 Dec 2018 13:10:23 GMT  
		Size: 53.3 MB (53345808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9198b4c47f145eb5939dc8118ff799df84f59906d25c0523aed3dbfb6e2a4b96`  
		Last Modified: Fri, 21 Dec 2018 16:35:26 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5419a7509499198b2a76664b7141b65467223e06687f7eb28b23fe12d118695f`  
		Last Modified: Fri, 21 Dec 2018 16:35:35 GMT  
		Size: 39.9 MB (39887944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7.0-jre10`

```console
$ docker pull lightstreamer@sha256:cbbec62d93e97e089f4fc0a9f31ff5b366b3178bbe9684d34cf676bf3bcc4b55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7.0-jre10` - linux; amd64

```console
$ docker pull lightstreamer@sha256:03d599f4d4c061275ed5e18d3b6b6e7407d9650ac9b6a07e3d268b18ac159729
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.9 MB (290909365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:887cedb6a2257251dee27c518a9ba8d72f54030f44e2917569bf997d7c26c237`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Thu, 15 Nov 2018 22:39:40 GMT
ADD file:84029df3086c983b05fbe43604e262a3500994b6a3ecfe0d463f3c8c58e0a7a1 in / 
# Thu, 15 Nov 2018 22:39:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:12:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:12:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 14:47:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:47:35 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:47:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:54:40 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:54:40 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:54:41 GMT
ENV JAVA_VERSION=10.0.2
# Fri, 16 Nov 2018 14:54:41 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Fri, 16 Nov 2018 14:56:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 07:26:26 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 17 Nov 2018 07:26:27 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Sat, 17 Nov 2018 07:26:28 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Sat, 17 Nov 2018 07:26:28 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Sat, 17 Nov 2018 07:26:28 GMT
WORKDIR /lightstreamer
# Sat, 17 Nov 2018 07:26:32 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Sat, 17 Nov 2018 07:26:33 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 07:26:33 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 17 Nov 2018 07:26:33 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:16e82e17faef9e90ceefcd8175e9899edce768aa6008cc16dd1e3fe7d3b88bb8`  
		Last Modified: Thu, 15 Nov 2018 23:04:08 GMT  
		Size: 49.3 MB (49259589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117dc02416a34c62e28a030f27828f2f31af6b8b1f02c85b009a1ffb390d01dc`  
		Last Modified: Fri, 16 Nov 2018 11:30:56 GMT  
		Size: 7.4 MB (7375503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4c717259ac9c550efbbf41c6fe0dc9598046f4bfd4b398deb63f7a0c19cb3f`  
		Last Modified: Fri, 16 Nov 2018 11:30:57 GMT  
		Size: 9.8 MB (9780063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff78688707a851f0821b98d726bd73c923f82850c650aa07bb2b079c9239443f`  
		Last Modified: Fri, 16 Nov 2018 15:29:59 GMT  
		Size: 847.8 KB (847791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836f4a8d99d340e17ffa455950c9b8b92303a875c4d20e0794156bbd463a4520`  
		Last Modified: Fri, 16 Nov 2018 15:29:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a243e264a0a15acfcf2aa672b0bea5e9751ac4dbb8e1befa84f4f51e19f9d1c9`  
		Last Modified: Fri, 16 Nov 2018 15:50:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c8cc19f4195a576044c0238997d9961acfebfa9d9964e9f0884eeeaabfc787`  
		Last Modified: Fri, 16 Nov 2018 15:51:18 GMT  
		Size: 183.8 MB (183775984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a8e0bc550a628bc349b0d614ecbc136ecb429c802a42906e01cbf8cea30a5f`  
		Last Modified: Sat, 17 Nov 2018 07:30:41 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6925d448760a3a2aad6706eeeb7202e7bfe88ace027b80c834d31280ada493`  
		Last Modified: Sat, 17 Nov 2018 07:30:40 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae62b4a68dc5ce5fa8a3b82766e614b1876a614878d3da3e660348f26a191f86`  
		Last Modified: Sat, 17 Nov 2018 07:30:45 GMT  
		Size: 39.9 MB (39867772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7.0-jre10` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:f4ebc76e905426528ecf8dc8fe8826cd786d71078be8e271474d35320de5ae18
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.0 MB (275975181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9156f8597c00766303ca4ec48daf4805fd91a532e205ccab7499924609c4657c`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 16 Nov 2018 10:10:09 GMT
ADD file:832a9af57620f627dd172e1887e8dd24971e52fd5eee7d5f5d2a43532d6be776 in / 
# Fri, 16 Nov 2018 10:10:17 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:17:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:17:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 04:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:27:51 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:27:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 04:45:45 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 04:45:46 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 04:45:46 GMT
ENV JAVA_VERSION=10.0.2
# Sat, 17 Nov 2018 04:45:47 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Sat, 17 Nov 2018 04:52:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 23:10:52 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 17 Nov 2018 23:10:54 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Sat, 17 Nov 2018 23:11:11 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Sat, 17 Nov 2018 23:11:12 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Sat, 17 Nov 2018 23:11:13 GMT
WORKDIR /lightstreamer
# Sat, 17 Nov 2018 23:11:22 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Sat, 17 Nov 2018 23:11:37 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 23:11:39 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 17 Nov 2018 23:11:56 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:3da09231e583a9a3b7103f6be2d0679bc461005f2d2ff624366b0eb98f3dbfd5`  
		Last Modified: Thu, 15 Nov 2018 01:31:37 GMT  
		Size: 47.6 MB (47624414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9075e353d5a562472189e3052838c7ae3ae6d1010aaaa24fdee045e71c553ecb`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 7.3 MB (7251197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645fc9dd9541251810eb8e2a2465a257a66a4c0e930c37f2b9233063083fffdf`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 9.8 MB (9760021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879c479169f4e3cf871cb7473458a1c638712121d2b914ffeaf1d7ed9dc70b52`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 834.4 KB (834363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a2c82579098ae8c4a99671559e893d0eb98d41fc2fb948c1455cf7a31394ab`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9e665eac0ecadd4eedc8b84fd4183db9aad63739bb65caae8d7ef67ac74406`  
		Last Modified: Sat, 17 Nov 2018 05:41:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5d68dcc5cd74baa0f3bb189411151a31938920587d21a9fb68394a363f9617`  
		Last Modified: Sat, 17 Nov 2018 05:42:06 GMT  
		Size: 170.6 MB (170634781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0431923a7742fa9250a050a59d0e5f9678884b54c3cf2dde2c677394693a0c`  
		Last Modified: Sat, 17 Nov 2018 23:19:18 GMT  
		Size: 2.2 KB (2183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e956c71cb7b03d812e2e3a05732a13921ab1bd64c66c657202120edc1cf51b`  
		Last Modified: Sat, 17 Nov 2018 23:19:18 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93336eca2a42133934eb8e00308cdc63084c3f2a01f3887d0aa3c2222b3626c`  
		Last Modified: Sat, 17 Nov 2018 23:19:30 GMT  
		Size: 39.9 MB (39867752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7.0-jre11`

```console
$ docker pull lightstreamer@sha256:3f1d7b0a9347e0da6ac3b9f8c094bb1afc5363aa56589f4804c9d7c71422eae6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7.0-jre11` - linux; amd64

```console
$ docker pull lightstreamer@sha256:d6b1fd5781c5a6c0040908b8fadb52be0954d7efa9283d6df9350cd0cbc20993
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282868743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f4129ffbec879b800ae90b7f86bfd216c3f32095c846b7cf41e6088c970b693`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Thu, 15 Nov 2018 22:39:40 GMT
ADD file:84029df3086c983b05fbe43604e262a3500994b6a3ecfe0d463f3c8c58e0a7a1 in / 
# Thu, 15 Nov 2018 22:39:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:12:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:12:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 14:47:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:47:35 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:47:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:47:38 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:47:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:47:38 GMT
ENV JAVA_VERSION=11.0.1
# Tue, 04 Dec 2018 23:25:54 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Tue, 04 Dec 2018 23:26:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 00:18:34 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 05 Dec 2018 00:18:35 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 05 Dec 2018 00:18:36 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Wed, 05 Dec 2018 00:18:36 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Wed, 05 Dec 2018 00:18:36 GMT
WORKDIR /lightstreamer
# Wed, 05 Dec 2018 00:19:02 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Wed, 05 Dec 2018 00:19:09 GMT
EXPOSE 8080/tcp
# Wed, 05 Dec 2018 00:19:09 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 05 Dec 2018 00:19:10 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:16e82e17faef9e90ceefcd8175e9899edce768aa6008cc16dd1e3fe7d3b88bb8`  
		Last Modified: Thu, 15 Nov 2018 23:04:08 GMT  
		Size: 49.3 MB (49259589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117dc02416a34c62e28a030f27828f2f31af6b8b1f02c85b009a1ffb390d01dc`  
		Last Modified: Fri, 16 Nov 2018 11:30:56 GMT  
		Size: 7.4 MB (7375503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4c717259ac9c550efbbf41c6fe0dc9598046f4bfd4b398deb63f7a0c19cb3f`  
		Last Modified: Fri, 16 Nov 2018 11:30:57 GMT  
		Size: 9.8 MB (9780063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff78688707a851f0821b98d726bd73c923f82850c650aa07bb2b079c9239443f`  
		Last Modified: Fri, 16 Nov 2018 15:29:59 GMT  
		Size: 847.8 KB (847791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836f4a8d99d340e17ffa455950c9b8b92303a875c4d20e0794156bbd463a4520`  
		Last Modified: Fri, 16 Nov 2018 15:29:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebeef34911947e582305caa31fb4742319808febaf576d9b866be8b31b629e6`  
		Last Modified: Fri, 16 Nov 2018 15:29:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abb0b61efceea81f933e16f572a04f717d98120cd1d334ab8e51e1149a87046`  
		Last Modified: Tue, 04 Dec 2018 23:47:03 GMT  
		Size: 175.7 MB (175735369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76452d8097df75694ba61428871da07cb631856d6263063aed9b5206e5afbadf`  
		Last Modified: Wed, 05 Dec 2018 00:19:38 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a042d22b614e7d8e70bea5c7d358b5b811fe8787f79d37953e23f9851f196ad4`  
		Last Modified: Wed, 05 Dec 2018 00:19:38 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f790b43789f6d292a367dc832c595eedc0ba2ba4cebe0db1be4a755de70faed1`  
		Last Modified: Wed, 05 Dec 2018 00:19:42 GMT  
		Size: 39.9 MB (39867774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7.0-jre11` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:0150b27fa0151b587f988bb358559e6ff9b52797d617f20c010b6b4b8afbebde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.9 MB (268908100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107eace68888d6b66a7ad664fd7c685bd45a1cf4449ab96a5e8a13e5182ffd47`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 16 Nov 2018 10:10:09 GMT
ADD file:832a9af57620f627dd172e1887e8dd24971e52fd5eee7d5f5d2a43532d6be776 in / 
# Fri, 16 Nov 2018 10:10:17 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:17:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:17:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 04:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:27:51 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:27:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 04:27:57 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 04:27:58 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 04:28:00 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 05 Dec 2018 10:15:30 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Wed, 05 Dec 2018 10:22:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 11:32:18 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 05 Dec 2018 11:32:20 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 05 Dec 2018 11:32:20 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Wed, 05 Dec 2018 11:32:21 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Wed, 05 Dec 2018 11:32:21 GMT
WORKDIR /lightstreamer
# Wed, 05 Dec 2018 11:32:35 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Wed, 05 Dec 2018 11:32:35 GMT
EXPOSE 8080/tcp
# Wed, 05 Dec 2018 11:32:36 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 05 Dec 2018 11:32:37 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:3da09231e583a9a3b7103f6be2d0679bc461005f2d2ff624366b0eb98f3dbfd5`  
		Last Modified: Thu, 15 Nov 2018 01:31:37 GMT  
		Size: 47.6 MB (47624414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9075e353d5a562472189e3052838c7ae3ae6d1010aaaa24fdee045e71c553ecb`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 7.3 MB (7251197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645fc9dd9541251810eb8e2a2465a257a66a4c0e930c37f2b9233063083fffdf`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 9.8 MB (9760021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879c479169f4e3cf871cb7473458a1c638712121d2b914ffeaf1d7ed9dc70b52`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 834.4 KB (834363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a2c82579098ae8c4a99671559e893d0eb98d41fc2fb948c1455cf7a31394ab`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e40cd1fba289216546fab6aced2c405bc1762bbab01ce8f92506e4f3d079eb5`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e6e377c33a99edd4a108ae456e389dabb154873e7ad5f55e2d54e320403dcf`  
		Last Modified: Wed, 05 Dec 2018 10:33:28 GMT  
		Size: 163.6 MB (163567714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799be8df96e4986a9f17c2584462b3e3c947663c9085a5373a63476b4e9c33f5`  
		Last Modified: Wed, 05 Dec 2018 11:33:01 GMT  
		Size: 2.2 KB (2183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f58be6f94267b43f9c3f4a7ceaaa2f68ce3ed639a60f9ff57baac3fd3b3834`  
		Last Modified: Wed, 05 Dec 2018 11:33:01 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3be4d7054970dc597e58108ab58f1df98bb02a547e6af5c57e15422d3ea6f4`  
		Last Modified: Wed, 05 Dec 2018 11:33:09 GMT  
		Size: 39.9 MB (39867737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7.0-jre8`

```console
$ docker pull lightstreamer@sha256:58eddc7de08f05e8f950ec24b08c9fe1161fc978c168b9c543e1de7229629745
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7.0-jre8` - linux; amd64

```console
$ docker pull lightstreamer@sha256:b76a3352b2497a4cf3862ce963daae2f4decc9d2f4bcb84ed46bb0fccacc9b0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.5 MB (223489094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43af570bb98de5e4b2e9c18478adc0e8b9fd579c7ad0e8f3fef11d4f32d181ae`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 15:01:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 15:01:54 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 15:01:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 15:01:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 15:01:57 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Nov 2018 15:01:58 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 15:01:58 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 16 Nov 2018 15:01:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 15:02:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 15:02:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 07:25:40 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 17 Nov 2018 07:25:43 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Sat, 17 Nov 2018 07:25:44 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Sat, 17 Nov 2018 07:25:44 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Sat, 17 Nov 2018 07:25:44 GMT
WORKDIR /lightstreamer
# Sat, 17 Nov 2018 07:25:55 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Sat, 17 Nov 2018 07:25:55 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 07:25:56 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 17 Nov 2018 07:25:56 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95065f2209613c11cdaf4499a2dba0c6cb9c53fc05732dc76c4c6f4b47453717`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0887630ce5768a45764e3bf0ed5382223216df24ba08ce3e4c952a88398647ba`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c375d1959fab484c9c7450d5ee70b2cfc05ff12fb04bcd3bed888cc8a84bb2de`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00a5e6055ccdd1c0491227009508127273e65aceaccad709eb6a10692fb68e3`  
		Last Modified: Fri, 16 Nov 2018 16:04:08 GMT  
		Size: 122.1 MB (122118624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8319f5fb56cff26b699a967e4afa404e605c23c58ae1952b0b19765a66db6a61`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 246.7 KB (246722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b72a4604179f8fc39e3372ef7e35ed3fbf0e6e7084bb92e9fc7112ed22e7435`  
		Last Modified: Sat, 17 Nov 2018 07:29:50 GMT  
		Size: 2.1 KB (2130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7b0894d1368a24e524abd416d2324c5956b8c859efb4959ed46519524b12d5`  
		Last Modified: Sat, 17 Nov 2018 07:29:50 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ea9ace2db298d61dcc5bd153bf0a47623f8f21ff9920409cf1d7068f7fccf6`  
		Last Modified: Sat, 17 Nov 2018 07:29:54 GMT  
		Size: 39.9 MB (39867644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7.0-jre8` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:7a1f1052111b15a60622751ed57deeaf2acef9e934fbe99582500ff3a548f9bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.6 MB (210611814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bfcf703519eb191e1c65098029bb23751a616ccfbae3e1936847633d046ac10`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 05:03:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:03:28 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 05:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 05:03:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 05:03:32 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 17 Nov 2018 05:03:33 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 05:03:34 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 17 Nov 2018 05:03:34 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 17 Nov 2018 05:09:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 05:09:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 23:09:24 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 17 Nov 2018 23:09:31 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Sat, 17 Nov 2018 23:09:31 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Sat, 17 Nov 2018 23:09:32 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Sat, 17 Nov 2018 23:09:33 GMT
WORKDIR /lightstreamer
# Sat, 17 Nov 2018 23:09:48 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Sat, 17 Nov 2018 23:09:53 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 23:09:54 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 17 Nov 2018 23:09:54 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8050ba47b282917e868af6eab2ca0f22a9fbb40ba6452b38af97d53ba97c6248`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 839.1 KB (839146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032f795239efef8545d838438d4209bd38dc66778df9a09b73278274bc1768b5`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e4c7cd5a44f16ca5ee171f6fd3d991c115f02b94c885e76cb35b40a2a6d04a`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3029270d925de617b3e3fa4ea41b595ef66c57c9a25063d295ede56a11cfb4f`  
		Last Modified: Sat, 17 Nov 2018 05:53:10 GMT  
		Size: 112.8 MB (112755573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c612a06709926434d069b9b01132e7a8e6063fca60e4d2f7e231e8c777ac5bc1`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 246.7 KB (246666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a85753f72beafcad764d93888bd8df62b18c59f81676c6ddfa5223f54fbb88`  
		Last Modified: Sat, 17 Nov 2018 23:17:35 GMT  
		Size: 2.1 KB (2140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c83a2de4cd8011e95b91473b6328b5417af397953dc52e3b3fa8a82df3503d9`  
		Last Modified: Sat, 17 Nov 2018 23:17:34 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1e5772c11209b4c33aa598b7d67bbf20b069612f3bfdb396a777d6c06f6bc6`  
		Last Modified: Sat, 17 Nov 2018 23:17:43 GMT  
		Size: 39.9 MB (39867720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7.0-jre8-alpine`

```console
$ docker pull lightstreamer@sha256:a7f6ea8c75ad29f81d2625547fcc6f739e22021c36a1feab2cd36cd672a782e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7.0-jre8-alpine` - linux; amd64

```console
$ docker pull lightstreamer@sha256:22c3cdda75f611d08a62c3e2911b99fe4734f5be6c2dbe8e001137bd40613fa2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.9 MB (96925129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:371f8ebfd2e9ac28890c9c164525cf38fad50e6e22cb1c4ab79dc455f4d6b0d1`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:40:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 00:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 00:41:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 00:41:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 00:41:18 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 00:41:19 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 00:41:23 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 05:29:33 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Fri, 21 Dec 2018 05:29:34 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Fri, 21 Dec 2018 05:29:34 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Fri, 21 Dec 2018 05:29:34 GMT
WORKDIR /lightstreamer
# Fri, 21 Dec 2018 05:29:50 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Fri, 21 Dec 2018 05:29:51 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 05:29:51 GMT
WORKDIR /lightstreamer/bin/unix-like
# Fri, 21 Dec 2018 05:29:51 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35920a071f912ae4c16897610e8e2d514efcfd0e14ec76c4c73bf9aa7c2c55ea`  
		Last Modified: Fri, 21 Dec 2018 00:44:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e4d568ad31b18826f29fce2a8e1643f8237b9adfbbbe1bd8073c5edfcced3b`  
		Last Modified: Fri, 21 Dec 2018 00:45:09 GMT  
		Size: 54.8 MB (54829758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a30a0403ad40ac50eeaaf05607316248b9de77337e388375f2f68484f2bdf59`  
		Last Modified: Fri, 21 Dec 2018 05:30:15 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ea8e800990b9fbe3ee7ac13af83d98d14196469392118b0682f40a997fbe29`  
		Last Modified: Fri, 21 Dec 2018 05:30:20 GMT  
		Size: 39.9 MB (39888007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7.0-jre8-alpine` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:a21009d539e98ace1a642e04cca1d7dd40510d538096807f0108b6249d2c1d14
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.3 MB (95334106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43fc0fe9605607eef026f56dd184e97b564453ef9e00838a8063af856e3d3cb1`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:05:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 13:05:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 13:06:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 13:06:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 13:06:37 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 13:06:38 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 13:06:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 16:34:20 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Fri, 21 Dec 2018 16:34:21 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Fri, 21 Dec 2018 16:34:22 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Fri, 21 Dec 2018 16:34:23 GMT
WORKDIR /lightstreamer
# Fri, 21 Dec 2018 16:34:45 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Fri, 21 Dec 2018 16:34:46 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 16:34:47 GMT
WORKDIR /lightstreamer/bin/unix-like
# Fri, 21 Dec 2018 16:34:48 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d8dfc4d0852b7a74d115eecd508b6a48a39664fe4129497ea3871524e33ce9`  
		Last Modified: Fri, 21 Dec 2018 13:09:35 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca65efb0684ca6d94b21ffe318a864419f84e648f059afac5439c1ca971f3ef`  
		Last Modified: Fri, 21 Dec 2018 13:10:23 GMT  
		Size: 53.3 MB (53345808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9198b4c47f145eb5939dc8118ff799df84f59906d25c0523aed3dbfb6e2a4b96`  
		Last Modified: Fri, 21 Dec 2018 16:35:26 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5419a7509499198b2a76664b7141b65467223e06687f7eb28b23fe12d118695f`  
		Last Modified: Fri, 21 Dec 2018 16:35:35 GMT  
		Size: 39.9 MB (39887944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7-alpine`

```console
$ docker pull lightstreamer@sha256:a7f6ea8c75ad29f81d2625547fcc6f739e22021c36a1feab2cd36cd672a782e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7-alpine` - linux; amd64

```console
$ docker pull lightstreamer@sha256:22c3cdda75f611d08a62c3e2911b99fe4734f5be6c2dbe8e001137bd40613fa2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.9 MB (96925129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:371f8ebfd2e9ac28890c9c164525cf38fad50e6e22cb1c4ab79dc455f4d6b0d1`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:40:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 00:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 00:41:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 00:41:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 00:41:18 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 00:41:19 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 00:41:23 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 05:29:33 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Fri, 21 Dec 2018 05:29:34 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Fri, 21 Dec 2018 05:29:34 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Fri, 21 Dec 2018 05:29:34 GMT
WORKDIR /lightstreamer
# Fri, 21 Dec 2018 05:29:50 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Fri, 21 Dec 2018 05:29:51 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 05:29:51 GMT
WORKDIR /lightstreamer/bin/unix-like
# Fri, 21 Dec 2018 05:29:51 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35920a071f912ae4c16897610e8e2d514efcfd0e14ec76c4c73bf9aa7c2c55ea`  
		Last Modified: Fri, 21 Dec 2018 00:44:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e4d568ad31b18826f29fce2a8e1643f8237b9adfbbbe1bd8073c5edfcced3b`  
		Last Modified: Fri, 21 Dec 2018 00:45:09 GMT  
		Size: 54.8 MB (54829758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a30a0403ad40ac50eeaaf05607316248b9de77337e388375f2f68484f2bdf59`  
		Last Modified: Fri, 21 Dec 2018 05:30:15 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ea8e800990b9fbe3ee7ac13af83d98d14196469392118b0682f40a997fbe29`  
		Last Modified: Fri, 21 Dec 2018 05:30:20 GMT  
		Size: 39.9 MB (39888007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7-alpine` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:a21009d539e98ace1a642e04cca1d7dd40510d538096807f0108b6249d2c1d14
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.3 MB (95334106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43fc0fe9605607eef026f56dd184e97b564453ef9e00838a8063af856e3d3cb1`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:05:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 13:05:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 13:06:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 13:06:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 13:06:37 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 13:06:38 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 13:06:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 16:34:20 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Fri, 21 Dec 2018 16:34:21 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Fri, 21 Dec 2018 16:34:22 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Fri, 21 Dec 2018 16:34:23 GMT
WORKDIR /lightstreamer
# Fri, 21 Dec 2018 16:34:45 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Fri, 21 Dec 2018 16:34:46 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 16:34:47 GMT
WORKDIR /lightstreamer/bin/unix-like
# Fri, 21 Dec 2018 16:34:48 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d8dfc4d0852b7a74d115eecd508b6a48a39664fe4129497ea3871524e33ce9`  
		Last Modified: Fri, 21 Dec 2018 13:09:35 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca65efb0684ca6d94b21ffe318a864419f84e648f059afac5439c1ca971f3ef`  
		Last Modified: Fri, 21 Dec 2018 13:10:23 GMT  
		Size: 53.3 MB (53345808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9198b4c47f145eb5939dc8118ff799df84f59906d25c0523aed3dbfb6e2a4b96`  
		Last Modified: Fri, 21 Dec 2018 16:35:26 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5419a7509499198b2a76664b7141b65467223e06687f7eb28b23fe12d118695f`  
		Last Modified: Fri, 21 Dec 2018 16:35:35 GMT  
		Size: 39.9 MB (39887944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7-jre10`

```console
$ docker pull lightstreamer@sha256:cbbec62d93e97e089f4fc0a9f31ff5b366b3178bbe9684d34cf676bf3bcc4b55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7-jre10` - linux; amd64

```console
$ docker pull lightstreamer@sha256:03d599f4d4c061275ed5e18d3b6b6e7407d9650ac9b6a07e3d268b18ac159729
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.9 MB (290909365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:887cedb6a2257251dee27c518a9ba8d72f54030f44e2917569bf997d7c26c237`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Thu, 15 Nov 2018 22:39:40 GMT
ADD file:84029df3086c983b05fbe43604e262a3500994b6a3ecfe0d463f3c8c58e0a7a1 in / 
# Thu, 15 Nov 2018 22:39:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:12:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:12:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 14:47:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:47:35 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:47:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:54:40 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:54:40 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:54:41 GMT
ENV JAVA_VERSION=10.0.2
# Fri, 16 Nov 2018 14:54:41 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Fri, 16 Nov 2018 14:56:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 07:26:26 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 17 Nov 2018 07:26:27 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Sat, 17 Nov 2018 07:26:28 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Sat, 17 Nov 2018 07:26:28 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Sat, 17 Nov 2018 07:26:28 GMT
WORKDIR /lightstreamer
# Sat, 17 Nov 2018 07:26:32 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Sat, 17 Nov 2018 07:26:33 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 07:26:33 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 17 Nov 2018 07:26:33 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:16e82e17faef9e90ceefcd8175e9899edce768aa6008cc16dd1e3fe7d3b88bb8`  
		Last Modified: Thu, 15 Nov 2018 23:04:08 GMT  
		Size: 49.3 MB (49259589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117dc02416a34c62e28a030f27828f2f31af6b8b1f02c85b009a1ffb390d01dc`  
		Last Modified: Fri, 16 Nov 2018 11:30:56 GMT  
		Size: 7.4 MB (7375503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4c717259ac9c550efbbf41c6fe0dc9598046f4bfd4b398deb63f7a0c19cb3f`  
		Last Modified: Fri, 16 Nov 2018 11:30:57 GMT  
		Size: 9.8 MB (9780063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff78688707a851f0821b98d726bd73c923f82850c650aa07bb2b079c9239443f`  
		Last Modified: Fri, 16 Nov 2018 15:29:59 GMT  
		Size: 847.8 KB (847791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836f4a8d99d340e17ffa455950c9b8b92303a875c4d20e0794156bbd463a4520`  
		Last Modified: Fri, 16 Nov 2018 15:29:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a243e264a0a15acfcf2aa672b0bea5e9751ac4dbb8e1befa84f4f51e19f9d1c9`  
		Last Modified: Fri, 16 Nov 2018 15:50:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c8cc19f4195a576044c0238997d9961acfebfa9d9964e9f0884eeeaabfc787`  
		Last Modified: Fri, 16 Nov 2018 15:51:18 GMT  
		Size: 183.8 MB (183775984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a8e0bc550a628bc349b0d614ecbc136ecb429c802a42906e01cbf8cea30a5f`  
		Last Modified: Sat, 17 Nov 2018 07:30:41 GMT  
		Size: 2.2 KB (2194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6925d448760a3a2aad6706eeeb7202e7bfe88ace027b80c834d31280ada493`  
		Last Modified: Sat, 17 Nov 2018 07:30:40 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae62b4a68dc5ce5fa8a3b82766e614b1876a614878d3da3e660348f26a191f86`  
		Last Modified: Sat, 17 Nov 2018 07:30:45 GMT  
		Size: 39.9 MB (39867772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7-jre10` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:f4ebc76e905426528ecf8dc8fe8826cd786d71078be8e271474d35320de5ae18
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.0 MB (275975181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9156f8597c00766303ca4ec48daf4805fd91a532e205ccab7499924609c4657c`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 16 Nov 2018 10:10:09 GMT
ADD file:832a9af57620f627dd172e1887e8dd24971e52fd5eee7d5f5d2a43532d6be776 in / 
# Fri, 16 Nov 2018 10:10:17 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:17:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:17:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 04:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:27:51 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:27:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 04:45:45 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 04:45:46 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 04:45:46 GMT
ENV JAVA_VERSION=10.0.2
# Sat, 17 Nov 2018 04:45:47 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Sat, 17 Nov 2018 04:52:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 23:10:52 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 17 Nov 2018 23:10:54 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Sat, 17 Nov 2018 23:11:11 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Sat, 17 Nov 2018 23:11:12 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Sat, 17 Nov 2018 23:11:13 GMT
WORKDIR /lightstreamer
# Sat, 17 Nov 2018 23:11:22 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Sat, 17 Nov 2018 23:11:37 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 23:11:39 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 17 Nov 2018 23:11:56 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:3da09231e583a9a3b7103f6be2d0679bc461005f2d2ff624366b0eb98f3dbfd5`  
		Last Modified: Thu, 15 Nov 2018 01:31:37 GMT  
		Size: 47.6 MB (47624414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9075e353d5a562472189e3052838c7ae3ae6d1010aaaa24fdee045e71c553ecb`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 7.3 MB (7251197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645fc9dd9541251810eb8e2a2465a257a66a4c0e930c37f2b9233063083fffdf`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 9.8 MB (9760021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879c479169f4e3cf871cb7473458a1c638712121d2b914ffeaf1d7ed9dc70b52`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 834.4 KB (834363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a2c82579098ae8c4a99671559e893d0eb98d41fc2fb948c1455cf7a31394ab`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9e665eac0ecadd4eedc8b84fd4183db9aad63739bb65caae8d7ef67ac74406`  
		Last Modified: Sat, 17 Nov 2018 05:41:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5d68dcc5cd74baa0f3bb189411151a31938920587d21a9fb68394a363f9617`  
		Last Modified: Sat, 17 Nov 2018 05:42:06 GMT  
		Size: 170.6 MB (170634781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0431923a7742fa9250a050a59d0e5f9678884b54c3cf2dde2c677394693a0c`  
		Last Modified: Sat, 17 Nov 2018 23:19:18 GMT  
		Size: 2.2 KB (2183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e956c71cb7b03d812e2e3a05732a13921ab1bd64c66c657202120edc1cf51b`  
		Last Modified: Sat, 17 Nov 2018 23:19:18 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93336eca2a42133934eb8e00308cdc63084c3f2a01f3887d0aa3c2222b3626c`  
		Last Modified: Sat, 17 Nov 2018 23:19:30 GMT  
		Size: 39.9 MB (39867752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7-jre11`

```console
$ docker pull lightstreamer@sha256:3f1d7b0a9347e0da6ac3b9f8c094bb1afc5363aa56589f4804c9d7c71422eae6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7-jre11` - linux; amd64

```console
$ docker pull lightstreamer@sha256:d6b1fd5781c5a6c0040908b8fadb52be0954d7efa9283d6df9350cd0cbc20993
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282868743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f4129ffbec879b800ae90b7f86bfd216c3f32095c846b7cf41e6088c970b693`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Thu, 15 Nov 2018 22:39:40 GMT
ADD file:84029df3086c983b05fbe43604e262a3500994b6a3ecfe0d463f3c8c58e0a7a1 in / 
# Thu, 15 Nov 2018 22:39:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:12:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:12:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 14:47:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:47:35 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:47:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:47:38 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:47:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:47:38 GMT
ENV JAVA_VERSION=11.0.1
# Tue, 04 Dec 2018 23:25:54 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Tue, 04 Dec 2018 23:26:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 00:18:34 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 05 Dec 2018 00:18:35 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 05 Dec 2018 00:18:36 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Wed, 05 Dec 2018 00:18:36 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Wed, 05 Dec 2018 00:18:36 GMT
WORKDIR /lightstreamer
# Wed, 05 Dec 2018 00:19:02 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Wed, 05 Dec 2018 00:19:09 GMT
EXPOSE 8080/tcp
# Wed, 05 Dec 2018 00:19:09 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 05 Dec 2018 00:19:10 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:16e82e17faef9e90ceefcd8175e9899edce768aa6008cc16dd1e3fe7d3b88bb8`  
		Last Modified: Thu, 15 Nov 2018 23:04:08 GMT  
		Size: 49.3 MB (49259589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117dc02416a34c62e28a030f27828f2f31af6b8b1f02c85b009a1ffb390d01dc`  
		Last Modified: Fri, 16 Nov 2018 11:30:56 GMT  
		Size: 7.4 MB (7375503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4c717259ac9c550efbbf41c6fe0dc9598046f4bfd4b398deb63f7a0c19cb3f`  
		Last Modified: Fri, 16 Nov 2018 11:30:57 GMT  
		Size: 9.8 MB (9780063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff78688707a851f0821b98d726bd73c923f82850c650aa07bb2b079c9239443f`  
		Last Modified: Fri, 16 Nov 2018 15:29:59 GMT  
		Size: 847.8 KB (847791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836f4a8d99d340e17ffa455950c9b8b92303a875c4d20e0794156bbd463a4520`  
		Last Modified: Fri, 16 Nov 2018 15:29:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebeef34911947e582305caa31fb4742319808febaf576d9b866be8b31b629e6`  
		Last Modified: Fri, 16 Nov 2018 15:29:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abb0b61efceea81f933e16f572a04f717d98120cd1d334ab8e51e1149a87046`  
		Last Modified: Tue, 04 Dec 2018 23:47:03 GMT  
		Size: 175.7 MB (175735369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76452d8097df75694ba61428871da07cb631856d6263063aed9b5206e5afbadf`  
		Last Modified: Wed, 05 Dec 2018 00:19:38 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a042d22b614e7d8e70bea5c7d358b5b811fe8787f79d37953e23f9851f196ad4`  
		Last Modified: Wed, 05 Dec 2018 00:19:38 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f790b43789f6d292a367dc832c595eedc0ba2ba4cebe0db1be4a755de70faed1`  
		Last Modified: Wed, 05 Dec 2018 00:19:42 GMT  
		Size: 39.9 MB (39867774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7-jre11` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:0150b27fa0151b587f988bb358559e6ff9b52797d617f20c010b6b4b8afbebde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.9 MB (268908100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107eace68888d6b66a7ad664fd7c685bd45a1cf4449ab96a5e8a13e5182ffd47`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 16 Nov 2018 10:10:09 GMT
ADD file:832a9af57620f627dd172e1887e8dd24971e52fd5eee7d5f5d2a43532d6be776 in / 
# Fri, 16 Nov 2018 10:10:17 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:17:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:17:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 04:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:27:51 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:27:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 04:27:57 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 04:27:58 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 04:28:00 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 05 Dec 2018 10:15:30 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Wed, 05 Dec 2018 10:22:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 11:32:18 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 05 Dec 2018 11:32:20 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 05 Dec 2018 11:32:20 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Wed, 05 Dec 2018 11:32:21 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Wed, 05 Dec 2018 11:32:21 GMT
WORKDIR /lightstreamer
# Wed, 05 Dec 2018 11:32:35 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Wed, 05 Dec 2018 11:32:35 GMT
EXPOSE 8080/tcp
# Wed, 05 Dec 2018 11:32:36 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 05 Dec 2018 11:32:37 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:3da09231e583a9a3b7103f6be2d0679bc461005f2d2ff624366b0eb98f3dbfd5`  
		Last Modified: Thu, 15 Nov 2018 01:31:37 GMT  
		Size: 47.6 MB (47624414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9075e353d5a562472189e3052838c7ae3ae6d1010aaaa24fdee045e71c553ecb`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 7.3 MB (7251197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645fc9dd9541251810eb8e2a2465a257a66a4c0e930c37f2b9233063083fffdf`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 9.8 MB (9760021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879c479169f4e3cf871cb7473458a1c638712121d2b914ffeaf1d7ed9dc70b52`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 834.4 KB (834363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a2c82579098ae8c4a99671559e893d0eb98d41fc2fb948c1455cf7a31394ab`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e40cd1fba289216546fab6aced2c405bc1762bbab01ce8f92506e4f3d079eb5`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e6e377c33a99edd4a108ae456e389dabb154873e7ad5f55e2d54e320403dcf`  
		Last Modified: Wed, 05 Dec 2018 10:33:28 GMT  
		Size: 163.6 MB (163567714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799be8df96e4986a9f17c2584462b3e3c947663c9085a5373a63476b4e9c33f5`  
		Last Modified: Wed, 05 Dec 2018 11:33:01 GMT  
		Size: 2.2 KB (2183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f58be6f94267b43f9c3f4a7ceaaa2f68ce3ed639a60f9ff57baac3fd3b3834`  
		Last Modified: Wed, 05 Dec 2018 11:33:01 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3be4d7054970dc597e58108ab58f1df98bb02a547e6af5c57e15422d3ea6f4`  
		Last Modified: Wed, 05 Dec 2018 11:33:09 GMT  
		Size: 39.9 MB (39867737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7-jre8`

```console
$ docker pull lightstreamer@sha256:58eddc7de08f05e8f950ec24b08c9fe1161fc978c168b9c543e1de7229629745
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7-jre8` - linux; amd64

```console
$ docker pull lightstreamer@sha256:b76a3352b2497a4cf3862ce963daae2f4decc9d2f4bcb84ed46bb0fccacc9b0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.5 MB (223489094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43af570bb98de5e4b2e9c18478adc0e8b9fd579c7ad0e8f3fef11d4f32d181ae`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 15:01:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 15:01:54 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 15:01:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 15:01:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 15:01:57 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Nov 2018 15:01:58 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 15:01:58 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 16 Nov 2018 15:01:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 15:02:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 15:02:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 07:25:40 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 17 Nov 2018 07:25:43 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Sat, 17 Nov 2018 07:25:44 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Sat, 17 Nov 2018 07:25:44 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Sat, 17 Nov 2018 07:25:44 GMT
WORKDIR /lightstreamer
# Sat, 17 Nov 2018 07:25:55 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Sat, 17 Nov 2018 07:25:55 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 07:25:56 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 17 Nov 2018 07:25:56 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95065f2209613c11cdaf4499a2dba0c6cb9c53fc05732dc76c4c6f4b47453717`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0887630ce5768a45764e3bf0ed5382223216df24ba08ce3e4c952a88398647ba`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c375d1959fab484c9c7450d5ee70b2cfc05ff12fb04bcd3bed888cc8a84bb2de`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00a5e6055ccdd1c0491227009508127273e65aceaccad709eb6a10692fb68e3`  
		Last Modified: Fri, 16 Nov 2018 16:04:08 GMT  
		Size: 122.1 MB (122118624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8319f5fb56cff26b699a967e4afa404e605c23c58ae1952b0b19765a66db6a61`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 246.7 KB (246722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b72a4604179f8fc39e3372ef7e35ed3fbf0e6e7084bb92e9fc7112ed22e7435`  
		Last Modified: Sat, 17 Nov 2018 07:29:50 GMT  
		Size: 2.1 KB (2130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7b0894d1368a24e524abd416d2324c5956b8c859efb4959ed46519524b12d5`  
		Last Modified: Sat, 17 Nov 2018 07:29:50 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ea9ace2db298d61dcc5bd153bf0a47623f8f21ff9920409cf1d7068f7fccf6`  
		Last Modified: Sat, 17 Nov 2018 07:29:54 GMT  
		Size: 39.9 MB (39867644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7-jre8` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:7a1f1052111b15a60622751ed57deeaf2acef9e934fbe99582500ff3a548f9bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.6 MB (210611814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bfcf703519eb191e1c65098029bb23751a616ccfbae3e1936847633d046ac10`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 05:03:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:03:28 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 05:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 05:03:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 05:03:32 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 17 Nov 2018 05:03:33 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 05:03:34 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 17 Nov 2018 05:03:34 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 17 Nov 2018 05:09:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 05:09:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 23:09:24 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 17 Nov 2018 23:09:31 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Sat, 17 Nov 2018 23:09:31 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Sat, 17 Nov 2018 23:09:32 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Sat, 17 Nov 2018 23:09:33 GMT
WORKDIR /lightstreamer
# Sat, 17 Nov 2018 23:09:48 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Sat, 17 Nov 2018 23:09:53 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 23:09:54 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 17 Nov 2018 23:09:54 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8050ba47b282917e868af6eab2ca0f22a9fbb40ba6452b38af97d53ba97c6248`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 839.1 KB (839146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032f795239efef8545d838438d4209bd38dc66778df9a09b73278274bc1768b5`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e4c7cd5a44f16ca5ee171f6fd3d991c115f02b94c885e76cb35b40a2a6d04a`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3029270d925de617b3e3fa4ea41b595ef66c57c9a25063d295ede56a11cfb4f`  
		Last Modified: Sat, 17 Nov 2018 05:53:10 GMT  
		Size: 112.8 MB (112755573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c612a06709926434d069b9b01132e7a8e6063fca60e4d2f7e231e8c777ac5bc1`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 246.7 KB (246666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a85753f72beafcad764d93888bd8df62b18c59f81676c6ddfa5223f54fbb88`  
		Last Modified: Sat, 17 Nov 2018 23:17:35 GMT  
		Size: 2.1 KB (2140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c83a2de4cd8011e95b91473b6328b5417af397953dc52e3b3fa8a82df3503d9`  
		Last Modified: Sat, 17 Nov 2018 23:17:34 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1e5772c11209b4c33aa598b7d67bbf20b069612f3bfdb396a777d6c06f6bc6`  
		Last Modified: Sat, 17 Nov 2018 23:17:43 GMT  
		Size: 39.9 MB (39867720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7-jre8-alpine`

```console
$ docker pull lightstreamer@sha256:a7f6ea8c75ad29f81d2625547fcc6f739e22021c36a1feab2cd36cd672a782e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7-jre8-alpine` - linux; amd64

```console
$ docker pull lightstreamer@sha256:22c3cdda75f611d08a62c3e2911b99fe4734f5be6c2dbe8e001137bd40613fa2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.9 MB (96925129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:371f8ebfd2e9ac28890c9c164525cf38fad50e6e22cb1c4ab79dc455f4d6b0d1`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:40:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 00:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 00:41:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 00:41:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 00:41:18 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 00:41:19 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 00:41:23 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 05:29:33 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Fri, 21 Dec 2018 05:29:34 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Fri, 21 Dec 2018 05:29:34 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Fri, 21 Dec 2018 05:29:34 GMT
WORKDIR /lightstreamer
# Fri, 21 Dec 2018 05:29:50 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Fri, 21 Dec 2018 05:29:51 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 05:29:51 GMT
WORKDIR /lightstreamer/bin/unix-like
# Fri, 21 Dec 2018 05:29:51 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35920a071f912ae4c16897610e8e2d514efcfd0e14ec76c4c73bf9aa7c2c55ea`  
		Last Modified: Fri, 21 Dec 2018 00:44:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e4d568ad31b18826f29fce2a8e1643f8237b9adfbbbe1bd8073c5edfcced3b`  
		Last Modified: Fri, 21 Dec 2018 00:45:09 GMT  
		Size: 54.8 MB (54829758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a30a0403ad40ac50eeaaf05607316248b9de77337e388375f2f68484f2bdf59`  
		Last Modified: Fri, 21 Dec 2018 05:30:15 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ea8e800990b9fbe3ee7ac13af83d98d14196469392118b0682f40a997fbe29`  
		Last Modified: Fri, 21 Dec 2018 05:30:20 GMT  
		Size: 39.9 MB (39888007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7-jre8-alpine` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:a21009d539e98ace1a642e04cca1d7dd40510d538096807f0108b6249d2c1d14
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.3 MB (95334106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43fc0fe9605607eef026f56dd184e97b564453ef9e00838a8063af856e3d3cb1`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:05:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 13:05:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 13:06:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 13:06:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 13:06:37 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 13:06:38 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 13:06:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 16:34:20 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Fri, 21 Dec 2018 16:34:21 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Fri, 21 Dec 2018 16:34:22 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Fri, 21 Dec 2018 16:34:23 GMT
WORKDIR /lightstreamer
# Fri, 21 Dec 2018 16:34:45 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Fri, 21 Dec 2018 16:34:46 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 16:34:47 GMT
WORKDIR /lightstreamer/bin/unix-like
# Fri, 21 Dec 2018 16:34:48 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d8dfc4d0852b7a74d115eecd508b6a48a39664fe4129497ea3871524e33ce9`  
		Last Modified: Fri, 21 Dec 2018 13:09:35 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca65efb0684ca6d94b21ffe318a864419f84e648f059afac5439c1ca971f3ef`  
		Last Modified: Fri, 21 Dec 2018 13:10:23 GMT  
		Size: 53.3 MB (53345808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9198b4c47f145eb5939dc8118ff799df84f59906d25c0523aed3dbfb6e2a4b96`  
		Last Modified: Fri, 21 Dec 2018 16:35:26 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5419a7509499198b2a76664b7141b65467223e06687f7eb28b23fe12d118695f`  
		Last Modified: Fri, 21 Dec 2018 16:35:35 GMT  
		Size: 39.9 MB (39887944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:latest`

```console
$ docker pull lightstreamer@sha256:3f1d7b0a9347e0da6ac3b9f8c094bb1afc5363aa56589f4804c9d7c71422eae6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:latest` - linux; amd64

```console
$ docker pull lightstreamer@sha256:d6b1fd5781c5a6c0040908b8fadb52be0954d7efa9283d6df9350cd0cbc20993
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282868743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f4129ffbec879b800ae90b7f86bfd216c3f32095c846b7cf41e6088c970b693`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Thu, 15 Nov 2018 22:39:40 GMT
ADD file:84029df3086c983b05fbe43604e262a3500994b6a3ecfe0d463f3c8c58e0a7a1 in / 
# Thu, 15 Nov 2018 22:39:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:12:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:12:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 14:47:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:47:35 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:47:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:47:38 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:47:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:47:38 GMT
ENV JAVA_VERSION=11.0.1
# Tue, 04 Dec 2018 23:25:54 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Tue, 04 Dec 2018 23:26:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 00:18:34 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 05 Dec 2018 00:18:35 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 05 Dec 2018 00:18:36 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Wed, 05 Dec 2018 00:18:36 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Wed, 05 Dec 2018 00:18:36 GMT
WORKDIR /lightstreamer
# Wed, 05 Dec 2018 00:19:02 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Wed, 05 Dec 2018 00:19:09 GMT
EXPOSE 8080/tcp
# Wed, 05 Dec 2018 00:19:09 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 05 Dec 2018 00:19:10 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:16e82e17faef9e90ceefcd8175e9899edce768aa6008cc16dd1e3fe7d3b88bb8`  
		Last Modified: Thu, 15 Nov 2018 23:04:08 GMT  
		Size: 49.3 MB (49259589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117dc02416a34c62e28a030f27828f2f31af6b8b1f02c85b009a1ffb390d01dc`  
		Last Modified: Fri, 16 Nov 2018 11:30:56 GMT  
		Size: 7.4 MB (7375503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4c717259ac9c550efbbf41c6fe0dc9598046f4bfd4b398deb63f7a0c19cb3f`  
		Last Modified: Fri, 16 Nov 2018 11:30:57 GMT  
		Size: 9.8 MB (9780063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff78688707a851f0821b98d726bd73c923f82850c650aa07bb2b079c9239443f`  
		Last Modified: Fri, 16 Nov 2018 15:29:59 GMT  
		Size: 847.8 KB (847791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836f4a8d99d340e17ffa455950c9b8b92303a875c4d20e0794156bbd463a4520`  
		Last Modified: Fri, 16 Nov 2018 15:29:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebeef34911947e582305caa31fb4742319808febaf576d9b866be8b31b629e6`  
		Last Modified: Fri, 16 Nov 2018 15:29:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1abb0b61efceea81f933e16f572a04f717d98120cd1d334ab8e51e1149a87046`  
		Last Modified: Tue, 04 Dec 2018 23:47:03 GMT  
		Size: 175.7 MB (175735369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76452d8097df75694ba61428871da07cb631856d6263063aed9b5206e5afbadf`  
		Last Modified: Wed, 05 Dec 2018 00:19:38 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a042d22b614e7d8e70bea5c7d358b5b811fe8787f79d37953e23f9851f196ad4`  
		Last Modified: Wed, 05 Dec 2018 00:19:38 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f790b43789f6d292a367dc832c595eedc0ba2ba4cebe0db1be4a755de70faed1`  
		Last Modified: Wed, 05 Dec 2018 00:19:42 GMT  
		Size: 39.9 MB (39867774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:latest` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:0150b27fa0151b587f988bb358559e6ff9b52797d617f20c010b6b4b8afbebde
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.9 MB (268908100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107eace68888d6b66a7ad664fd7c685bd45a1cf4449ab96a5e8a13e5182ffd47`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 16 Nov 2018 10:10:09 GMT
ADD file:832a9af57620f627dd172e1887e8dd24971e52fd5eee7d5f5d2a43532d6be776 in / 
# Fri, 16 Nov 2018 10:10:17 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:17:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:17:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 04:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:27:51 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:27:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 04:27:57 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 04:27:58 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 04:28:00 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 05 Dec 2018 10:15:30 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Wed, 05 Dec 2018 10:22:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 11:32:18 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 05 Dec 2018 11:32:20 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 05 Dec 2018 11:32:20 GMT
ENV LIGHTSTREAMER_VERSION=7_0_2_20181003
# Wed, 05 Dec 2018 11:32:21 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_2_20181003.tar.gz
# Wed, 05 Dec 2018 11:32:21 GMT
WORKDIR /lightstreamer
# Wed, 05 Dec 2018 11:32:35 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Wed, 05 Dec 2018 11:32:35 GMT
EXPOSE 8080/tcp
# Wed, 05 Dec 2018 11:32:36 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 05 Dec 2018 11:32:37 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:3da09231e583a9a3b7103f6be2d0679bc461005f2d2ff624366b0eb98f3dbfd5`  
		Last Modified: Thu, 15 Nov 2018 01:31:37 GMT  
		Size: 47.6 MB (47624414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9075e353d5a562472189e3052838c7ae3ae6d1010aaaa24fdee045e71c553ecb`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 7.3 MB (7251197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645fc9dd9541251810eb8e2a2465a257a66a4c0e930c37f2b9233063083fffdf`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 9.8 MB (9760021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879c479169f4e3cf871cb7473458a1c638712121d2b914ffeaf1d7ed9dc70b52`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 834.4 KB (834363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a2c82579098ae8c4a99671559e893d0eb98d41fc2fb948c1455cf7a31394ab`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e40cd1fba289216546fab6aced2c405bc1762bbab01ce8f92506e4f3d079eb5`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e6e377c33a99edd4a108ae456e389dabb154873e7ad5f55e2d54e320403dcf`  
		Last Modified: Wed, 05 Dec 2018 10:33:28 GMT  
		Size: 163.6 MB (163567714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799be8df96e4986a9f17c2584462b3e3c947663c9085a5373a63476b4e9c33f5`  
		Last Modified: Wed, 05 Dec 2018 11:33:01 GMT  
		Size: 2.2 KB (2183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f58be6f94267b43f9c3f4a7ceaaa2f68ce3ed639a60f9ff57baac3fd3b3834`  
		Last Modified: Wed, 05 Dec 2018 11:33:01 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3be4d7054970dc597e58108ab58f1df98bb02a547e6af5c57e15422d3ea6f4`  
		Last Modified: Wed, 05 Dec 2018 11:33:09 GMT  
		Size: 39.9 MB (39867737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

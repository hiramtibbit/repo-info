<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:5`](#logstash5)
-	[`logstash:5.6`](#logstash56)
-	[`logstash:5.6.13`](#logstash5613)
-	[`logstash:5.6.13-alpine`](#logstash5613-alpine)
-	[`logstash:5.6-alpine`](#logstash56-alpine)
-	[`logstash:5-alpine`](#logstash5-alpine)
-	[`logstash:6.4.0`](#logstash640)
-	[`logstash:6.4.1`](#logstash641)
-	[`logstash:6.4.3`](#logstash643)

## `logstash:5`

```console
$ docker pull logstash@sha256:06f4a4d7347e5e04de2e317b25b39aa69da5ec9f3a2ca85abcd24f7353972760
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5` - linux; amd64

```console
$ docker pull logstash@sha256:8fddbaec03254e95bdf5d70defa79337aec741245656e97204c75511f983403d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.6 MB (292603425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44b193701b26c68806e6a17043855ad44cd73c3fa072a1aeb571c8a01f95ea87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Mon, 29 Oct 2018 23:30:29 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:30:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:31:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:31:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 03:14:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Oct 2018 03:14:53 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 30 Oct 2018 03:14:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 30 Oct 2018 03:14:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Oct 2018 03:15:01 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 30 Oct 2018 03:15:02 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 09 Nov 2018 22:30:52 GMT
ENV LOGSTASH_VERSION=5.6.13
# Fri, 09 Nov 2018 22:30:52 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.13-1
# Fri, 09 Nov 2018 22:31:11 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Nov 2018 22:31:21 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Nov 2018 22:31:21 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 09 Nov 2018 22:31:22 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Fri, 09 Nov 2018 22:31:22 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Fri, 09 Nov 2018 22:31:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Nov 2018 22:31:23 GMT
CMD ["-e" ""]
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
	-	`sha256:3ca5d6af9022c9c3b436792a01c58dd29490430d28b04f70385f308e3bdae8a6`  
		Last Modified: Mon, 29 Oct 2018 23:40:07 GMT  
		Size: 122.1 MB (122121999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06cfa2cea32b36c8f5dcc8605166d1f8b72cf02e44163dbf7d14e0379286b55`  
		Last Modified: Mon, 29 Oct 2018 23:39:44 GMT  
		Size: 246.7 KB (246728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b4c0fc322d3c9a1c327beaee63d5b304794a4d1937f9820aa31eade274553b`  
		Last Modified: Tue, 30 Oct 2018 03:17:06 GMT  
		Size: 1.6 MB (1572073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03439cff2d7992ce76f278e33c796207164db77d09b656287458f4fe9e032cb8`  
		Last Modified: Tue, 30 Oct 2018 03:17:06 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b61d3b5e376a6e8cefb96109bf4e013f174454f0d2eab5f12fe047147e95c79`  
		Last Modified: Tue, 30 Oct 2018 03:17:06 GMT  
		Size: 500.9 KB (500917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e064ae74a9ef911e7fd3bfb5e9f7fed86df99950c940ea4828092eac87709577`  
		Last Modified: Tue, 30 Oct 2018 03:17:05 GMT  
		Size: 1.4 KB (1444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9894fbeaa669884cc3df91e9c5495f88541afce5c69e44a23d33b213c510585`  
		Last Modified: Tue, 30 Oct 2018 03:17:05 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729795f0976233f94cb0eebd5e3ae10eaabcc6ca8276d93aac145c455491720b`  
		Last Modified: Fri, 09 Nov 2018 22:33:19 GMT  
		Size: 106.9 MB (106917598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27b1a27bb0c2fc816e71221fbb3fb67ea53b29070d589f20d3e7f530070bdb5`  
		Last Modified: Fri, 09 Nov 2018 22:32:54 GMT  
		Size: 2.7 KB (2665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4623cfcd6ce274ad9925d37b4517f35b6501badd6f469655e18e4f3732a22a2a`  
		Last Modified: Fri, 09 Nov 2018 22:32:54 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6`

```console
$ docker pull logstash@sha256:06f4a4d7347e5e04de2e317b25b39aa69da5ec9f3a2ca85abcd24f7353972760
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6` - linux; amd64

```console
$ docker pull logstash@sha256:8fddbaec03254e95bdf5d70defa79337aec741245656e97204c75511f983403d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.6 MB (292603425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44b193701b26c68806e6a17043855ad44cd73c3fa072a1aeb571c8a01f95ea87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Mon, 29 Oct 2018 23:30:29 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:30:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:31:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:31:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 03:14:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Oct 2018 03:14:53 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 30 Oct 2018 03:14:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 30 Oct 2018 03:14:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Oct 2018 03:15:01 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 30 Oct 2018 03:15:02 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 09 Nov 2018 22:30:52 GMT
ENV LOGSTASH_VERSION=5.6.13
# Fri, 09 Nov 2018 22:30:52 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.13-1
# Fri, 09 Nov 2018 22:31:11 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Nov 2018 22:31:21 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Nov 2018 22:31:21 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 09 Nov 2018 22:31:22 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Fri, 09 Nov 2018 22:31:22 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Fri, 09 Nov 2018 22:31:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Nov 2018 22:31:23 GMT
CMD ["-e" ""]
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
	-	`sha256:3ca5d6af9022c9c3b436792a01c58dd29490430d28b04f70385f308e3bdae8a6`  
		Last Modified: Mon, 29 Oct 2018 23:40:07 GMT  
		Size: 122.1 MB (122121999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06cfa2cea32b36c8f5dcc8605166d1f8b72cf02e44163dbf7d14e0379286b55`  
		Last Modified: Mon, 29 Oct 2018 23:39:44 GMT  
		Size: 246.7 KB (246728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b4c0fc322d3c9a1c327beaee63d5b304794a4d1937f9820aa31eade274553b`  
		Last Modified: Tue, 30 Oct 2018 03:17:06 GMT  
		Size: 1.6 MB (1572073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03439cff2d7992ce76f278e33c796207164db77d09b656287458f4fe9e032cb8`  
		Last Modified: Tue, 30 Oct 2018 03:17:06 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b61d3b5e376a6e8cefb96109bf4e013f174454f0d2eab5f12fe047147e95c79`  
		Last Modified: Tue, 30 Oct 2018 03:17:06 GMT  
		Size: 500.9 KB (500917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e064ae74a9ef911e7fd3bfb5e9f7fed86df99950c940ea4828092eac87709577`  
		Last Modified: Tue, 30 Oct 2018 03:17:05 GMT  
		Size: 1.4 KB (1444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9894fbeaa669884cc3df91e9c5495f88541afce5c69e44a23d33b213c510585`  
		Last Modified: Tue, 30 Oct 2018 03:17:05 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729795f0976233f94cb0eebd5e3ae10eaabcc6ca8276d93aac145c455491720b`  
		Last Modified: Fri, 09 Nov 2018 22:33:19 GMT  
		Size: 106.9 MB (106917598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27b1a27bb0c2fc816e71221fbb3fb67ea53b29070d589f20d3e7f530070bdb5`  
		Last Modified: Fri, 09 Nov 2018 22:32:54 GMT  
		Size: 2.7 KB (2665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4623cfcd6ce274ad9925d37b4517f35b6501badd6f469655e18e4f3732a22a2a`  
		Last Modified: Fri, 09 Nov 2018 22:32:54 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6.13`

```console
$ docker pull logstash@sha256:06f4a4d7347e5e04de2e317b25b39aa69da5ec9f3a2ca85abcd24f7353972760
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6.13` - linux; amd64

```console
$ docker pull logstash@sha256:8fddbaec03254e95bdf5d70defa79337aec741245656e97204c75511f983403d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.6 MB (292603425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44b193701b26c68806e6a17043855ad44cd73c3fa072a1aeb571c8a01f95ea87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Mon, 29 Oct 2018 23:30:29 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:30:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:31:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:31:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 03:14:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Oct 2018 03:14:53 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 30 Oct 2018 03:14:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 30 Oct 2018 03:14:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Oct 2018 03:15:01 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 30 Oct 2018 03:15:02 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 09 Nov 2018 22:30:52 GMT
ENV LOGSTASH_VERSION=5.6.13
# Fri, 09 Nov 2018 22:30:52 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.13-1
# Fri, 09 Nov 2018 22:31:11 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Nov 2018 22:31:21 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Nov 2018 22:31:21 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 09 Nov 2018 22:31:22 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Fri, 09 Nov 2018 22:31:22 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Fri, 09 Nov 2018 22:31:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Nov 2018 22:31:23 GMT
CMD ["-e" ""]
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
	-	`sha256:3ca5d6af9022c9c3b436792a01c58dd29490430d28b04f70385f308e3bdae8a6`  
		Last Modified: Mon, 29 Oct 2018 23:40:07 GMT  
		Size: 122.1 MB (122121999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06cfa2cea32b36c8f5dcc8605166d1f8b72cf02e44163dbf7d14e0379286b55`  
		Last Modified: Mon, 29 Oct 2018 23:39:44 GMT  
		Size: 246.7 KB (246728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b4c0fc322d3c9a1c327beaee63d5b304794a4d1937f9820aa31eade274553b`  
		Last Modified: Tue, 30 Oct 2018 03:17:06 GMT  
		Size: 1.6 MB (1572073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03439cff2d7992ce76f278e33c796207164db77d09b656287458f4fe9e032cb8`  
		Last Modified: Tue, 30 Oct 2018 03:17:06 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b61d3b5e376a6e8cefb96109bf4e013f174454f0d2eab5f12fe047147e95c79`  
		Last Modified: Tue, 30 Oct 2018 03:17:06 GMT  
		Size: 500.9 KB (500917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e064ae74a9ef911e7fd3bfb5e9f7fed86df99950c940ea4828092eac87709577`  
		Last Modified: Tue, 30 Oct 2018 03:17:05 GMT  
		Size: 1.4 KB (1444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9894fbeaa669884cc3df91e9c5495f88541afce5c69e44a23d33b213c510585`  
		Last Modified: Tue, 30 Oct 2018 03:17:05 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729795f0976233f94cb0eebd5e3ae10eaabcc6ca8276d93aac145c455491720b`  
		Last Modified: Fri, 09 Nov 2018 22:33:19 GMT  
		Size: 106.9 MB (106917598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27b1a27bb0c2fc816e71221fbb3fb67ea53b29070d589f20d3e7f530070bdb5`  
		Last Modified: Fri, 09 Nov 2018 22:32:54 GMT  
		Size: 2.7 KB (2665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4623cfcd6ce274ad9925d37b4517f35b6501badd6f469655e18e4f3732a22a2a`  
		Last Modified: Fri, 09 Nov 2018 22:32:54 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6.13-alpine`

```console
$ docker pull logstash@sha256:e66b1f2b3f833b02bf584794dbd23019060a0e801f55a4fa0dc3d1b3c834bf4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6.13-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:567c510fdd2881524f7de2f277f05e5c50bfe60f879a3800133d7ad12958b06a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.1 MB (165126611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90c5a769e7d509f1162ee5b6e9c328eff777a20a89b3531fda9359defacc53bf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:07:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 12 Sep 2018 00:07:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 22:32:14 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:32:14 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:32:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 00:03:23 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Thu, 25 Oct 2018 00:03:24 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Thu, 25 Oct 2018 00:03:25 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 25 Oct 2018 00:03:25 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 25 Oct 2018 00:03:26 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Thu, 25 Oct 2018 00:03:26 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 09 Nov 2018 22:31:45 GMT
ENV LOGSTASH_VERSION=5.6.13
# Fri, 09 Nov 2018 22:31:45 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.13.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.13.tar.gz.asc LOGSTASH_TARBALL_SHA1=f83fb75409e63c5e0450f22d5d14a7c3c5af3192
# Fri, 09 Nov 2018 22:32:02 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Fri, 09 Nov 2018 22:32:12 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Fri, 09 Nov 2018 22:32:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Nov 2018 22:32:24 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819f4a45746c3207fc5fa281ad62cf165d39c18de53a5bfd42eddfec32430d83`  
		Last Modified: Wed, 24 Oct 2018 22:45:47 GMT  
		Size: 54.8 MB (54829651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368af7f20945c693c877224575c44ba3522bd1a8bb8153d1019376053a162cfe`  
		Last Modified: Thu, 25 Oct 2018 00:05:18 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4523e478e2efeca245a8ba8d11a6845d8fabae21a2832e6eb0c991dd365c538b`  
		Last Modified: Thu, 25 Oct 2018 00:05:18 GMT  
		Size: 1.5 MB (1548812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7a4491398c4df391197009cf813e0e0d7cb024837f10358b7dfcf4d82884ac`  
		Last Modified: Thu, 25 Oct 2018 00:05:18 GMT  
		Size: 96.6 KB (96611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a452bda776e30187b2bb8cbd2c5bdd3bd9c1da01da0f143cc1104e96efeece7`  
		Last Modified: Fri, 09 Nov 2018 22:34:40 GMT  
		Size: 106.4 MB (106442809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d374edd5862b1a52a9b5666f1937dc7bbcf240c25136c7689f7b350d5a99e1b7`  
		Last Modified: Fri, 09 Nov 2018 22:34:25 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6-alpine`

```console
$ docker pull logstash@sha256:e66b1f2b3f833b02bf584794dbd23019060a0e801f55a4fa0dc3d1b3c834bf4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:567c510fdd2881524f7de2f277f05e5c50bfe60f879a3800133d7ad12958b06a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.1 MB (165126611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90c5a769e7d509f1162ee5b6e9c328eff777a20a89b3531fda9359defacc53bf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:07:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 12 Sep 2018 00:07:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 22:32:14 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:32:14 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:32:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 00:03:23 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Thu, 25 Oct 2018 00:03:24 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Thu, 25 Oct 2018 00:03:25 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 25 Oct 2018 00:03:25 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 25 Oct 2018 00:03:26 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Thu, 25 Oct 2018 00:03:26 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 09 Nov 2018 22:31:45 GMT
ENV LOGSTASH_VERSION=5.6.13
# Fri, 09 Nov 2018 22:31:45 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.13.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.13.tar.gz.asc LOGSTASH_TARBALL_SHA1=f83fb75409e63c5e0450f22d5d14a7c3c5af3192
# Fri, 09 Nov 2018 22:32:02 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Fri, 09 Nov 2018 22:32:12 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Fri, 09 Nov 2018 22:32:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Nov 2018 22:32:24 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819f4a45746c3207fc5fa281ad62cf165d39c18de53a5bfd42eddfec32430d83`  
		Last Modified: Wed, 24 Oct 2018 22:45:47 GMT  
		Size: 54.8 MB (54829651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368af7f20945c693c877224575c44ba3522bd1a8bb8153d1019376053a162cfe`  
		Last Modified: Thu, 25 Oct 2018 00:05:18 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4523e478e2efeca245a8ba8d11a6845d8fabae21a2832e6eb0c991dd365c538b`  
		Last Modified: Thu, 25 Oct 2018 00:05:18 GMT  
		Size: 1.5 MB (1548812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7a4491398c4df391197009cf813e0e0d7cb024837f10358b7dfcf4d82884ac`  
		Last Modified: Thu, 25 Oct 2018 00:05:18 GMT  
		Size: 96.6 KB (96611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a452bda776e30187b2bb8cbd2c5bdd3bd9c1da01da0f143cc1104e96efeece7`  
		Last Modified: Fri, 09 Nov 2018 22:34:40 GMT  
		Size: 106.4 MB (106442809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d374edd5862b1a52a9b5666f1937dc7bbcf240c25136c7689f7b350d5a99e1b7`  
		Last Modified: Fri, 09 Nov 2018 22:34:25 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5-alpine`

```console
$ docker pull logstash@sha256:e66b1f2b3f833b02bf584794dbd23019060a0e801f55a4fa0dc3d1b3c834bf4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:567c510fdd2881524f7de2f277f05e5c50bfe60f879a3800133d7ad12958b06a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.1 MB (165126611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90c5a769e7d509f1162ee5b6e9c328eff777a20a89b3531fda9359defacc53bf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:07:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 12 Sep 2018 00:07:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 22:32:14 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:32:14 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:32:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 00:03:23 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Thu, 25 Oct 2018 00:03:24 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Thu, 25 Oct 2018 00:03:25 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 25 Oct 2018 00:03:25 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 25 Oct 2018 00:03:26 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Thu, 25 Oct 2018 00:03:26 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 09 Nov 2018 22:31:45 GMT
ENV LOGSTASH_VERSION=5.6.13
# Fri, 09 Nov 2018 22:31:45 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.13.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.13.tar.gz.asc LOGSTASH_TARBALL_SHA1=f83fb75409e63c5e0450f22d5d14a7c3c5af3192
# Fri, 09 Nov 2018 22:32:02 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Fri, 09 Nov 2018 22:32:12 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Fri, 09 Nov 2018 22:32:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Nov 2018 22:32:24 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819f4a45746c3207fc5fa281ad62cf165d39c18de53a5bfd42eddfec32430d83`  
		Last Modified: Wed, 24 Oct 2018 22:45:47 GMT  
		Size: 54.8 MB (54829651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368af7f20945c693c877224575c44ba3522bd1a8bb8153d1019376053a162cfe`  
		Last Modified: Thu, 25 Oct 2018 00:05:18 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4523e478e2efeca245a8ba8d11a6845d8fabae21a2832e6eb0c991dd365c538b`  
		Last Modified: Thu, 25 Oct 2018 00:05:18 GMT  
		Size: 1.5 MB (1548812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7a4491398c4df391197009cf813e0e0d7cb024837f10358b7dfcf4d82884ac`  
		Last Modified: Thu, 25 Oct 2018 00:05:18 GMT  
		Size: 96.6 KB (96611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a452bda776e30187b2bb8cbd2c5bdd3bd9c1da01da0f143cc1104e96efeece7`  
		Last Modified: Fri, 09 Nov 2018 22:34:40 GMT  
		Size: 106.4 MB (106442809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d374edd5862b1a52a9b5666f1937dc7bbcf240c25136c7689f7b350d5a99e1b7`  
		Last Modified: Fri, 09 Nov 2018 22:34:25 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:6.4.0`

```console
$ docker pull logstash@sha256:d9ac381040d68f388be95e2b8a51631f06c0533c47e6593dd62950c2e2226e43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:6.4.0` - linux; amd64

```console
$ docker pull logstash@sha256:40bbb687fc820c892906fd325ad9ffacb96a56ab252a919fd2a60f315b374af1
```

-	Docker Version: 18.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.9 MB (303867206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13b7a09abaf862fe5b1c2ec373a3031d77fecc5069b7af4c23129d5714b5b6ed`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 06 Aug 2018 19:21:47 GMT
ADD file:6340c690b08865d7eb84a36050a0ab0e8effc2b010a4ccb20b810153a97a9228 in / 
# Mon, 06 Aug 2018 19:21:47 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20180804
# Mon, 06 Aug 2018 19:21:48 GMT
CMD ["/bin/bash"]
# Sat, 18 Aug 2018 00:40:22 GMT
RUN yum update -y && yum install -y java-1.8.0-openjdk-devel which &&     yum clean all
# Sat, 18 Aug 2018 00:40:23 GMT
RUN groupadd --gid 1000 logstash &&     adduser --uid 1000 --gid 1000       --home-dir /usr/share/logstash --no-create-home       logstash
# Sat, 18 Aug 2018 00:40:46 GMT
RUN curl -Lo - http://localhost:8000/logstash/build//logstash-6.4.0.tar.gz |     tar zxf - -C /usr/share &&     mv /usr/share/logstash-6.4.0 /usr/share/logstash &&     chown --recursive logstash:logstash /usr/share/logstash/ &&     chown -R logstash:root /usr/share/logstash &&     chmod -R g=u /usr/share/logstash &&     find /usr/share/logstash -type d -exec chmod g+s {} \; &&     ln -s /usr/share/logstash /opt/logstash
# Sat, 18 Aug 2018 00:40:46 GMT
WORKDIR /usr/share/logstash
# Sat, 18 Aug 2018 00:40:46 GMT
ENV ELASTIC_CONTAINER=true
# Sat, 18 Aug 2018 00:40:47 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 18 Aug 2018 00:40:47 GMT
ADD file:1183410472ec370104718a08e1144081518db1d006a8cc82de824a34455ab3f3 in config/pipelines.yml 
# Sat, 18 Aug 2018 00:40:47 GMT
ADD file:2a0dac103ac5f20f8efa6c77384f10d83a87c3de7c017658f787cce7d6156b76 in config/logstash.yml 
# Sat, 18 Aug 2018 00:40:47 GMT
ADD file:2ef21d4766eab3ac48ed3847c8b8d05554f1fd0b39061cba66c9ac93240087fa in config/ 
# Sat, 18 Aug 2018 00:40:47 GMT
ADD file:0cd9cc51daf5f37b2aa8aae8cf3570a3680e22852afb2803ccb87ddcd3369f52 in pipeline/logstash.conf 
# Sat, 18 Aug 2018 00:40:47 GMT
RUN chown --recursive logstash:root config/ pipeline/
# Sat, 18 Aug 2018 00:40:48 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Sat, 18 Aug 2018 00:40:48 GMT
ADD file:829265fef950756b45f8f38e8bbb36748e8fcfcbd6f518b809ad23fb085f3fe3 in /usr/local/bin/ 
# Sat, 18 Aug 2018 00:40:48 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint
# Sat, 18 Aug 2018 00:40:48 GMT
USER logstash
# Sat, 18 Aug 2018 00:40:48 GMT
ADD file:eba5b08116cf0e48f61f1b4201b091c047c95c512c597cffa96bf237c3d16bb8 in /usr/local/bin/ 
# Sat, 18 Aug 2018 00:40:48 GMT
EXPOSE 5044 9600
# Sat, 18 Aug 2018 00:40:49 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=logstash org.label-schema.version=6.4.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash-docker license=Elastic License
# Sat, 18 Aug 2018 00:40:49 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e56485c9087b0ae01222b7b11acaae74e25b4dd537afb04739e11b55461f06d`  
		Last Modified: Thu, 23 Aug 2018 17:44:54 GMT  
		Size: 72.6 MB (72551403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0313d3f864fa1e44a9c48c7396b6135c613ea3d65b62fb1112c8be7931fd6d34`  
		Last Modified: Thu, 23 Aug 2018 17:44:39 GMT  
		Size: 1.6 KB (1605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024adf56c5cb14344073b9fcbec9092a5aa99f69c30fb47341203cfcd5955978`  
		Last Modified: Thu, 23 Aug 2018 17:44:58 GMT  
		Size: 155.6 MB (155613193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6209f79813e762d8c5ca88199959fbc09ea60e03bddfb24796ed3254f692aeff`  
		Last Modified: Thu, 23 Aug 2018 17:44:39 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfdc6f5b31f4dc9d9e058a9ae23944639c91820a0dfe9a329bc76a95d4cce469`  
		Last Modified: Thu, 23 Aug 2018 17:44:39 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4236779f9f4bbda4ac579ca37126468a8dd2c0f8c9b83994349d427a93c015b`  
		Last Modified: Thu, 23 Aug 2018 17:44:36 GMT  
		Size: 443.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53308bf9b1385aec8985f0601ced3a7d619f0f487b2c4f976a55fcb5a5fccb98`  
		Last Modified: Thu, 23 Aug 2018 17:44:36 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73dc1bb658a0d90bc831284346dc447dfdffd1da02653b423330166e3d4a54f`  
		Last Modified: Thu, 23 Aug 2018 17:44:35 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6377a5f3ecf8ae825572eb94fb17da7de3d1f400d6c23c4f7e92340f885a7ca7`  
		Last Modified: Thu, 23 Aug 2018 17:44:36 GMT  
		Size: 435.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6377a5f3ecf8ae825572eb94fb17da7de3d1f400d6c23c4f7e92340f885a7ca7`  
		Last Modified: Thu, 23 Aug 2018 17:44:36 GMT  
		Size: 435.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceddac4268d5b93e51ad3f791db1d5191f89f8382d4189eaec1d90c45802f3c6`  
		Last Modified: Thu, 23 Aug 2018 17:44:39 GMT  
		Size: 1.0 MB (1001447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:6.4.1`

```console
$ docker pull logstash@sha256:06249c553a03c6531e678484eee2d41c18956b3adae8b9b2e365d67fbaa64ed4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:6.4.1` - linux; amd64

```console
$ docker pull logstash@sha256:e9c84f1a0e39ee74b7f8d14a6fa4024e836b8ce1594c03744af365a16066c624
```

-	Docker Version: 18.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.4 MB (317385325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b03831d9361fd4d86fe331f11b62cbdcdd1023878c2e97b1a9219112559d672`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 06 Aug 2018 19:21:47 GMT
ADD file:6340c690b08865d7eb84a36050a0ab0e8effc2b010a4ccb20b810153a97a9228 in / 
# Mon, 06 Aug 2018 19:21:47 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20180804
# Mon, 06 Aug 2018 19:21:48 GMT
CMD ["/bin/bash"]
# Thu, 13 Sep 2018 23:27:22 GMT
RUN yum update -y && yum install -y java-1.8.0-openjdk-devel which &&     yum clean all
# Thu, 13 Sep 2018 23:27:23 GMT
RUN groupadd --gid 1000 logstash &&     adduser --uid 1000 --gid 1000       --home-dir /usr/share/logstash --no-create-home       logstash
# Thu, 13 Sep 2018 23:27:43 GMT
RUN curl -Lo - http://localhost:8000/logstash/build//logstash-6.4.1.tar.gz |     tar zxf - -C /usr/share &&     mv /usr/share/logstash-6.4.1 /usr/share/logstash &&     chown --recursive logstash:logstash /usr/share/logstash/ &&     chown -R logstash:root /usr/share/logstash &&     chmod -R g=u /usr/share/logstash &&     find /usr/share/logstash -type d -exec chmod g+s {} \; &&     ln -s /usr/share/logstash /opt/logstash
# Thu, 13 Sep 2018 23:27:43 GMT
WORKDIR /usr/share/logstash
# Thu, 13 Sep 2018 23:27:43 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 13 Sep 2018 23:27:44 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Sep 2018 23:27:44 GMT
ADD file:1183410472ec370104718a08e1144081518db1d006a8cc82de824a34455ab3f3 in config/pipelines.yml 
# Thu, 13 Sep 2018 23:27:44 GMT
ADD file:2a0dac103ac5f20f8efa6c77384f10d83a87c3de7c017658f787cce7d6156b76 in config/logstash.yml 
# Thu, 13 Sep 2018 23:27:44 GMT
ADD file:2ef21d4766eab3ac48ed3847c8b8d05554f1fd0b39061cba66c9ac93240087fa in config/ 
# Thu, 13 Sep 2018 23:27:44 GMT
ADD file:0cd9cc51daf5f37b2aa8aae8cf3570a3680e22852afb2803ccb87ddcd3369f52 in pipeline/logstash.conf 
# Thu, 13 Sep 2018 23:27:45 GMT
RUN chown --recursive logstash:root config/ pipeline/
# Thu, 13 Sep 2018 23:27:45 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Thu, 13 Sep 2018 23:27:45 GMT
ADD file:829265fef950756b45f8f38e8bbb36748e8fcfcbd6f518b809ad23fb085f3fe3 in /usr/local/bin/ 
# Thu, 13 Sep 2018 23:27:45 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint
# Thu, 13 Sep 2018 23:27:45 GMT
USER logstash
# Thu, 13 Sep 2018 23:27:46 GMT
ADD file:eba5b08116cf0e48f61f1b4201b091c047c95c512c597cffa96bf237c3d16bb8 in /usr/local/bin/ 
# Thu, 13 Sep 2018 23:27:46 GMT
EXPOSE 5044 9600
# Thu, 13 Sep 2018 23:27:46 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=logstash org.label-schema.version=6.4.1 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash-docker license=Elastic License
# Thu, 13 Sep 2018 23:27:46 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a6823e7b56d790c0e81eb0c98e5a15c407d5d2786bf444a62303749fef3089`  
		Last Modified: Tue, 18 Sep 2018 18:37:30 GMT  
		Size: 86.0 MB (86036557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911f8aeb3c98c0e5088a75c696eb588ad3d9c4b558d9ccb83d570447de93f7ca`  
		Last Modified: Tue, 18 Sep 2018 18:37:12 GMT  
		Size: 1.6 KB (1609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6362f00dd696d0635074876d7fa8684f6d78df895035e40148341c36fd3cce68`  
		Last Modified: Tue, 18 Sep 2018 18:37:30 GMT  
		Size: 155.6 MB (155646154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b15ce5101de6ee09a84016ba3820bfe561b0e60d5d08a0e25f8384b880b6b1f0`  
		Last Modified: Tue, 18 Sep 2018 18:37:11 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed206db0c272b2822e21819206bca406967564ff31bc12db6be5671c1367e37`  
		Last Modified: Tue, 18 Sep 2018 18:37:11 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cc9e09d10d1c99a0cc856fc46de59ce1240685aa7bdc92e76bdcbc850dbc08`  
		Last Modified: Tue, 18 Sep 2018 18:37:08 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a020baa4f729701baa33f62b408dd284a50a202ae73cea979cca799891ff9118`  
		Last Modified: Tue, 18 Sep 2018 18:37:07 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4d479913dc3f4cbe3beeec0d8c64e9cd918ba300c373f58db0f8d7a1f32a85`  
		Last Modified: Tue, 18 Sep 2018 18:37:07 GMT  
		Size: 2.6 KB (2640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f5e54ffc9cafd6d8a705504b6227fc7269d335ec9b0be64eec4768e297cd33`  
		Last Modified: Tue, 18 Sep 2018 18:37:07 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f5e54ffc9cafd6d8a705504b6227fc7269d335ec9b0be64eec4768e297cd33`  
		Last Modified: Tue, 18 Sep 2018 18:37:07 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ae4f7f43656829ee5ece5b5c0560c28a506d40bb96d766f91ac4c2a19976743`  
		Last Modified: Tue, 18 Sep 2018 18:37:08 GMT  
		Size: 1.0 MB (1001444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:6.4.3`

```console
$ docker pull logstash@sha256:58e534d9ee0da39f52c94db063123e5a61b25ff84b71e26cda55bd5fb18d75eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:6.4.3` - linux; amd64

```console
$ docker pull logstash@sha256:392a232fdde65fb4821fc0d5e00ded19fec721226e1550bff4ab8ca84447d719
```

-	Docker Version: 18.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.5 MB (304544276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69c8a126e24afc54f02963d903be29a44d24bd77070214232567eff54b624ce2`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Wed, 31 Oct 2018 00:29:17 GMT
RUN yum update -y && yum install -y java-1.8.0-openjdk-devel which &&     yum clean all
# Wed, 31 Oct 2018 00:29:18 GMT
RUN groupadd --gid 1000 logstash &&     adduser --uid 1000 --gid 1000       --home-dir /usr/share/logstash --no-create-home       logstash
# Wed, 31 Oct 2018 00:29:39 GMT
RUN curl -Lo - http://localhost:8000/logstash/build//logstash-6.4.3.tar.gz |     tar zxf - -C /usr/share &&     mv /usr/share/logstash-6.4.3 /usr/share/logstash &&     chown --recursive logstash:logstash /usr/share/logstash/ &&     chown -R logstash:root /usr/share/logstash &&     chmod -R g=u /usr/share/logstash &&     find /usr/share/logstash -type d -exec chmod g+s {} \; &&     ln -s /usr/share/logstash /opt/logstash
# Wed, 31 Oct 2018 00:29:39 GMT
WORKDIR /usr/share/logstash
# Wed, 31 Oct 2018 00:29:39 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 31 Oct 2018 00:29:39 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 00:29:40 GMT
ADD file:1183410472ec370104718a08e1144081518db1d006a8cc82de824a34455ab3f3 in config/pipelines.yml 
# Wed, 31 Oct 2018 00:29:40 GMT
ADD file:2a0dac103ac5f20f8efa6c77384f10d83a87c3de7c017658f787cce7d6156b76 in config/logstash.yml 
# Wed, 31 Oct 2018 00:29:40 GMT
ADD file:2ef21d4766eab3ac48ed3847c8b8d05554f1fd0b39061cba66c9ac93240087fa in config/ 
# Wed, 31 Oct 2018 00:29:40 GMT
ADD file:0cd9cc51daf5f37b2aa8aae8cf3570a3680e22852afb2803ccb87ddcd3369f52 in pipeline/logstash.conf 
# Wed, 31 Oct 2018 00:29:40 GMT
RUN chown --recursive logstash:root config/ pipeline/
# Wed, 31 Oct 2018 00:29:40 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Wed, 31 Oct 2018 00:29:41 GMT
ADD file:829265fef950756b45f8f38e8bbb36748e8fcfcbd6f518b809ad23fb085f3fe3 in /usr/local/bin/ 
# Wed, 31 Oct 2018 00:29:41 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint
# Wed, 31 Oct 2018 00:29:42 GMT
USER logstash
# Wed, 31 Oct 2018 00:29:42 GMT
ADD file:eba5b08116cf0e48f61f1b4201b091c047c95c512c597cffa96bf237c3d16bb8 in /usr/local/bin/ 
# Wed, 31 Oct 2018 00:29:42 GMT
EXPOSE 5044 9600
# Wed, 31 Oct 2018 00:29:42 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=logstash org.label-schema.version=6.4.3 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash-docker license=Elastic License
# Wed, 31 Oct 2018 00:29:42 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa6ec73245c50f07eb455193a6112a20605a44b7318d2ea9c632a054832600d`  
		Last Modified: Tue, 06 Nov 2018 16:52:05 GMT  
		Size: 73.2 MB (73169703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded42b1bf445468d5382c8e22b599a013ffe59bbe12e50fcdaca513116298156`  
		Last Modified: Tue, 06 Nov 2018 16:51:52 GMT  
		Size: 1.6 KB (1608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be70d06e0946d9c03a998a949d41ec2412c4554c8f039fdda63502ed94fe8cad`  
		Last Modified: Tue, 06 Nov 2018 16:52:09 GMT  
		Size: 155.7 MB (155663639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b4be0e35f23c38389224fd1731c257ea35513b4639c471e64207a427a1b416`  
		Last Modified: Tue, 06 Nov 2018 16:51:52 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096cb2471a65791906251303b97039e5ae51b5cf6b199734ae2d3fdbf05f496f`  
		Last Modified: Tue, 06 Nov 2018 16:51:51 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e888c986da4b069ca3f5e51ae2a73e4ee024f15cb20223afb8bf5056833e6284`  
		Last Modified: Tue, 06 Nov 2018 16:51:48 GMT  
		Size: 442.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aacf3bc27079f860b20cdc34d4a37c98ef62d1f00b66934aa699b1f8b67ddee`  
		Last Modified: Tue, 06 Nov 2018 16:51:48 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09af19509b9dd7d9b595bfdf3270a146f5c160b02082dc0de5a30eb1203d85d7`  
		Last Modified: Tue, 06 Nov 2018 16:51:48 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4679789093256761e77db7f5194c80415d341cdcaa00c17298d7216734d3d3`  
		Last Modified: Tue, 06 Nov 2018 16:51:48 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4679789093256761e77db7f5194c80415d341cdcaa00c17298d7216734d3d3`  
		Last Modified: Tue, 06 Nov 2018 16:51:48 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403e2fc6ac5b6cb7d4765768b56855b4d15c6814b7913889dc8663c5b35e64b9`  
		Last Modified: Tue, 06 Nov 2018 16:51:49 GMT  
		Size: 1.0 MB (1001449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:2.4`](#logstash24)
-	[`logstash:2.4.1`](#logstash241)
-	[`logstash:2.4.1-alpine`](#logstash241-alpine)
-	[`logstash:2.4-alpine`](#logstash24-alpine)
-	[`logstash:5`](#logstash5)
-	[`logstash:5.6`](#logstash56)
-	[`logstash:5.6.12`](#logstash5612)
-	[`logstash:5.6.12-alpine`](#logstash5612-alpine)
-	[`logstash:5.6-alpine`](#logstash56-alpine)
-	[`logstash:5-alpine`](#logstash5-alpine)
-	[`logstash:6.4.0`](#logstash640)
-	[`logstash:6.4.1`](#logstash641)
-	[`logstash:6.4.2`](#logstash642)

## `logstash:2.4`

```console
$ docker pull logstash@sha256:93608b3132f6a053e9028b37ea7e5362c5dabbe1b5dc73c5f8c26327d257b396
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:2.4` - linux; amd64

```console
$ docker pull logstash@sha256:3b62b7b997e1cd6285db0043966dbacf750c0488b2f1f242e87a2bd84bb30fd5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.8 MB (271819791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:660018004cbd0b3b3c747e079a5dca4ff8adfc10cfeb55e90a1c50388297018f`
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
# Tue, 30 Oct 2018 03:16:03 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 30 Oct 2018 03:16:03 GMT
ENV LOGSTASH_VERSION=2.4.1
# Tue, 30 Oct 2018 03:16:03 GMT
ENV LOGSTASH_DEB_VERSION=1:2.4.1-1
# Tue, 30 Oct 2018 03:16:24 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Tue, 30 Oct 2018 03:16:25 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 03:16:26 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 30 Oct 2018 03:16:27 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 30 Oct 2018 03:16:27 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Tue, 30 Oct 2018 03:16:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Oct 2018 03:16:28 GMT
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
	-	`sha256:f654b8f2ba99d1146e3017611c46e80e87a65fbf20f97fa88916486f7065fb85`  
		Last Modified: Tue, 30 Oct 2018 03:18:48 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b8e202132d2b071652b7404315be63188c2c0b38a990b988e4a61847a16ff6`  
		Last Modified: Tue, 30 Oct 2018 03:19:02 GMT  
		Size: 86.1 MB (86136629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:985c63325c0890283eb29a42de564086b3d240cd8a6dab6b33aaab7930903623`  
		Last Modified: Tue, 30 Oct 2018 03:18:48 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4.1`

```console
$ docker pull logstash@sha256:93608b3132f6a053e9028b37ea7e5362c5dabbe1b5dc73c5f8c26327d257b396
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:2.4.1` - linux; amd64

```console
$ docker pull logstash@sha256:3b62b7b997e1cd6285db0043966dbacf750c0488b2f1f242e87a2bd84bb30fd5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.8 MB (271819791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:660018004cbd0b3b3c747e079a5dca4ff8adfc10cfeb55e90a1c50388297018f`
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
# Tue, 30 Oct 2018 03:16:03 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 30 Oct 2018 03:16:03 GMT
ENV LOGSTASH_VERSION=2.4.1
# Tue, 30 Oct 2018 03:16:03 GMT
ENV LOGSTASH_DEB_VERSION=1:2.4.1-1
# Tue, 30 Oct 2018 03:16:24 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Tue, 30 Oct 2018 03:16:25 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 03:16:26 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 30 Oct 2018 03:16:27 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 30 Oct 2018 03:16:27 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Tue, 30 Oct 2018 03:16:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Oct 2018 03:16:28 GMT
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
	-	`sha256:f654b8f2ba99d1146e3017611c46e80e87a65fbf20f97fa88916486f7065fb85`  
		Last Modified: Tue, 30 Oct 2018 03:18:48 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b8e202132d2b071652b7404315be63188c2c0b38a990b988e4a61847a16ff6`  
		Last Modified: Tue, 30 Oct 2018 03:19:02 GMT  
		Size: 86.1 MB (86136629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:985c63325c0890283eb29a42de564086b3d240cd8a6dab6b33aaab7930903623`  
		Last Modified: Tue, 30 Oct 2018 03:18:48 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4.1-alpine`

```console
$ docker pull logstash@sha256:73527ab733d201752a49c72feb6a76ba3b7241dc3325bcf539b161e60f907d1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:2.4.1-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:cd753abf19c5241a9e8173201b065fbda18dc3f8fc776db268697028639277d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144156630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7171f5bd8db5bd9591b3022769fa205d3acc073b14409363518e26aac5ef32b`
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
# Thu, 25 Oct 2018 00:04:07 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Thu, 25 Oct 2018 00:04:07 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 25 Oct 2018 00:04:07 GMT
ENV LOGSTASH_VERSION=2.4.1
# Thu, 25 Oct 2018 00:04:07 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-2.4.1.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=5ee4f3fa0ad4b182b3f00b4181a20c4e31a907b4
# Thu, 25 Oct 2018 00:04:34 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Thu, 25 Oct 2018 00:04:42 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Thu, 25 Oct 2018 00:04:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Oct 2018 00:04:51 GMT
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
	-	`sha256:00480a8ec0110af878ef56b20da237b3ec836b3f2f2606b5fb5858ce0d4e6cbd`  
		Last Modified: Thu, 25 Oct 2018 00:06:30 GMT  
		Size: 85.5 MB (85472825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f4a7d651acf36c1bc92634bac9e0790ec19a6aa9bf15dfe77b6beca7342de2`  
		Last Modified: Thu, 25 Oct 2018 00:06:20 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4-alpine`

```console
$ docker pull logstash@sha256:73527ab733d201752a49c72feb6a76ba3b7241dc3325bcf539b161e60f907d1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:2.4-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:cd753abf19c5241a9e8173201b065fbda18dc3f8fc776db268697028639277d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144156630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7171f5bd8db5bd9591b3022769fa205d3acc073b14409363518e26aac5ef32b`
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
# Thu, 25 Oct 2018 00:04:07 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Thu, 25 Oct 2018 00:04:07 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 25 Oct 2018 00:04:07 GMT
ENV LOGSTASH_VERSION=2.4.1
# Thu, 25 Oct 2018 00:04:07 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-2.4.1.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=5ee4f3fa0ad4b182b3f00b4181a20c4e31a907b4
# Thu, 25 Oct 2018 00:04:34 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Thu, 25 Oct 2018 00:04:42 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Thu, 25 Oct 2018 00:04:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Oct 2018 00:04:51 GMT
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
	-	`sha256:00480a8ec0110af878ef56b20da237b3ec836b3f2f2606b5fb5858ce0d4e6cbd`  
		Last Modified: Thu, 25 Oct 2018 00:06:30 GMT  
		Size: 85.5 MB (85472825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f4a7d651acf36c1bc92634bac9e0790ec19a6aa9bf15dfe77b6beca7342de2`  
		Last Modified: Thu, 25 Oct 2018 00:06:20 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5`

```console
$ docker pull logstash@sha256:2b528b57ba1a0a34313933c96f643467b4e874b9553e310d4024d65369a049c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5` - linux; amd64

```console
$ docker pull logstash@sha256:ca002d3616a134a775da04469a1c7292299d0260cfec825ffb646df4a02d8f77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.4 MB (292448552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33c2b80b5322d98fabca8b5c9126e7a3d22c2fbe00e6cdd8069b1998bf095c8b`
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
# Tue, 30 Oct 2018 03:15:02 GMT
ENV LOGSTASH_VERSION=5.6.12
# Tue, 30 Oct 2018 03:15:03 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.12-1
# Tue, 30 Oct 2018 03:15:29 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Tue, 30 Oct 2018 03:15:30 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 03:15:31 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 30 Oct 2018 03:15:32 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 30 Oct 2018 03:15:32 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Tue, 30 Oct 2018 03:15:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Oct 2018 03:15:33 GMT
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
	-	`sha256:b284b8c3b8f0b2f725f9a0cf0bd70c80a71c3dbc0dd68b33579741f6e271a808`  
		Last Modified: Tue, 30 Oct 2018 03:17:25 GMT  
		Size: 106.8 MB (106762726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e6e144df629113b78a1067eaefc57b3904773f721d1e3a8f83ba3efb72e924`  
		Last Modified: Tue, 30 Oct 2018 03:17:04 GMT  
		Size: 2.7 KB (2662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1e245c0b9bdbf7e887987b00c1b1a4aed631cc65945bdbf1b20dbdaa96c0f4`  
		Last Modified: Tue, 30 Oct 2018 03:17:05 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6`

```console
$ docker pull logstash@sha256:2b528b57ba1a0a34313933c96f643467b4e874b9553e310d4024d65369a049c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6` - linux; amd64

```console
$ docker pull logstash@sha256:ca002d3616a134a775da04469a1c7292299d0260cfec825ffb646df4a02d8f77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.4 MB (292448552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33c2b80b5322d98fabca8b5c9126e7a3d22c2fbe00e6cdd8069b1998bf095c8b`
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
# Tue, 30 Oct 2018 03:15:02 GMT
ENV LOGSTASH_VERSION=5.6.12
# Tue, 30 Oct 2018 03:15:03 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.12-1
# Tue, 30 Oct 2018 03:15:29 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Tue, 30 Oct 2018 03:15:30 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 03:15:31 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 30 Oct 2018 03:15:32 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 30 Oct 2018 03:15:32 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Tue, 30 Oct 2018 03:15:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Oct 2018 03:15:33 GMT
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
	-	`sha256:b284b8c3b8f0b2f725f9a0cf0bd70c80a71c3dbc0dd68b33579741f6e271a808`  
		Last Modified: Tue, 30 Oct 2018 03:17:25 GMT  
		Size: 106.8 MB (106762726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e6e144df629113b78a1067eaefc57b3904773f721d1e3a8f83ba3efb72e924`  
		Last Modified: Tue, 30 Oct 2018 03:17:04 GMT  
		Size: 2.7 KB (2662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1e245c0b9bdbf7e887987b00c1b1a4aed631cc65945bdbf1b20dbdaa96c0f4`  
		Last Modified: Tue, 30 Oct 2018 03:17:05 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6.12`

```console
$ docker pull logstash@sha256:2b528b57ba1a0a34313933c96f643467b4e874b9553e310d4024d65369a049c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6.12` - linux; amd64

```console
$ docker pull logstash@sha256:ca002d3616a134a775da04469a1c7292299d0260cfec825ffb646df4a02d8f77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.4 MB (292448552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33c2b80b5322d98fabca8b5c9126e7a3d22c2fbe00e6cdd8069b1998bf095c8b`
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
# Tue, 30 Oct 2018 03:15:02 GMT
ENV LOGSTASH_VERSION=5.6.12
# Tue, 30 Oct 2018 03:15:03 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.12-1
# Tue, 30 Oct 2018 03:15:29 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Tue, 30 Oct 2018 03:15:30 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 03:15:31 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 30 Oct 2018 03:15:32 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 30 Oct 2018 03:15:32 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Tue, 30 Oct 2018 03:15:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Oct 2018 03:15:33 GMT
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
	-	`sha256:b284b8c3b8f0b2f725f9a0cf0bd70c80a71c3dbc0dd68b33579741f6e271a808`  
		Last Modified: Tue, 30 Oct 2018 03:17:25 GMT  
		Size: 106.8 MB (106762726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e6e144df629113b78a1067eaefc57b3904773f721d1e3a8f83ba3efb72e924`  
		Last Modified: Tue, 30 Oct 2018 03:17:04 GMT  
		Size: 2.7 KB (2662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1e245c0b9bdbf7e887987b00c1b1a4aed631cc65945bdbf1b20dbdaa96c0f4`  
		Last Modified: Tue, 30 Oct 2018 03:17:05 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6.12-alpine`

```console
$ docker pull logstash@sha256:b3cc78d6412c7b6ebba5380fce1158ae6f25062a37724156e4d54ccc4213e507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6.12-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:15089b45c7cdafbbbabff82b35fddb788f8443319306390bf2bb096ac48bee3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (164976447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30920dcf9fbb707441516ed00bccf912f5373932de785fbd1386ed1f20b02fd0`
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
# Thu, 25 Oct 2018 00:03:26 GMT
ENV LOGSTASH_VERSION=5.6.12
# Thu, 25 Oct 2018 00:03:26 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.12.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.12.tar.gz.asc LOGSTASH_TARBALL_SHA1=516acd24fd9e6a62032860732106b0c82cce25c4
# Thu, 25 Oct 2018 00:03:41 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Thu, 25 Oct 2018 00:03:44 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Thu, 25 Oct 2018 00:03:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Oct 2018 00:03:44 GMT
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
	-	`sha256:95c2c284c0f6d0c047d6548a24d9df75bc2d7355439502bd4949b128c18eee31`  
		Last Modified: Thu, 25 Oct 2018 00:05:34 GMT  
		Size: 106.3 MB (106292644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e25e00e6d32206ff819c0eb5d5414845813258485fa514cf571e862a68a0dc7`  
		Last Modified: Thu, 25 Oct 2018 00:05:18 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6-alpine`

```console
$ docker pull logstash@sha256:b3cc78d6412c7b6ebba5380fce1158ae6f25062a37724156e4d54ccc4213e507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:15089b45c7cdafbbbabff82b35fddb788f8443319306390bf2bb096ac48bee3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (164976447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30920dcf9fbb707441516ed00bccf912f5373932de785fbd1386ed1f20b02fd0`
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
# Thu, 25 Oct 2018 00:03:26 GMT
ENV LOGSTASH_VERSION=5.6.12
# Thu, 25 Oct 2018 00:03:26 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.12.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.12.tar.gz.asc LOGSTASH_TARBALL_SHA1=516acd24fd9e6a62032860732106b0c82cce25c4
# Thu, 25 Oct 2018 00:03:41 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Thu, 25 Oct 2018 00:03:44 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Thu, 25 Oct 2018 00:03:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Oct 2018 00:03:44 GMT
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
	-	`sha256:95c2c284c0f6d0c047d6548a24d9df75bc2d7355439502bd4949b128c18eee31`  
		Last Modified: Thu, 25 Oct 2018 00:05:34 GMT  
		Size: 106.3 MB (106292644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e25e00e6d32206ff819c0eb5d5414845813258485fa514cf571e862a68a0dc7`  
		Last Modified: Thu, 25 Oct 2018 00:05:18 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5-alpine`

```console
$ docker pull logstash@sha256:b3cc78d6412c7b6ebba5380fce1158ae6f25062a37724156e4d54ccc4213e507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:15089b45c7cdafbbbabff82b35fddb788f8443319306390bf2bb096ac48bee3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (164976447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30920dcf9fbb707441516ed00bccf912f5373932de785fbd1386ed1f20b02fd0`
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
# Thu, 25 Oct 2018 00:03:26 GMT
ENV LOGSTASH_VERSION=5.6.12
# Thu, 25 Oct 2018 00:03:26 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.12.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.12.tar.gz.asc LOGSTASH_TARBALL_SHA1=516acd24fd9e6a62032860732106b0c82cce25c4
# Thu, 25 Oct 2018 00:03:41 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Thu, 25 Oct 2018 00:03:44 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Thu, 25 Oct 2018 00:03:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Oct 2018 00:03:44 GMT
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
	-	`sha256:95c2c284c0f6d0c047d6548a24d9df75bc2d7355439502bd4949b128c18eee31`  
		Last Modified: Thu, 25 Oct 2018 00:05:34 GMT  
		Size: 106.3 MB (106292644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e25e00e6d32206ff819c0eb5d5414845813258485fa514cf571e862a68a0dc7`  
		Last Modified: Thu, 25 Oct 2018 00:05:18 GMT  
		Size: 304.0 B  
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

## `logstash:6.4.2`

```console
$ docker pull logstash@sha256:0b42d0401c587ca9f4aef8ba9181d67c24ea40331ef9a9c730c4e2eb2075031a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:6.4.2` - linux; amd64

```console
$ docker pull logstash@sha256:75e95100f9830235bc53160b9dd3464a597bd846a3ab716bd55afa348c723065
```

-	Docker Version: 18.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.4 MB (317395934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d17d128f3824cf878e36a5aa7f0da6046e7b2cfdbd2d736dc8a9245fc52a62e3`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 06 Aug 2018 19:21:47 GMT
ADD file:6340c690b08865d7eb84a36050a0ab0e8effc2b010a4ccb20b810153a97a9228 in / 
# Mon, 06 Aug 2018 19:21:47 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20180804
# Mon, 06 Aug 2018 19:21:48 GMT
CMD ["/bin/bash"]
# Wed, 26 Sep 2018 14:42:23 GMT
RUN yum update -y && yum install -y java-1.8.0-openjdk-devel which &&     yum clean all
# Wed, 26 Sep 2018 14:42:24 GMT
RUN groupadd --gid 1000 logstash &&     adduser --uid 1000 --gid 1000       --home-dir /usr/share/logstash --no-create-home       logstash
# Wed, 26 Sep 2018 14:42:45 GMT
RUN curl -Lo - http://localhost:8000/logstash/build//logstash-6.4.2.tar.gz |     tar zxf - -C /usr/share &&     mv /usr/share/logstash-6.4.2 /usr/share/logstash &&     chown --recursive logstash:logstash /usr/share/logstash/ &&     chown -R logstash:root /usr/share/logstash &&     chmod -R g=u /usr/share/logstash &&     find /usr/share/logstash -type d -exec chmod g+s {} \; &&     ln -s /usr/share/logstash /opt/logstash
# Wed, 26 Sep 2018 14:42:47 GMT
WORKDIR /usr/share/logstash
# Wed, 26 Sep 2018 14:42:47 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 26 Sep 2018 14:42:47 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Sep 2018 14:42:47 GMT
ADD file:1183410472ec370104718a08e1144081518db1d006a8cc82de824a34455ab3f3 in config/pipelines.yml 
# Wed, 26 Sep 2018 14:42:47 GMT
ADD file:2a0dac103ac5f20f8efa6c77384f10d83a87c3de7c017658f787cce7d6156b76 in config/logstash.yml 
# Wed, 26 Sep 2018 14:42:47 GMT
ADD file:2ef21d4766eab3ac48ed3847c8b8d05554f1fd0b39061cba66c9ac93240087fa in config/ 
# Wed, 26 Sep 2018 14:42:48 GMT
ADD file:0cd9cc51daf5f37b2aa8aae8cf3570a3680e22852afb2803ccb87ddcd3369f52 in pipeline/logstash.conf 
# Wed, 26 Sep 2018 14:42:48 GMT
RUN chown --recursive logstash:root config/ pipeline/
# Wed, 26 Sep 2018 14:42:48 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Wed, 26 Sep 2018 14:42:48 GMT
ADD file:829265fef950756b45f8f38e8bbb36748e8fcfcbd6f518b809ad23fb085f3fe3 in /usr/local/bin/ 
# Wed, 26 Sep 2018 14:42:49 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint
# Wed, 26 Sep 2018 14:42:49 GMT
USER logstash
# Wed, 26 Sep 2018 14:42:49 GMT
ADD file:eba5b08116cf0e48f61f1b4201b091c047c95c512c597cffa96bf237c3d16bb8 in /usr/local/bin/ 
# Wed, 26 Sep 2018 14:42:49 GMT
EXPOSE 5044 9600
# Wed, 26 Sep 2018 14:42:49 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=logstash org.label-schema.version=6.4.2 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash-docker license=Elastic License
# Wed, 26 Sep 2018 14:42:49 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760c0d5dbb1767b2cfdf9eeeb30bee57ace0252536a7af9d09ba62dd9ad6b7ed`  
		Last Modified: Tue, 02 Oct 2018 15:13:08 GMT  
		Size: 86.0 MB (86036163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4465b44d94ff97f5c633b63f58a62f991c1a65a9b68e31d64db9591ad2827b42`  
		Last Modified: Tue, 02 Oct 2018 15:12:55 GMT  
		Size: 1.6 KB (1609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce182a71b25ba03f0cc467e1d3bd4650c823063c5b1f6c0fa08e4315ab989e6`  
		Last Modified: Tue, 02 Oct 2018 15:13:09 GMT  
		Size: 155.7 MB (155657156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409e7d98601d84d26985d68a31071e7a8b008d4625f31bc89acfa9adc93e0337`  
		Last Modified: Tue, 02 Oct 2018 15:12:53 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76f102be7e408786ebd912804386343a2868cc03e64b8057e71dee769ccfefa`  
		Last Modified: Tue, 02 Oct 2018 15:12:53 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2e1f301fc0909ff76a3a7218374dcda3bcf10779eea8ff10b478b02647e2fe`  
		Last Modified: Tue, 02 Oct 2018 15:12:50 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4c39e3664cc1fef85d51790d995d865e25d19372da5e9ac4a183c00ce0ee01`  
		Last Modified: Tue, 02 Oct 2018 15:12:50 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf4d4cad3e2a51846beb1c68b2bed1738a1a2c8579789a021b47d103b5c79d2`  
		Last Modified: Tue, 02 Oct 2018 15:12:50 GMT  
		Size: 2.6 KB (2642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b561ade02af4e58d26941da55266cc6e5c053f51ca61490e42f57d3d770fff6a`  
		Last Modified: Tue, 02 Oct 2018 15:12:50 GMT  
		Size: 435.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b561ade02af4e58d26941da55266cc6e5c053f51ca61490e42f57d3d770fff6a`  
		Last Modified: Tue, 02 Oct 2018 15:12:50 GMT  
		Size: 435.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3534976f7e3bbb3c5b981f60529a6ab4c2c32b9e04c18cb2d36bcd7d59244d`  
		Last Modified: Tue, 02 Oct 2018 15:12:50 GMT  
		Size: 1.0 MB (1001444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

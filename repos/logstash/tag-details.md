<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:5`](#logstash5)
-	[`logstash:5.6`](#logstash56)
-	[`logstash:5.6.16`](#logstash5616)
-	[`logstash:5.6.16-alpine`](#logstash5616-alpine)
-	[`logstash:5.6-alpine`](#logstash56-alpine)
-	[`logstash:5-alpine`](#logstash5-alpine)
-	[`logstash:6.6.2`](#logstash662)

## `logstash:5`

```console
$ docker pull logstash@sha256:e517be1d2bbf3c029e3542e169f65d39d21a08745881537a55645e9a54c8755f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5` - linux; amd64

```console
$ docker pull logstash@sha256:d4c4afe83272521fbb6ba820b59420646c81fa0b6cad653efbd0e1e2e50bcfd9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.6 MB (298627673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:113427bd7a2af51c80b62edc58f09c48db9a7b410b1ed503d9ee0b234968e4ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:23:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 00:23:09 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Thu, 28 Mar 2019 00:23:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 28 Mar 2019 00:23:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 28 Mar 2019 00:23:16 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 28 Mar 2019 00:23:17 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Thu, 28 Mar 2019 00:23:17 GMT
ENV LOGSTASH_VERSION=5.6.16
# Thu, 28 Mar 2019 00:23:17 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.16-1
# Thu, 28 Mar 2019 00:23:44 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 00:23:45 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:23:45 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Thu, 28 Mar 2019 00:23:46 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Thu, 28 Mar 2019 00:23:47 GMT
COPY file:ff25c1f2500609bbcb68df8cd6b717da6b108b25b64cd5da434191796325c5c8 in / 
# Thu, 28 Mar 2019 00:23:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 28 Mar 2019 00:23:47 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e389b8b02070cafc84d8aed4fe459d2e6697d473044cf2c6d10858f73e8b7b5`  
		Last Modified: Thu, 28 Mar 2019 00:24:29 GMT  
		Size: 1.6 MB (1572643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151254a698bbc099591c5f23e10f76b319079575ce48fb84142e90783591bed9`  
		Last Modified: Thu, 28 Mar 2019 00:24:28 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2384f855f47c39cf855faac21ace85d15376b635a410e35310e40ae807332639`  
		Last Modified: Thu, 28 Mar 2019 00:24:29 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3d29504acf5bacc264c672e08ac6cdd21d247cd0e858e0418f7c56aa4ed8ff`  
		Last Modified: Thu, 28 Mar 2019 00:24:27 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f1a9a62a686251184a66604058799b1a18301c445cb908f2b4f93fa7b94863`  
		Last Modified: Thu, 28 Mar 2019 00:24:27 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29b86bf6c08025678ffe5af63528416cc22fbba15e1f71a2dde1b525c850f1a`  
		Last Modified: Thu, 28 Mar 2019 00:24:54 GMT  
		Size: 113.1 MB (113058340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908e9f6b26374fe433215e9eec60957775be43433f1ef3f1dc4e395106d26d0b`  
		Last Modified: Thu, 28 Mar 2019 00:24:28 GMT  
		Size: 2.7 KB (2660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e947206b51ff5f70a8cab3e1709abcf83825b9c517c9243aec067e19efaf8b`  
		Last Modified: Thu, 28 Mar 2019 00:24:28 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6`

```console
$ docker pull logstash@sha256:e517be1d2bbf3c029e3542e169f65d39d21a08745881537a55645e9a54c8755f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6` - linux; amd64

```console
$ docker pull logstash@sha256:d4c4afe83272521fbb6ba820b59420646c81fa0b6cad653efbd0e1e2e50bcfd9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.6 MB (298627673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:113427bd7a2af51c80b62edc58f09c48db9a7b410b1ed503d9ee0b234968e4ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:23:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 00:23:09 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Thu, 28 Mar 2019 00:23:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 28 Mar 2019 00:23:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 28 Mar 2019 00:23:16 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 28 Mar 2019 00:23:17 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Thu, 28 Mar 2019 00:23:17 GMT
ENV LOGSTASH_VERSION=5.6.16
# Thu, 28 Mar 2019 00:23:17 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.16-1
# Thu, 28 Mar 2019 00:23:44 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 00:23:45 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:23:45 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Thu, 28 Mar 2019 00:23:46 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Thu, 28 Mar 2019 00:23:47 GMT
COPY file:ff25c1f2500609bbcb68df8cd6b717da6b108b25b64cd5da434191796325c5c8 in / 
# Thu, 28 Mar 2019 00:23:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 28 Mar 2019 00:23:47 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e389b8b02070cafc84d8aed4fe459d2e6697d473044cf2c6d10858f73e8b7b5`  
		Last Modified: Thu, 28 Mar 2019 00:24:29 GMT  
		Size: 1.6 MB (1572643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151254a698bbc099591c5f23e10f76b319079575ce48fb84142e90783591bed9`  
		Last Modified: Thu, 28 Mar 2019 00:24:28 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2384f855f47c39cf855faac21ace85d15376b635a410e35310e40ae807332639`  
		Last Modified: Thu, 28 Mar 2019 00:24:29 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3d29504acf5bacc264c672e08ac6cdd21d247cd0e858e0418f7c56aa4ed8ff`  
		Last Modified: Thu, 28 Mar 2019 00:24:27 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f1a9a62a686251184a66604058799b1a18301c445cb908f2b4f93fa7b94863`  
		Last Modified: Thu, 28 Mar 2019 00:24:27 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29b86bf6c08025678ffe5af63528416cc22fbba15e1f71a2dde1b525c850f1a`  
		Last Modified: Thu, 28 Mar 2019 00:24:54 GMT  
		Size: 113.1 MB (113058340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908e9f6b26374fe433215e9eec60957775be43433f1ef3f1dc4e395106d26d0b`  
		Last Modified: Thu, 28 Mar 2019 00:24:28 GMT  
		Size: 2.7 KB (2660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e947206b51ff5f70a8cab3e1709abcf83825b9c517c9243aec067e19efaf8b`  
		Last Modified: Thu, 28 Mar 2019 00:24:28 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6.16`

```console
$ docker pull logstash@sha256:e517be1d2bbf3c029e3542e169f65d39d21a08745881537a55645e9a54c8755f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6.16` - linux; amd64

```console
$ docker pull logstash@sha256:d4c4afe83272521fbb6ba820b59420646c81fa0b6cad653efbd0e1e2e50bcfd9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.6 MB (298627673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:113427bd7a2af51c80b62edc58f09c48db9a7b410b1ed503d9ee0b234968e4ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:23:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 00:23:09 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Thu, 28 Mar 2019 00:23:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 28 Mar 2019 00:23:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 28 Mar 2019 00:23:16 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 28 Mar 2019 00:23:17 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Thu, 28 Mar 2019 00:23:17 GMT
ENV LOGSTASH_VERSION=5.6.16
# Thu, 28 Mar 2019 00:23:17 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.16-1
# Thu, 28 Mar 2019 00:23:44 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 00:23:45 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:23:45 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Thu, 28 Mar 2019 00:23:46 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Thu, 28 Mar 2019 00:23:47 GMT
COPY file:ff25c1f2500609bbcb68df8cd6b717da6b108b25b64cd5da434191796325c5c8 in / 
# Thu, 28 Mar 2019 00:23:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 28 Mar 2019 00:23:47 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e389b8b02070cafc84d8aed4fe459d2e6697d473044cf2c6d10858f73e8b7b5`  
		Last Modified: Thu, 28 Mar 2019 00:24:29 GMT  
		Size: 1.6 MB (1572643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151254a698bbc099591c5f23e10f76b319079575ce48fb84142e90783591bed9`  
		Last Modified: Thu, 28 Mar 2019 00:24:28 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2384f855f47c39cf855faac21ace85d15376b635a410e35310e40ae807332639`  
		Last Modified: Thu, 28 Mar 2019 00:24:29 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3d29504acf5bacc264c672e08ac6cdd21d247cd0e858e0418f7c56aa4ed8ff`  
		Last Modified: Thu, 28 Mar 2019 00:24:27 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f1a9a62a686251184a66604058799b1a18301c445cb908f2b4f93fa7b94863`  
		Last Modified: Thu, 28 Mar 2019 00:24:27 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29b86bf6c08025678ffe5af63528416cc22fbba15e1f71a2dde1b525c850f1a`  
		Last Modified: Thu, 28 Mar 2019 00:24:54 GMT  
		Size: 113.1 MB (113058340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908e9f6b26374fe433215e9eec60957775be43433f1ef3f1dc4e395106d26d0b`  
		Last Modified: Thu, 28 Mar 2019 00:24:28 GMT  
		Size: 2.7 KB (2660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e947206b51ff5f70a8cab3e1709abcf83825b9c517c9243aec067e19efaf8b`  
		Last Modified: Thu, 28 Mar 2019 00:24:28 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6.16-alpine`

```console
$ docker pull logstash@sha256:9ca08b59bc2fc256405d0acbb1a841733e434329baf99023b922447d1294b580
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6.16-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:ea708129b0f5084318e2f737f26d8d787ae8640ca4fee5695bf27910754fa04e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.1 MB (172106790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97ae24da1ebe83c5ab3159ae7a52237b0eff367063ca28fc8794eb39003f2676`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 02:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:29:04 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:29:05 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:29:09 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:29:10 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:23:55 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Thu, 28 Mar 2019 00:23:57 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Thu, 28 Mar 2019 00:23:58 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 28 Mar 2019 00:23:58 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 28 Mar 2019 00:23:58 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Thu, 28 Mar 2019 00:23:59 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 00:23:59 GMT
ENV LOGSTASH_VERSION=5.6.16
# Thu, 28 Mar 2019 00:23:59 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.16.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.16.tar.gz.asc LOGSTASH_TARBALL_SHA1=73a9a7f655a11223ff5a1a09558663d61ac92c69
# Thu, 28 Mar 2019 00:24:15 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Thu, 28 Mar 2019 00:24:16 GMT
COPY file:ce3bf8cc5446bdbb16718eb5decb902429c53b67cd42ac64921c065e79206386 in / 
# Thu, 28 Mar 2019 00:24:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 28 Mar 2019 00:24:17 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf419f3f41ff266b1903731d3ff085a6855171b7fd823a93d15cd052dc73a0ea`  
		Last Modified: Wed, 27 Mar 2019 23:47:37 GMT  
		Size: 52.7 MB (52739115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88430b15d43fccea92a728c80080963cf49cb06c31f196900ecbe56e0a85c007`  
		Last Modified: Wed, 27 Mar 2019 23:47:30 GMT  
		Size: 2.2 MB (2221565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d750f16f9088534cdd50244495aaac08cec814afe8a7205b7c282ada2793744`  
		Last Modified: Thu, 28 Mar 2019 00:25:01 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab8ce4ecfca5ad103621d28c3760a4d3ec25297b143143d6a85023e99e995b9`  
		Last Modified: Thu, 28 Mar 2019 00:25:02 GMT  
		Size: 2.0 MB (1973402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ea030c8edf1a9bf133f8077d10c7aa2434d244fa2a77f58a206e0ec8ac5e1d`  
		Last Modified: Thu, 28 Mar 2019 00:25:01 GMT  
		Size: 99.0 KB (99028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024253f68e1a6720b7e690a704132e85b8ef04cf0e0629305ae77dbf7c70a2bd`  
		Last Modified: Thu, 28 Mar 2019 00:25:21 GMT  
		Size: 112.3 MB (112317142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e72eeffdeb216135cd799dc550c865ca57316243709780f3a46792df43f47a`  
		Last Modified: Thu, 28 Mar 2019 00:25:01 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6-alpine`

```console
$ docker pull logstash@sha256:9ca08b59bc2fc256405d0acbb1a841733e434329baf99023b922447d1294b580
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:ea708129b0f5084318e2f737f26d8d787ae8640ca4fee5695bf27910754fa04e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.1 MB (172106790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97ae24da1ebe83c5ab3159ae7a52237b0eff367063ca28fc8794eb39003f2676`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 02:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:29:04 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:29:05 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:29:09 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:29:10 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:23:55 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Thu, 28 Mar 2019 00:23:57 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Thu, 28 Mar 2019 00:23:58 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 28 Mar 2019 00:23:58 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 28 Mar 2019 00:23:58 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Thu, 28 Mar 2019 00:23:59 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 00:23:59 GMT
ENV LOGSTASH_VERSION=5.6.16
# Thu, 28 Mar 2019 00:23:59 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.16.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.16.tar.gz.asc LOGSTASH_TARBALL_SHA1=73a9a7f655a11223ff5a1a09558663d61ac92c69
# Thu, 28 Mar 2019 00:24:15 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Thu, 28 Mar 2019 00:24:16 GMT
COPY file:ce3bf8cc5446bdbb16718eb5decb902429c53b67cd42ac64921c065e79206386 in / 
# Thu, 28 Mar 2019 00:24:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 28 Mar 2019 00:24:17 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf419f3f41ff266b1903731d3ff085a6855171b7fd823a93d15cd052dc73a0ea`  
		Last Modified: Wed, 27 Mar 2019 23:47:37 GMT  
		Size: 52.7 MB (52739115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88430b15d43fccea92a728c80080963cf49cb06c31f196900ecbe56e0a85c007`  
		Last Modified: Wed, 27 Mar 2019 23:47:30 GMT  
		Size: 2.2 MB (2221565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d750f16f9088534cdd50244495aaac08cec814afe8a7205b7c282ada2793744`  
		Last Modified: Thu, 28 Mar 2019 00:25:01 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab8ce4ecfca5ad103621d28c3760a4d3ec25297b143143d6a85023e99e995b9`  
		Last Modified: Thu, 28 Mar 2019 00:25:02 GMT  
		Size: 2.0 MB (1973402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ea030c8edf1a9bf133f8077d10c7aa2434d244fa2a77f58a206e0ec8ac5e1d`  
		Last Modified: Thu, 28 Mar 2019 00:25:01 GMT  
		Size: 99.0 KB (99028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024253f68e1a6720b7e690a704132e85b8ef04cf0e0629305ae77dbf7c70a2bd`  
		Last Modified: Thu, 28 Mar 2019 00:25:21 GMT  
		Size: 112.3 MB (112317142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e72eeffdeb216135cd799dc550c865ca57316243709780f3a46792df43f47a`  
		Last Modified: Thu, 28 Mar 2019 00:25:01 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5-alpine`

```console
$ docker pull logstash@sha256:9ca08b59bc2fc256405d0acbb1a841733e434329baf99023b922447d1294b580
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:ea708129b0f5084318e2f737f26d8d787ae8640ca4fee5695bf27910754fa04e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.1 MB (172106790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97ae24da1ebe83c5ab3159ae7a52237b0eff367063ca28fc8794eb39003f2676`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 02:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:29:04 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:29:05 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:29:09 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:29:10 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:23:55 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Thu, 28 Mar 2019 00:23:57 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Thu, 28 Mar 2019 00:23:58 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 28 Mar 2019 00:23:58 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 28 Mar 2019 00:23:58 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Thu, 28 Mar 2019 00:23:59 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 00:23:59 GMT
ENV LOGSTASH_VERSION=5.6.16
# Thu, 28 Mar 2019 00:23:59 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.16.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.16.tar.gz.asc LOGSTASH_TARBALL_SHA1=73a9a7f655a11223ff5a1a09558663d61ac92c69
# Thu, 28 Mar 2019 00:24:15 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Thu, 28 Mar 2019 00:24:16 GMT
COPY file:ce3bf8cc5446bdbb16718eb5decb902429c53b67cd42ac64921c065e79206386 in / 
# Thu, 28 Mar 2019 00:24:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 28 Mar 2019 00:24:17 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf419f3f41ff266b1903731d3ff085a6855171b7fd823a93d15cd052dc73a0ea`  
		Last Modified: Wed, 27 Mar 2019 23:47:37 GMT  
		Size: 52.7 MB (52739115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88430b15d43fccea92a728c80080963cf49cb06c31f196900ecbe56e0a85c007`  
		Last Modified: Wed, 27 Mar 2019 23:47:30 GMT  
		Size: 2.2 MB (2221565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d750f16f9088534cdd50244495aaac08cec814afe8a7205b7c282ada2793744`  
		Last Modified: Thu, 28 Mar 2019 00:25:01 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab8ce4ecfca5ad103621d28c3760a4d3ec25297b143143d6a85023e99e995b9`  
		Last Modified: Thu, 28 Mar 2019 00:25:02 GMT  
		Size: 2.0 MB (1973402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ea030c8edf1a9bf133f8077d10c7aa2434d244fa2a77f58a206e0ec8ac5e1d`  
		Last Modified: Thu, 28 Mar 2019 00:25:01 GMT  
		Size: 99.0 KB (99028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024253f68e1a6720b7e690a704132e85b8ef04cf0e0629305ae77dbf7c70a2bd`  
		Last Modified: Thu, 28 Mar 2019 00:25:21 GMT  
		Size: 112.3 MB (112317142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e72eeffdeb216135cd799dc550c865ca57316243709780f3a46792df43f47a`  
		Last Modified: Thu, 28 Mar 2019 00:25:01 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:6.6.2`

```console
$ docker pull logstash@sha256:7baab732edcf6f62ae801a6b675bc1d103f06e633065dd325032ada67ea02112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:6.6.2` - linux; amd64

```console
$ docker pull logstash@sha256:4ab088b1c9b3e98c9e7f1c814de628046047d0b43d03b87adce4f4e91fa6d308
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.9 MB (358857391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb65426c0b24de89690b1026fe3d36a0994c711bb0fa7a76bb69c5ab2e1dfe8`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Wed, 06 Mar 2019 16:12:05 GMT
RUN yum update -y && yum install -y java-1.8.0-openjdk-devel which &&     yum clean all
# Wed, 06 Mar 2019 16:12:06 GMT
RUN groupadd --gid 1000 logstash &&     adduser --uid 1000 --gid 1000       --home-dir /usr/share/logstash --no-create-home       logstash
# Wed, 06 Mar 2019 16:12:25 GMT
RUN curl -Lo - http://localhost:8000/logstash/build//logstash-6.6.2.tar.gz |     tar zxf - -C /usr/share &&     mv /usr/share/logstash-6.6.2 /usr/share/logstash &&     chown --recursive logstash:logstash /usr/share/logstash/ &&     chown -R logstash:root /usr/share/logstash &&     chmod -R g=u /usr/share/logstash &&     find /usr/share/logstash -type d -exec chmod g+s {} \; &&     ln -s /usr/share/logstash /opt/logstash
# Wed, 06 Mar 2019 16:12:25 GMT
WORKDIR /usr/share/logstash
# Wed, 06 Mar 2019 16:12:26 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 06 Mar 2019 16:12:26 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Mar 2019 16:12:26 GMT
ADD file:1183410472ec370104718a08e1144081518db1d006a8cc82de824a34455ab3f3 in config/pipelines.yml 
# Wed, 06 Mar 2019 16:12:26 GMT
ADD file:2a0dac103ac5f20f8efa6c77384f10d83a87c3de7c017658f787cce7d6156b76 in config/logstash.yml 
# Wed, 06 Mar 2019 16:12:26 GMT
ADD file:2ef21d4766eab3ac48ed3847c8b8d05554f1fd0b39061cba66c9ac93240087fa in config/ 
# Wed, 06 Mar 2019 16:12:26 GMT
ADD file:0cd9cc51daf5f37b2aa8aae8cf3570a3680e22852afb2803ccb87ddcd3369f52 in pipeline/logstash.conf 
# Wed, 06 Mar 2019 16:12:26 GMT
RUN chown --recursive logstash:root config/ pipeline/
# Wed, 06 Mar 2019 16:12:27 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Wed, 06 Mar 2019 16:12:27 GMT
ADD file:29dd60f159d64086c20a7a02f84a9314f44b2290304547233fb96744325b1245 in /usr/local/bin/ 
# Wed, 06 Mar 2019 16:12:27 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint
# Wed, 06 Mar 2019 16:12:27 GMT
USER 1000
# Wed, 06 Mar 2019 16:12:27 GMT
ADD file:e22d146a880f0f369decacfd49c523706ac533251c16f48f477e83d655dd66bc in /usr/local/bin/ 
# Wed, 06 Mar 2019 16:12:28 GMT
EXPOSE 5044 9600
# Wed, 06 Mar 2019 16:12:28 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=logstash org.label-schema.version=6.6.2 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash-docker license=Elastic License
# Wed, 06 Mar 2019 16:12:28 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705f029fb67171923428359b44ccb067c3284bdb2609539d4de22310a7b42b24`  
		Last Modified: Tue, 12 Mar 2019 16:39:41 GMT  
		Size: 111.5 MB (111530586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262cb0ffe0e584a95ddfec092778574b578e93c4e7b40848738ce84fbe71b2a2`  
		Last Modified: Tue, 12 Mar 2019 16:39:24 GMT  
		Size: 1.6 KB (1609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e5c346ea98d0337a23ef8174590a753af079797b99cd0fb2ee8b02e5d97914`  
		Last Modified: Tue, 12 Mar 2019 16:39:41 GMT  
		Size: 171.2 MB (171152611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12fe2cd7e3339dd515e63abeee36b48dc12f50cde5d8202a2bfeeb819f7a609a`  
		Last Modified: Tue, 12 Mar 2019 16:39:24 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ddbc68b139e85a693704e73c49c8a378fafb838d803f3a0510846f6e66581c4`  
		Last Modified: Tue, 12 Mar 2019 16:39:24 GMT  
		Size: 270.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860d99017411195c6decb0bba42d3395974525ba9e1a8efda554f3207e429a11`  
		Last Modified: Tue, 12 Mar 2019 16:39:21 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f76a5012a9a27a6a126a226ccb8010eebb4cd179f381e629cf7f5f954be4eee`  
		Last Modified: Tue, 12 Mar 2019 16:39:21 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0691c007ea6194b4b0437eeb849836370a984ec7d38e85c88d1c4740b1bea258`  
		Last Modified: Tue, 12 Mar 2019 16:39:21 GMT  
		Size: 2.6 KB (2641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b41cdca2e6c12e34abd393c3016991e03bb86801044e242bff49bf31d7b11d5`  
		Last Modified: Tue, 12 Mar 2019 16:39:21 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b41cdca2e6c12e34abd393c3016991e03bb86801044e242bff49bf31d7b11d5`  
		Last Modified: Tue, 12 Mar 2019 16:39:21 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ea01d5d41dfc435a39f3c95c17d1cb4e30e8a58d0970f09efed62bb16331fc`  
		Last Modified: Tue, 12 Mar 2019 16:39:21 GMT  
		Size: 1.0 MB (1002052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:2`](#logstash2)
-	[`logstash:2.4`](#logstash24)
-	[`logstash:2.4.1`](#logstash241)
-	[`logstash:2.4.1-alpine`](#logstash241-alpine)
-	[`logstash:2.4-alpine`](#logstash24-alpine)
-	[`logstash:2-alpine`](#logstash2-alpine)
-	[`logstash:5`](#logstash5)
-	[`logstash:5.6`](#logstash56)
-	[`logstash:5.6.8`](#logstash568)
-	[`logstash:5.6.8-alpine`](#logstash568-alpine)
-	[`logstash:5.6-alpine`](#logstash56-alpine)
-	[`logstash:5-alpine`](#logstash5-alpine)
-	[`logstash:alpine`](#logstashalpine)
-	[`logstash:latest`](#logstashlatest)

## `logstash:2`

```console
$ docker pull logstash@sha256:8f43f571cd688063a089e43d8c060f0d511fd71366e74fd7b84dbd77dcc74dc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:2` - linux; amd64

```console
$ docker pull logstash@sha256:3cb8dce8efce225a56e487b85b07c485423d3e76409b257fe502bb438e06caa6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315338038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2addbae228c78aeef363fd5cd23339507ba2526fc07e30c3cdb6130177cd9d0c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 11:08:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:08:13 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:08:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:08:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:08:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:09:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:17:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 18:53:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 18:53:48 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Thu, 15 Feb 2018 18:53:49 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 18:54:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 18:55:05 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 18:55:46 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Thu, 15 Feb 2018 18:55:46 GMT
ENV LOGSTASH_VERSION=2.4.1
# Thu, 15 Feb 2018 18:55:46 GMT
ENV LOGSTASH_DEB_VERSION=1:2.4.1-1
# Thu, 15 Feb 2018 18:55:57 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 18:56:05 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 18:56:05 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Thu, 15 Feb 2018 18:56:06 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Thu, 15 Feb 2018 18:56:06 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Thu, 15 Feb 2018 18:56:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 18:56:07 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd532571c5d31f61347a950a0d58ec1282046fc8bdda6791f8c34a56a1c792c6`  
		Last Modified: Thu, 15 Feb 2018 13:39:14 GMT  
		Size: 852.3 KB (852290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31600c9f9b48dc3cd9fa7c14415fb9251cd3582028fadbb3d5f1bcb57512ecd0`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e8e9b5d10eec5baacf8bfb0d61d868b1ba263863b08d5346fbb73fcff6bb85`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0710e619e88357033e362f6a8c18d93a0dbf14d31629082877ae8c7f51072113`  
		Last Modified: Thu, 15 Feb 2018 13:39:52 GMT  
		Size: 165.4 MB (165392618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e511da65ffabe622bcb6fa89b699e80f94ec7185a95076cd3b4cabc101bd2d11`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 272.1 KB (272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a55baa30b2eb0cb761527f1fdc628163082c6e88a5ad46a06dfd7057954ae8b5`  
		Last Modified: Thu, 15 Feb 2018 18:56:32 GMT  
		Size: 1.6 MB (1588622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50d9347534ef632ab6e33b2400bddbf5e60580754b583dc6a28bf88d72e4e17`  
		Last Modified: Thu, 15 Feb 2018 18:56:32 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5789ed80f5fc29b1704eed296cb1ff95b62a72cf1e8b18359f6cb21c359a5c67`  
		Last Modified: Thu, 15 Feb 2018 18:56:33 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41f8708aa28b46edd23d3d9abb4885ab8afeb3a18d9c202e71af77b851228f5`  
		Last Modified: Thu, 15 Feb 2018 18:56:29 GMT  
		Size: 1.4 KB (1443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5268f0787eaf5fcbd9c5b673c255150f97ae50dd8f1034e78a4eb491fc7ad060`  
		Last Modified: Thu, 15 Feb 2018 18:57:51 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d6ee8388b231db67cc5541d304bf1432e4bab0bc658488eb03a79fd0c88380`  
		Last Modified: Thu, 15 Feb 2018 18:57:59 GMT  
		Size: 86.2 MB (86153055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:084659118c11b371a104e40d90664e2a21ed87624f1ae0a1b87a3fddc726d08f`  
		Last Modified: Thu, 15 Feb 2018 18:57:50 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4`

```console
$ docker pull logstash@sha256:8f43f571cd688063a089e43d8c060f0d511fd71366e74fd7b84dbd77dcc74dc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:2.4` - linux; amd64

```console
$ docker pull logstash@sha256:3cb8dce8efce225a56e487b85b07c485423d3e76409b257fe502bb438e06caa6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315338038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2addbae228c78aeef363fd5cd23339507ba2526fc07e30c3cdb6130177cd9d0c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 11:08:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:08:13 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:08:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:08:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:08:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:09:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:17:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 18:53:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 18:53:48 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Thu, 15 Feb 2018 18:53:49 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 18:54:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 18:55:05 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 18:55:46 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Thu, 15 Feb 2018 18:55:46 GMT
ENV LOGSTASH_VERSION=2.4.1
# Thu, 15 Feb 2018 18:55:46 GMT
ENV LOGSTASH_DEB_VERSION=1:2.4.1-1
# Thu, 15 Feb 2018 18:55:57 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 18:56:05 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 18:56:05 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Thu, 15 Feb 2018 18:56:06 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Thu, 15 Feb 2018 18:56:06 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Thu, 15 Feb 2018 18:56:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 18:56:07 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd532571c5d31f61347a950a0d58ec1282046fc8bdda6791f8c34a56a1c792c6`  
		Last Modified: Thu, 15 Feb 2018 13:39:14 GMT  
		Size: 852.3 KB (852290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31600c9f9b48dc3cd9fa7c14415fb9251cd3582028fadbb3d5f1bcb57512ecd0`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e8e9b5d10eec5baacf8bfb0d61d868b1ba263863b08d5346fbb73fcff6bb85`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0710e619e88357033e362f6a8c18d93a0dbf14d31629082877ae8c7f51072113`  
		Last Modified: Thu, 15 Feb 2018 13:39:52 GMT  
		Size: 165.4 MB (165392618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e511da65ffabe622bcb6fa89b699e80f94ec7185a95076cd3b4cabc101bd2d11`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 272.1 KB (272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a55baa30b2eb0cb761527f1fdc628163082c6e88a5ad46a06dfd7057954ae8b5`  
		Last Modified: Thu, 15 Feb 2018 18:56:32 GMT  
		Size: 1.6 MB (1588622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50d9347534ef632ab6e33b2400bddbf5e60580754b583dc6a28bf88d72e4e17`  
		Last Modified: Thu, 15 Feb 2018 18:56:32 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5789ed80f5fc29b1704eed296cb1ff95b62a72cf1e8b18359f6cb21c359a5c67`  
		Last Modified: Thu, 15 Feb 2018 18:56:33 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41f8708aa28b46edd23d3d9abb4885ab8afeb3a18d9c202e71af77b851228f5`  
		Last Modified: Thu, 15 Feb 2018 18:56:29 GMT  
		Size: 1.4 KB (1443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5268f0787eaf5fcbd9c5b673c255150f97ae50dd8f1034e78a4eb491fc7ad060`  
		Last Modified: Thu, 15 Feb 2018 18:57:51 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d6ee8388b231db67cc5541d304bf1432e4bab0bc658488eb03a79fd0c88380`  
		Last Modified: Thu, 15 Feb 2018 18:57:59 GMT  
		Size: 86.2 MB (86153055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:084659118c11b371a104e40d90664e2a21ed87624f1ae0a1b87a3fddc726d08f`  
		Last Modified: Thu, 15 Feb 2018 18:57:50 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4.1`

```console
$ docker pull logstash@sha256:8f43f571cd688063a089e43d8c060f0d511fd71366e74fd7b84dbd77dcc74dc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:2.4.1` - linux; amd64

```console
$ docker pull logstash@sha256:3cb8dce8efce225a56e487b85b07c485423d3e76409b257fe502bb438e06caa6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315338038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2addbae228c78aeef363fd5cd23339507ba2526fc07e30c3cdb6130177cd9d0c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 11:08:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:08:13 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:08:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:08:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:08:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:09:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:17:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 18:53:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 18:53:48 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Thu, 15 Feb 2018 18:53:49 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 18:54:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 18:55:05 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 18:55:46 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Thu, 15 Feb 2018 18:55:46 GMT
ENV LOGSTASH_VERSION=2.4.1
# Thu, 15 Feb 2018 18:55:46 GMT
ENV LOGSTASH_DEB_VERSION=1:2.4.1-1
# Thu, 15 Feb 2018 18:55:57 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 18:56:05 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 18:56:05 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Thu, 15 Feb 2018 18:56:06 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Thu, 15 Feb 2018 18:56:06 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Thu, 15 Feb 2018 18:56:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 18:56:07 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd532571c5d31f61347a950a0d58ec1282046fc8bdda6791f8c34a56a1c792c6`  
		Last Modified: Thu, 15 Feb 2018 13:39:14 GMT  
		Size: 852.3 KB (852290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31600c9f9b48dc3cd9fa7c14415fb9251cd3582028fadbb3d5f1bcb57512ecd0`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e8e9b5d10eec5baacf8bfb0d61d868b1ba263863b08d5346fbb73fcff6bb85`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0710e619e88357033e362f6a8c18d93a0dbf14d31629082877ae8c7f51072113`  
		Last Modified: Thu, 15 Feb 2018 13:39:52 GMT  
		Size: 165.4 MB (165392618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e511da65ffabe622bcb6fa89b699e80f94ec7185a95076cd3b4cabc101bd2d11`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 272.1 KB (272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a55baa30b2eb0cb761527f1fdc628163082c6e88a5ad46a06dfd7057954ae8b5`  
		Last Modified: Thu, 15 Feb 2018 18:56:32 GMT  
		Size: 1.6 MB (1588622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50d9347534ef632ab6e33b2400bddbf5e60580754b583dc6a28bf88d72e4e17`  
		Last Modified: Thu, 15 Feb 2018 18:56:32 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5789ed80f5fc29b1704eed296cb1ff95b62a72cf1e8b18359f6cb21c359a5c67`  
		Last Modified: Thu, 15 Feb 2018 18:56:33 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41f8708aa28b46edd23d3d9abb4885ab8afeb3a18d9c202e71af77b851228f5`  
		Last Modified: Thu, 15 Feb 2018 18:56:29 GMT  
		Size: 1.4 KB (1443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5268f0787eaf5fcbd9c5b673c255150f97ae50dd8f1034e78a4eb491fc7ad060`  
		Last Modified: Thu, 15 Feb 2018 18:57:51 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d6ee8388b231db67cc5541d304bf1432e4bab0bc658488eb03a79fd0c88380`  
		Last Modified: Thu, 15 Feb 2018 18:57:59 GMT  
		Size: 86.2 MB (86153055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:084659118c11b371a104e40d90664e2a21ed87624f1ae0a1b87a3fddc726d08f`  
		Last Modified: Thu, 15 Feb 2018 18:57:50 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4.1-alpine`

```console
$ docker pull logstash@sha256:c71e40b3d7be02fbb3ee86591cfd8bd23d67787f014cab5d19ad2addd3bd252d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:2.4.1-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:d8eb075da6a7fd091e6a8af4d050f17cb526738297a640d264b05275bc52c7c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143715299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d98289f6a1afd30bca0434e1c4e18361817004a407ca3b493b81c2e8ad181b1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:38:47 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Wed, 10 Jan 2018 08:38:51 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Wed, 10 Jan 2018 08:39:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 08:39:10 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Jan 2018 08:40:36 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Wed, 10 Jan 2018 08:40:36 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 08:40:37 GMT
ENV LOGSTASH_VERSION=2.4.1
# Wed, 10 Jan 2018 08:40:37 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-2.4.1.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=5ee4f3fa0ad4b182b3f00b4181a20c4e31a907b4
# Wed, 10 Jan 2018 08:41:00 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Wed, 10 Jan 2018 08:41:09 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Wed, 10 Jan 2018 08:41:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 Jan 2018 08:41:10 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49706da75fbf7b077623a43f5190bff25a1531fd1534e7b2489b2762756b2d72`  
		Last Modified: Wed, 10 Jan 2018 08:41:38 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da34971dc8ba97c4a1a40bec14aa048da3fd3abd8777668e943c807904c13a29`  
		Last Modified: Wed, 10 Jan 2018 08:41:38 GMT  
		Size: 1.6 MB (1624580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf49b30634859251e6c49c876c1e3cc21e8ae7fd904726c76650a3962d21136`  
		Last Modified: Wed, 10 Jan 2018 08:41:38 GMT  
		Size: 96.9 KB (96946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145a99374bb1cde202a9083c5cb7590dd5f36a4a3ec8993d0a43785b3eea6a07`  
		Last Modified: Wed, 10 Jan 2018 08:43:05 GMT  
		Size: 85.5 MB (85472489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53883afe5051918cc09e9df1b076cc5d85ab0221f31289b5fd4328e115a5cc77`  
		Last Modified: Wed, 10 Jan 2018 08:42:56 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4-alpine`

```console
$ docker pull logstash@sha256:c71e40b3d7be02fbb3ee86591cfd8bd23d67787f014cab5d19ad2addd3bd252d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:2.4-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:d8eb075da6a7fd091e6a8af4d050f17cb526738297a640d264b05275bc52c7c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143715299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d98289f6a1afd30bca0434e1c4e18361817004a407ca3b493b81c2e8ad181b1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:38:47 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Wed, 10 Jan 2018 08:38:51 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Wed, 10 Jan 2018 08:39:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 08:39:10 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Jan 2018 08:40:36 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Wed, 10 Jan 2018 08:40:36 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 08:40:37 GMT
ENV LOGSTASH_VERSION=2.4.1
# Wed, 10 Jan 2018 08:40:37 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-2.4.1.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=5ee4f3fa0ad4b182b3f00b4181a20c4e31a907b4
# Wed, 10 Jan 2018 08:41:00 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Wed, 10 Jan 2018 08:41:09 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Wed, 10 Jan 2018 08:41:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 Jan 2018 08:41:10 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49706da75fbf7b077623a43f5190bff25a1531fd1534e7b2489b2762756b2d72`  
		Last Modified: Wed, 10 Jan 2018 08:41:38 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da34971dc8ba97c4a1a40bec14aa048da3fd3abd8777668e943c807904c13a29`  
		Last Modified: Wed, 10 Jan 2018 08:41:38 GMT  
		Size: 1.6 MB (1624580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf49b30634859251e6c49c876c1e3cc21e8ae7fd904726c76650a3962d21136`  
		Last Modified: Wed, 10 Jan 2018 08:41:38 GMT  
		Size: 96.9 KB (96946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145a99374bb1cde202a9083c5cb7590dd5f36a4a3ec8993d0a43785b3eea6a07`  
		Last Modified: Wed, 10 Jan 2018 08:43:05 GMT  
		Size: 85.5 MB (85472489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53883afe5051918cc09e9df1b076cc5d85ab0221f31289b5fd4328e115a5cc77`  
		Last Modified: Wed, 10 Jan 2018 08:42:56 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2-alpine`

```console
$ docker pull logstash@sha256:c71e40b3d7be02fbb3ee86591cfd8bd23d67787f014cab5d19ad2addd3bd252d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:2-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:d8eb075da6a7fd091e6a8af4d050f17cb526738297a640d264b05275bc52c7c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143715299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d98289f6a1afd30bca0434e1c4e18361817004a407ca3b493b81c2e8ad181b1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:38:47 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Wed, 10 Jan 2018 08:38:51 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Wed, 10 Jan 2018 08:39:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 08:39:10 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Jan 2018 08:40:36 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Wed, 10 Jan 2018 08:40:36 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 08:40:37 GMT
ENV LOGSTASH_VERSION=2.4.1
# Wed, 10 Jan 2018 08:40:37 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-2.4.1.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=5ee4f3fa0ad4b182b3f00b4181a20c4e31a907b4
# Wed, 10 Jan 2018 08:41:00 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Wed, 10 Jan 2018 08:41:09 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Wed, 10 Jan 2018 08:41:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 Jan 2018 08:41:10 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49706da75fbf7b077623a43f5190bff25a1531fd1534e7b2489b2762756b2d72`  
		Last Modified: Wed, 10 Jan 2018 08:41:38 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da34971dc8ba97c4a1a40bec14aa048da3fd3abd8777668e943c807904c13a29`  
		Last Modified: Wed, 10 Jan 2018 08:41:38 GMT  
		Size: 1.6 MB (1624580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf49b30634859251e6c49c876c1e3cc21e8ae7fd904726c76650a3962d21136`  
		Last Modified: Wed, 10 Jan 2018 08:41:38 GMT  
		Size: 96.9 KB (96946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145a99374bb1cde202a9083c5cb7590dd5f36a4a3ec8993d0a43785b3eea6a07`  
		Last Modified: Wed, 10 Jan 2018 08:43:05 GMT  
		Size: 85.5 MB (85472489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53883afe5051918cc09e9df1b076cc5d85ab0221f31289b5fd4328e115a5cc77`  
		Last Modified: Wed, 10 Jan 2018 08:42:56 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5`

```console
$ docker pull logstash@sha256:93b6af212084f7466d3c218e83f90b511cf58214771f515d511afc8e09013917
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5` - linux; amd64

```console
$ docker pull logstash@sha256:56466f97a8250dddeabe8697e889df4caeb2bb843ac871aef927ddf153c7fd2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.4 MB (334384621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86eedaca0c6daecd56c8749cd552582d0b38ddc54f1786b7c4ab7c445610e96d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 11:08:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:08:13 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:08:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:08:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:08:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:09:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:17:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 18:53:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 18:53:48 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Thu, 15 Feb 2018 18:53:49 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 18:54:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 18:55:05 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 18:55:06 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Thu, 22 Feb 2018 20:19:30 GMT
ENV LOGSTASH_VERSION=5.6.8
# Thu, 22 Feb 2018 20:19:30 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.8-1
# Thu, 22 Feb 2018 20:20:00 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 20:20:01 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 20:20:01 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Thu, 22 Feb 2018 20:20:02 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Thu, 22 Feb 2018 20:20:02 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Thu, 22 Feb 2018 20:20:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Feb 2018 20:20:03 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd532571c5d31f61347a950a0d58ec1282046fc8bdda6791f8c34a56a1c792c6`  
		Last Modified: Thu, 15 Feb 2018 13:39:14 GMT  
		Size: 852.3 KB (852290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31600c9f9b48dc3cd9fa7c14415fb9251cd3582028fadbb3d5f1bcb57512ecd0`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e8e9b5d10eec5baacf8bfb0d61d868b1ba263863b08d5346fbb73fcff6bb85`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0710e619e88357033e362f6a8c18d93a0dbf14d31629082877ae8c7f51072113`  
		Last Modified: Thu, 15 Feb 2018 13:39:52 GMT  
		Size: 165.4 MB (165392618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e511da65ffabe622bcb6fa89b699e80f94ec7185a95076cd3b4cabc101bd2d11`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 272.1 KB (272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a55baa30b2eb0cb761527f1fdc628163082c6e88a5ad46a06dfd7057954ae8b5`  
		Last Modified: Thu, 15 Feb 2018 18:56:32 GMT  
		Size: 1.6 MB (1588622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50d9347534ef632ab6e33b2400bddbf5e60580754b583dc6a28bf88d72e4e17`  
		Last Modified: Thu, 15 Feb 2018 18:56:32 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5789ed80f5fc29b1704eed296cb1ff95b62a72cf1e8b18359f6cb21c359a5c67`  
		Last Modified: Thu, 15 Feb 2018 18:56:33 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41f8708aa28b46edd23d3d9abb4885ab8afeb3a18d9c202e71af77b851228f5`  
		Last Modified: Thu, 15 Feb 2018 18:56:29 GMT  
		Size: 1.4 KB (1443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53104546f3ef748f90fc1f84f8e851dba636c1be9b87b159ac5dbac4651e5ae2`  
		Last Modified: Thu, 15 Feb 2018 18:56:30 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fef50ac8d82283192d16d09f31e899bfd7dde00e88ba1e3b028e35a2fb45f7`  
		Last Modified: Thu, 22 Feb 2018 20:38:18 GMT  
		Size: 105.2 MB (105196973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbe3af043e3254a21cd5aa90add19ef092166550d18544cf15f62fa6fbcf8a8`  
		Last Modified: Thu, 22 Feb 2018 20:37:56 GMT  
		Size: 2.7 KB (2661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d167dba1230efbafb3354fa2926d3969827fd7a4a46a0885bc3f0ecd9b77895`  
		Last Modified: Thu, 22 Feb 2018 20:37:55 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6`

```console
$ docker pull logstash@sha256:93b6af212084f7466d3c218e83f90b511cf58214771f515d511afc8e09013917
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6` - linux; amd64

```console
$ docker pull logstash@sha256:56466f97a8250dddeabe8697e889df4caeb2bb843ac871aef927ddf153c7fd2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.4 MB (334384621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86eedaca0c6daecd56c8749cd552582d0b38ddc54f1786b7c4ab7c445610e96d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 11:08:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:08:13 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:08:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:08:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:08:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:09:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:17:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 18:53:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 18:53:48 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Thu, 15 Feb 2018 18:53:49 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 18:54:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 18:55:05 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 18:55:06 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Thu, 22 Feb 2018 20:19:30 GMT
ENV LOGSTASH_VERSION=5.6.8
# Thu, 22 Feb 2018 20:19:30 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.8-1
# Thu, 22 Feb 2018 20:20:00 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 20:20:01 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 20:20:01 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Thu, 22 Feb 2018 20:20:02 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Thu, 22 Feb 2018 20:20:02 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Thu, 22 Feb 2018 20:20:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Feb 2018 20:20:03 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd532571c5d31f61347a950a0d58ec1282046fc8bdda6791f8c34a56a1c792c6`  
		Last Modified: Thu, 15 Feb 2018 13:39:14 GMT  
		Size: 852.3 KB (852290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31600c9f9b48dc3cd9fa7c14415fb9251cd3582028fadbb3d5f1bcb57512ecd0`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e8e9b5d10eec5baacf8bfb0d61d868b1ba263863b08d5346fbb73fcff6bb85`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0710e619e88357033e362f6a8c18d93a0dbf14d31629082877ae8c7f51072113`  
		Last Modified: Thu, 15 Feb 2018 13:39:52 GMT  
		Size: 165.4 MB (165392618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e511da65ffabe622bcb6fa89b699e80f94ec7185a95076cd3b4cabc101bd2d11`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 272.1 KB (272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a55baa30b2eb0cb761527f1fdc628163082c6e88a5ad46a06dfd7057954ae8b5`  
		Last Modified: Thu, 15 Feb 2018 18:56:32 GMT  
		Size: 1.6 MB (1588622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50d9347534ef632ab6e33b2400bddbf5e60580754b583dc6a28bf88d72e4e17`  
		Last Modified: Thu, 15 Feb 2018 18:56:32 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5789ed80f5fc29b1704eed296cb1ff95b62a72cf1e8b18359f6cb21c359a5c67`  
		Last Modified: Thu, 15 Feb 2018 18:56:33 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41f8708aa28b46edd23d3d9abb4885ab8afeb3a18d9c202e71af77b851228f5`  
		Last Modified: Thu, 15 Feb 2018 18:56:29 GMT  
		Size: 1.4 KB (1443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53104546f3ef748f90fc1f84f8e851dba636c1be9b87b159ac5dbac4651e5ae2`  
		Last Modified: Thu, 15 Feb 2018 18:56:30 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fef50ac8d82283192d16d09f31e899bfd7dde00e88ba1e3b028e35a2fb45f7`  
		Last Modified: Thu, 22 Feb 2018 20:38:18 GMT  
		Size: 105.2 MB (105196973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbe3af043e3254a21cd5aa90add19ef092166550d18544cf15f62fa6fbcf8a8`  
		Last Modified: Thu, 22 Feb 2018 20:37:56 GMT  
		Size: 2.7 KB (2661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d167dba1230efbafb3354fa2926d3969827fd7a4a46a0885bc3f0ecd9b77895`  
		Last Modified: Thu, 22 Feb 2018 20:37:55 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6.8`

```console
$ docker pull logstash@sha256:93b6af212084f7466d3c218e83f90b511cf58214771f515d511afc8e09013917
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6.8` - linux; amd64

```console
$ docker pull logstash@sha256:56466f97a8250dddeabe8697e889df4caeb2bb843ac871aef927ddf153c7fd2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.4 MB (334384621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86eedaca0c6daecd56c8749cd552582d0b38ddc54f1786b7c4ab7c445610e96d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 11:08:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:08:13 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:08:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:08:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:08:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:09:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:17:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 18:53:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 18:53:48 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Thu, 15 Feb 2018 18:53:49 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 18:54:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 18:55:05 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 18:55:06 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Thu, 22 Feb 2018 20:19:30 GMT
ENV LOGSTASH_VERSION=5.6.8
# Thu, 22 Feb 2018 20:19:30 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.8-1
# Thu, 22 Feb 2018 20:20:00 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 20:20:01 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 20:20:01 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Thu, 22 Feb 2018 20:20:02 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Thu, 22 Feb 2018 20:20:02 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Thu, 22 Feb 2018 20:20:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Feb 2018 20:20:03 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd532571c5d31f61347a950a0d58ec1282046fc8bdda6791f8c34a56a1c792c6`  
		Last Modified: Thu, 15 Feb 2018 13:39:14 GMT  
		Size: 852.3 KB (852290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31600c9f9b48dc3cd9fa7c14415fb9251cd3582028fadbb3d5f1bcb57512ecd0`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e8e9b5d10eec5baacf8bfb0d61d868b1ba263863b08d5346fbb73fcff6bb85`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0710e619e88357033e362f6a8c18d93a0dbf14d31629082877ae8c7f51072113`  
		Last Modified: Thu, 15 Feb 2018 13:39:52 GMT  
		Size: 165.4 MB (165392618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e511da65ffabe622bcb6fa89b699e80f94ec7185a95076cd3b4cabc101bd2d11`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 272.1 KB (272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a55baa30b2eb0cb761527f1fdc628163082c6e88a5ad46a06dfd7057954ae8b5`  
		Last Modified: Thu, 15 Feb 2018 18:56:32 GMT  
		Size: 1.6 MB (1588622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50d9347534ef632ab6e33b2400bddbf5e60580754b583dc6a28bf88d72e4e17`  
		Last Modified: Thu, 15 Feb 2018 18:56:32 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5789ed80f5fc29b1704eed296cb1ff95b62a72cf1e8b18359f6cb21c359a5c67`  
		Last Modified: Thu, 15 Feb 2018 18:56:33 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41f8708aa28b46edd23d3d9abb4885ab8afeb3a18d9c202e71af77b851228f5`  
		Last Modified: Thu, 15 Feb 2018 18:56:29 GMT  
		Size: 1.4 KB (1443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53104546f3ef748f90fc1f84f8e851dba636c1be9b87b159ac5dbac4651e5ae2`  
		Last Modified: Thu, 15 Feb 2018 18:56:30 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fef50ac8d82283192d16d09f31e899bfd7dde00e88ba1e3b028e35a2fb45f7`  
		Last Modified: Thu, 22 Feb 2018 20:38:18 GMT  
		Size: 105.2 MB (105196973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbe3af043e3254a21cd5aa90add19ef092166550d18544cf15f62fa6fbcf8a8`  
		Last Modified: Thu, 22 Feb 2018 20:37:56 GMT  
		Size: 2.7 KB (2661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d167dba1230efbafb3354fa2926d3969827fd7a4a46a0885bc3f0ecd9b77895`  
		Last Modified: Thu, 22 Feb 2018 20:37:55 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6.8-alpine`

```console
$ docker pull logstash@sha256:705e77048361c5cc3c3c60d2478df6264b47848a1c82f66b8a244ecc031ed0ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6.8-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:7b8bb5ddd752c660756129e10bab72e973e916d32479a1118a00fe3589059e59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (162963961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a01c92829b4873cc65e3a9a8732f843a204e57921ecdb54044364d616df6b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:38:47 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Wed, 10 Jan 2018 08:38:51 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Wed, 10 Jan 2018 08:39:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 08:39:10 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Jan 2018 08:39:10 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Wed, 10 Jan 2018 08:39:11 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 20:22:38 GMT
ENV LOGSTASH_VERSION=5.6.8
# Thu, 22 Feb 2018 20:22:38 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.8.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.8.tar.gz.asc LOGSTASH_TARBALL_SHA1=8b78f1a034c5ca9b3d384a15eadbae80b2c45ad3
# Thu, 22 Feb 2018 20:22:57 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Thu, 22 Feb 2018 20:22:58 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Thu, 22 Feb 2018 20:22:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Feb 2018 20:22:58 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49706da75fbf7b077623a43f5190bff25a1531fd1534e7b2489b2762756b2d72`  
		Last Modified: Wed, 10 Jan 2018 08:41:38 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da34971dc8ba97c4a1a40bec14aa048da3fd3abd8777668e943c807904c13a29`  
		Last Modified: Wed, 10 Jan 2018 08:41:38 GMT  
		Size: 1.6 MB (1624580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf49b30634859251e6c49c876c1e3cc21e8ae7fd904726c76650a3962d21136`  
		Last Modified: Wed, 10 Jan 2018 08:41:38 GMT  
		Size: 96.9 KB (96946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4ca7bfa6e837002a13b7ff045acbdad66fc261630f978d09b2859799a0c23d`  
		Last Modified: Thu, 22 Feb 2018 20:42:40 GMT  
		Size: 104.7 MB (104721150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6fe67785c8257dd0b5cb9d0be88d8c0a61d95e234a7a3a27c57b7bc05caa4b`  
		Last Modified: Thu, 22 Feb 2018 20:42:16 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6-alpine`

```console
$ docker pull logstash@sha256:705e77048361c5cc3c3c60d2478df6264b47848a1c82f66b8a244ecc031ed0ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:7b8bb5ddd752c660756129e10bab72e973e916d32479a1118a00fe3589059e59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (162963961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a01c92829b4873cc65e3a9a8732f843a204e57921ecdb54044364d616df6b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:38:47 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Wed, 10 Jan 2018 08:38:51 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Wed, 10 Jan 2018 08:39:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 08:39:10 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Jan 2018 08:39:10 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Wed, 10 Jan 2018 08:39:11 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 20:22:38 GMT
ENV LOGSTASH_VERSION=5.6.8
# Thu, 22 Feb 2018 20:22:38 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.8.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.8.tar.gz.asc LOGSTASH_TARBALL_SHA1=8b78f1a034c5ca9b3d384a15eadbae80b2c45ad3
# Thu, 22 Feb 2018 20:22:57 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Thu, 22 Feb 2018 20:22:58 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Thu, 22 Feb 2018 20:22:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Feb 2018 20:22:58 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49706da75fbf7b077623a43f5190bff25a1531fd1534e7b2489b2762756b2d72`  
		Last Modified: Wed, 10 Jan 2018 08:41:38 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da34971dc8ba97c4a1a40bec14aa048da3fd3abd8777668e943c807904c13a29`  
		Last Modified: Wed, 10 Jan 2018 08:41:38 GMT  
		Size: 1.6 MB (1624580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf49b30634859251e6c49c876c1e3cc21e8ae7fd904726c76650a3962d21136`  
		Last Modified: Wed, 10 Jan 2018 08:41:38 GMT  
		Size: 96.9 KB (96946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4ca7bfa6e837002a13b7ff045acbdad66fc261630f978d09b2859799a0c23d`  
		Last Modified: Thu, 22 Feb 2018 20:42:40 GMT  
		Size: 104.7 MB (104721150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6fe67785c8257dd0b5cb9d0be88d8c0a61d95e234a7a3a27c57b7bc05caa4b`  
		Last Modified: Thu, 22 Feb 2018 20:42:16 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5-alpine`

```console
$ docker pull logstash@sha256:705e77048361c5cc3c3c60d2478df6264b47848a1c82f66b8a244ecc031ed0ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:7b8bb5ddd752c660756129e10bab72e973e916d32479a1118a00fe3589059e59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (162963961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a01c92829b4873cc65e3a9a8732f843a204e57921ecdb54044364d616df6b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:38:47 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Wed, 10 Jan 2018 08:38:51 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Wed, 10 Jan 2018 08:39:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 08:39:10 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Jan 2018 08:39:10 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Wed, 10 Jan 2018 08:39:11 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 20:22:38 GMT
ENV LOGSTASH_VERSION=5.6.8
# Thu, 22 Feb 2018 20:22:38 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.8.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.8.tar.gz.asc LOGSTASH_TARBALL_SHA1=8b78f1a034c5ca9b3d384a15eadbae80b2c45ad3
# Thu, 22 Feb 2018 20:22:57 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Thu, 22 Feb 2018 20:22:58 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Thu, 22 Feb 2018 20:22:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Feb 2018 20:22:58 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49706da75fbf7b077623a43f5190bff25a1531fd1534e7b2489b2762756b2d72`  
		Last Modified: Wed, 10 Jan 2018 08:41:38 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da34971dc8ba97c4a1a40bec14aa048da3fd3abd8777668e943c807904c13a29`  
		Last Modified: Wed, 10 Jan 2018 08:41:38 GMT  
		Size: 1.6 MB (1624580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf49b30634859251e6c49c876c1e3cc21e8ae7fd904726c76650a3962d21136`  
		Last Modified: Wed, 10 Jan 2018 08:41:38 GMT  
		Size: 96.9 KB (96946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4ca7bfa6e837002a13b7ff045acbdad66fc261630f978d09b2859799a0c23d`  
		Last Modified: Thu, 22 Feb 2018 20:42:40 GMT  
		Size: 104.7 MB (104721150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6fe67785c8257dd0b5cb9d0be88d8c0a61d95e234a7a3a27c57b7bc05caa4b`  
		Last Modified: Thu, 22 Feb 2018 20:42:16 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:alpine`

```console
$ docker pull logstash@sha256:705e77048361c5cc3c3c60d2478df6264b47848a1c82f66b8a244ecc031ed0ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:alpine` - linux; amd64

```console
$ docker pull logstash@sha256:7b8bb5ddd752c660756129e10bab72e973e916d32479a1118a00fe3589059e59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (162963961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a01c92829b4873cc65e3a9a8732f843a204e57921ecdb54044364d616df6b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:38:47 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Wed, 10 Jan 2018 08:38:51 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Wed, 10 Jan 2018 08:39:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 08:39:10 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Jan 2018 08:39:10 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Wed, 10 Jan 2018 08:39:11 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 20:22:38 GMT
ENV LOGSTASH_VERSION=5.6.8
# Thu, 22 Feb 2018 20:22:38 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.8.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.8.tar.gz.asc LOGSTASH_TARBALL_SHA1=8b78f1a034c5ca9b3d384a15eadbae80b2c45ad3
# Thu, 22 Feb 2018 20:22:57 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Thu, 22 Feb 2018 20:22:58 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Thu, 22 Feb 2018 20:22:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Feb 2018 20:22:58 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49706da75fbf7b077623a43f5190bff25a1531fd1534e7b2489b2762756b2d72`  
		Last Modified: Wed, 10 Jan 2018 08:41:38 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da34971dc8ba97c4a1a40bec14aa048da3fd3abd8777668e943c807904c13a29`  
		Last Modified: Wed, 10 Jan 2018 08:41:38 GMT  
		Size: 1.6 MB (1624580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf49b30634859251e6c49c876c1e3cc21e8ae7fd904726c76650a3962d21136`  
		Last Modified: Wed, 10 Jan 2018 08:41:38 GMT  
		Size: 96.9 KB (96946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4ca7bfa6e837002a13b7ff045acbdad66fc261630f978d09b2859799a0c23d`  
		Last Modified: Thu, 22 Feb 2018 20:42:40 GMT  
		Size: 104.7 MB (104721150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6fe67785c8257dd0b5cb9d0be88d8c0a61d95e234a7a3a27c57b7bc05caa4b`  
		Last Modified: Thu, 22 Feb 2018 20:42:16 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:latest`

```console
$ docker pull logstash@sha256:93b6af212084f7466d3c218e83f90b511cf58214771f515d511afc8e09013917
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:latest` - linux; amd64

```console
$ docker pull logstash@sha256:56466f97a8250dddeabe8697e889df4caeb2bb843ac871aef927ddf153c7fd2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.4 MB (334384621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86eedaca0c6daecd56c8749cd552582d0b38ddc54f1786b7c4ab7c445610e96d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 11:08:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:08:13 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:08:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:08:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:08:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:09:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:17:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 18:53:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 18:53:48 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Thu, 15 Feb 2018 18:53:49 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 18:54:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 15 Feb 2018 18:55:05 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 18:55:06 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Thu, 22 Feb 2018 20:19:30 GMT
ENV LOGSTASH_VERSION=5.6.8
# Thu, 22 Feb 2018 20:19:30 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.8-1
# Thu, 22 Feb 2018 20:20:00 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 20:20:01 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 20:20:01 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Thu, 22 Feb 2018 20:20:02 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Thu, 22 Feb 2018 20:20:02 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Thu, 22 Feb 2018 20:20:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Feb 2018 20:20:03 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd532571c5d31f61347a950a0d58ec1282046fc8bdda6791f8c34a56a1c792c6`  
		Last Modified: Thu, 15 Feb 2018 13:39:14 GMT  
		Size: 852.3 KB (852290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31600c9f9b48dc3cd9fa7c14415fb9251cd3582028fadbb3d5f1bcb57512ecd0`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e8e9b5d10eec5baacf8bfb0d61d868b1ba263863b08d5346fbb73fcff6bb85`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0710e619e88357033e362f6a8c18d93a0dbf14d31629082877ae8c7f51072113`  
		Last Modified: Thu, 15 Feb 2018 13:39:52 GMT  
		Size: 165.4 MB (165392618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e511da65ffabe622bcb6fa89b699e80f94ec7185a95076cd3b4cabc101bd2d11`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 272.1 KB (272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a55baa30b2eb0cb761527f1fdc628163082c6e88a5ad46a06dfd7057954ae8b5`  
		Last Modified: Thu, 15 Feb 2018 18:56:32 GMT  
		Size: 1.6 MB (1588622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50d9347534ef632ab6e33b2400bddbf5e60580754b583dc6a28bf88d72e4e17`  
		Last Modified: Thu, 15 Feb 2018 18:56:32 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5789ed80f5fc29b1704eed296cb1ff95b62a72cf1e8b18359f6cb21c359a5c67`  
		Last Modified: Thu, 15 Feb 2018 18:56:33 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41f8708aa28b46edd23d3d9abb4885ab8afeb3a18d9c202e71af77b851228f5`  
		Last Modified: Thu, 15 Feb 2018 18:56:29 GMT  
		Size: 1.4 KB (1443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53104546f3ef748f90fc1f84f8e851dba636c1be9b87b159ac5dbac4651e5ae2`  
		Last Modified: Thu, 15 Feb 2018 18:56:30 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fef50ac8d82283192d16d09f31e899bfd7dde00e88ba1e3b028e35a2fb45f7`  
		Last Modified: Thu, 22 Feb 2018 20:38:18 GMT  
		Size: 105.2 MB (105196973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbe3af043e3254a21cd5aa90add19ef092166550d18544cf15f62fa6fbcf8a8`  
		Last Modified: Thu, 22 Feb 2018 20:37:56 GMT  
		Size: 2.7 KB (2661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d167dba1230efbafb3354fa2926d3969827fd7a4a46a0885bc3f0ecd9b77895`  
		Last Modified: Thu, 22 Feb 2018 20:37:55 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

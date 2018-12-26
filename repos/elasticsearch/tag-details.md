<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:5`](#elasticsearch5)
-	[`elasticsearch:5.6`](#elasticsearch56)
-	[`elasticsearch:5.6.14`](#elasticsearch5614)
-	[`elasticsearch:5.6.14-alpine`](#elasticsearch5614-alpine)
-	[`elasticsearch:5.6-alpine`](#elasticsearch56-alpine)
-	[`elasticsearch:5-alpine`](#elasticsearch5-alpine)
-	[`elasticsearch:6.5.4`](#elasticsearch654)

## `elasticsearch:5`

```console
$ docker pull elasticsearch@sha256:ffe7af9411684e385047158ecce855706314d9b6ee85ba5b49d9a9a33988f734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:5d78745f0661cbdd5c08a3b76b27b7a9cd611ee01907bc77096ab4ff020bcc11
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219029030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df469d8f5fa6cea86f49472a586618341c68a599b54d47d0fdc5bd63be1f208d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Wed, 26 Dec 2018 08:35:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 09:54:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Dec 2018 09:54:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 26 Dec 2018 09:54:25 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Dec 2018 09:54:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 26 Dec 2018 09:54:30 GMT
ENV ELASTICSEARCH_VERSION=5.6.14
# Wed, 26 Dec 2018 09:54:30 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.14
# Wed, 26 Dec 2018 09:54:36 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:54:36 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 09:54:36 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 26 Dec 2018 09:54:37 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 26 Dec 2018 09:54:37 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Wed, 26 Dec 2018 09:54:37 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 26 Dec 2018 09:54:37 GMT
COPY file:acae3bf917a764e3312083d845425a50f8d4c1da5ab785c9c0dbed20b45f8271 in / 
# Wed, 26 Dec 2018 09:54:38 GMT
EXPOSE 9200 9300
# Wed, 26 Dec 2018 09:54:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 09:54:38 GMT
CMD ["elasticsearch"]
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
	-	`sha256:e4be5be9c02ec72bd7fa5c7f1893d41ae309772fb64a5c030de73511f37c5e7d`  
		Last Modified: Wed, 26 Dec 2018 08:41:14 GMT  
		Size: 122.1 MB (122120655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6a6c2ff2a3acb38d79662ff5fd294e2df52c71db37a4ded9d1a593c5893ed8`  
		Last Modified: Wed, 26 Dec 2018 09:54:49 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2cfd833adeecef6f18f03c8682523d1e232c028e414b1f74084d781b5e307ae`  
		Last Modified: Wed, 26 Dec 2018 09:54:49 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c13e8d3022739bcf79fc314db21ffd9643768fee97e43c9eee3e0525d26b54e`  
		Last Modified: Wed, 26 Dec 2018 09:54:49 GMT  
		Size: 920.4 KB (920410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d56bd2d8816632c98397dc829c46c93e57a13610fb0dab86b046c2f690ed366`  
		Last Modified: Wed, 26 Dec 2018 09:54:51 GMT  
		Size: 34.2 MB (34230514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fb02ea2a0bf227a46b6639b6ba0d12af35306349dc8c8ee0ccd1de06756db0`  
		Last Modified: Wed, 26 Dec 2018 09:54:48 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ac806b1be0f7e621065ac5810297da6373b38f4f3c5e8f070d139fe0a050da`  
		Last Modified: Wed, 26 Dec 2018 09:54:48 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4624ca932910e6bc8381c51dee899e13d37aa68e725f40b63c6a6a5383ea5653`  
		Last Modified: Wed, 26 Dec 2018 09:54:48 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6`

```console
$ docker pull elasticsearch@sha256:ffe7af9411684e385047158ecce855706314d9b6ee85ba5b49d9a9a33988f734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6` - linux; amd64

```console
$ docker pull elasticsearch@sha256:5d78745f0661cbdd5c08a3b76b27b7a9cd611ee01907bc77096ab4ff020bcc11
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219029030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df469d8f5fa6cea86f49472a586618341c68a599b54d47d0fdc5bd63be1f208d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Wed, 26 Dec 2018 08:35:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 09:54:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Dec 2018 09:54:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 26 Dec 2018 09:54:25 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Dec 2018 09:54:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 26 Dec 2018 09:54:30 GMT
ENV ELASTICSEARCH_VERSION=5.6.14
# Wed, 26 Dec 2018 09:54:30 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.14
# Wed, 26 Dec 2018 09:54:36 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:54:36 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 09:54:36 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 26 Dec 2018 09:54:37 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 26 Dec 2018 09:54:37 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Wed, 26 Dec 2018 09:54:37 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 26 Dec 2018 09:54:37 GMT
COPY file:acae3bf917a764e3312083d845425a50f8d4c1da5ab785c9c0dbed20b45f8271 in / 
# Wed, 26 Dec 2018 09:54:38 GMT
EXPOSE 9200 9300
# Wed, 26 Dec 2018 09:54:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 09:54:38 GMT
CMD ["elasticsearch"]
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
	-	`sha256:e4be5be9c02ec72bd7fa5c7f1893d41ae309772fb64a5c030de73511f37c5e7d`  
		Last Modified: Wed, 26 Dec 2018 08:41:14 GMT  
		Size: 122.1 MB (122120655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6a6c2ff2a3acb38d79662ff5fd294e2df52c71db37a4ded9d1a593c5893ed8`  
		Last Modified: Wed, 26 Dec 2018 09:54:49 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2cfd833adeecef6f18f03c8682523d1e232c028e414b1f74084d781b5e307ae`  
		Last Modified: Wed, 26 Dec 2018 09:54:49 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c13e8d3022739bcf79fc314db21ffd9643768fee97e43c9eee3e0525d26b54e`  
		Last Modified: Wed, 26 Dec 2018 09:54:49 GMT  
		Size: 920.4 KB (920410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d56bd2d8816632c98397dc829c46c93e57a13610fb0dab86b046c2f690ed366`  
		Last Modified: Wed, 26 Dec 2018 09:54:51 GMT  
		Size: 34.2 MB (34230514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fb02ea2a0bf227a46b6639b6ba0d12af35306349dc8c8ee0ccd1de06756db0`  
		Last Modified: Wed, 26 Dec 2018 09:54:48 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ac806b1be0f7e621065ac5810297da6373b38f4f3c5e8f070d139fe0a050da`  
		Last Modified: Wed, 26 Dec 2018 09:54:48 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4624ca932910e6bc8381c51dee899e13d37aa68e725f40b63c6a6a5383ea5653`  
		Last Modified: Wed, 26 Dec 2018 09:54:48 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6.14`

```console
$ docker pull elasticsearch@sha256:ffe7af9411684e385047158ecce855706314d9b6ee85ba5b49d9a9a33988f734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6.14` - linux; amd64

```console
$ docker pull elasticsearch@sha256:5d78745f0661cbdd5c08a3b76b27b7a9cd611ee01907bc77096ab4ff020bcc11
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219029030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df469d8f5fa6cea86f49472a586618341c68a599b54d47d0fdc5bd63be1f208d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Wed, 26 Dec 2018 08:35:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 09:54:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Dec 2018 09:54:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 26 Dec 2018 09:54:25 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Dec 2018 09:54:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 26 Dec 2018 09:54:30 GMT
ENV ELASTICSEARCH_VERSION=5.6.14
# Wed, 26 Dec 2018 09:54:30 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.14
# Wed, 26 Dec 2018 09:54:36 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:54:36 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 09:54:36 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 26 Dec 2018 09:54:37 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 26 Dec 2018 09:54:37 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Wed, 26 Dec 2018 09:54:37 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 26 Dec 2018 09:54:37 GMT
COPY file:acae3bf917a764e3312083d845425a50f8d4c1da5ab785c9c0dbed20b45f8271 in / 
# Wed, 26 Dec 2018 09:54:38 GMT
EXPOSE 9200 9300
# Wed, 26 Dec 2018 09:54:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 09:54:38 GMT
CMD ["elasticsearch"]
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
	-	`sha256:e4be5be9c02ec72bd7fa5c7f1893d41ae309772fb64a5c030de73511f37c5e7d`  
		Last Modified: Wed, 26 Dec 2018 08:41:14 GMT  
		Size: 122.1 MB (122120655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6a6c2ff2a3acb38d79662ff5fd294e2df52c71db37a4ded9d1a593c5893ed8`  
		Last Modified: Wed, 26 Dec 2018 09:54:49 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2cfd833adeecef6f18f03c8682523d1e232c028e414b1f74084d781b5e307ae`  
		Last Modified: Wed, 26 Dec 2018 09:54:49 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c13e8d3022739bcf79fc314db21ffd9643768fee97e43c9eee3e0525d26b54e`  
		Last Modified: Wed, 26 Dec 2018 09:54:49 GMT  
		Size: 920.4 KB (920410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d56bd2d8816632c98397dc829c46c93e57a13610fb0dab86b046c2f690ed366`  
		Last Modified: Wed, 26 Dec 2018 09:54:51 GMT  
		Size: 34.2 MB (34230514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fb02ea2a0bf227a46b6639b6ba0d12af35306349dc8c8ee0ccd1de06756db0`  
		Last Modified: Wed, 26 Dec 2018 09:54:48 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ac806b1be0f7e621065ac5810297da6373b38f4f3c5e8f070d139fe0a050da`  
		Last Modified: Wed, 26 Dec 2018 09:54:48 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4624ca932910e6bc8381c51dee899e13d37aa68e725f40b63c6a6a5383ea5653`  
		Last Modified: Wed, 26 Dec 2018 09:54:48 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6.14-alpine`

```console
$ docker pull elasticsearch@sha256:673ab0db373bf5682bae46c9d48ff9ba33f2a66788bed2333f2097747d118470
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6.14-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:e2f485a0f4878f2e51996e9c9b5eff0ac3b150d6fdc933982fd71eff2d5aea0b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92534673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24b5d3a96bd39f65cf643710dca0bdb4ec16f0456003db9f20851883922fa18`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Fri, 21 Dec 2018 05:36:06 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Fri, 21 Dec 2018 05:36:07 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Fri, 21 Dec 2018 05:36:08 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 21 Dec 2018 05:36:08 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 21 Dec 2018 05:36:08 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 05:36:08 GMT
ENV ELASTICSEARCH_VERSION=5.6.14
# Fri, 21 Dec 2018 05:36:08 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.14.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.14.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=392e98ebd549aba91f3041c59fe0d7be1abbd229
# Fri, 21 Dec 2018 05:36:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Fri, 21 Dec 2018 05:36:15 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Fri, 21 Dec 2018 05:36:15 GMT
VOLUME [/usr/share/elasticsearch/data]
# Fri, 21 Dec 2018 05:36:15 GMT
COPY file:f5c8c9507bec9f28fc449c5a383b7cce7f393114dd7463ef6b8b0f971c406b5d in / 
# Fri, 21 Dec 2018 05:36:16 GMT
EXPOSE 9200 9300
# Fri, 21 Dec 2018 05:36:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 05:36:16 GMT
CMD ["elasticsearch"]
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
	-	`sha256:52a4cdcd60b06b2ee30b20e76f60aa4154a040162d6ee925ceda7bd3530527c5`  
		Last Modified: Fri, 21 Dec 2018 05:36:26 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:925e24723efd1448be8ec8627793d0568221136b53b6aaa00babb4640110f7d6`  
		Last Modified: Fri, 21 Dec 2018 05:36:26 GMT  
		Size: 1.2 MB (1204744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9472f118e355c6aaac2d1b2facc85124d57dca5b4b519d29df634d8239e697`  
		Last Modified: Fri, 21 Dec 2018 05:36:25 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcdc8755bbce2c153f205c6758a766966ce58fab29c27a057c68b066396c5479`  
		Last Modified: Fri, 21 Dec 2018 05:36:29 GMT  
		Size: 34.3 MB (34290507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6440cb4c5aa69ad4f60e7d237d5a8a4a2c717435f8877486a860a2251b717f86`  
		Last Modified: Fri, 21 Dec 2018 05:36:25 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f451fa477a97b523c066c1586afb7a254b085ca4663ba17ff81da413d130d76d`  
		Last Modified: Fri, 21 Dec 2018 05:36:25 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6-alpine`

```console
$ docker pull elasticsearch@sha256:673ab0db373bf5682bae46c9d48ff9ba33f2a66788bed2333f2097747d118470
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:e2f485a0f4878f2e51996e9c9b5eff0ac3b150d6fdc933982fd71eff2d5aea0b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92534673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24b5d3a96bd39f65cf643710dca0bdb4ec16f0456003db9f20851883922fa18`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Fri, 21 Dec 2018 05:36:06 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Fri, 21 Dec 2018 05:36:07 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Fri, 21 Dec 2018 05:36:08 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 21 Dec 2018 05:36:08 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 21 Dec 2018 05:36:08 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 05:36:08 GMT
ENV ELASTICSEARCH_VERSION=5.6.14
# Fri, 21 Dec 2018 05:36:08 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.14.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.14.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=392e98ebd549aba91f3041c59fe0d7be1abbd229
# Fri, 21 Dec 2018 05:36:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Fri, 21 Dec 2018 05:36:15 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Fri, 21 Dec 2018 05:36:15 GMT
VOLUME [/usr/share/elasticsearch/data]
# Fri, 21 Dec 2018 05:36:15 GMT
COPY file:f5c8c9507bec9f28fc449c5a383b7cce7f393114dd7463ef6b8b0f971c406b5d in / 
# Fri, 21 Dec 2018 05:36:16 GMT
EXPOSE 9200 9300
# Fri, 21 Dec 2018 05:36:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 05:36:16 GMT
CMD ["elasticsearch"]
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
	-	`sha256:52a4cdcd60b06b2ee30b20e76f60aa4154a040162d6ee925ceda7bd3530527c5`  
		Last Modified: Fri, 21 Dec 2018 05:36:26 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:925e24723efd1448be8ec8627793d0568221136b53b6aaa00babb4640110f7d6`  
		Last Modified: Fri, 21 Dec 2018 05:36:26 GMT  
		Size: 1.2 MB (1204744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9472f118e355c6aaac2d1b2facc85124d57dca5b4b519d29df634d8239e697`  
		Last Modified: Fri, 21 Dec 2018 05:36:25 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcdc8755bbce2c153f205c6758a766966ce58fab29c27a057c68b066396c5479`  
		Last Modified: Fri, 21 Dec 2018 05:36:29 GMT  
		Size: 34.3 MB (34290507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6440cb4c5aa69ad4f60e7d237d5a8a4a2c717435f8877486a860a2251b717f86`  
		Last Modified: Fri, 21 Dec 2018 05:36:25 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f451fa477a97b523c066c1586afb7a254b085ca4663ba17ff81da413d130d76d`  
		Last Modified: Fri, 21 Dec 2018 05:36:25 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5-alpine`

```console
$ docker pull elasticsearch@sha256:673ab0db373bf5682bae46c9d48ff9ba33f2a66788bed2333f2097747d118470
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:e2f485a0f4878f2e51996e9c9b5eff0ac3b150d6fdc933982fd71eff2d5aea0b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92534673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f24b5d3a96bd39f65cf643710dca0bdb4ec16f0456003db9f20851883922fa18`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Fri, 21 Dec 2018 05:36:06 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Fri, 21 Dec 2018 05:36:07 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Fri, 21 Dec 2018 05:36:08 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 21 Dec 2018 05:36:08 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 21 Dec 2018 05:36:08 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 05:36:08 GMT
ENV ELASTICSEARCH_VERSION=5.6.14
# Fri, 21 Dec 2018 05:36:08 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.14.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.14.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=392e98ebd549aba91f3041c59fe0d7be1abbd229
# Fri, 21 Dec 2018 05:36:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Fri, 21 Dec 2018 05:36:15 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Fri, 21 Dec 2018 05:36:15 GMT
VOLUME [/usr/share/elasticsearch/data]
# Fri, 21 Dec 2018 05:36:15 GMT
COPY file:f5c8c9507bec9f28fc449c5a383b7cce7f393114dd7463ef6b8b0f971c406b5d in / 
# Fri, 21 Dec 2018 05:36:16 GMT
EXPOSE 9200 9300
# Fri, 21 Dec 2018 05:36:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 05:36:16 GMT
CMD ["elasticsearch"]
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
	-	`sha256:52a4cdcd60b06b2ee30b20e76f60aa4154a040162d6ee925ceda7bd3530527c5`  
		Last Modified: Fri, 21 Dec 2018 05:36:26 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:925e24723efd1448be8ec8627793d0568221136b53b6aaa00babb4640110f7d6`  
		Last Modified: Fri, 21 Dec 2018 05:36:26 GMT  
		Size: 1.2 MB (1204744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9472f118e355c6aaac2d1b2facc85124d57dca5b4b519d29df634d8239e697`  
		Last Modified: Fri, 21 Dec 2018 05:36:25 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcdc8755bbce2c153f205c6758a766966ce58fab29c27a057c68b066396c5479`  
		Last Modified: Fri, 21 Dec 2018 05:36:29 GMT  
		Size: 34.3 MB (34290507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6440cb4c5aa69ad4f60e7d237d5a8a4a2c717435f8877486a860a2251b717f86`  
		Last Modified: Fri, 21 Dec 2018 05:36:25 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f451fa477a97b523c066c1586afb7a254b085ca4663ba17ff81da413d130d76d`  
		Last Modified: Fri, 21 Dec 2018 05:36:25 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:6.5.4`

```console
$ docker pull elasticsearch@sha256:7053b3979a1dd709f2a225d52bc53622714790b13d88cf08164d252291ab8b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:6.5.4` - linux; amd64

```console
$ docker pull elasticsearch@sha256:5ca85697b6273f63196b44c32311c5a2d1135af9cfd919e5922e49c5045d04b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.2 MB (418176254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93109ce1d590482a06ba085943082b314ac188fcfdbffb68aebb00795c72bc8a`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Mon, 17 Dec 2018 21:53:22 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 17 Dec 2018 21:53:27 GMT
RUN curl -s https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz | tar -C /opt -zxf -
# Mon, 17 Dec 2018 21:53:27 GMT
ENV JAVA_HOME=/opt/jdk-11.0.1
# Mon, 17 Dec 2018 21:53:28 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts /opt/jdk-11.0.1/lib/security/cacerts
# Mon, 17 Dec 2018 21:53:33 GMT
RUN yum update -y &&     yum install -y nc unzip wget which &&     yum clean all
# Mon, 17 Dec 2018 21:53:33 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chmod 0775 /usr/share/elasticsearch &&     chgrp 0 /usr/share/elasticsearch
# Mon, 17 Dec 2018 21:53:33 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 17 Dec 2018 21:53:51 GMT
COPY --chown=1000:0dir:366d2afa5c0db8ffb6a485bf3834553e4221a3b57036f1d4a98ebfb5e8c10737 in /usr/share/elasticsearch 
# Mon, 17 Dec 2018 21:53:51 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Dec 2018 21:53:51 GMT
COPY --chown=1000:0file:0835d3d3ae8342e1be53607254cb0caca7134efdfcb7a65dcebbf3097ec59b11 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 17 Dec 2018 21:53:52 GMT
RUN chgrp 0 /usr/local/bin/docker-entrypoint.sh &&     chmod g=u /etc/passwd &&     chmod 0775 /usr/local/bin/docker-entrypoint.sh
# Mon, 17 Dec 2018 21:53:52 GMT
EXPOSE 9200 9300
# Mon, 17 Dec 2018 21:53:52 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=elasticsearch org.label-schema.version=6.5.4 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.vcs-url=https://github.com/elastic/elasticsearch-docker license=Elastic License
# Mon, 17 Dec 2018 21:53:52 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Mon, 17 Dec 2018 21:53:52 GMT
CMD ["eswrapper"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8a94cca3f938d42c502d829f179352bbea0a42d4c7bd9ee20f9687865bdedb`  
		Last Modified: Wed, 19 Dec 2018 16:52:35 GMT  
		Size: 188.1 MB (188101303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd73f551dee437e42a2cf13da771d8b857464cb4cf38ef54638a083678076fd9`  
		Last Modified: Wed, 19 Dec 2018 16:50:37 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70de352c4efc0b6130d4caa56731022df59216e28c4816b711dd29ce2baa133c`  
		Last Modified: Wed, 19 Dec 2018 16:50:47 GMT  
		Size: 6.9 MB (6858770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5ae4c7310f6cda0e8c2d68311768d28d604198b96b289d5632c4d05d535411`  
		Last Modified: Wed, 19 Dec 2018 16:50:35 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489d9f8b18f1e1b118a3a9d35a10ff018036685303f7d958fa3b141505caab84`  
		Last Modified: Wed, 19 Dec 2018 16:52:43 GMT  
		Size: 148.0 MB (148043897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba96caf59512e61d6b34dab0739d2e87266932178ce8af921dabd4cf7f16865`  
		Last Modified: Wed, 19 Dec 2018 16:50:35 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1df04f27c5fac0db1472fac7a23f11d60cea1e8dd080d5aa671d7d0e15d0fa2`  
		Last Modified: Wed, 19 Dec 2018 16:50:34 GMT  
		Size: 2.4 KB (2407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

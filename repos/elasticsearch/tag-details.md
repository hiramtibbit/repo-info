<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:5`](#elasticsearch5)
-	[`elasticsearch:5.6`](#elasticsearch56)
-	[`elasticsearch:5.6.16`](#elasticsearch5616)
-	[`elasticsearch:5.6.16-alpine`](#elasticsearch5616-alpine)
-	[`elasticsearch:5.6-alpine`](#elasticsearch56-alpine)
-	[`elasticsearch:5-alpine`](#elasticsearch5-alpine)
-	[`elasticsearch:6.6.2`](#elasticsearch662)

## `elasticsearch:5`

```console
$ docker pull elasticsearch@sha256:e550335edefedeb0a976df9a9134a6148e70531bb34e3c5ae0081ca2dfbcec35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:9e2ad96121dd491cb5a05c0fd20e4e3b28a2c55dce08cd1cd9dfca958b6a7435
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219095477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b5bc69225ce601c2390a19c008353ddeefc51c677e69bab63aafb66c6ce5a65`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 04:01:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:04:52 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:04:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:04:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:04:53 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 04:04:53 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:04:54 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:05:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 13:15:58 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 13:16:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 13:16:06 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 13:16:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 20 Mar 2019 00:19:32 GMT
ENV ELASTICSEARCH_VERSION=5.6.16
# Wed, 20 Mar 2019 00:19:32 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.16
# Wed, 20 Mar 2019 00:19:39 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 20 Mar 2019 00:19:39 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Mar 2019 00:19:39 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 20 Mar 2019 00:19:40 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 20 Mar 2019 00:19:40 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Wed, 20 Mar 2019 00:19:40 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 20 Mar 2019 00:19:40 GMT
COPY file:acae3bf917a764e3312083d845425a50f8d4c1da5ab785c9c0dbed20b45f8271 in / 
# Wed, 20 Mar 2019 00:19:40 GMT
EXPOSE 9200 9300
# Wed, 20 Mar 2019 00:19:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Mar 2019 00:19:41 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afad9c4aba6cc6f5b4e85b14e0a16c4807fdcc8a5e4c43a532d6aa06f5d5664`  
		Last Modified: Tue, 05 Mar 2019 04:25:25 GMT  
		Size: 852.9 KB (852890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12fce9923c9d837e515d3de06b77d97a5a0c4796a35a97cf9a6768641ea25a8c`  
		Last Modified: Tue, 05 Mar 2019 04:27:32 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd81083d77ea06270e287c0fb5be2ab4daf9003518745fbdc4f2e55d2635db0`  
		Last Modified: Tue, 05 Mar 2019 04:27:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2afc6ff72dd12b78d094cdbc7e04f6285e599f8a03d6cc1e935aee96b176c1`  
		Last Modified: Tue, 05 Mar 2019 04:27:58 GMT  
		Size: 122.1 MB (122122910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5e657727ba2e5ad79570cf26408518aa7baf100e26aa3cc3bb83408721787c`  
		Last Modified: Tue, 05 Mar 2019 13:16:49 GMT  
		Size: 500.9 KB (500916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfa4e8fdb5ce97949609f561a39050f24cf268683421c2a01e4e928860f1b08`  
		Last Modified: Tue, 05 Mar 2019 13:16:49 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09393984646b2e9b3d9ce8d37d0a0b57af757d37936088df4190d818a666986e`  
		Last Modified: Tue, 05 Mar 2019 13:16:48 GMT  
		Size: 920.8 KB (920796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93317205151af51f8a0a4a4510675efa2b53694b3bf31b8e1c8d6cfead8bad1`  
		Last Modified: Wed, 20 Mar 2019 00:20:07 GMT  
		Size: 34.2 MB (34230284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3738cb7081e32575e05f172a013bf7c31fa601296ecbd33b29d3a154544a8c6`  
		Last Modified: Wed, 20 Mar 2019 00:20:04 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a95e8123514f47a58da3b0e2353dcbdface4e6acb8db1b9313033a5e835793`  
		Last Modified: Wed, 20 Mar 2019 00:20:04 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422415f340775f2bd6a4db7f098620681ab235944c93f5460916c15688002265`  
		Last Modified: Wed, 20 Mar 2019 00:20:05 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6`

```console
$ docker pull elasticsearch@sha256:e550335edefedeb0a976df9a9134a6148e70531bb34e3c5ae0081ca2dfbcec35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6` - linux; amd64

```console
$ docker pull elasticsearch@sha256:9e2ad96121dd491cb5a05c0fd20e4e3b28a2c55dce08cd1cd9dfca958b6a7435
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219095477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b5bc69225ce601c2390a19c008353ddeefc51c677e69bab63aafb66c6ce5a65`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 04:01:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:04:52 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:04:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:04:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:04:53 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 04:04:53 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:04:54 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:05:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 13:15:58 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 13:16:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 13:16:06 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 13:16:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 20 Mar 2019 00:19:32 GMT
ENV ELASTICSEARCH_VERSION=5.6.16
# Wed, 20 Mar 2019 00:19:32 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.16
# Wed, 20 Mar 2019 00:19:39 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 20 Mar 2019 00:19:39 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Mar 2019 00:19:39 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 20 Mar 2019 00:19:40 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 20 Mar 2019 00:19:40 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Wed, 20 Mar 2019 00:19:40 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 20 Mar 2019 00:19:40 GMT
COPY file:acae3bf917a764e3312083d845425a50f8d4c1da5ab785c9c0dbed20b45f8271 in / 
# Wed, 20 Mar 2019 00:19:40 GMT
EXPOSE 9200 9300
# Wed, 20 Mar 2019 00:19:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Mar 2019 00:19:41 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afad9c4aba6cc6f5b4e85b14e0a16c4807fdcc8a5e4c43a532d6aa06f5d5664`  
		Last Modified: Tue, 05 Mar 2019 04:25:25 GMT  
		Size: 852.9 KB (852890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12fce9923c9d837e515d3de06b77d97a5a0c4796a35a97cf9a6768641ea25a8c`  
		Last Modified: Tue, 05 Mar 2019 04:27:32 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd81083d77ea06270e287c0fb5be2ab4daf9003518745fbdc4f2e55d2635db0`  
		Last Modified: Tue, 05 Mar 2019 04:27:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2afc6ff72dd12b78d094cdbc7e04f6285e599f8a03d6cc1e935aee96b176c1`  
		Last Modified: Tue, 05 Mar 2019 04:27:58 GMT  
		Size: 122.1 MB (122122910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5e657727ba2e5ad79570cf26408518aa7baf100e26aa3cc3bb83408721787c`  
		Last Modified: Tue, 05 Mar 2019 13:16:49 GMT  
		Size: 500.9 KB (500916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfa4e8fdb5ce97949609f561a39050f24cf268683421c2a01e4e928860f1b08`  
		Last Modified: Tue, 05 Mar 2019 13:16:49 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09393984646b2e9b3d9ce8d37d0a0b57af757d37936088df4190d818a666986e`  
		Last Modified: Tue, 05 Mar 2019 13:16:48 GMT  
		Size: 920.8 KB (920796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93317205151af51f8a0a4a4510675efa2b53694b3bf31b8e1c8d6cfead8bad1`  
		Last Modified: Wed, 20 Mar 2019 00:20:07 GMT  
		Size: 34.2 MB (34230284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3738cb7081e32575e05f172a013bf7c31fa601296ecbd33b29d3a154544a8c6`  
		Last Modified: Wed, 20 Mar 2019 00:20:04 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a95e8123514f47a58da3b0e2353dcbdface4e6acb8db1b9313033a5e835793`  
		Last Modified: Wed, 20 Mar 2019 00:20:04 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422415f340775f2bd6a4db7f098620681ab235944c93f5460916c15688002265`  
		Last Modified: Wed, 20 Mar 2019 00:20:05 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6.16`

```console
$ docker pull elasticsearch@sha256:e550335edefedeb0a976df9a9134a6148e70531bb34e3c5ae0081ca2dfbcec35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6.16` - linux; amd64

```console
$ docker pull elasticsearch@sha256:9e2ad96121dd491cb5a05c0fd20e4e3b28a2c55dce08cd1cd9dfca958b6a7435
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219095477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b5bc69225ce601c2390a19c008353ddeefc51c677e69bab63aafb66c6ce5a65`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 04:01:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:04:52 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:04:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:04:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:04:53 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 04:04:53 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:04:54 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:05:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 13:15:58 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 13:16:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 13:16:06 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 13:16:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 20 Mar 2019 00:19:32 GMT
ENV ELASTICSEARCH_VERSION=5.6.16
# Wed, 20 Mar 2019 00:19:32 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.16
# Wed, 20 Mar 2019 00:19:39 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 20 Mar 2019 00:19:39 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Mar 2019 00:19:39 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 20 Mar 2019 00:19:40 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 20 Mar 2019 00:19:40 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Wed, 20 Mar 2019 00:19:40 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 20 Mar 2019 00:19:40 GMT
COPY file:acae3bf917a764e3312083d845425a50f8d4c1da5ab785c9c0dbed20b45f8271 in / 
# Wed, 20 Mar 2019 00:19:40 GMT
EXPOSE 9200 9300
# Wed, 20 Mar 2019 00:19:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Mar 2019 00:19:41 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afad9c4aba6cc6f5b4e85b14e0a16c4807fdcc8a5e4c43a532d6aa06f5d5664`  
		Last Modified: Tue, 05 Mar 2019 04:25:25 GMT  
		Size: 852.9 KB (852890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12fce9923c9d837e515d3de06b77d97a5a0c4796a35a97cf9a6768641ea25a8c`  
		Last Modified: Tue, 05 Mar 2019 04:27:32 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd81083d77ea06270e287c0fb5be2ab4daf9003518745fbdc4f2e55d2635db0`  
		Last Modified: Tue, 05 Mar 2019 04:27:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2afc6ff72dd12b78d094cdbc7e04f6285e599f8a03d6cc1e935aee96b176c1`  
		Last Modified: Tue, 05 Mar 2019 04:27:58 GMT  
		Size: 122.1 MB (122122910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5e657727ba2e5ad79570cf26408518aa7baf100e26aa3cc3bb83408721787c`  
		Last Modified: Tue, 05 Mar 2019 13:16:49 GMT  
		Size: 500.9 KB (500916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfa4e8fdb5ce97949609f561a39050f24cf268683421c2a01e4e928860f1b08`  
		Last Modified: Tue, 05 Mar 2019 13:16:49 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09393984646b2e9b3d9ce8d37d0a0b57af757d37936088df4190d818a666986e`  
		Last Modified: Tue, 05 Mar 2019 13:16:48 GMT  
		Size: 920.8 KB (920796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93317205151af51f8a0a4a4510675efa2b53694b3bf31b8e1c8d6cfead8bad1`  
		Last Modified: Wed, 20 Mar 2019 00:20:07 GMT  
		Size: 34.2 MB (34230284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3738cb7081e32575e05f172a013bf7c31fa601296ecbd33b29d3a154544a8c6`  
		Last Modified: Wed, 20 Mar 2019 00:20:04 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a95e8123514f47a58da3b0e2353dcbdface4e6acb8db1b9313033a5e835793`  
		Last Modified: Wed, 20 Mar 2019 00:20:04 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422415f340775f2bd6a4db7f098620681ab235944c93f5460916c15688002265`  
		Last Modified: Wed, 20 Mar 2019 00:20:05 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6.16-alpine`

```console
$ docker pull elasticsearch@sha256:1df223bd70eeb90f7fd572203e3199ff39af3a73638e030f325e5fa8f91160e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6.16-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:9abbb711a82b1bcbbbbc6456170df4d37b545060cd2bf68ee05708dab6fdd3ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92924768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a5425afa80fcf9405e51dc213423f9644f6a5670c0fabd274c6ec0d69dff3c9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Fri, 08 Mar 2019 02:13:43 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 02:13:43 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 02:13:45 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 04:46:07 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Fri, 08 Mar 2019 04:46:11 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Fri, 08 Mar 2019 04:46:12 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 08 Mar 2019 04:46:12 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 08 Mar 2019 04:46:12 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 20 Mar 2019 00:19:45 GMT
ENV ELASTICSEARCH_VERSION=5.6.16
# Wed, 20 Mar 2019 00:19:45 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.16.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.16.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=4ce4a1087e79d552b0d95566095827b18bcb6f67
# Wed, 20 Mar 2019 00:19:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 20 Mar 2019 00:19:53 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Wed, 20 Mar 2019 00:19:53 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 20 Mar 2019 00:19:53 GMT
COPY file:f5c8c9507bec9f28fc449c5a383b7cce7f393114dd7463ef6b8b0f971c406b5d in / 
# Wed, 20 Mar 2019 00:19:54 GMT
EXPOSE 9200 9300
# Wed, 20 Mar 2019 00:19:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Mar 2019 00:19:55 GMT
CMD ["elasticsearch"]
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
	-	`sha256:205f26e90552395346c11a0738dab5f50b49f245b5aac539ad7845f6ea92d2d4`  
		Last Modified: Fri, 08 Mar 2019 02:16:18 GMT  
		Size: 54.9 MB (54922705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800927817824736650ebb87a8e2e1826da71595cfe813e13c7fb81ef1ae1b0ba`  
		Last Modified: Fri, 08 Mar 2019 04:46:39 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320c0d905b16c5f9b857a3983b23ccac98365cd029ddec541c12b2487b39ec55`  
		Last Modified: Fri, 08 Mar 2019 04:46:37 GMT  
		Size: 1.2 MB (1209058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c531e697996b2dde4f477e9b626cf4b20d6479172c8a9275d959ec7738aea8`  
		Last Modified: Fri, 08 Mar 2019 04:46:36 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9aa2be6541dd73bd2e4ab569edfef2c25f3693d4023b82673c7054340fbba16`  
		Last Modified: Wed, 20 Mar 2019 00:20:17 GMT  
		Size: 34.0 MB (34035627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b13a019ea8562b21b7a2a7a629838ae0452d5e72ec9a944d39306ad85dfdaa`  
		Last Modified: Wed, 20 Mar 2019 00:20:13 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5bbabd89864a19705ac78f9c76f4d2c1d5880e9fd2f5cbd367cd69ec51d494d`  
		Last Modified: Wed, 20 Mar 2019 00:20:13 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6-alpine`

```console
$ docker pull elasticsearch@sha256:1df223bd70eeb90f7fd572203e3199ff39af3a73638e030f325e5fa8f91160e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:9abbb711a82b1bcbbbbc6456170df4d37b545060cd2bf68ee05708dab6fdd3ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92924768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a5425afa80fcf9405e51dc213423f9644f6a5670c0fabd274c6ec0d69dff3c9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Fri, 08 Mar 2019 02:13:43 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 02:13:43 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 02:13:45 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 04:46:07 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Fri, 08 Mar 2019 04:46:11 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Fri, 08 Mar 2019 04:46:12 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 08 Mar 2019 04:46:12 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 08 Mar 2019 04:46:12 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 20 Mar 2019 00:19:45 GMT
ENV ELASTICSEARCH_VERSION=5.6.16
# Wed, 20 Mar 2019 00:19:45 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.16.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.16.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=4ce4a1087e79d552b0d95566095827b18bcb6f67
# Wed, 20 Mar 2019 00:19:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 20 Mar 2019 00:19:53 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Wed, 20 Mar 2019 00:19:53 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 20 Mar 2019 00:19:53 GMT
COPY file:f5c8c9507bec9f28fc449c5a383b7cce7f393114dd7463ef6b8b0f971c406b5d in / 
# Wed, 20 Mar 2019 00:19:54 GMT
EXPOSE 9200 9300
# Wed, 20 Mar 2019 00:19:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Mar 2019 00:19:55 GMT
CMD ["elasticsearch"]
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
	-	`sha256:205f26e90552395346c11a0738dab5f50b49f245b5aac539ad7845f6ea92d2d4`  
		Last Modified: Fri, 08 Mar 2019 02:16:18 GMT  
		Size: 54.9 MB (54922705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800927817824736650ebb87a8e2e1826da71595cfe813e13c7fb81ef1ae1b0ba`  
		Last Modified: Fri, 08 Mar 2019 04:46:39 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320c0d905b16c5f9b857a3983b23ccac98365cd029ddec541c12b2487b39ec55`  
		Last Modified: Fri, 08 Mar 2019 04:46:37 GMT  
		Size: 1.2 MB (1209058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c531e697996b2dde4f477e9b626cf4b20d6479172c8a9275d959ec7738aea8`  
		Last Modified: Fri, 08 Mar 2019 04:46:36 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9aa2be6541dd73bd2e4ab569edfef2c25f3693d4023b82673c7054340fbba16`  
		Last Modified: Wed, 20 Mar 2019 00:20:17 GMT  
		Size: 34.0 MB (34035627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b13a019ea8562b21b7a2a7a629838ae0452d5e72ec9a944d39306ad85dfdaa`  
		Last Modified: Wed, 20 Mar 2019 00:20:13 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5bbabd89864a19705ac78f9c76f4d2c1d5880e9fd2f5cbd367cd69ec51d494d`  
		Last Modified: Wed, 20 Mar 2019 00:20:13 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5-alpine`

```console
$ docker pull elasticsearch@sha256:1df223bd70eeb90f7fd572203e3199ff39af3a73638e030f325e5fa8f91160e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:9abbb711a82b1bcbbbbc6456170df4d37b545060cd2bf68ee05708dab6fdd3ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92924768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a5425afa80fcf9405e51dc213423f9644f6a5670c0fabd274c6ec0d69dff3c9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Fri, 08 Mar 2019 02:13:43 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 02:13:43 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 02:13:45 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 04:46:07 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Fri, 08 Mar 2019 04:46:11 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Fri, 08 Mar 2019 04:46:12 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 08 Mar 2019 04:46:12 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 08 Mar 2019 04:46:12 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 20 Mar 2019 00:19:45 GMT
ENV ELASTICSEARCH_VERSION=5.6.16
# Wed, 20 Mar 2019 00:19:45 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.16.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.16.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=4ce4a1087e79d552b0d95566095827b18bcb6f67
# Wed, 20 Mar 2019 00:19:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 20 Mar 2019 00:19:53 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Wed, 20 Mar 2019 00:19:53 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 20 Mar 2019 00:19:53 GMT
COPY file:f5c8c9507bec9f28fc449c5a383b7cce7f393114dd7463ef6b8b0f971c406b5d in / 
# Wed, 20 Mar 2019 00:19:54 GMT
EXPOSE 9200 9300
# Wed, 20 Mar 2019 00:19:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Mar 2019 00:19:55 GMT
CMD ["elasticsearch"]
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
	-	`sha256:205f26e90552395346c11a0738dab5f50b49f245b5aac539ad7845f6ea92d2d4`  
		Last Modified: Fri, 08 Mar 2019 02:16:18 GMT  
		Size: 54.9 MB (54922705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800927817824736650ebb87a8e2e1826da71595cfe813e13c7fb81ef1ae1b0ba`  
		Last Modified: Fri, 08 Mar 2019 04:46:39 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320c0d905b16c5f9b857a3983b23ccac98365cd029ddec541c12b2487b39ec55`  
		Last Modified: Fri, 08 Mar 2019 04:46:37 GMT  
		Size: 1.2 MB (1209058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c531e697996b2dde4f477e9b626cf4b20d6479172c8a9275d959ec7738aea8`  
		Last Modified: Fri, 08 Mar 2019 04:46:36 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9aa2be6541dd73bd2e4ab569edfef2c25f3693d4023b82673c7054340fbba16`  
		Last Modified: Wed, 20 Mar 2019 00:20:17 GMT  
		Size: 34.0 MB (34035627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b13a019ea8562b21b7a2a7a629838ae0452d5e72ec9a944d39306ad85dfdaa`  
		Last Modified: Wed, 20 Mar 2019 00:20:13 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5bbabd89864a19705ac78f9c76f4d2c1d5880e9fd2f5cbd367cd69ec51d494d`  
		Last Modified: Wed, 20 Mar 2019 00:20:13 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:6.6.2`

```console
$ docker pull elasticsearch@sha256:59dd45d05fe89cd713dfc20874c6298e1ec7eaf384e58410b677b9dead6986f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:6.6.2` - linux; amd64

```console
$ docker pull elasticsearch@sha256:c957a3acb7899597cced35a24fecb64988b398094d82b88212f8e40d2f790991
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **445.2 MB (445161383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bca39c5a102f928e082f9a773592aa1c88efe11b546c9a354ac498fb79ee22c`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Wed, 06 Mar 2019 15:20:02 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 06 Mar 2019 15:20:02 GMT
ENV JAVA_HOME=/opt/jdk-11.0.1
# Wed, 06 Mar 2019 15:20:06 GMT
COPY dir:0313ee5e5effe3f9ca896090497c65d3c82c1dcbc241dc04f2bbb4e009e2ee97 in /opt/jdk-11.0.1 
# Wed, 06 Mar 2019 15:20:21 GMT
RUN yum update -y &&     yum install -y nc unzip wget which &&     yum clean all
# Wed, 06 Mar 2019 15:20:22 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chmod 0775 /usr/share/elasticsearch &&     chgrp 0 /usr/share/elasticsearch
# Wed, 06 Mar 2019 15:20:22 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 06 Mar 2019 15:20:25 GMT
COPY --chown=1000:0dir:f84dbd7537f2134256b687b9abab525828ffd413258e5fa61c53ac8dc3df9074 in /usr/share/elasticsearch 
# Wed, 06 Mar 2019 15:20:25 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Mar 2019 15:20:25 GMT
COPY --chown=1000:0file:08193f849fc25f29db1438eff6d5c9fe1d63237aeb07a3e0009e8ba554f97c31 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 06 Mar 2019 15:20:26 GMT
RUN chgrp 0 /usr/local/bin/docker-entrypoint.sh &&     chmod g=u /etc/passwd &&     chmod 0775 /usr/local/bin/docker-entrypoint.sh
# Wed, 06 Mar 2019 15:20:26 GMT
EXPOSE 9200 9300
# Wed, 06 Mar 2019 15:20:26 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=elasticsearch org.label-schema.version=6.6.2 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.vcs-url=https://github.com/elastic/elasticsearch license=Elastic License
# Wed, 06 Mar 2019 15:20:26 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Wed, 06 Mar 2019 15:20:26 GMT
CMD ["eswrapper"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0c2b94f1aa5081dabe9d1c91c377a0e801fdf29160c40c8ebc9d253c936584`  
		Last Modified: Tue, 12 Mar 2019 16:36:52 GMT  
		Size: 188.0 MB (188022905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ba1c987917cbb949758541e9418467a619a8a94b488ccef01f7a29f0068455`  
		Last Modified: Tue, 12 Mar 2019 16:36:38 GMT  
		Size: 33.1 MB (33149675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a5898116619d8288c1190888cf46b267f49986ba3796c03405c0470c62a0454`  
		Last Modified: Tue, 12 Mar 2019 16:36:31 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa49d069f22548fd1367b39202b57416e045b236aaa82f2492891f55a93a6018`  
		Last Modified: Tue, 12 Mar 2019 16:36:46 GMT  
		Size: 148.8 MB (148816747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dee6ce7977c9cda76f317daf1b1220541815977616f2fbb79c29e6bdf1385d6`  
		Last Modified: Tue, 12 Mar 2019 16:36:31 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ecd20c63081d357532df3e6cf207eddf832601a082aa04eeb67ba35e8da04e`  
		Last Modified: Tue, 12 Mar 2019 16:36:31 GMT  
		Size: 2.4 KB (2400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

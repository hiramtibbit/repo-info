<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:5`](#elasticsearch5)
-	[`elasticsearch:5.6`](#elasticsearch56)
-	[`elasticsearch:5.6.14`](#elasticsearch5614)
-	[`elasticsearch:5.6.14-alpine`](#elasticsearch5614-alpine)
-	[`elasticsearch:5.6-alpine`](#elasticsearch56-alpine)
-	[`elasticsearch:5-alpine`](#elasticsearch5-alpine)
-	[`elasticsearch:6.6.0`](#elasticsearch660)

## `elasticsearch:5`

```console
$ docker pull elasticsearch@sha256:3fd502e37c3ffa813691b92f52b655dd85705d1d0059bce163b51601ce9bfe6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:2fb82ebec68fd4b939a5edd67352ecdebc3401aef1517162751822b6b66f63a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219094403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7f2b45570164e83b81e1da51eb773b7442760f8b8773a86f2580b8ac1fdf3a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:29:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:29:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:29:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:30:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 14:54:04 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:54:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Feb 2019 14:54:14 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 06 Feb 2019 14:54:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 06 Feb 2019 14:54:24 GMT
ENV ELASTICSEARCH_VERSION=5.6.14
# Wed, 06 Feb 2019 14:54:24 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.14
# Wed, 06 Feb 2019 14:54:37 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 14:54:37 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 14:54:37 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 06 Feb 2019 14:54:39 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 06 Feb 2019 14:54:39 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Wed, 06 Feb 2019 14:54:40 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 06 Feb 2019 14:54:40 GMT
COPY file:acae3bf917a764e3312083d845425a50f8d4c1da5ab785c9c0dbed20b45f8271 in / 
# Wed, 06 Feb 2019 14:54:40 GMT
EXPOSE 9200 9300
# Wed, 06 Feb 2019 14:54:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:54:41 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea0f08c7492aa49cb62b7fc7cf5a3b91e5c83c182cecddaba75903f09a1c67e`  
		Last Modified: Wed, 06 Feb 2019 08:52:24 GMT  
		Size: 852.9 KB (852911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca74b3d90c15cc3066bb46f8b6cdb617805b39e46ba39b891e4592b601abaee1`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11a643c4a8511e3f7d00a7f7c01059bf804876833992895eebbbaf108399655`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eafed73b65f1719e1ad5446e1f57859feb2f71f0b21d5f0bd25fb7d0d6dbd5`  
		Last Modified: Wed, 06 Feb 2019 08:54:52 GMT  
		Size: 122.1 MB (122121101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022c571baab6903a756ea03ff306edb7f98b38381b326e4f55281d7abfc8cb2a`  
		Last Modified: Wed, 06 Feb 2019 14:55:03 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b885d64fef0834d90a41fd4fdc88ca4c5e443d7e57c95d28a2d7fa6abe0dbc`  
		Last Modified: Wed, 06 Feb 2019 14:55:03 GMT  
		Size: 1.4 KB (1444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58136a4da39b7c1c78ec1b74b89cb1b96d9a1e31ea23916a6a2ceeb7240a3981`  
		Last Modified: Wed, 06 Feb 2019 14:55:02 GMT  
		Size: 920.4 KB (920416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5c5363ae4271f01c0927f4241a0ac7b3469aeef08639d293b40e5ece0a1262`  
		Last Modified: Wed, 06 Feb 2019 14:55:07 GMT  
		Size: 34.2 MB (34230580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1767aef4646d29275b0cde09144c1f39584bc1f7e5477343c8c33f88a856f3`  
		Last Modified: Wed, 06 Feb 2019 14:55:02 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c28f3920a9e6ec6e181d489187c6a13842ae5aaf39b23e4c4006e427dce4d5c3`  
		Last Modified: Wed, 06 Feb 2019 14:55:02 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7780767195a6a6c319ec6e0c151a1e8f7ca966ec93ca8b67c3dcec1cca2d13`  
		Last Modified: Wed, 06 Feb 2019 14:55:02 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6`

```console
$ docker pull elasticsearch@sha256:3fd502e37c3ffa813691b92f52b655dd85705d1d0059bce163b51601ce9bfe6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6` - linux; amd64

```console
$ docker pull elasticsearch@sha256:2fb82ebec68fd4b939a5edd67352ecdebc3401aef1517162751822b6b66f63a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219094403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7f2b45570164e83b81e1da51eb773b7442760f8b8773a86f2580b8ac1fdf3a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:29:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:29:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:29:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:30:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 14:54:04 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:54:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Feb 2019 14:54:14 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 06 Feb 2019 14:54:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 06 Feb 2019 14:54:24 GMT
ENV ELASTICSEARCH_VERSION=5.6.14
# Wed, 06 Feb 2019 14:54:24 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.14
# Wed, 06 Feb 2019 14:54:37 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 14:54:37 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 14:54:37 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 06 Feb 2019 14:54:39 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 06 Feb 2019 14:54:39 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Wed, 06 Feb 2019 14:54:40 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 06 Feb 2019 14:54:40 GMT
COPY file:acae3bf917a764e3312083d845425a50f8d4c1da5ab785c9c0dbed20b45f8271 in / 
# Wed, 06 Feb 2019 14:54:40 GMT
EXPOSE 9200 9300
# Wed, 06 Feb 2019 14:54:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:54:41 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea0f08c7492aa49cb62b7fc7cf5a3b91e5c83c182cecddaba75903f09a1c67e`  
		Last Modified: Wed, 06 Feb 2019 08:52:24 GMT  
		Size: 852.9 KB (852911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca74b3d90c15cc3066bb46f8b6cdb617805b39e46ba39b891e4592b601abaee1`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11a643c4a8511e3f7d00a7f7c01059bf804876833992895eebbbaf108399655`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eafed73b65f1719e1ad5446e1f57859feb2f71f0b21d5f0bd25fb7d0d6dbd5`  
		Last Modified: Wed, 06 Feb 2019 08:54:52 GMT  
		Size: 122.1 MB (122121101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022c571baab6903a756ea03ff306edb7f98b38381b326e4f55281d7abfc8cb2a`  
		Last Modified: Wed, 06 Feb 2019 14:55:03 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b885d64fef0834d90a41fd4fdc88ca4c5e443d7e57c95d28a2d7fa6abe0dbc`  
		Last Modified: Wed, 06 Feb 2019 14:55:03 GMT  
		Size: 1.4 KB (1444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58136a4da39b7c1c78ec1b74b89cb1b96d9a1e31ea23916a6a2ceeb7240a3981`  
		Last Modified: Wed, 06 Feb 2019 14:55:02 GMT  
		Size: 920.4 KB (920416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5c5363ae4271f01c0927f4241a0ac7b3469aeef08639d293b40e5ece0a1262`  
		Last Modified: Wed, 06 Feb 2019 14:55:07 GMT  
		Size: 34.2 MB (34230580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1767aef4646d29275b0cde09144c1f39584bc1f7e5477343c8c33f88a856f3`  
		Last Modified: Wed, 06 Feb 2019 14:55:02 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c28f3920a9e6ec6e181d489187c6a13842ae5aaf39b23e4c4006e427dce4d5c3`  
		Last Modified: Wed, 06 Feb 2019 14:55:02 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7780767195a6a6c319ec6e0c151a1e8f7ca966ec93ca8b67c3dcec1cca2d13`  
		Last Modified: Wed, 06 Feb 2019 14:55:02 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6.14`

```console
$ docker pull elasticsearch@sha256:3fd502e37c3ffa813691b92f52b655dd85705d1d0059bce163b51601ce9bfe6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6.14` - linux; amd64

```console
$ docker pull elasticsearch@sha256:2fb82ebec68fd4b939a5edd67352ecdebc3401aef1517162751822b6b66f63a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219094403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7f2b45570164e83b81e1da51eb773b7442760f8b8773a86f2580b8ac1fdf3a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:29:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:29:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:29:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:30:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 14:54:04 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 14:54:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Feb 2019 14:54:14 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 06 Feb 2019 14:54:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 06 Feb 2019 14:54:24 GMT
ENV ELASTICSEARCH_VERSION=5.6.14
# Wed, 06 Feb 2019 14:54:24 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.14
# Wed, 06 Feb 2019 14:54:37 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 14:54:37 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 14:54:37 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 06 Feb 2019 14:54:39 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 06 Feb 2019 14:54:39 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Wed, 06 Feb 2019 14:54:40 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 06 Feb 2019 14:54:40 GMT
COPY file:acae3bf917a764e3312083d845425a50f8d4c1da5ab785c9c0dbed20b45f8271 in / 
# Wed, 06 Feb 2019 14:54:40 GMT
EXPOSE 9200 9300
# Wed, 06 Feb 2019 14:54:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Feb 2019 14:54:41 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea0f08c7492aa49cb62b7fc7cf5a3b91e5c83c182cecddaba75903f09a1c67e`  
		Last Modified: Wed, 06 Feb 2019 08:52:24 GMT  
		Size: 852.9 KB (852911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca74b3d90c15cc3066bb46f8b6cdb617805b39e46ba39b891e4592b601abaee1`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11a643c4a8511e3f7d00a7f7c01059bf804876833992895eebbbaf108399655`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eafed73b65f1719e1ad5446e1f57859feb2f71f0b21d5f0bd25fb7d0d6dbd5`  
		Last Modified: Wed, 06 Feb 2019 08:54:52 GMT  
		Size: 122.1 MB (122121101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022c571baab6903a756ea03ff306edb7f98b38381b326e4f55281d7abfc8cb2a`  
		Last Modified: Wed, 06 Feb 2019 14:55:03 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b885d64fef0834d90a41fd4fdc88ca4c5e443d7e57c95d28a2d7fa6abe0dbc`  
		Last Modified: Wed, 06 Feb 2019 14:55:03 GMT  
		Size: 1.4 KB (1444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58136a4da39b7c1c78ec1b74b89cb1b96d9a1e31ea23916a6a2ceeb7240a3981`  
		Last Modified: Wed, 06 Feb 2019 14:55:02 GMT  
		Size: 920.4 KB (920416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5c5363ae4271f01c0927f4241a0ac7b3469aeef08639d293b40e5ece0a1262`  
		Last Modified: Wed, 06 Feb 2019 14:55:07 GMT  
		Size: 34.2 MB (34230580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1767aef4646d29275b0cde09144c1f39584bc1f7e5477343c8c33f88a856f3`  
		Last Modified: Wed, 06 Feb 2019 14:55:02 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c28f3920a9e6ec6e181d489187c6a13842ae5aaf39b23e4c4006e427dce4d5c3`  
		Last Modified: Wed, 06 Feb 2019 14:55:02 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7780767195a6a6c319ec6e0c151a1e8f7ca966ec93ca8b67c3dcec1cca2d13`  
		Last Modified: Wed, 06 Feb 2019 14:55:02 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6.14-alpine`

```console
$ docker pull elasticsearch@sha256:34ca4d3c358c676a5a3ff7bf97b5b561574126d4b3af4512df2dcf1078d6339f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6.14-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:05fa8adae2b9b2bf044a9b70d356e5ce029465be8660098bc7dae6c2081489cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92925193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b491c41df5979683d0baad223b7ebc1d4b2455feaa904e3f10e5583c8f36e4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Feb 2019 20:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_VERSION=8u191
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Tue, 05 Feb 2019 20:40:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Feb 2019 21:36:21 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 05 Feb 2019 21:36:23 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 05 Feb 2019 21:36:24 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 05 Feb 2019 21:36:24 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 05 Feb 2019 21:36:24 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 21:36:24 GMT
ENV ELASTICSEARCH_VERSION=5.6.14
# Tue, 05 Feb 2019 21:36:25 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.14.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.14.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=392e98ebd549aba91f3041c59fe0d7be1abbd229
# Tue, 05 Feb 2019 21:36:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 05 Feb 2019 21:36:32 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Tue, 05 Feb 2019 21:36:33 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 05 Feb 2019 21:36:33 GMT
COPY file:f5c8c9507bec9f28fc449c5a383b7cce7f393114dd7463ef6b8b0f971c406b5d in / 
# Tue, 05 Feb 2019 21:36:33 GMT
EXPOSE 9200 9300
# Tue, 05 Feb 2019 21:36:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Feb 2019 21:36:34 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b803852394d2b9aaa3ce93b0f2502b0bf8e063b1fa79734de0fc8ee55ee6e`  
		Last Modified: Tue, 05 Feb 2019 20:45:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41fe1b6eee3555498a7e15b3bf048a7ec274302a92d0c8b34fda111c780fdcf`  
		Last Modified: Tue, 05 Feb 2019 20:45:56 GMT  
		Size: 54.9 MB (54922733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efcb164965dc09baa44c7f61fc5778a560021b07b4f1baea67e4fb34a36e3252`  
		Last Modified: Tue, 05 Feb 2019 21:36:48 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53ba232d97ebe2669868f9e843a62157ad0e0657834f04a6aea87610f54981f`  
		Last Modified: Tue, 05 Feb 2019 21:36:47 GMT  
		Size: 1.2 MB (1209077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2949e9a2bc7d07b69a3035bc842ce825aaaf2c5aac12e92678951678b7f91187`  
		Last Modified: Tue, 05 Feb 2019 21:36:47 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598856d316dbddf9181cd953ba0c37da6c3a65625d674689f5f997df114289ef`  
		Last Modified: Tue, 05 Feb 2019 21:36:50 GMT  
		Size: 34.0 MB (34036018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ca90c75c49ef07c5ff4a5299e25b3cd11446d232532e5f03a9e1de7928e27a`  
		Last Modified: Tue, 05 Feb 2019 21:36:47 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236ce878d35cf886aa592c3005f18cdbe60e51483d2cecae80fe37c2c5561fed`  
		Last Modified: Tue, 05 Feb 2019 21:36:47 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6-alpine`

```console
$ docker pull elasticsearch@sha256:34ca4d3c358c676a5a3ff7bf97b5b561574126d4b3af4512df2dcf1078d6339f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:05fa8adae2b9b2bf044a9b70d356e5ce029465be8660098bc7dae6c2081489cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92925193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b491c41df5979683d0baad223b7ebc1d4b2455feaa904e3f10e5583c8f36e4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Feb 2019 20:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_VERSION=8u191
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Tue, 05 Feb 2019 20:40:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Feb 2019 21:36:21 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 05 Feb 2019 21:36:23 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 05 Feb 2019 21:36:24 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 05 Feb 2019 21:36:24 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 05 Feb 2019 21:36:24 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 21:36:24 GMT
ENV ELASTICSEARCH_VERSION=5.6.14
# Tue, 05 Feb 2019 21:36:25 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.14.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.14.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=392e98ebd549aba91f3041c59fe0d7be1abbd229
# Tue, 05 Feb 2019 21:36:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 05 Feb 2019 21:36:32 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Tue, 05 Feb 2019 21:36:33 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 05 Feb 2019 21:36:33 GMT
COPY file:f5c8c9507bec9f28fc449c5a383b7cce7f393114dd7463ef6b8b0f971c406b5d in / 
# Tue, 05 Feb 2019 21:36:33 GMT
EXPOSE 9200 9300
# Tue, 05 Feb 2019 21:36:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Feb 2019 21:36:34 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b803852394d2b9aaa3ce93b0f2502b0bf8e063b1fa79734de0fc8ee55ee6e`  
		Last Modified: Tue, 05 Feb 2019 20:45:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41fe1b6eee3555498a7e15b3bf048a7ec274302a92d0c8b34fda111c780fdcf`  
		Last Modified: Tue, 05 Feb 2019 20:45:56 GMT  
		Size: 54.9 MB (54922733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efcb164965dc09baa44c7f61fc5778a560021b07b4f1baea67e4fb34a36e3252`  
		Last Modified: Tue, 05 Feb 2019 21:36:48 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53ba232d97ebe2669868f9e843a62157ad0e0657834f04a6aea87610f54981f`  
		Last Modified: Tue, 05 Feb 2019 21:36:47 GMT  
		Size: 1.2 MB (1209077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2949e9a2bc7d07b69a3035bc842ce825aaaf2c5aac12e92678951678b7f91187`  
		Last Modified: Tue, 05 Feb 2019 21:36:47 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598856d316dbddf9181cd953ba0c37da6c3a65625d674689f5f997df114289ef`  
		Last Modified: Tue, 05 Feb 2019 21:36:50 GMT  
		Size: 34.0 MB (34036018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ca90c75c49ef07c5ff4a5299e25b3cd11446d232532e5f03a9e1de7928e27a`  
		Last Modified: Tue, 05 Feb 2019 21:36:47 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236ce878d35cf886aa592c3005f18cdbe60e51483d2cecae80fe37c2c5561fed`  
		Last Modified: Tue, 05 Feb 2019 21:36:47 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5-alpine`

```console
$ docker pull elasticsearch@sha256:34ca4d3c358c676a5a3ff7bf97b5b561574126d4b3af4512df2dcf1078d6339f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:05fa8adae2b9b2bf044a9b70d356e5ce029465be8660098bc7dae6c2081489cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92925193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b491c41df5979683d0baad223b7ebc1d4b2455feaa904e3f10e5583c8f36e4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Feb 2019 20:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_VERSION=8u191
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Tue, 05 Feb 2019 20:40:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Feb 2019 21:36:21 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 05 Feb 2019 21:36:23 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 05 Feb 2019 21:36:24 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 05 Feb 2019 21:36:24 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 05 Feb 2019 21:36:24 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 21:36:24 GMT
ENV ELASTICSEARCH_VERSION=5.6.14
# Tue, 05 Feb 2019 21:36:25 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.14.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.14.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=392e98ebd549aba91f3041c59fe0d7be1abbd229
# Tue, 05 Feb 2019 21:36:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 05 Feb 2019 21:36:32 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Tue, 05 Feb 2019 21:36:33 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 05 Feb 2019 21:36:33 GMT
COPY file:f5c8c9507bec9f28fc449c5a383b7cce7f393114dd7463ef6b8b0f971c406b5d in / 
# Tue, 05 Feb 2019 21:36:33 GMT
EXPOSE 9200 9300
# Tue, 05 Feb 2019 21:36:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Feb 2019 21:36:34 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b803852394d2b9aaa3ce93b0f2502b0bf8e063b1fa79734de0fc8ee55ee6e`  
		Last Modified: Tue, 05 Feb 2019 20:45:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41fe1b6eee3555498a7e15b3bf048a7ec274302a92d0c8b34fda111c780fdcf`  
		Last Modified: Tue, 05 Feb 2019 20:45:56 GMT  
		Size: 54.9 MB (54922733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efcb164965dc09baa44c7f61fc5778a560021b07b4f1baea67e4fb34a36e3252`  
		Last Modified: Tue, 05 Feb 2019 21:36:48 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53ba232d97ebe2669868f9e843a62157ad0e0657834f04a6aea87610f54981f`  
		Last Modified: Tue, 05 Feb 2019 21:36:47 GMT  
		Size: 1.2 MB (1209077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2949e9a2bc7d07b69a3035bc842ce825aaaf2c5aac12e92678951678b7f91187`  
		Last Modified: Tue, 05 Feb 2019 21:36:47 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598856d316dbddf9181cd953ba0c37da6c3a65625d674689f5f997df114289ef`  
		Last Modified: Tue, 05 Feb 2019 21:36:50 GMT  
		Size: 34.0 MB (34036018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ca90c75c49ef07c5ff4a5299e25b3cd11446d232532e5f03a9e1de7928e27a`  
		Last Modified: Tue, 05 Feb 2019 21:36:47 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236ce878d35cf886aa592c3005f18cdbe60e51483d2cecae80fe37c2c5561fed`  
		Last Modified: Tue, 05 Feb 2019 21:36:47 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:6.6.0`

```console
$ docker pull elasticsearch@sha256:ed1f27b9a16dc29d19fc607a1e6e281d1ddf83d81734427d895f5b91c23a6ee5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:6.6.0` - linux; amd64

```console
$ docker pull elasticsearch@sha256:e9cba8dec2df88a1af911787f05cf5200a5d9d64e4517f64deb8bafc6e96176f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **430.8 MB (430779243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13aa43015aa1eba89c6639557efb7d100d65e0e95d5912dbbbb206300aa7b7b0`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 24 Jan 2019 11:30:50 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 24 Jan 2019 11:30:51 GMT
ENV JAVA_HOME=/opt/jdk-11.0.1
# Thu, 24 Jan 2019 11:30:54 GMT
COPY dir:0313ee5e5effe3f9ca896090497c65d3c82c1dcbc241dc04f2bbb4e009e2ee97 in /opt/jdk-11.0.1 
# Thu, 24 Jan 2019 11:31:02 GMT
RUN yum update -y &&     yum install -y nc unzip wget which &&     yum clean all
# Thu, 24 Jan 2019 11:31:03 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chmod 0775 /usr/share/elasticsearch &&     chgrp 0 /usr/share/elasticsearch
# Thu, 24 Jan 2019 11:31:03 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 24 Jan 2019 11:31:06 GMT
COPY --chown=1000:0dir:c97843a2e5bb5302b24eff258cc4179fd275304643c545bd72034206a7d05eff in /usr/share/elasticsearch 
# Thu, 24 Jan 2019 11:31:06 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Jan 2019 11:31:06 GMT
COPY --chown=1000:0file:08193f849fc25f29db1438eff6d5c9fe1d63237aeb07a3e0009e8ba554f97c31 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 24 Jan 2019 11:31:07 GMT
RUN chgrp 0 /usr/local/bin/docker-entrypoint.sh &&     chmod g=u /etc/passwd &&     chmod 0775 /usr/local/bin/docker-entrypoint.sh
# Thu, 24 Jan 2019 11:31:07 GMT
EXPOSE 9200 9300
# Thu, 24 Jan 2019 11:31:07 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=elasticsearch org.label-schema.version=6.6.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.vcs-url=https://github.com/elastic/elasticsearch license=Elastic License
# Thu, 24 Jan 2019 11:31:07 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Thu, 24 Jan 2019 11:31:07 GMT
CMD ["eswrapper"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7decffa70b3b89d1b8c438455bb62b333bc1703dcb9e9fb2a0cfc5b230558fb5`  
		Last Modified: Tue, 29 Jan 2019 12:57:30 GMT  
		Size: 188.0 MB (188022813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498315b623453a6aaa623007615b92c868d27d442a819a28a8d8f04fa24f2297`  
		Last Modified: Tue, 29 Jan 2019 12:57:13 GMT  
		Size: 18.8 MB (18781354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84790c95eb91a3b8d0ff591dbbc72df60144edab5d1d744527e482dc6ba31b2`  
		Last Modified: Tue, 29 Jan 2019 12:57:09 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3b0a2308b2e6d12872ae890b1fa8d5be9f4b4af0b1e1020e8a6cca8dc67957`  
		Last Modified: Tue, 29 Jan 2019 12:57:23 GMT  
		Size: 148.8 MB (148803021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b21a7b5e00b24644561a1f3fdca9e53b536789ba7cbcf1a13e46c490b550b8`  
		Last Modified: Tue, 29 Jan 2019 12:57:09 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f620bc30e187784c9324ceeb6a0605c681d45cc7984dedd404d8421c31fe9366`  
		Last Modified: Tue, 29 Jan 2019 12:57:09 GMT  
		Size: 2.4 KB (2400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

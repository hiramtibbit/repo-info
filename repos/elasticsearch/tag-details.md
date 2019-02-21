<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:5`](#elasticsearch5)
-	[`elasticsearch:5.6`](#elasticsearch56)
-	[`elasticsearch:5.6.15`](#elasticsearch5615)
-	[`elasticsearch:5.6.15-alpine`](#elasticsearch5615-alpine)
-	[`elasticsearch:5.6-alpine`](#elasticsearch56-alpine)
-	[`elasticsearch:5-alpine`](#elasticsearch5-alpine)
-	[`elasticsearch:6.6.1`](#elasticsearch661)

## `elasticsearch:5`

```console
$ docker pull elasticsearch@sha256:8bb4bf99205d38de54d338ad5c465516c09744c65f435f0d8333cda016d45bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:41902e79d642072f9d80308a8304dd90b3b9e686ffdb7bc3952c6c98dd9f227e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219094111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f027755a78c39d8a694d44b1fd42ed3863fa43bfa49456f47ee50c20c79d97ce`
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
# Thu, 21 Feb 2019 22:19:48 GMT
ENV ELASTICSEARCH_VERSION=5.6.15
# Thu, 21 Feb 2019 22:19:48 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.15
# Thu, 21 Feb 2019 22:20:01 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Feb 2019 22:20:01 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 21 Feb 2019 22:20:01 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 21 Feb 2019 22:20:02 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 21 Feb 2019 22:20:02 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Thu, 21 Feb 2019 22:20:02 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 21 Feb 2019 22:20:03 GMT
COPY file:acae3bf917a764e3312083d845425a50f8d4c1da5ab785c9c0dbed20b45f8271 in / 
# Thu, 21 Feb 2019 22:20:03 GMT
EXPOSE 9200 9300
# Thu, 21 Feb 2019 22:20:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Feb 2019 22:20:03 GMT
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
	-	`sha256:45d287c155e748e6d4e98e048ff4c4776bc61dc01297b5d6612298db519ce405`  
		Last Modified: Thu, 21 Feb 2019 22:20:51 GMT  
		Size: 34.2 MB (34230288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ae6dce4491bfa27f06025a777caf5cc3e8222e68aae767bad025d5bf48e90c`  
		Last Modified: Thu, 21 Feb 2019 22:20:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27db3e4b77ec52f2827afa5cdd85e1b325566c8814cae486c7fb31df359f0fb4`  
		Last Modified: Thu, 21 Feb 2019 22:20:47 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2769c1ec64dc66e745bbe90961b675fca48557e4c5a3693b8489bca549882394`  
		Last Modified: Thu, 21 Feb 2019 22:20:47 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6`

```console
$ docker pull elasticsearch@sha256:8bb4bf99205d38de54d338ad5c465516c09744c65f435f0d8333cda016d45bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6` - linux; amd64

```console
$ docker pull elasticsearch@sha256:41902e79d642072f9d80308a8304dd90b3b9e686ffdb7bc3952c6c98dd9f227e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219094111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f027755a78c39d8a694d44b1fd42ed3863fa43bfa49456f47ee50c20c79d97ce`
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
# Thu, 21 Feb 2019 22:19:48 GMT
ENV ELASTICSEARCH_VERSION=5.6.15
# Thu, 21 Feb 2019 22:19:48 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.15
# Thu, 21 Feb 2019 22:20:01 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Feb 2019 22:20:01 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 21 Feb 2019 22:20:01 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 21 Feb 2019 22:20:02 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 21 Feb 2019 22:20:02 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Thu, 21 Feb 2019 22:20:02 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 21 Feb 2019 22:20:03 GMT
COPY file:acae3bf917a764e3312083d845425a50f8d4c1da5ab785c9c0dbed20b45f8271 in / 
# Thu, 21 Feb 2019 22:20:03 GMT
EXPOSE 9200 9300
# Thu, 21 Feb 2019 22:20:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Feb 2019 22:20:03 GMT
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
	-	`sha256:45d287c155e748e6d4e98e048ff4c4776bc61dc01297b5d6612298db519ce405`  
		Last Modified: Thu, 21 Feb 2019 22:20:51 GMT  
		Size: 34.2 MB (34230288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ae6dce4491bfa27f06025a777caf5cc3e8222e68aae767bad025d5bf48e90c`  
		Last Modified: Thu, 21 Feb 2019 22:20:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27db3e4b77ec52f2827afa5cdd85e1b325566c8814cae486c7fb31df359f0fb4`  
		Last Modified: Thu, 21 Feb 2019 22:20:47 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2769c1ec64dc66e745bbe90961b675fca48557e4c5a3693b8489bca549882394`  
		Last Modified: Thu, 21 Feb 2019 22:20:47 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6.15`

```console
$ docker pull elasticsearch@sha256:8bb4bf99205d38de54d338ad5c465516c09744c65f435f0d8333cda016d45bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6.15` - linux; amd64

```console
$ docker pull elasticsearch@sha256:41902e79d642072f9d80308a8304dd90b3b9e686ffdb7bc3952c6c98dd9f227e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219094111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f027755a78c39d8a694d44b1fd42ed3863fa43bfa49456f47ee50c20c79d97ce`
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
# Thu, 21 Feb 2019 22:19:48 GMT
ENV ELASTICSEARCH_VERSION=5.6.15
# Thu, 21 Feb 2019 22:19:48 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.15
# Thu, 21 Feb 2019 22:20:01 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 21 Feb 2019 22:20:01 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 21 Feb 2019 22:20:01 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 21 Feb 2019 22:20:02 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 21 Feb 2019 22:20:02 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Thu, 21 Feb 2019 22:20:02 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 21 Feb 2019 22:20:03 GMT
COPY file:acae3bf917a764e3312083d845425a50f8d4c1da5ab785c9c0dbed20b45f8271 in / 
# Thu, 21 Feb 2019 22:20:03 GMT
EXPOSE 9200 9300
# Thu, 21 Feb 2019 22:20:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Feb 2019 22:20:03 GMT
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
	-	`sha256:45d287c155e748e6d4e98e048ff4c4776bc61dc01297b5d6612298db519ce405`  
		Last Modified: Thu, 21 Feb 2019 22:20:51 GMT  
		Size: 34.2 MB (34230288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ae6dce4491bfa27f06025a777caf5cc3e8222e68aae767bad025d5bf48e90c`  
		Last Modified: Thu, 21 Feb 2019 22:20:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27db3e4b77ec52f2827afa5cdd85e1b325566c8814cae486c7fb31df359f0fb4`  
		Last Modified: Thu, 21 Feb 2019 22:20:47 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2769c1ec64dc66e745bbe90961b675fca48557e4c5a3693b8489bca549882394`  
		Last Modified: Thu, 21 Feb 2019 22:20:47 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6.15-alpine`

```console
$ docker pull elasticsearch@sha256:dd575d8526f8d77e57c2782eb1d9a15a570abb67fa5d143db415aa579bac55a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6.15-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:d053b6e1d082995301314cbd55b11c5faf2d9aff8aecd159a6e82ab3b51f7fb1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92924372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb5f3c15c6470aa1c8e4d056fabe5e3dcdb4403f92e0e386c2bcf5fcb6aed918`
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
# Thu, 21 Feb 2019 22:20:08 GMT
ENV ELASTICSEARCH_VERSION=5.6.15
# Thu, 21 Feb 2019 22:20:08 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.15.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.15.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=42d2519fd7d47e5b0bbef05d402ff0f66fbbe2ca
# Thu, 21 Feb 2019 22:20:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Thu, 21 Feb 2019 22:20:14 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Thu, 21 Feb 2019 22:20:14 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 21 Feb 2019 22:20:14 GMT
COPY file:f5c8c9507bec9f28fc449c5a383b7cce7f393114dd7463ef6b8b0f971c406b5d in / 
# Thu, 21 Feb 2019 22:20:15 GMT
EXPOSE 9200 9300
# Thu, 21 Feb 2019 22:20:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Feb 2019 22:20:15 GMT
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
	-	`sha256:fd717ba90ccb004178872cdbf491af01c9a430f520106d8342b368cec441ffa3`  
		Last Modified: Thu, 21 Feb 2019 22:21:02 GMT  
		Size: 34.0 MB (34035194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d77ac85f3eaa2afda882ad7e29a1ab0f4a94e5567f3db17471f5429cec60d5`  
		Last Modified: Thu, 21 Feb 2019 22:20:58 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84c020163f042b9a0394c5356c76b57ca2f4202cbc2b0ea1837c4175d0d4e4c`  
		Last Modified: Thu, 21 Feb 2019 22:20:58 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6-alpine`

```console
$ docker pull elasticsearch@sha256:dd575d8526f8d77e57c2782eb1d9a15a570abb67fa5d143db415aa579bac55a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:d053b6e1d082995301314cbd55b11c5faf2d9aff8aecd159a6e82ab3b51f7fb1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92924372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb5f3c15c6470aa1c8e4d056fabe5e3dcdb4403f92e0e386c2bcf5fcb6aed918`
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
# Thu, 21 Feb 2019 22:20:08 GMT
ENV ELASTICSEARCH_VERSION=5.6.15
# Thu, 21 Feb 2019 22:20:08 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.15.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.15.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=42d2519fd7d47e5b0bbef05d402ff0f66fbbe2ca
# Thu, 21 Feb 2019 22:20:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Thu, 21 Feb 2019 22:20:14 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Thu, 21 Feb 2019 22:20:14 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 21 Feb 2019 22:20:14 GMT
COPY file:f5c8c9507bec9f28fc449c5a383b7cce7f393114dd7463ef6b8b0f971c406b5d in / 
# Thu, 21 Feb 2019 22:20:15 GMT
EXPOSE 9200 9300
# Thu, 21 Feb 2019 22:20:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Feb 2019 22:20:15 GMT
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
	-	`sha256:fd717ba90ccb004178872cdbf491af01c9a430f520106d8342b368cec441ffa3`  
		Last Modified: Thu, 21 Feb 2019 22:21:02 GMT  
		Size: 34.0 MB (34035194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d77ac85f3eaa2afda882ad7e29a1ab0f4a94e5567f3db17471f5429cec60d5`  
		Last Modified: Thu, 21 Feb 2019 22:20:58 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84c020163f042b9a0394c5356c76b57ca2f4202cbc2b0ea1837c4175d0d4e4c`  
		Last Modified: Thu, 21 Feb 2019 22:20:58 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5-alpine`

```console
$ docker pull elasticsearch@sha256:dd575d8526f8d77e57c2782eb1d9a15a570abb67fa5d143db415aa579bac55a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:d053b6e1d082995301314cbd55b11c5faf2d9aff8aecd159a6e82ab3b51f7fb1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92924372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb5f3c15c6470aa1c8e4d056fabe5e3dcdb4403f92e0e386c2bcf5fcb6aed918`
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
# Thu, 21 Feb 2019 22:20:08 GMT
ENV ELASTICSEARCH_VERSION=5.6.15
# Thu, 21 Feb 2019 22:20:08 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.15.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.15.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=42d2519fd7d47e5b0bbef05d402ff0f66fbbe2ca
# Thu, 21 Feb 2019 22:20:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Thu, 21 Feb 2019 22:20:14 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Thu, 21 Feb 2019 22:20:14 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 21 Feb 2019 22:20:14 GMT
COPY file:f5c8c9507bec9f28fc449c5a383b7cce7f393114dd7463ef6b8b0f971c406b5d in / 
# Thu, 21 Feb 2019 22:20:15 GMT
EXPOSE 9200 9300
# Thu, 21 Feb 2019 22:20:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Feb 2019 22:20:15 GMT
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
	-	`sha256:fd717ba90ccb004178872cdbf491af01c9a430f520106d8342b368cec441ffa3`  
		Last Modified: Thu, 21 Feb 2019 22:21:02 GMT  
		Size: 34.0 MB (34035194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d77ac85f3eaa2afda882ad7e29a1ab0f4a94e5567f3db17471f5429cec60d5`  
		Last Modified: Thu, 21 Feb 2019 22:20:58 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84c020163f042b9a0394c5356c76b57ca2f4202cbc2b0ea1837c4175d0d4e4c`  
		Last Modified: Thu, 21 Feb 2019 22:20:58 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:6.6.1`

```console
$ docker pull elasticsearch@sha256:d4d44755dcefd2215d63f3c18bacbb4d4d3f572c02ee351b0674f5c61a543ed3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:6.6.1` - linux; amd64

```console
$ docker pull elasticsearch@sha256:b3c3863bfef1bdc79ebb55e61a5f140b397cc6406638b42b7b624ef9742bece3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **445.2 MB (445154163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6ffcb0ee97ebac1c4f02d32d9c15144db7ecbc7625e6881246f5f4b35ac6b10`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Wed, 13 Feb 2019 17:12:59 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 13 Feb 2019 17:12:59 GMT
ENV JAVA_HOME=/opt/jdk-11.0.1
# Wed, 13 Feb 2019 17:13:03 GMT
COPY dir:0313ee5e5effe3f9ca896090497c65d3c82c1dcbc241dc04f2bbb4e009e2ee97 in /opt/jdk-11.0.1 
# Wed, 13 Feb 2019 17:13:19 GMT
RUN yum update -y &&     yum install -y nc unzip wget which &&     yum clean all
# Wed, 13 Feb 2019 17:13:20 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chmod 0775 /usr/share/elasticsearch &&     chgrp 0 /usr/share/elasticsearch
# Wed, 13 Feb 2019 17:13:20 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 13 Feb 2019 17:13:23 GMT
COPY --chown=1000:0dir:d5b344a1101775d3da63434b5662b7f079b4c68f67fcace1745f5d99e069e684 in /usr/share/elasticsearch 
# Wed, 13 Feb 2019 17:13:23 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Feb 2019 17:13:23 GMT
COPY --chown=1000:0file:08193f849fc25f29db1438eff6d5c9fe1d63237aeb07a3e0009e8ba554f97c31 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 13 Feb 2019 17:13:24 GMT
RUN chgrp 0 /usr/local/bin/docker-entrypoint.sh &&     chmod g=u /etc/passwd &&     chmod 0775 /usr/local/bin/docker-entrypoint.sh
# Wed, 13 Feb 2019 17:13:24 GMT
EXPOSE 9200 9300
# Wed, 13 Feb 2019 17:13:24 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=elasticsearch org.label-schema.version=6.6.1 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.vcs-url=https://github.com/elastic/elasticsearch license=Elastic License
# Wed, 13 Feb 2019 17:13:24 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Wed, 13 Feb 2019 17:13:25 GMT
CMD ["eswrapper"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f90238df18e1c92571d0828435dd5d504cab4c999a2b2acb1b014a70cb68173f`  
		Last Modified: Tue, 19 Feb 2019 16:52:35 GMT  
		Size: 188.0 MB (188022903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4467556c03c295701de31cf8785d26134cba9bb6fb39daaf4c5866567f7fd4a8`  
		Last Modified: Tue, 19 Feb 2019 16:52:19 GMT  
		Size: 33.1 MB (33135269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64d069246b71038e30a11535f14c57beaab080217ee3d90e7eff2df13c75378`  
		Last Modified: Tue, 19 Feb 2019 16:52:12 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b328d51b8d473a762f760fb37a166620b35a9d3b6423efbd63afa1faaba0d62`  
		Last Modified: Tue, 19 Feb 2019 16:52:27 GMT  
		Size: 148.8 MB (148823938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b063703b9a7754f53994311cfcf1db756f66fb2aa606a00a9f6f48d96c8596`  
		Last Modified: Tue, 19 Feb 2019 16:52:12 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ee6983f18054db274ddc339526fd2564ebfb9401fc7fa2d30932c93a511bf9`  
		Last Modified: Tue, 19 Feb 2019 16:52:13 GMT  
		Size: 2.4 KB (2402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

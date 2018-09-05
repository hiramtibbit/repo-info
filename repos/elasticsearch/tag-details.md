<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:2`](#elasticsearch2)
-	[`elasticsearch:2.4`](#elasticsearch24)
-	[`elasticsearch:2.4.6`](#elasticsearch246)
-	[`elasticsearch:2.4.6-alpine`](#elasticsearch246-alpine)
-	[`elasticsearch:2.4-alpine`](#elasticsearch24-alpine)
-	[`elasticsearch:2-alpine`](#elasticsearch2-alpine)
-	[`elasticsearch:5`](#elasticsearch5)
-	[`elasticsearch:5.6`](#elasticsearch56)
-	[`elasticsearch:5.6.11`](#elasticsearch5611)
-	[`elasticsearch:5.6.11-alpine`](#elasticsearch5611-alpine)
-	[`elasticsearch:5.6-alpine`](#elasticsearch56-alpine)
-	[`elasticsearch:5-alpine`](#elasticsearch5-alpine)
-	[`elasticsearch:alpine`](#elasticsearchalpine)
-	[`elasticsearch:latest`](#elasticsearchlatest)

## `elasticsearch:2`

```console
$ docker pull elasticsearch@sha256:41ed3a1a16b63de740767944d5405843db00e55058626c22838f23b413aa4a39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:2` - linux; amd64

```console
$ docker pull elasticsearch@sha256:0278ed727ad6dd0bef0be279b3112755a110980c31f07e7f4a54e19b9ca2e24a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.7 MB (212699906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9d896dc62cb76d03fd48ef06c744d45fbd2098e3fc1752ad4604c8d35b14eb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 01:23:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:23:14 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:23:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:23:15 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 05 Sep 2018 01:23:16 GMT
ENV JAVA_VERSION=8u181
# Wed, 05 Sep 2018 01:23:16 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 05 Sep 2018 01:23:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 05 Sep 2018 01:23:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 01:23:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 05 Sep 2018 15:44:37 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 15:44:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 05 Sep 2018 15:44:44 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 15:45:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 05 Sep 2018 15:45:55 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Wed, 05 Sep 2018 15:45:55 GMT
ENV ELASTICSEARCH_DEB_VERSION=2.4.6
# Wed, 05 Sep 2018 15:46:05 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:46:06 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 15:46:06 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 05 Sep 2018 15:46:07 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 05 Sep 2018 15:46:08 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Wed, 05 Sep 2018 15:46:08 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 05 Sep 2018 15:46:09 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Wed, 05 Sep 2018 15:46:09 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 05 Sep 2018 15:46:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:46:09 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65dd87f6620b41e303b5ee5be4bf7b4cb3a8ee55e86123d6637737383d3078d3`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 852.9 KB (852884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a183a01190c57eb606a72e8c273630224ae454d26bc3f73f4edf205821553b`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4499c85f9798901010eb0cd0c245a1439b731362a46d5ee246f2ad56d72fc0`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d39b4bfc1b2ce067f6a3f00395918187829d4e3d5094276db7e2addd1dc1f`  
		Last Modified: Wed, 05 Sep 2018 01:42:17 GMT  
		Size: 122.1 MB (122122653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1cec2222c9250bed824daddb12fe4674a55afc78207ee3e3e7a943fc9293fa`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 246.7 KB (246694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ff4ce9df6872166ebfecb89f044e8b5412ef982466459653d38ce25a853a57`  
		Last Modified: Wed, 05 Sep 2018 15:46:54 GMT  
		Size: 500.9 KB (500907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1976bc3ee43287508085ab6a8d7c10d66c29c9023f6fdb702ca325134ac2999e`  
		Last Modified: Wed, 05 Sep 2018 15:46:49 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27899b7a5b5695355d2d91d600043f9f08d1c9fd0ae3f221e1df3358364ecaa`  
		Last Modified: Wed, 05 Sep 2018 15:47:45 GMT  
		Size: 920.2 KB (920224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fc7d2c927a17021153b08a412a2afa1d5a5274690dfecbddeea57917fcec0e`  
		Last Modified: Wed, 05 Sep 2018 15:47:49 GMT  
		Size: 27.7 MB (27666795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d94b96bbcd0cdd229287aba313b6743d5b6868bc0c43fdf1d3b46c380b3b864`  
		Last Modified: Wed, 05 Sep 2018 15:47:45 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5bf40725fd0e920d4b39c88e6b93640315b428c5f7746697b52bc7f9b896cc`  
		Last Modified: Wed, 05 Sep 2018 15:47:45 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf2a528ae9a4409bb413fa990e94478a248d2bb1744972a54827df30e8b3b17`  
		Last Modified: Wed, 05 Sep 2018 15:47:45 GMT  
		Size: 506.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4`

```console
$ docker pull elasticsearch@sha256:41ed3a1a16b63de740767944d5405843db00e55058626c22838f23b413aa4a39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4` - linux; amd64

```console
$ docker pull elasticsearch@sha256:0278ed727ad6dd0bef0be279b3112755a110980c31f07e7f4a54e19b9ca2e24a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.7 MB (212699906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9d896dc62cb76d03fd48ef06c744d45fbd2098e3fc1752ad4604c8d35b14eb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 01:23:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:23:14 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:23:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:23:15 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 05 Sep 2018 01:23:16 GMT
ENV JAVA_VERSION=8u181
# Wed, 05 Sep 2018 01:23:16 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 05 Sep 2018 01:23:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 05 Sep 2018 01:23:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 01:23:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 05 Sep 2018 15:44:37 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 15:44:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 05 Sep 2018 15:44:44 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 15:45:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 05 Sep 2018 15:45:55 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Wed, 05 Sep 2018 15:45:55 GMT
ENV ELASTICSEARCH_DEB_VERSION=2.4.6
# Wed, 05 Sep 2018 15:46:05 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:46:06 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 15:46:06 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 05 Sep 2018 15:46:07 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 05 Sep 2018 15:46:08 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Wed, 05 Sep 2018 15:46:08 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 05 Sep 2018 15:46:09 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Wed, 05 Sep 2018 15:46:09 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 05 Sep 2018 15:46:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:46:09 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65dd87f6620b41e303b5ee5be4bf7b4cb3a8ee55e86123d6637737383d3078d3`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 852.9 KB (852884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a183a01190c57eb606a72e8c273630224ae454d26bc3f73f4edf205821553b`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4499c85f9798901010eb0cd0c245a1439b731362a46d5ee246f2ad56d72fc0`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d39b4bfc1b2ce067f6a3f00395918187829d4e3d5094276db7e2addd1dc1f`  
		Last Modified: Wed, 05 Sep 2018 01:42:17 GMT  
		Size: 122.1 MB (122122653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1cec2222c9250bed824daddb12fe4674a55afc78207ee3e3e7a943fc9293fa`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 246.7 KB (246694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ff4ce9df6872166ebfecb89f044e8b5412ef982466459653d38ce25a853a57`  
		Last Modified: Wed, 05 Sep 2018 15:46:54 GMT  
		Size: 500.9 KB (500907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1976bc3ee43287508085ab6a8d7c10d66c29c9023f6fdb702ca325134ac2999e`  
		Last Modified: Wed, 05 Sep 2018 15:46:49 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27899b7a5b5695355d2d91d600043f9f08d1c9fd0ae3f221e1df3358364ecaa`  
		Last Modified: Wed, 05 Sep 2018 15:47:45 GMT  
		Size: 920.2 KB (920224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fc7d2c927a17021153b08a412a2afa1d5a5274690dfecbddeea57917fcec0e`  
		Last Modified: Wed, 05 Sep 2018 15:47:49 GMT  
		Size: 27.7 MB (27666795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d94b96bbcd0cdd229287aba313b6743d5b6868bc0c43fdf1d3b46c380b3b864`  
		Last Modified: Wed, 05 Sep 2018 15:47:45 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5bf40725fd0e920d4b39c88e6b93640315b428c5f7746697b52bc7f9b896cc`  
		Last Modified: Wed, 05 Sep 2018 15:47:45 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf2a528ae9a4409bb413fa990e94478a248d2bb1744972a54827df30e8b3b17`  
		Last Modified: Wed, 05 Sep 2018 15:47:45 GMT  
		Size: 506.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4.6`

```console
$ docker pull elasticsearch@sha256:41ed3a1a16b63de740767944d5405843db00e55058626c22838f23b413aa4a39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4.6` - linux; amd64

```console
$ docker pull elasticsearch@sha256:0278ed727ad6dd0bef0be279b3112755a110980c31f07e7f4a54e19b9ca2e24a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.7 MB (212699906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9d896dc62cb76d03fd48ef06c744d45fbd2098e3fc1752ad4604c8d35b14eb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 01:23:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:23:14 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:23:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:23:15 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 05 Sep 2018 01:23:16 GMT
ENV JAVA_VERSION=8u181
# Wed, 05 Sep 2018 01:23:16 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 05 Sep 2018 01:23:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 05 Sep 2018 01:23:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 01:23:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 05 Sep 2018 15:44:37 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 15:44:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 05 Sep 2018 15:44:44 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 15:45:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 05 Sep 2018 15:45:55 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Wed, 05 Sep 2018 15:45:55 GMT
ENV ELASTICSEARCH_DEB_VERSION=2.4.6
# Wed, 05 Sep 2018 15:46:05 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:46:06 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 15:46:06 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 05 Sep 2018 15:46:07 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 05 Sep 2018 15:46:08 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Wed, 05 Sep 2018 15:46:08 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 05 Sep 2018 15:46:09 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Wed, 05 Sep 2018 15:46:09 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 05 Sep 2018 15:46:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:46:09 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65dd87f6620b41e303b5ee5be4bf7b4cb3a8ee55e86123d6637737383d3078d3`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 852.9 KB (852884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a183a01190c57eb606a72e8c273630224ae454d26bc3f73f4edf205821553b`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4499c85f9798901010eb0cd0c245a1439b731362a46d5ee246f2ad56d72fc0`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d39b4bfc1b2ce067f6a3f00395918187829d4e3d5094276db7e2addd1dc1f`  
		Last Modified: Wed, 05 Sep 2018 01:42:17 GMT  
		Size: 122.1 MB (122122653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1cec2222c9250bed824daddb12fe4674a55afc78207ee3e3e7a943fc9293fa`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 246.7 KB (246694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ff4ce9df6872166ebfecb89f044e8b5412ef982466459653d38ce25a853a57`  
		Last Modified: Wed, 05 Sep 2018 15:46:54 GMT  
		Size: 500.9 KB (500907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1976bc3ee43287508085ab6a8d7c10d66c29c9023f6fdb702ca325134ac2999e`  
		Last Modified: Wed, 05 Sep 2018 15:46:49 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27899b7a5b5695355d2d91d600043f9f08d1c9fd0ae3f221e1df3358364ecaa`  
		Last Modified: Wed, 05 Sep 2018 15:47:45 GMT  
		Size: 920.2 KB (920224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fc7d2c927a17021153b08a412a2afa1d5a5274690dfecbddeea57917fcec0e`  
		Last Modified: Wed, 05 Sep 2018 15:47:49 GMT  
		Size: 27.7 MB (27666795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d94b96bbcd0cdd229287aba313b6743d5b6868bc0c43fdf1d3b46c380b3b864`  
		Last Modified: Wed, 05 Sep 2018 15:47:45 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5bf40725fd0e920d4b39c88e6b93640315b428c5f7746697b52bc7f9b896cc`  
		Last Modified: Wed, 05 Sep 2018 15:47:45 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf2a528ae9a4409bb413fa990e94478a248d2bb1744972a54827df30e8b3b17`  
		Last Modified: Wed, 05 Sep 2018 15:47:45 GMT  
		Size: 506.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4.6-alpine`

```console
$ docker pull elasticsearch@sha256:06ae3a7cb0ba2882f3ce86e56ab51c9f0a875d438d6bc9b74909b8c105af7a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4.6-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:1fa4955b0330c0dac71cfad339c9df8eb15ae1438e675e3d97d17597993ec85f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87220476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e78934dd1ba4513484a35f321013ab882e8d3679d77f7cf6064801eaffa863`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 01:23:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:24:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 05 Sep 2018 01:24:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 01:24:27 GMT
ENV JAVA_VERSION=8u171
# Wed, 05 Sep 2018 01:24:27 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 05 Sep 2018 01:24:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 05 Sep 2018 15:45:21 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 05 Sep 2018 15:45:23 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 05 Sep 2018 15:45:24 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 05 Sep 2018 15:45:24 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 05 Sep 2018 15:45:24 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 15:46:20 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Wed, 05 Sep 2018 15:46:20 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=c3441bef89cd91206edf3cf3bd5c4b62550e60a9
# Wed, 05 Sep 2018 15:46:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 05 Sep 2018 15:46:31 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Wed, 05 Sep 2018 15:46:31 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 05 Sep 2018 15:46:32 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 05 Sep 2018 15:46:32 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 05 Sep 2018 15:46:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:46:33 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146c373b4668ab06b15e7bed7d009c501c752b3de4c71491e4fc1a4b5d4d71a`  
		Last Modified: Wed, 05 Sep 2018 01:41:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f005771ae04a165e2a820ee9f99b43cf227c7577761b4eb0838fde7aeccd0a1c`  
		Last Modified: Wed, 05 Sep 2018 01:42:55 GMT  
		Size: 54.8 MB (54798238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b25324fd7a84ef707ac512d60b5090f4f9b132db7c2e0a20c52636824043213`  
		Last Modified: Wed, 05 Sep 2018 15:47:18 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322a1f3c02ef12090c4b25f035a07ae84127b978e59fbe87498ae1851db46b1a`  
		Last Modified: Wed, 05 Sep 2018 15:47:18 GMT  
		Size: 1.2 MB (1204629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be4f5eb743520361e46d9869cc92b29f815787c2a3f4d53df576c51ab461e3d`  
		Last Modified: Wed, 05 Sep 2018 15:47:17 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3edccf4d996519f720aabe898b7ce35cf5b2aa62ab4ca6e53bf5381ed321ef`  
		Last Modified: Wed, 05 Sep 2018 15:48:11 GMT  
		Size: 29.0 MB (29008372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9013255af1382b3b49a7e561350360290a2ae58025f6d576f19c74bbacae39c`  
		Last Modified: Wed, 05 Sep 2018 15:48:08 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc89675b5c024c57584097f5e0a8dfc8edac1b59378c7cab2044de1e8b36aaa`  
		Last Modified: Wed, 05 Sep 2018 15:48:08 GMT  
		Size: 506.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4-alpine`

```console
$ docker pull elasticsearch@sha256:06ae3a7cb0ba2882f3ce86e56ab51c9f0a875d438d6bc9b74909b8c105af7a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:1fa4955b0330c0dac71cfad339c9df8eb15ae1438e675e3d97d17597993ec85f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87220476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e78934dd1ba4513484a35f321013ab882e8d3679d77f7cf6064801eaffa863`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 01:23:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:24:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 05 Sep 2018 01:24:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 01:24:27 GMT
ENV JAVA_VERSION=8u171
# Wed, 05 Sep 2018 01:24:27 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 05 Sep 2018 01:24:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 05 Sep 2018 15:45:21 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 05 Sep 2018 15:45:23 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 05 Sep 2018 15:45:24 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 05 Sep 2018 15:45:24 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 05 Sep 2018 15:45:24 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 15:46:20 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Wed, 05 Sep 2018 15:46:20 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=c3441bef89cd91206edf3cf3bd5c4b62550e60a9
# Wed, 05 Sep 2018 15:46:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 05 Sep 2018 15:46:31 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Wed, 05 Sep 2018 15:46:31 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 05 Sep 2018 15:46:32 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 05 Sep 2018 15:46:32 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 05 Sep 2018 15:46:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:46:33 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146c373b4668ab06b15e7bed7d009c501c752b3de4c71491e4fc1a4b5d4d71a`  
		Last Modified: Wed, 05 Sep 2018 01:41:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f005771ae04a165e2a820ee9f99b43cf227c7577761b4eb0838fde7aeccd0a1c`  
		Last Modified: Wed, 05 Sep 2018 01:42:55 GMT  
		Size: 54.8 MB (54798238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b25324fd7a84ef707ac512d60b5090f4f9b132db7c2e0a20c52636824043213`  
		Last Modified: Wed, 05 Sep 2018 15:47:18 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322a1f3c02ef12090c4b25f035a07ae84127b978e59fbe87498ae1851db46b1a`  
		Last Modified: Wed, 05 Sep 2018 15:47:18 GMT  
		Size: 1.2 MB (1204629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be4f5eb743520361e46d9869cc92b29f815787c2a3f4d53df576c51ab461e3d`  
		Last Modified: Wed, 05 Sep 2018 15:47:17 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3edccf4d996519f720aabe898b7ce35cf5b2aa62ab4ca6e53bf5381ed321ef`  
		Last Modified: Wed, 05 Sep 2018 15:48:11 GMT  
		Size: 29.0 MB (29008372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9013255af1382b3b49a7e561350360290a2ae58025f6d576f19c74bbacae39c`  
		Last Modified: Wed, 05 Sep 2018 15:48:08 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc89675b5c024c57584097f5e0a8dfc8edac1b59378c7cab2044de1e8b36aaa`  
		Last Modified: Wed, 05 Sep 2018 15:48:08 GMT  
		Size: 506.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2-alpine`

```console
$ docker pull elasticsearch@sha256:06ae3a7cb0ba2882f3ce86e56ab51c9f0a875d438d6bc9b74909b8c105af7a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:2-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:1fa4955b0330c0dac71cfad339c9df8eb15ae1438e675e3d97d17597993ec85f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87220476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e78934dd1ba4513484a35f321013ab882e8d3679d77f7cf6064801eaffa863`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 01:23:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:24:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 05 Sep 2018 01:24:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 01:24:27 GMT
ENV JAVA_VERSION=8u171
# Wed, 05 Sep 2018 01:24:27 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 05 Sep 2018 01:24:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 05 Sep 2018 15:45:21 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 05 Sep 2018 15:45:23 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 05 Sep 2018 15:45:24 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 05 Sep 2018 15:45:24 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 05 Sep 2018 15:45:24 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 15:46:20 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Wed, 05 Sep 2018 15:46:20 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=c3441bef89cd91206edf3cf3bd5c4b62550e60a9
# Wed, 05 Sep 2018 15:46:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 05 Sep 2018 15:46:31 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Wed, 05 Sep 2018 15:46:31 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 05 Sep 2018 15:46:32 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 05 Sep 2018 15:46:32 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 05 Sep 2018 15:46:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:46:33 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146c373b4668ab06b15e7bed7d009c501c752b3de4c71491e4fc1a4b5d4d71a`  
		Last Modified: Wed, 05 Sep 2018 01:41:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f005771ae04a165e2a820ee9f99b43cf227c7577761b4eb0838fde7aeccd0a1c`  
		Last Modified: Wed, 05 Sep 2018 01:42:55 GMT  
		Size: 54.8 MB (54798238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b25324fd7a84ef707ac512d60b5090f4f9b132db7c2e0a20c52636824043213`  
		Last Modified: Wed, 05 Sep 2018 15:47:18 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322a1f3c02ef12090c4b25f035a07ae84127b978e59fbe87498ae1851db46b1a`  
		Last Modified: Wed, 05 Sep 2018 15:47:18 GMT  
		Size: 1.2 MB (1204629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be4f5eb743520361e46d9869cc92b29f815787c2a3f4d53df576c51ab461e3d`  
		Last Modified: Wed, 05 Sep 2018 15:47:17 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3edccf4d996519f720aabe898b7ce35cf5b2aa62ab4ca6e53bf5381ed321ef`  
		Last Modified: Wed, 05 Sep 2018 15:48:11 GMT  
		Size: 29.0 MB (29008372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9013255af1382b3b49a7e561350360290a2ae58025f6d576f19c74bbacae39c`  
		Last Modified: Wed, 05 Sep 2018 15:48:08 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc89675b5c024c57584097f5e0a8dfc8edac1b59378c7cab2044de1e8b36aaa`  
		Last Modified: Wed, 05 Sep 2018 15:48:08 GMT  
		Size: 506.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5`

```console
$ docker pull elasticsearch@sha256:278fda6f49f0576f11739e14061e9502c26397fed4ebd3d58c57d805b8c5fbde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:7868929aa65aa3ecb1b43bea861c628cc776398b9379a20a175824450774ece2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219229349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:362c5cb1669b144eef89d39a6e9153c546c14923e10fde17701920615c0e2add`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 01:23:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:23:14 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:23:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:23:15 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 05 Sep 2018 01:23:16 GMT
ENV JAVA_VERSION=8u181
# Wed, 05 Sep 2018 01:23:16 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 05 Sep 2018 01:23:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 05 Sep 2018 01:23:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 01:23:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 05 Sep 2018 15:44:37 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 15:44:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 05 Sep 2018 15:44:44 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 15:44:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 05 Sep 2018 15:44:53 GMT
ENV ELASTICSEARCH_VERSION=5.6.11
# Wed, 05 Sep 2018 15:44:53 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.11
# Wed, 05 Sep 2018 15:45:04 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:45:05 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 15:45:05 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 05 Sep 2018 15:45:06 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 05 Sep 2018 15:45:06 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 05 Sep 2018 15:45:07 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 05 Sep 2018 15:45:07 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Wed, 05 Sep 2018 15:45:07 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 05 Sep 2018 15:45:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:45:08 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65dd87f6620b41e303b5ee5be4bf7b4cb3a8ee55e86123d6637737383d3078d3`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 852.9 KB (852884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a183a01190c57eb606a72e8c273630224ae454d26bc3f73f4edf205821553b`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4499c85f9798901010eb0cd0c245a1439b731362a46d5ee246f2ad56d72fc0`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d39b4bfc1b2ce067f6a3f00395918187829d4e3d5094276db7e2addd1dc1f`  
		Last Modified: Wed, 05 Sep 2018 01:42:17 GMT  
		Size: 122.1 MB (122122653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1cec2222c9250bed824daddb12fe4674a55afc78207ee3e3e7a943fc9293fa`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 246.7 KB (246694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ff4ce9df6872166ebfecb89f044e8b5412ef982466459653d38ce25a853a57`  
		Last Modified: Wed, 05 Sep 2018 15:46:54 GMT  
		Size: 500.9 KB (500907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1976bc3ee43287508085ab6a8d7c10d66c29c9023f6fdb702ca325134ac2999e`  
		Last Modified: Wed, 05 Sep 2018 15:46:49 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af49e8af3815030540c36a2848f90109bb38e52ad23de1af34421d660f22268`  
		Last Modified: Wed, 05 Sep 2018 15:46:48 GMT  
		Size: 920.3 KB (920251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29953b617088715f8e172e95b6f05fde484f3c1ac5f50e9e2e77c3233607cc3`  
		Last Modified: Wed, 05 Sep 2018 15:46:52 GMT  
		Size: 34.2 MB (34196256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328d86a67ab2ea3468ca289431c9319fc706d30f0b80774ac0d1b4587a1e7c52`  
		Last Modified: Wed, 05 Sep 2018 15:46:48 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9088f7f7e3ab8d783eb8195ab8cc760a4cf70754d906fa4d123711b40f9c805a`  
		Last Modified: Wed, 05 Sep 2018 15:46:48 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0448468c4fb1a79c29776bb2ca898aa56caab1090955d1518ebc95ac53753303`  
		Last Modified: Wed, 05 Sep 2018 15:46:47 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6`

```console
$ docker pull elasticsearch@sha256:278fda6f49f0576f11739e14061e9502c26397fed4ebd3d58c57d805b8c5fbde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6` - linux; amd64

```console
$ docker pull elasticsearch@sha256:7868929aa65aa3ecb1b43bea861c628cc776398b9379a20a175824450774ece2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219229349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:362c5cb1669b144eef89d39a6e9153c546c14923e10fde17701920615c0e2add`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 01:23:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:23:14 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:23:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:23:15 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 05 Sep 2018 01:23:16 GMT
ENV JAVA_VERSION=8u181
# Wed, 05 Sep 2018 01:23:16 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 05 Sep 2018 01:23:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 05 Sep 2018 01:23:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 01:23:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 05 Sep 2018 15:44:37 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 15:44:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 05 Sep 2018 15:44:44 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 15:44:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 05 Sep 2018 15:44:53 GMT
ENV ELASTICSEARCH_VERSION=5.6.11
# Wed, 05 Sep 2018 15:44:53 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.11
# Wed, 05 Sep 2018 15:45:04 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:45:05 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 15:45:05 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 05 Sep 2018 15:45:06 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 05 Sep 2018 15:45:06 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 05 Sep 2018 15:45:07 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 05 Sep 2018 15:45:07 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Wed, 05 Sep 2018 15:45:07 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 05 Sep 2018 15:45:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:45:08 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65dd87f6620b41e303b5ee5be4bf7b4cb3a8ee55e86123d6637737383d3078d3`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 852.9 KB (852884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a183a01190c57eb606a72e8c273630224ae454d26bc3f73f4edf205821553b`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4499c85f9798901010eb0cd0c245a1439b731362a46d5ee246f2ad56d72fc0`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d39b4bfc1b2ce067f6a3f00395918187829d4e3d5094276db7e2addd1dc1f`  
		Last Modified: Wed, 05 Sep 2018 01:42:17 GMT  
		Size: 122.1 MB (122122653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1cec2222c9250bed824daddb12fe4674a55afc78207ee3e3e7a943fc9293fa`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 246.7 KB (246694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ff4ce9df6872166ebfecb89f044e8b5412ef982466459653d38ce25a853a57`  
		Last Modified: Wed, 05 Sep 2018 15:46:54 GMT  
		Size: 500.9 KB (500907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1976bc3ee43287508085ab6a8d7c10d66c29c9023f6fdb702ca325134ac2999e`  
		Last Modified: Wed, 05 Sep 2018 15:46:49 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af49e8af3815030540c36a2848f90109bb38e52ad23de1af34421d660f22268`  
		Last Modified: Wed, 05 Sep 2018 15:46:48 GMT  
		Size: 920.3 KB (920251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29953b617088715f8e172e95b6f05fde484f3c1ac5f50e9e2e77c3233607cc3`  
		Last Modified: Wed, 05 Sep 2018 15:46:52 GMT  
		Size: 34.2 MB (34196256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328d86a67ab2ea3468ca289431c9319fc706d30f0b80774ac0d1b4587a1e7c52`  
		Last Modified: Wed, 05 Sep 2018 15:46:48 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9088f7f7e3ab8d783eb8195ab8cc760a4cf70754d906fa4d123711b40f9c805a`  
		Last Modified: Wed, 05 Sep 2018 15:46:48 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0448468c4fb1a79c29776bb2ca898aa56caab1090955d1518ebc95ac53753303`  
		Last Modified: Wed, 05 Sep 2018 15:46:47 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6.11`

```console
$ docker pull elasticsearch@sha256:278fda6f49f0576f11739e14061e9502c26397fed4ebd3d58c57d805b8c5fbde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6.11` - linux; amd64

```console
$ docker pull elasticsearch@sha256:7868929aa65aa3ecb1b43bea861c628cc776398b9379a20a175824450774ece2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219229349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:362c5cb1669b144eef89d39a6e9153c546c14923e10fde17701920615c0e2add`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 01:23:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:23:14 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:23:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:23:15 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 05 Sep 2018 01:23:16 GMT
ENV JAVA_VERSION=8u181
# Wed, 05 Sep 2018 01:23:16 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 05 Sep 2018 01:23:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 05 Sep 2018 01:23:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 01:23:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 05 Sep 2018 15:44:37 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 15:44:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 05 Sep 2018 15:44:44 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 15:44:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 05 Sep 2018 15:44:53 GMT
ENV ELASTICSEARCH_VERSION=5.6.11
# Wed, 05 Sep 2018 15:44:53 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.11
# Wed, 05 Sep 2018 15:45:04 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:45:05 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 15:45:05 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 05 Sep 2018 15:45:06 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 05 Sep 2018 15:45:06 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 05 Sep 2018 15:45:07 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 05 Sep 2018 15:45:07 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Wed, 05 Sep 2018 15:45:07 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 05 Sep 2018 15:45:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:45:08 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65dd87f6620b41e303b5ee5be4bf7b4cb3a8ee55e86123d6637737383d3078d3`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 852.9 KB (852884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a183a01190c57eb606a72e8c273630224ae454d26bc3f73f4edf205821553b`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4499c85f9798901010eb0cd0c245a1439b731362a46d5ee246f2ad56d72fc0`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d39b4bfc1b2ce067f6a3f00395918187829d4e3d5094276db7e2addd1dc1f`  
		Last Modified: Wed, 05 Sep 2018 01:42:17 GMT  
		Size: 122.1 MB (122122653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1cec2222c9250bed824daddb12fe4674a55afc78207ee3e3e7a943fc9293fa`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 246.7 KB (246694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ff4ce9df6872166ebfecb89f044e8b5412ef982466459653d38ce25a853a57`  
		Last Modified: Wed, 05 Sep 2018 15:46:54 GMT  
		Size: 500.9 KB (500907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1976bc3ee43287508085ab6a8d7c10d66c29c9023f6fdb702ca325134ac2999e`  
		Last Modified: Wed, 05 Sep 2018 15:46:49 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af49e8af3815030540c36a2848f90109bb38e52ad23de1af34421d660f22268`  
		Last Modified: Wed, 05 Sep 2018 15:46:48 GMT  
		Size: 920.3 KB (920251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29953b617088715f8e172e95b6f05fde484f3c1ac5f50e9e2e77c3233607cc3`  
		Last Modified: Wed, 05 Sep 2018 15:46:52 GMT  
		Size: 34.2 MB (34196256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328d86a67ab2ea3468ca289431c9319fc706d30f0b80774ac0d1b4587a1e7c52`  
		Last Modified: Wed, 05 Sep 2018 15:46:48 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9088f7f7e3ab8d783eb8195ab8cc760a4cf70754d906fa4d123711b40f9c805a`  
		Last Modified: Wed, 05 Sep 2018 15:46:48 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0448468c4fb1a79c29776bb2ca898aa56caab1090955d1518ebc95ac53753303`  
		Last Modified: Wed, 05 Sep 2018 15:46:47 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6.11-alpine`

```console
$ docker pull elasticsearch@sha256:825eef4ff44c6bacc3f30fb911713ce8492ded0a9f9f5f4be2390e1798672fdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6.11-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:0c26e7dcb9bcf34845b43e8196b7d85db2d05ef3b6a36e639932ead97305287b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.7 MB (93744699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae2d5edeaab98950ecff0c85b4c383596768dea4344fefdd84bcd0acbf93816d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 01:23:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:24:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 05 Sep 2018 01:24:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 01:24:27 GMT
ENV JAVA_VERSION=8u171
# Wed, 05 Sep 2018 01:24:27 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 05 Sep 2018 01:24:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 05 Sep 2018 15:45:21 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 05 Sep 2018 15:45:23 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 05 Sep 2018 15:45:24 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 05 Sep 2018 15:45:24 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 05 Sep 2018 15:45:24 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 15:45:24 GMT
ENV ELASTICSEARCH_VERSION=5.6.11
# Wed, 05 Sep 2018 15:45:25 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.11.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.11.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=60de273a1661f8c5f37b4e974d337c5962f2ded5
# Wed, 05 Sep 2018 15:45:38 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 05 Sep 2018 15:45:38 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 05 Sep 2018 15:45:38 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 05 Sep 2018 15:45:39 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 05 Sep 2018 15:45:39 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 05 Sep 2018 15:45:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:45:40 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146c373b4668ab06b15e7bed7d009c501c752b3de4c71491e4fc1a4b5d4d71a`  
		Last Modified: Wed, 05 Sep 2018 01:41:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f005771ae04a165e2a820ee9f99b43cf227c7577761b4eb0838fde7aeccd0a1c`  
		Last Modified: Wed, 05 Sep 2018 01:42:55 GMT  
		Size: 54.8 MB (54798238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b25324fd7a84ef707ac512d60b5090f4f9b132db7c2e0a20c52636824043213`  
		Last Modified: Wed, 05 Sep 2018 15:47:18 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322a1f3c02ef12090c4b25f035a07ae84127b978e59fbe87498ae1851db46b1a`  
		Last Modified: Wed, 05 Sep 2018 15:47:18 GMT  
		Size: 1.2 MB (1204629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be4f5eb743520361e46d9869cc92b29f815787c2a3f4d53df576c51ab461e3d`  
		Last Modified: Wed, 05 Sep 2018 15:47:17 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3eacdb5987fe282f25290598ea10c35841e625f076fcf4bc52c83072e66dda9`  
		Last Modified: Wed, 05 Sep 2018 15:47:22 GMT  
		Size: 35.5 MB (35532651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c4e99088e264ab68bb25a374e4f5e22b3047cb5b596bcd13dd8a1c12a23ed2`  
		Last Modified: Wed, 05 Sep 2018 15:47:17 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbda59620a4815cc0087f781ac0a117516b83d25b8d792ee759afcfcdbb11127`  
		Last Modified: Wed, 05 Sep 2018 15:47:17 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6-alpine`

```console
$ docker pull elasticsearch@sha256:825eef4ff44c6bacc3f30fb911713ce8492ded0a9f9f5f4be2390e1798672fdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:0c26e7dcb9bcf34845b43e8196b7d85db2d05ef3b6a36e639932ead97305287b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.7 MB (93744699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae2d5edeaab98950ecff0c85b4c383596768dea4344fefdd84bcd0acbf93816d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 01:23:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:24:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 05 Sep 2018 01:24:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 01:24:27 GMT
ENV JAVA_VERSION=8u171
# Wed, 05 Sep 2018 01:24:27 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 05 Sep 2018 01:24:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 05 Sep 2018 15:45:21 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 05 Sep 2018 15:45:23 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 05 Sep 2018 15:45:24 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 05 Sep 2018 15:45:24 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 05 Sep 2018 15:45:24 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 15:45:24 GMT
ENV ELASTICSEARCH_VERSION=5.6.11
# Wed, 05 Sep 2018 15:45:25 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.11.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.11.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=60de273a1661f8c5f37b4e974d337c5962f2ded5
# Wed, 05 Sep 2018 15:45:38 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 05 Sep 2018 15:45:38 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 05 Sep 2018 15:45:38 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 05 Sep 2018 15:45:39 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 05 Sep 2018 15:45:39 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 05 Sep 2018 15:45:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:45:40 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146c373b4668ab06b15e7bed7d009c501c752b3de4c71491e4fc1a4b5d4d71a`  
		Last Modified: Wed, 05 Sep 2018 01:41:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f005771ae04a165e2a820ee9f99b43cf227c7577761b4eb0838fde7aeccd0a1c`  
		Last Modified: Wed, 05 Sep 2018 01:42:55 GMT  
		Size: 54.8 MB (54798238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b25324fd7a84ef707ac512d60b5090f4f9b132db7c2e0a20c52636824043213`  
		Last Modified: Wed, 05 Sep 2018 15:47:18 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322a1f3c02ef12090c4b25f035a07ae84127b978e59fbe87498ae1851db46b1a`  
		Last Modified: Wed, 05 Sep 2018 15:47:18 GMT  
		Size: 1.2 MB (1204629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be4f5eb743520361e46d9869cc92b29f815787c2a3f4d53df576c51ab461e3d`  
		Last Modified: Wed, 05 Sep 2018 15:47:17 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3eacdb5987fe282f25290598ea10c35841e625f076fcf4bc52c83072e66dda9`  
		Last Modified: Wed, 05 Sep 2018 15:47:22 GMT  
		Size: 35.5 MB (35532651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c4e99088e264ab68bb25a374e4f5e22b3047cb5b596bcd13dd8a1c12a23ed2`  
		Last Modified: Wed, 05 Sep 2018 15:47:17 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbda59620a4815cc0087f781ac0a117516b83d25b8d792ee759afcfcdbb11127`  
		Last Modified: Wed, 05 Sep 2018 15:47:17 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5-alpine`

```console
$ docker pull elasticsearch@sha256:825eef4ff44c6bacc3f30fb911713ce8492ded0a9f9f5f4be2390e1798672fdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:0c26e7dcb9bcf34845b43e8196b7d85db2d05ef3b6a36e639932ead97305287b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.7 MB (93744699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae2d5edeaab98950ecff0c85b4c383596768dea4344fefdd84bcd0acbf93816d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 01:23:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:24:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 05 Sep 2018 01:24:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 01:24:27 GMT
ENV JAVA_VERSION=8u171
# Wed, 05 Sep 2018 01:24:27 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 05 Sep 2018 01:24:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 05 Sep 2018 15:45:21 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 05 Sep 2018 15:45:23 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 05 Sep 2018 15:45:24 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 05 Sep 2018 15:45:24 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 05 Sep 2018 15:45:24 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 15:45:24 GMT
ENV ELASTICSEARCH_VERSION=5.6.11
# Wed, 05 Sep 2018 15:45:25 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.11.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.11.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=60de273a1661f8c5f37b4e974d337c5962f2ded5
# Wed, 05 Sep 2018 15:45:38 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 05 Sep 2018 15:45:38 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 05 Sep 2018 15:45:38 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 05 Sep 2018 15:45:39 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 05 Sep 2018 15:45:39 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 05 Sep 2018 15:45:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:45:40 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146c373b4668ab06b15e7bed7d009c501c752b3de4c71491e4fc1a4b5d4d71a`  
		Last Modified: Wed, 05 Sep 2018 01:41:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f005771ae04a165e2a820ee9f99b43cf227c7577761b4eb0838fde7aeccd0a1c`  
		Last Modified: Wed, 05 Sep 2018 01:42:55 GMT  
		Size: 54.8 MB (54798238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b25324fd7a84ef707ac512d60b5090f4f9b132db7c2e0a20c52636824043213`  
		Last Modified: Wed, 05 Sep 2018 15:47:18 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322a1f3c02ef12090c4b25f035a07ae84127b978e59fbe87498ae1851db46b1a`  
		Last Modified: Wed, 05 Sep 2018 15:47:18 GMT  
		Size: 1.2 MB (1204629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be4f5eb743520361e46d9869cc92b29f815787c2a3f4d53df576c51ab461e3d`  
		Last Modified: Wed, 05 Sep 2018 15:47:17 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3eacdb5987fe282f25290598ea10c35841e625f076fcf4bc52c83072e66dda9`  
		Last Modified: Wed, 05 Sep 2018 15:47:22 GMT  
		Size: 35.5 MB (35532651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c4e99088e264ab68bb25a374e4f5e22b3047cb5b596bcd13dd8a1c12a23ed2`  
		Last Modified: Wed, 05 Sep 2018 15:47:17 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbda59620a4815cc0087f781ac0a117516b83d25b8d792ee759afcfcdbb11127`  
		Last Modified: Wed, 05 Sep 2018 15:47:17 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:alpine`

```console
$ docker pull elasticsearch@sha256:825eef4ff44c6bacc3f30fb911713ce8492ded0a9f9f5f4be2390e1798672fdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:0c26e7dcb9bcf34845b43e8196b7d85db2d05ef3b6a36e639932ead97305287b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.7 MB (93744699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae2d5edeaab98950ecff0c85b4c383596768dea4344fefdd84bcd0acbf93816d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 01:23:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:24:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 05 Sep 2018 01:24:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 01:24:27 GMT
ENV JAVA_VERSION=8u171
# Wed, 05 Sep 2018 01:24:27 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 05 Sep 2018 01:24:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 05 Sep 2018 15:45:21 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 05 Sep 2018 15:45:23 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 05 Sep 2018 15:45:24 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 05 Sep 2018 15:45:24 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 05 Sep 2018 15:45:24 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 15:45:24 GMT
ENV ELASTICSEARCH_VERSION=5.6.11
# Wed, 05 Sep 2018 15:45:25 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.11.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.11.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=60de273a1661f8c5f37b4e974d337c5962f2ded5
# Wed, 05 Sep 2018 15:45:38 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 05 Sep 2018 15:45:38 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 05 Sep 2018 15:45:38 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 05 Sep 2018 15:45:39 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 05 Sep 2018 15:45:39 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 05 Sep 2018 15:45:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:45:40 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146c373b4668ab06b15e7bed7d009c501c752b3de4c71491e4fc1a4b5d4d71a`  
		Last Modified: Wed, 05 Sep 2018 01:41:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f005771ae04a165e2a820ee9f99b43cf227c7577761b4eb0838fde7aeccd0a1c`  
		Last Modified: Wed, 05 Sep 2018 01:42:55 GMT  
		Size: 54.8 MB (54798238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b25324fd7a84ef707ac512d60b5090f4f9b132db7c2e0a20c52636824043213`  
		Last Modified: Wed, 05 Sep 2018 15:47:18 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322a1f3c02ef12090c4b25f035a07ae84127b978e59fbe87498ae1851db46b1a`  
		Last Modified: Wed, 05 Sep 2018 15:47:18 GMT  
		Size: 1.2 MB (1204629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be4f5eb743520361e46d9869cc92b29f815787c2a3f4d53df576c51ab461e3d`  
		Last Modified: Wed, 05 Sep 2018 15:47:17 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3eacdb5987fe282f25290598ea10c35841e625f076fcf4bc52c83072e66dda9`  
		Last Modified: Wed, 05 Sep 2018 15:47:22 GMT  
		Size: 35.5 MB (35532651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c4e99088e264ab68bb25a374e4f5e22b3047cb5b596bcd13dd8a1c12a23ed2`  
		Last Modified: Wed, 05 Sep 2018 15:47:17 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbda59620a4815cc0087f781ac0a117516b83d25b8d792ee759afcfcdbb11127`  
		Last Modified: Wed, 05 Sep 2018 15:47:17 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:latest`

```console
$ docker pull elasticsearch@sha256:278fda6f49f0576f11739e14061e9502c26397fed4ebd3d58c57d805b8c5fbde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:latest` - linux; amd64

```console
$ docker pull elasticsearch@sha256:7868929aa65aa3ecb1b43bea861c628cc776398b9379a20a175824450774ece2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219229349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:362c5cb1669b144eef89d39a6e9153c546c14923e10fde17701920615c0e2add`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 01:23:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:23:14 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:23:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:23:15 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 05 Sep 2018 01:23:16 GMT
ENV JAVA_VERSION=8u181
# Wed, 05 Sep 2018 01:23:16 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 05 Sep 2018 01:23:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 05 Sep 2018 01:23:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 01:23:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 05 Sep 2018 15:44:37 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 15:44:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 05 Sep 2018 15:44:44 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 15:44:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 05 Sep 2018 15:44:53 GMT
ENV ELASTICSEARCH_VERSION=5.6.11
# Wed, 05 Sep 2018 15:44:53 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.11
# Wed, 05 Sep 2018 15:45:04 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:45:05 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 15:45:05 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 05 Sep 2018 15:45:06 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 05 Sep 2018 15:45:06 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 05 Sep 2018 15:45:07 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 05 Sep 2018 15:45:07 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Wed, 05 Sep 2018 15:45:07 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 05 Sep 2018 15:45:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:45:08 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65dd87f6620b41e303b5ee5be4bf7b4cb3a8ee55e86123d6637737383d3078d3`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 852.9 KB (852884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a183a01190c57eb606a72e8c273630224ae454d26bc3f73f4edf205821553b`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4499c85f9798901010eb0cd0c245a1439b731362a46d5ee246f2ad56d72fc0`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d39b4bfc1b2ce067f6a3f00395918187829d4e3d5094276db7e2addd1dc1f`  
		Last Modified: Wed, 05 Sep 2018 01:42:17 GMT  
		Size: 122.1 MB (122122653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1cec2222c9250bed824daddb12fe4674a55afc78207ee3e3e7a943fc9293fa`  
		Last Modified: Wed, 05 Sep 2018 01:41:50 GMT  
		Size: 246.7 KB (246694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ff4ce9df6872166ebfecb89f044e8b5412ef982466459653d38ce25a853a57`  
		Last Modified: Wed, 05 Sep 2018 15:46:54 GMT  
		Size: 500.9 KB (500907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1976bc3ee43287508085ab6a8d7c10d66c29c9023f6fdb702ca325134ac2999e`  
		Last Modified: Wed, 05 Sep 2018 15:46:49 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af49e8af3815030540c36a2848f90109bb38e52ad23de1af34421d660f22268`  
		Last Modified: Wed, 05 Sep 2018 15:46:48 GMT  
		Size: 920.3 KB (920251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29953b617088715f8e172e95b6f05fde484f3c1ac5f50e9e2e77c3233607cc3`  
		Last Modified: Wed, 05 Sep 2018 15:46:52 GMT  
		Size: 34.2 MB (34196256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328d86a67ab2ea3468ca289431c9319fc706d30f0b80774ac0d1b4587a1e7c52`  
		Last Modified: Wed, 05 Sep 2018 15:46:48 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9088f7f7e3ab8d783eb8195ab8cc760a4cf70754d906fa4d123711b40f9c805a`  
		Last Modified: Wed, 05 Sep 2018 15:46:48 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0448468c4fb1a79c29776bb2ca898aa56caab1090955d1518ebc95ac53753303`  
		Last Modified: Wed, 05 Sep 2018 15:46:47 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

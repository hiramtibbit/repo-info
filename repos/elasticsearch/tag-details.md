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
-	[`elasticsearch:5.6.12`](#elasticsearch5612)
-	[`elasticsearch:5.6.12-alpine`](#elasticsearch5612-alpine)
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
$ docker pull elasticsearch@sha256:2e64ad8ce270e2a51715d611d70e65aea306e022314dce3ae731d87626677f08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4.6-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:8bc06a9dc87e53599eea84ff79b7118b0e0bf67982f79f446c2acfffa62969e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.9 MB (85943834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26d1ac62cc2941c8a98bebc0916af3ee2954ebab305c80470e965ea16044b769`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Wed, 12 Sep 2018 00:07:20 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 00:07:20 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 00:07:22 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 03:54:22 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 12 Sep 2018 03:54:24 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 12 Sep 2018 03:54:25 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 12 Sep 2018 03:54:25 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 12 Sep 2018 03:54:25 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 12 Sep 2018 03:54:51 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Wed, 12 Sep 2018 03:54:51 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=c3441bef89cd91206edf3cf3bd5c4b62550e60a9
# Wed, 12 Sep 2018 03:54:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 12 Sep 2018 03:54:58 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Wed, 12 Sep 2018 03:54:58 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 12 Sep 2018 03:54:58 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 12 Sep 2018 03:54:58 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 12 Sep 2018 03:54:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 03:54:59 GMT
CMD ["elasticsearch"]
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
	-	`sha256:d3e6d7e9702afb6c02946a1861b0a3d48b06c6614df4dd382ad81b20da30a0dc`  
		Last Modified: Wed, 12 Sep 2018 00:10:38 GMT  
		Size: 54.8 MB (54798258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51759e1f080cf1376a27f029103ab97c786a88559ed6c49a41ea3c54e65fa3f`  
		Last Modified: Wed, 12 Sep 2018 03:55:13 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d18e9ceae18e6af8bac0e24de3bcccba70c688ac7ee0373387f3abc15b6d100`  
		Last Modified: Wed, 12 Sep 2018 03:55:12 GMT  
		Size: 1.2 MB (1204620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c4ea4d9d6e189988eebf195be0d35b229468ec6e3d82e44c62af18fb361950`  
		Last Modified: Wed, 12 Sep 2018 03:55:11 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1892efdaadc7b22e90e0cc89bcb1a65d89e4950d0cda3386ea244c7ca56ce6ff`  
		Last Modified: Wed, 12 Sep 2018 03:55:44 GMT  
		Size: 27.7 MB (27731330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cdb1e1177ca448b598dff743293e9e0e6a60f6bd6c94e285727c8bbba3e7800`  
		Last Modified: Wed, 12 Sep 2018 03:55:42 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec0d0da1c0472164d9e2f0b0b60e014759f7a2f7602103ca2c1d3ea59131a486`  
		Last Modified: Wed, 12 Sep 2018 03:55:41 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4-alpine`

```console
$ docker pull elasticsearch@sha256:2e64ad8ce270e2a51715d611d70e65aea306e022314dce3ae731d87626677f08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:8bc06a9dc87e53599eea84ff79b7118b0e0bf67982f79f446c2acfffa62969e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.9 MB (85943834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26d1ac62cc2941c8a98bebc0916af3ee2954ebab305c80470e965ea16044b769`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Wed, 12 Sep 2018 00:07:20 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 00:07:20 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 00:07:22 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 03:54:22 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 12 Sep 2018 03:54:24 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 12 Sep 2018 03:54:25 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 12 Sep 2018 03:54:25 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 12 Sep 2018 03:54:25 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 12 Sep 2018 03:54:51 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Wed, 12 Sep 2018 03:54:51 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=c3441bef89cd91206edf3cf3bd5c4b62550e60a9
# Wed, 12 Sep 2018 03:54:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 12 Sep 2018 03:54:58 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Wed, 12 Sep 2018 03:54:58 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 12 Sep 2018 03:54:58 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 12 Sep 2018 03:54:58 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 12 Sep 2018 03:54:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 03:54:59 GMT
CMD ["elasticsearch"]
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
	-	`sha256:d3e6d7e9702afb6c02946a1861b0a3d48b06c6614df4dd382ad81b20da30a0dc`  
		Last Modified: Wed, 12 Sep 2018 00:10:38 GMT  
		Size: 54.8 MB (54798258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51759e1f080cf1376a27f029103ab97c786a88559ed6c49a41ea3c54e65fa3f`  
		Last Modified: Wed, 12 Sep 2018 03:55:13 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d18e9ceae18e6af8bac0e24de3bcccba70c688ac7ee0373387f3abc15b6d100`  
		Last Modified: Wed, 12 Sep 2018 03:55:12 GMT  
		Size: 1.2 MB (1204620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c4ea4d9d6e189988eebf195be0d35b229468ec6e3d82e44c62af18fb361950`  
		Last Modified: Wed, 12 Sep 2018 03:55:11 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1892efdaadc7b22e90e0cc89bcb1a65d89e4950d0cda3386ea244c7ca56ce6ff`  
		Last Modified: Wed, 12 Sep 2018 03:55:44 GMT  
		Size: 27.7 MB (27731330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cdb1e1177ca448b598dff743293e9e0e6a60f6bd6c94e285727c8bbba3e7800`  
		Last Modified: Wed, 12 Sep 2018 03:55:42 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec0d0da1c0472164d9e2f0b0b60e014759f7a2f7602103ca2c1d3ea59131a486`  
		Last Modified: Wed, 12 Sep 2018 03:55:41 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2-alpine`

```console
$ docker pull elasticsearch@sha256:2e64ad8ce270e2a51715d611d70e65aea306e022314dce3ae731d87626677f08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:2-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:8bc06a9dc87e53599eea84ff79b7118b0e0bf67982f79f446c2acfffa62969e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.9 MB (85943834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26d1ac62cc2941c8a98bebc0916af3ee2954ebab305c80470e965ea16044b769`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Wed, 12 Sep 2018 00:07:20 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 00:07:20 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 00:07:22 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 03:54:22 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 12 Sep 2018 03:54:24 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 12 Sep 2018 03:54:25 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 12 Sep 2018 03:54:25 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 12 Sep 2018 03:54:25 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 12 Sep 2018 03:54:51 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Wed, 12 Sep 2018 03:54:51 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=c3441bef89cd91206edf3cf3bd5c4b62550e60a9
# Wed, 12 Sep 2018 03:54:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 12 Sep 2018 03:54:58 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Wed, 12 Sep 2018 03:54:58 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 12 Sep 2018 03:54:58 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 12 Sep 2018 03:54:58 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 12 Sep 2018 03:54:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 03:54:59 GMT
CMD ["elasticsearch"]
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
	-	`sha256:d3e6d7e9702afb6c02946a1861b0a3d48b06c6614df4dd382ad81b20da30a0dc`  
		Last Modified: Wed, 12 Sep 2018 00:10:38 GMT  
		Size: 54.8 MB (54798258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51759e1f080cf1376a27f029103ab97c786a88559ed6c49a41ea3c54e65fa3f`  
		Last Modified: Wed, 12 Sep 2018 03:55:13 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d18e9ceae18e6af8bac0e24de3bcccba70c688ac7ee0373387f3abc15b6d100`  
		Last Modified: Wed, 12 Sep 2018 03:55:12 GMT  
		Size: 1.2 MB (1204620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c4ea4d9d6e189988eebf195be0d35b229468ec6e3d82e44c62af18fb361950`  
		Last Modified: Wed, 12 Sep 2018 03:55:11 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1892efdaadc7b22e90e0cc89bcb1a65d89e4950d0cda3386ea244c7ca56ce6ff`  
		Last Modified: Wed, 12 Sep 2018 03:55:44 GMT  
		Size: 27.7 MB (27731330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cdb1e1177ca448b598dff743293e9e0e6a60f6bd6c94e285727c8bbba3e7800`  
		Last Modified: Wed, 12 Sep 2018 03:55:42 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec0d0da1c0472164d9e2f0b0b60e014759f7a2f7602103ca2c1d3ea59131a486`  
		Last Modified: Wed, 12 Sep 2018 03:55:41 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5`

```console
$ docker pull elasticsearch@sha256:a8081d995ef3443dc6d077093172a5931e02cdb8ffddbf05c67e01d348a9770e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:cdeb134689bb0318a773e03741f4414b3d1d0ee443b827d5954f957775db57eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219230117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5acf0e8da90b995bace9fdc8f12c02ba323441873a509c19258ce0afa6754d0b`
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
# Thu, 20 Sep 2018 20:19:30 GMT
ENV ELASTICSEARCH_VERSION=5.6.12
# Thu, 20 Sep 2018 20:19:30 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.12
# Thu, 20 Sep 2018 20:19:36 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:19:36 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Sep 2018 20:19:36 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 20 Sep 2018 20:19:37 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 20 Sep 2018 20:19:37 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Thu, 20 Sep 2018 20:19:38 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 20 Sep 2018 20:19:38 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Thu, 20 Sep 2018 20:19:38 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 20 Sep 2018 20:19:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 20 Sep 2018 20:19:38 GMT
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
	-	`sha256:42c8b75ff7af4297393831779e6d23092825847b739061072e17c9ae20d3b75e`  
		Last Modified: Thu, 20 Sep 2018 20:20:19 GMT  
		Size: 34.2 MB (34197033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6902915254c0db79a4de591279a425de72b5cba0dc6691c0618d1ce60f1028`  
		Last Modified: Thu, 20 Sep 2018 20:20:16 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99853874fa542680cff49dd0d8ced2edaeb09c6bcbdaf7a04f99334ea1ca3295`  
		Last Modified: Thu, 20 Sep 2018 20:20:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596fbad6fcffd4f0ed77b4b6e11dcdf415b312237328e0d65a4141e6ef323414`  
		Last Modified: Thu, 20 Sep 2018 20:20:18 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6`

```console
$ docker pull elasticsearch@sha256:a8081d995ef3443dc6d077093172a5931e02cdb8ffddbf05c67e01d348a9770e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6` - linux; amd64

```console
$ docker pull elasticsearch@sha256:cdeb134689bb0318a773e03741f4414b3d1d0ee443b827d5954f957775db57eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219230117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5acf0e8da90b995bace9fdc8f12c02ba323441873a509c19258ce0afa6754d0b`
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
# Thu, 20 Sep 2018 20:19:30 GMT
ENV ELASTICSEARCH_VERSION=5.6.12
# Thu, 20 Sep 2018 20:19:30 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.12
# Thu, 20 Sep 2018 20:19:36 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:19:36 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Sep 2018 20:19:36 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 20 Sep 2018 20:19:37 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 20 Sep 2018 20:19:37 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Thu, 20 Sep 2018 20:19:38 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 20 Sep 2018 20:19:38 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Thu, 20 Sep 2018 20:19:38 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 20 Sep 2018 20:19:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 20 Sep 2018 20:19:38 GMT
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
	-	`sha256:42c8b75ff7af4297393831779e6d23092825847b739061072e17c9ae20d3b75e`  
		Last Modified: Thu, 20 Sep 2018 20:20:19 GMT  
		Size: 34.2 MB (34197033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6902915254c0db79a4de591279a425de72b5cba0dc6691c0618d1ce60f1028`  
		Last Modified: Thu, 20 Sep 2018 20:20:16 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99853874fa542680cff49dd0d8ced2edaeb09c6bcbdaf7a04f99334ea1ca3295`  
		Last Modified: Thu, 20 Sep 2018 20:20:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596fbad6fcffd4f0ed77b4b6e11dcdf415b312237328e0d65a4141e6ef323414`  
		Last Modified: Thu, 20 Sep 2018 20:20:18 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6.12`

```console
$ docker pull elasticsearch@sha256:a8081d995ef3443dc6d077093172a5931e02cdb8ffddbf05c67e01d348a9770e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6.12` - linux; amd64

```console
$ docker pull elasticsearch@sha256:cdeb134689bb0318a773e03741f4414b3d1d0ee443b827d5954f957775db57eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219230117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5acf0e8da90b995bace9fdc8f12c02ba323441873a509c19258ce0afa6754d0b`
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
# Thu, 20 Sep 2018 20:19:30 GMT
ENV ELASTICSEARCH_VERSION=5.6.12
# Thu, 20 Sep 2018 20:19:30 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.12
# Thu, 20 Sep 2018 20:19:36 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:19:36 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Sep 2018 20:19:36 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 20 Sep 2018 20:19:37 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 20 Sep 2018 20:19:37 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Thu, 20 Sep 2018 20:19:38 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 20 Sep 2018 20:19:38 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Thu, 20 Sep 2018 20:19:38 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 20 Sep 2018 20:19:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 20 Sep 2018 20:19:38 GMT
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
	-	`sha256:42c8b75ff7af4297393831779e6d23092825847b739061072e17c9ae20d3b75e`  
		Last Modified: Thu, 20 Sep 2018 20:20:19 GMT  
		Size: 34.2 MB (34197033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6902915254c0db79a4de591279a425de72b5cba0dc6691c0618d1ce60f1028`  
		Last Modified: Thu, 20 Sep 2018 20:20:16 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99853874fa542680cff49dd0d8ced2edaeb09c6bcbdaf7a04f99334ea1ca3295`  
		Last Modified: Thu, 20 Sep 2018 20:20:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596fbad6fcffd4f0ed77b4b6e11dcdf415b312237328e0d65a4141e6ef323414`  
		Last Modified: Thu, 20 Sep 2018 20:20:18 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6.12-alpine`

```console
$ docker pull elasticsearch@sha256:7e7dd98a49303480fbc8e43e6fba4dadc26c630f786a4545e17374126c900933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6.12-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:6fe9653005b7660e50cb9a4bf0a118aef74d522c5c0fe5b09181ac5d4aa7fd92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92469727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdc7bd40f91647266dfb409bd2427e8c14b8292314ba2a18db2e72b4be1afe51`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Wed, 12 Sep 2018 00:07:20 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 00:07:20 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 00:07:22 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 03:54:22 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 12 Sep 2018 03:54:24 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 12 Sep 2018 03:54:25 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 12 Sep 2018 03:54:25 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 12 Sep 2018 03:54:25 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 20 Sep 2018 20:19:47 GMT
ENV ELASTICSEARCH_VERSION=5.6.12
# Thu, 20 Sep 2018 20:19:47 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.12.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.12.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=bc57fb5f089d7859ad2db5b10dc7561c711fd419
# Thu, 20 Sep 2018 20:19:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Thu, 20 Sep 2018 20:19:55 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Thu, 20 Sep 2018 20:19:55 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 20 Sep 2018 20:19:55 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Thu, 20 Sep 2018 20:19:55 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 20 Sep 2018 20:19:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 20 Sep 2018 20:19:56 GMT
CMD ["elasticsearch"]
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
	-	`sha256:d3e6d7e9702afb6c02946a1861b0a3d48b06c6614df4dd382ad81b20da30a0dc`  
		Last Modified: Wed, 12 Sep 2018 00:10:38 GMT  
		Size: 54.8 MB (54798258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51759e1f080cf1376a27f029103ab97c786a88559ed6c49a41ea3c54e65fa3f`  
		Last Modified: Wed, 12 Sep 2018 03:55:13 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d18e9ceae18e6af8bac0e24de3bcccba70c688ac7ee0373387f3abc15b6d100`  
		Last Modified: Wed, 12 Sep 2018 03:55:12 GMT  
		Size: 1.2 MB (1204620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c4ea4d9d6e189988eebf195be0d35b229468ec6e3d82e44c62af18fb361950`  
		Last Modified: Wed, 12 Sep 2018 03:55:11 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b76805637ef2c0bec86599718794ab736aa1798ca53438fadb3912172905ef`  
		Last Modified: Thu, 20 Sep 2018 20:21:02 GMT  
		Size: 34.3 MB (34257279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a102ea34f68f320b78499cc111e50e5a9e383ec05520230f1626c7d3084a48`  
		Last Modified: Thu, 20 Sep 2018 20:21:00 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f791f1077ec5d0e746b9f3972ecd3cccb2739f8e5617b63f07be298663f85d`  
		Last Modified: Thu, 20 Sep 2018 20:21:00 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6-alpine`

```console
$ docker pull elasticsearch@sha256:7e7dd98a49303480fbc8e43e6fba4dadc26c630f786a4545e17374126c900933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:6fe9653005b7660e50cb9a4bf0a118aef74d522c5c0fe5b09181ac5d4aa7fd92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92469727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdc7bd40f91647266dfb409bd2427e8c14b8292314ba2a18db2e72b4be1afe51`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Wed, 12 Sep 2018 00:07:20 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 00:07:20 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 00:07:22 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 03:54:22 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 12 Sep 2018 03:54:24 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 12 Sep 2018 03:54:25 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 12 Sep 2018 03:54:25 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 12 Sep 2018 03:54:25 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 20 Sep 2018 20:19:47 GMT
ENV ELASTICSEARCH_VERSION=5.6.12
# Thu, 20 Sep 2018 20:19:47 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.12.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.12.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=bc57fb5f089d7859ad2db5b10dc7561c711fd419
# Thu, 20 Sep 2018 20:19:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Thu, 20 Sep 2018 20:19:55 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Thu, 20 Sep 2018 20:19:55 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 20 Sep 2018 20:19:55 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Thu, 20 Sep 2018 20:19:55 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 20 Sep 2018 20:19:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 20 Sep 2018 20:19:56 GMT
CMD ["elasticsearch"]
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
	-	`sha256:d3e6d7e9702afb6c02946a1861b0a3d48b06c6614df4dd382ad81b20da30a0dc`  
		Last Modified: Wed, 12 Sep 2018 00:10:38 GMT  
		Size: 54.8 MB (54798258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51759e1f080cf1376a27f029103ab97c786a88559ed6c49a41ea3c54e65fa3f`  
		Last Modified: Wed, 12 Sep 2018 03:55:13 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d18e9ceae18e6af8bac0e24de3bcccba70c688ac7ee0373387f3abc15b6d100`  
		Last Modified: Wed, 12 Sep 2018 03:55:12 GMT  
		Size: 1.2 MB (1204620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c4ea4d9d6e189988eebf195be0d35b229468ec6e3d82e44c62af18fb361950`  
		Last Modified: Wed, 12 Sep 2018 03:55:11 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b76805637ef2c0bec86599718794ab736aa1798ca53438fadb3912172905ef`  
		Last Modified: Thu, 20 Sep 2018 20:21:02 GMT  
		Size: 34.3 MB (34257279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a102ea34f68f320b78499cc111e50e5a9e383ec05520230f1626c7d3084a48`  
		Last Modified: Thu, 20 Sep 2018 20:21:00 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f791f1077ec5d0e746b9f3972ecd3cccb2739f8e5617b63f07be298663f85d`  
		Last Modified: Thu, 20 Sep 2018 20:21:00 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5-alpine`

```console
$ docker pull elasticsearch@sha256:7e7dd98a49303480fbc8e43e6fba4dadc26c630f786a4545e17374126c900933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:6fe9653005b7660e50cb9a4bf0a118aef74d522c5c0fe5b09181ac5d4aa7fd92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92469727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdc7bd40f91647266dfb409bd2427e8c14b8292314ba2a18db2e72b4be1afe51`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Wed, 12 Sep 2018 00:07:20 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 00:07:20 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 00:07:22 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 03:54:22 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 12 Sep 2018 03:54:24 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 12 Sep 2018 03:54:25 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 12 Sep 2018 03:54:25 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 12 Sep 2018 03:54:25 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 20 Sep 2018 20:19:47 GMT
ENV ELASTICSEARCH_VERSION=5.6.12
# Thu, 20 Sep 2018 20:19:47 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.12.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.12.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=bc57fb5f089d7859ad2db5b10dc7561c711fd419
# Thu, 20 Sep 2018 20:19:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Thu, 20 Sep 2018 20:19:55 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Thu, 20 Sep 2018 20:19:55 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 20 Sep 2018 20:19:55 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Thu, 20 Sep 2018 20:19:55 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 20 Sep 2018 20:19:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 20 Sep 2018 20:19:56 GMT
CMD ["elasticsearch"]
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
	-	`sha256:d3e6d7e9702afb6c02946a1861b0a3d48b06c6614df4dd382ad81b20da30a0dc`  
		Last Modified: Wed, 12 Sep 2018 00:10:38 GMT  
		Size: 54.8 MB (54798258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51759e1f080cf1376a27f029103ab97c786a88559ed6c49a41ea3c54e65fa3f`  
		Last Modified: Wed, 12 Sep 2018 03:55:13 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d18e9ceae18e6af8bac0e24de3bcccba70c688ac7ee0373387f3abc15b6d100`  
		Last Modified: Wed, 12 Sep 2018 03:55:12 GMT  
		Size: 1.2 MB (1204620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c4ea4d9d6e189988eebf195be0d35b229468ec6e3d82e44c62af18fb361950`  
		Last Modified: Wed, 12 Sep 2018 03:55:11 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b76805637ef2c0bec86599718794ab736aa1798ca53438fadb3912172905ef`  
		Last Modified: Thu, 20 Sep 2018 20:21:02 GMT  
		Size: 34.3 MB (34257279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a102ea34f68f320b78499cc111e50e5a9e383ec05520230f1626c7d3084a48`  
		Last Modified: Thu, 20 Sep 2018 20:21:00 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f791f1077ec5d0e746b9f3972ecd3cccb2739f8e5617b63f07be298663f85d`  
		Last Modified: Thu, 20 Sep 2018 20:21:00 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:alpine`

```console
$ docker pull elasticsearch@sha256:7e7dd98a49303480fbc8e43e6fba4dadc26c630f786a4545e17374126c900933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:6fe9653005b7660e50cb9a4bf0a118aef74d522c5c0fe5b09181ac5d4aa7fd92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92469727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdc7bd40f91647266dfb409bd2427e8c14b8292314ba2a18db2e72b4be1afe51`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Wed, 12 Sep 2018 00:07:20 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 00:07:20 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 00:07:22 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 03:54:22 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 12 Sep 2018 03:54:24 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 12 Sep 2018 03:54:25 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 12 Sep 2018 03:54:25 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 12 Sep 2018 03:54:25 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 20 Sep 2018 20:19:47 GMT
ENV ELASTICSEARCH_VERSION=5.6.12
# Thu, 20 Sep 2018 20:19:47 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.12.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.12.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=bc57fb5f089d7859ad2db5b10dc7561c711fd419
# Thu, 20 Sep 2018 20:19:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Thu, 20 Sep 2018 20:19:55 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Thu, 20 Sep 2018 20:19:55 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 20 Sep 2018 20:19:55 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Thu, 20 Sep 2018 20:19:55 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 20 Sep 2018 20:19:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 20 Sep 2018 20:19:56 GMT
CMD ["elasticsearch"]
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
	-	`sha256:d3e6d7e9702afb6c02946a1861b0a3d48b06c6614df4dd382ad81b20da30a0dc`  
		Last Modified: Wed, 12 Sep 2018 00:10:38 GMT  
		Size: 54.8 MB (54798258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51759e1f080cf1376a27f029103ab97c786a88559ed6c49a41ea3c54e65fa3f`  
		Last Modified: Wed, 12 Sep 2018 03:55:13 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d18e9ceae18e6af8bac0e24de3bcccba70c688ac7ee0373387f3abc15b6d100`  
		Last Modified: Wed, 12 Sep 2018 03:55:12 GMT  
		Size: 1.2 MB (1204620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c4ea4d9d6e189988eebf195be0d35b229468ec6e3d82e44c62af18fb361950`  
		Last Modified: Wed, 12 Sep 2018 03:55:11 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b76805637ef2c0bec86599718794ab736aa1798ca53438fadb3912172905ef`  
		Last Modified: Thu, 20 Sep 2018 20:21:02 GMT  
		Size: 34.3 MB (34257279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a102ea34f68f320b78499cc111e50e5a9e383ec05520230f1626c7d3084a48`  
		Last Modified: Thu, 20 Sep 2018 20:21:00 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f791f1077ec5d0e746b9f3972ecd3cccb2739f8e5617b63f07be298663f85d`  
		Last Modified: Thu, 20 Sep 2018 20:21:00 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:latest`

```console
$ docker pull elasticsearch@sha256:a8081d995ef3443dc6d077093172a5931e02cdb8ffddbf05c67e01d348a9770e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:latest` - linux; amd64

```console
$ docker pull elasticsearch@sha256:cdeb134689bb0318a773e03741f4414b3d1d0ee443b827d5954f957775db57eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219230117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5acf0e8da90b995bace9fdc8f12c02ba323441873a509c19258ce0afa6754d0b`
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
# Thu, 20 Sep 2018 20:19:30 GMT
ENV ELASTICSEARCH_VERSION=5.6.12
# Thu, 20 Sep 2018 20:19:30 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.12
# Thu, 20 Sep 2018 20:19:36 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 20:19:36 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Sep 2018 20:19:36 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 20 Sep 2018 20:19:37 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 20 Sep 2018 20:19:37 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Thu, 20 Sep 2018 20:19:38 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 20 Sep 2018 20:19:38 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Thu, 20 Sep 2018 20:19:38 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 20 Sep 2018 20:19:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 20 Sep 2018 20:19:38 GMT
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
	-	`sha256:42c8b75ff7af4297393831779e6d23092825847b739061072e17c9ae20d3b75e`  
		Last Modified: Thu, 20 Sep 2018 20:20:19 GMT  
		Size: 34.2 MB (34197033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6902915254c0db79a4de591279a425de72b5cba0dc6691c0618d1ce60f1028`  
		Last Modified: Thu, 20 Sep 2018 20:20:16 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99853874fa542680cff49dd0d8ced2edaeb09c6bcbdaf7a04f99334ea1ca3295`  
		Last Modified: Thu, 20 Sep 2018 20:20:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596fbad6fcffd4f0ed77b4b6e11dcdf415b312237328e0d65a4141e6ef323414`  
		Last Modified: Thu, 20 Sep 2018 20:20:18 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:5`](#elasticsearch5)
-	[`elasticsearch:5.6`](#elasticsearch56)
-	[`elasticsearch:5.6.12`](#elasticsearch5612)
-	[`elasticsearch:5.6.12-alpine`](#elasticsearch5612-alpine)
-	[`elasticsearch:5.6-alpine`](#elasticsearch56-alpine)
-	[`elasticsearch:5-alpine`](#elasticsearch5-alpine)
-	[`elasticsearch:6.4.2`](#elasticsearch642)

## `elasticsearch:5`

```console
$ docker pull elasticsearch@sha256:bc09fa066636d0eb9bfdad9c191bff617429c10e0fa6ce191be7a1b166f54431
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:77437cd90ad36112e0a5e90a2f61dcca72f288a10c1c11d13c51c2087c6fb513
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219228848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de05e10fa8794969873d39b6f1340533345990b122f6dee38492bd01a54128c0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 30 Oct 2018 02:51:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 30 Oct 2018 02:51:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Oct 2018 02:51:53 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 30 Oct 2018 02:52:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 30 Oct 2018 02:52:02 GMT
ENV ELASTICSEARCH_VERSION=5.6.12
# Tue, 30 Oct 2018 02:52:02 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.12
# Tue, 30 Oct 2018 02:52:12 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Oct 2018 02:52:12 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 02:52:12 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 30 Oct 2018 02:52:13 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 30 Oct 2018 02:52:14 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Tue, 30 Oct 2018 02:52:14 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 30 Oct 2018 02:52:15 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Tue, 30 Oct 2018 02:52:15 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 30 Oct 2018 02:52:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Oct 2018 02:52:16 GMT
CMD ["elasticsearch"]
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
	-	`sha256:4c50f0576e6b10fd52ff93c04ddb6dea74436b6110a484a1276ef3cf1b98c53a`  
		Last Modified: Tue, 30 Oct 2018 02:53:27 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c1129297af0786c9bc4108c5c12954a8d15f63424fd5f99c26d2d1ea4aa84f`  
		Last Modified: Tue, 30 Oct 2018 02:53:27 GMT  
		Size: 1.4 KB (1443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14f0229265f74551ee71439f0c36534b9897c0f282d541783b596c5c929c246`  
		Last Modified: Tue, 30 Oct 2018 02:53:26 GMT  
		Size: 920.3 KB (920306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd678177589fe1c31e6bfa252bcd435c0e83317fb5cdb0dea5ff992a85ae4eb`  
		Last Modified: Tue, 30 Oct 2018 02:53:30 GMT  
		Size: 34.2 MB (34196958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99dc42d00598968e2bc44614ab2eb2557a6f7fc1b87813dd3395ed9071d913ec`  
		Last Modified: Tue, 30 Oct 2018 02:53:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da221587227ede91d581e6423d60142194bdf49325790480bfdad42bc8893ca7`  
		Last Modified: Tue, 30 Oct 2018 02:53:26 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ea42901a8502073c552a335e66bc43c1c0436c1fb1f3a0e7fed3f4e48e5a1fc`  
		Last Modified: Tue, 30 Oct 2018 02:53:26 GMT  
		Size: 505.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6`

```console
$ docker pull elasticsearch@sha256:bc09fa066636d0eb9bfdad9c191bff617429c10e0fa6ce191be7a1b166f54431
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6` - linux; amd64

```console
$ docker pull elasticsearch@sha256:77437cd90ad36112e0a5e90a2f61dcca72f288a10c1c11d13c51c2087c6fb513
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219228848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de05e10fa8794969873d39b6f1340533345990b122f6dee38492bd01a54128c0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 30 Oct 2018 02:51:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 30 Oct 2018 02:51:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Oct 2018 02:51:53 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 30 Oct 2018 02:52:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 30 Oct 2018 02:52:02 GMT
ENV ELASTICSEARCH_VERSION=5.6.12
# Tue, 30 Oct 2018 02:52:02 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.12
# Tue, 30 Oct 2018 02:52:12 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Oct 2018 02:52:12 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 02:52:12 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 30 Oct 2018 02:52:13 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 30 Oct 2018 02:52:14 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Tue, 30 Oct 2018 02:52:14 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 30 Oct 2018 02:52:15 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Tue, 30 Oct 2018 02:52:15 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 30 Oct 2018 02:52:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Oct 2018 02:52:16 GMT
CMD ["elasticsearch"]
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
	-	`sha256:4c50f0576e6b10fd52ff93c04ddb6dea74436b6110a484a1276ef3cf1b98c53a`  
		Last Modified: Tue, 30 Oct 2018 02:53:27 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c1129297af0786c9bc4108c5c12954a8d15f63424fd5f99c26d2d1ea4aa84f`  
		Last Modified: Tue, 30 Oct 2018 02:53:27 GMT  
		Size: 1.4 KB (1443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14f0229265f74551ee71439f0c36534b9897c0f282d541783b596c5c929c246`  
		Last Modified: Tue, 30 Oct 2018 02:53:26 GMT  
		Size: 920.3 KB (920306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd678177589fe1c31e6bfa252bcd435c0e83317fb5cdb0dea5ff992a85ae4eb`  
		Last Modified: Tue, 30 Oct 2018 02:53:30 GMT  
		Size: 34.2 MB (34196958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99dc42d00598968e2bc44614ab2eb2557a6f7fc1b87813dd3395ed9071d913ec`  
		Last Modified: Tue, 30 Oct 2018 02:53:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da221587227ede91d581e6423d60142194bdf49325790480bfdad42bc8893ca7`  
		Last Modified: Tue, 30 Oct 2018 02:53:26 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ea42901a8502073c552a335e66bc43c1c0436c1fb1f3a0e7fed3f4e48e5a1fc`  
		Last Modified: Tue, 30 Oct 2018 02:53:26 GMT  
		Size: 505.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6.12`

```console
$ docker pull elasticsearch@sha256:bc09fa066636d0eb9bfdad9c191bff617429c10e0fa6ce191be7a1b166f54431
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6.12` - linux; amd64

```console
$ docker pull elasticsearch@sha256:77437cd90ad36112e0a5e90a2f61dcca72f288a10c1c11d13c51c2087c6fb513
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219228848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de05e10fa8794969873d39b6f1340533345990b122f6dee38492bd01a54128c0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 30 Oct 2018 02:51:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 30 Oct 2018 02:51:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 30 Oct 2018 02:51:53 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 30 Oct 2018 02:52:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 30 Oct 2018 02:52:02 GMT
ENV ELASTICSEARCH_VERSION=5.6.12
# Tue, 30 Oct 2018 02:52:02 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.12
# Tue, 30 Oct 2018 02:52:12 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Oct 2018 02:52:12 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 02:52:12 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 30 Oct 2018 02:52:13 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 30 Oct 2018 02:52:14 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Tue, 30 Oct 2018 02:52:14 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 30 Oct 2018 02:52:15 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Tue, 30 Oct 2018 02:52:15 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 30 Oct 2018 02:52:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 30 Oct 2018 02:52:16 GMT
CMD ["elasticsearch"]
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
	-	`sha256:4c50f0576e6b10fd52ff93c04ddb6dea74436b6110a484a1276ef3cf1b98c53a`  
		Last Modified: Tue, 30 Oct 2018 02:53:27 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c1129297af0786c9bc4108c5c12954a8d15f63424fd5f99c26d2d1ea4aa84f`  
		Last Modified: Tue, 30 Oct 2018 02:53:27 GMT  
		Size: 1.4 KB (1443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14f0229265f74551ee71439f0c36534b9897c0f282d541783b596c5c929c246`  
		Last Modified: Tue, 30 Oct 2018 02:53:26 GMT  
		Size: 920.3 KB (920306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd678177589fe1c31e6bfa252bcd435c0e83317fb5cdb0dea5ff992a85ae4eb`  
		Last Modified: Tue, 30 Oct 2018 02:53:30 GMT  
		Size: 34.2 MB (34196958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99dc42d00598968e2bc44614ab2eb2557a6f7fc1b87813dd3395ed9071d913ec`  
		Last Modified: Tue, 30 Oct 2018 02:53:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da221587227ede91d581e6423d60142194bdf49325790480bfdad42bc8893ca7`  
		Last Modified: Tue, 30 Oct 2018 02:53:26 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ea42901a8502073c552a335e66bc43c1c0436c1fb1f3a0e7fed3f4e48e5a1fc`  
		Last Modified: Tue, 30 Oct 2018 02:53:26 GMT  
		Size: 505.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6.12-alpine`

```console
$ docker pull elasticsearch@sha256:85bceca808d61c7f362dd5b2fc05d5458694b25651518964b0f4dcbd7972ba08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6.12-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:1d3e22db94f6b8244d72a33ae78ec4d3af75cbc949920dc58c88707ba3d6aa8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92501136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95fa2d7b86a9782f5e667aea813d751b3ae3c4a9c0ec0f408e931d62d59104ae`
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
# Wed, 24 Oct 2018 22:32:14 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:32:14 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:32:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 24 Oct 2018 23:09:13 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 24 Oct 2018 23:09:24 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 24 Oct 2018 23:09:33 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 24 Oct 2018 23:09:33 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 24 Oct 2018 23:09:33 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 23:09:43 GMT
ENV ELASTICSEARCH_VERSION=5.6.12
# Wed, 24 Oct 2018 23:09:43 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.12.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.12.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=bc57fb5f089d7859ad2db5b10dc7561c711fd419
# Wed, 24 Oct 2018 23:09:50 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 24 Oct 2018 23:09:54 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 24 Oct 2018 23:09:54 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 24 Oct 2018 23:09:54 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 24 Oct 2018 23:09:54 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 24 Oct 2018 23:09:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Oct 2018 23:09:55 GMT
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
	-	`sha256:819f4a45746c3207fc5fa281ad62cf165d39c18de53a5bfd42eddfec32430d83`  
		Last Modified: Wed, 24 Oct 2018 22:45:47 GMT  
		Size: 54.8 MB (54829651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe47a9912036f813d7729300f2ecc52d328780df5051a43d473dc8755da962a3`  
		Last Modified: Wed, 24 Oct 2018 23:10:12 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1da1eafeed088268a9721ffea1a4a8ae7977cb03672d8aaf9408698bfe30e934`  
		Last Modified: Wed, 24 Oct 2018 23:10:11 GMT  
		Size: 1.2 MB (1204691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0830b7307957972b5e509b9f9a4e4d5a78ac55489f4ab6b38f81a8edc80e9bc2`  
		Last Modified: Wed, 24 Oct 2018 23:10:11 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9aa7f4c78b24407c6c6499ebf61f5e2a6a9117aedfac28fdb26880bb06d5ff`  
		Last Modified: Wed, 24 Oct 2018 23:10:14 GMT  
		Size: 34.3 MB (34257226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7f5001dc6863e59a4fab57e74cff2c179292f4d323a7be92a14ac93e7b67f3`  
		Last Modified: Wed, 24 Oct 2018 23:10:10 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9eae8da9cc75dd8174f0c7f736283409e6f09ca83ee2a1449b9c96be761b0b4`  
		Last Modified: Wed, 24 Oct 2018 23:10:11 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6-alpine`

```console
$ docker pull elasticsearch@sha256:85bceca808d61c7f362dd5b2fc05d5458694b25651518964b0f4dcbd7972ba08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:1d3e22db94f6b8244d72a33ae78ec4d3af75cbc949920dc58c88707ba3d6aa8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92501136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95fa2d7b86a9782f5e667aea813d751b3ae3c4a9c0ec0f408e931d62d59104ae`
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
# Wed, 24 Oct 2018 22:32:14 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:32:14 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:32:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 24 Oct 2018 23:09:13 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 24 Oct 2018 23:09:24 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 24 Oct 2018 23:09:33 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 24 Oct 2018 23:09:33 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 24 Oct 2018 23:09:33 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 23:09:43 GMT
ENV ELASTICSEARCH_VERSION=5.6.12
# Wed, 24 Oct 2018 23:09:43 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.12.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.12.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=bc57fb5f089d7859ad2db5b10dc7561c711fd419
# Wed, 24 Oct 2018 23:09:50 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 24 Oct 2018 23:09:54 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 24 Oct 2018 23:09:54 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 24 Oct 2018 23:09:54 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 24 Oct 2018 23:09:54 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 24 Oct 2018 23:09:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Oct 2018 23:09:55 GMT
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
	-	`sha256:819f4a45746c3207fc5fa281ad62cf165d39c18de53a5bfd42eddfec32430d83`  
		Last Modified: Wed, 24 Oct 2018 22:45:47 GMT  
		Size: 54.8 MB (54829651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe47a9912036f813d7729300f2ecc52d328780df5051a43d473dc8755da962a3`  
		Last Modified: Wed, 24 Oct 2018 23:10:12 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1da1eafeed088268a9721ffea1a4a8ae7977cb03672d8aaf9408698bfe30e934`  
		Last Modified: Wed, 24 Oct 2018 23:10:11 GMT  
		Size: 1.2 MB (1204691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0830b7307957972b5e509b9f9a4e4d5a78ac55489f4ab6b38f81a8edc80e9bc2`  
		Last Modified: Wed, 24 Oct 2018 23:10:11 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9aa7f4c78b24407c6c6499ebf61f5e2a6a9117aedfac28fdb26880bb06d5ff`  
		Last Modified: Wed, 24 Oct 2018 23:10:14 GMT  
		Size: 34.3 MB (34257226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7f5001dc6863e59a4fab57e74cff2c179292f4d323a7be92a14ac93e7b67f3`  
		Last Modified: Wed, 24 Oct 2018 23:10:10 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9eae8da9cc75dd8174f0c7f736283409e6f09ca83ee2a1449b9c96be761b0b4`  
		Last Modified: Wed, 24 Oct 2018 23:10:11 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5-alpine`

```console
$ docker pull elasticsearch@sha256:85bceca808d61c7f362dd5b2fc05d5458694b25651518964b0f4dcbd7972ba08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:1d3e22db94f6b8244d72a33ae78ec4d3af75cbc949920dc58c88707ba3d6aa8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92501136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95fa2d7b86a9782f5e667aea813d751b3ae3c4a9c0ec0f408e931d62d59104ae`
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
# Wed, 24 Oct 2018 22:32:14 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:32:14 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:32:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 24 Oct 2018 23:09:13 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 24 Oct 2018 23:09:24 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 24 Oct 2018 23:09:33 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 24 Oct 2018 23:09:33 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 24 Oct 2018 23:09:33 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 23:09:43 GMT
ENV ELASTICSEARCH_VERSION=5.6.12
# Wed, 24 Oct 2018 23:09:43 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.12.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.12.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=bc57fb5f089d7859ad2db5b10dc7561c711fd419
# Wed, 24 Oct 2018 23:09:50 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 24 Oct 2018 23:09:54 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 24 Oct 2018 23:09:54 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 24 Oct 2018 23:09:54 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 24 Oct 2018 23:09:54 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 24 Oct 2018 23:09:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Oct 2018 23:09:55 GMT
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
	-	`sha256:819f4a45746c3207fc5fa281ad62cf165d39c18de53a5bfd42eddfec32430d83`  
		Last Modified: Wed, 24 Oct 2018 22:45:47 GMT  
		Size: 54.8 MB (54829651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe47a9912036f813d7729300f2ecc52d328780df5051a43d473dc8755da962a3`  
		Last Modified: Wed, 24 Oct 2018 23:10:12 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1da1eafeed088268a9721ffea1a4a8ae7977cb03672d8aaf9408698bfe30e934`  
		Last Modified: Wed, 24 Oct 2018 23:10:11 GMT  
		Size: 1.2 MB (1204691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0830b7307957972b5e509b9f9a4e4d5a78ac55489f4ab6b38f81a8edc80e9bc2`  
		Last Modified: Wed, 24 Oct 2018 23:10:11 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9aa7f4c78b24407c6c6499ebf61f5e2a6a9117aedfac28fdb26880bb06d5ff`  
		Last Modified: Wed, 24 Oct 2018 23:10:14 GMT  
		Size: 34.3 MB (34257226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7f5001dc6863e59a4fab57e74cff2c179292f4d323a7be92a14ac93e7b67f3`  
		Last Modified: Wed, 24 Oct 2018 23:10:10 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9eae8da9cc75dd8174f0c7f736283409e6f09ca83ee2a1449b9c96be761b0b4`  
		Last Modified: Wed, 24 Oct 2018 23:10:11 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:6.4.2`

```console
$ docker pull elasticsearch@sha256:f70e0f0b2231aaa54140184cd154f771403621a864138fd7f74ac9e982f97c34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:6.4.2` - linux; amd64

```console
$ docker pull elasticsearch@sha256:3da16b2f3b1d4e151c44f1a54f4f29d8be64884a64504b24ebcbdb4e14c80aa1
```

-	Docker Version: 18.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.3 MB (435328366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e47ebd7ec3eef5e48746af2ae376f180bbfbd23c7514b5b18a116f8349eb4c34`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 06 Aug 2018 19:21:47 GMT
ADD file:6340c690b08865d7eb84a36050a0ab0e8effc2b010a4ccb20b810153a97a9228 in / 
# Mon, 06 Aug 2018 19:21:47 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20180804
# Mon, 06 Aug 2018 19:21:48 GMT
CMD ["/bin/bash"]
# Wed, 26 Sep 2018 14:18:34 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 26 Sep 2018 14:19:28 GMT
RUN curl -s https://download.java.net/java/GA/jdk10/10.0.2/19aef61b38124481863b1413dce1855f/13/openjdk-10.0.2_linux-x64_bin.tar.gz | tar -C /opt -zxf -
# Wed, 26 Sep 2018 14:19:28 GMT
ENV JAVA_HOME=/opt/jdk-10.0.2
# Wed, 26 Sep 2018 14:19:29 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts /opt/jdk-10.0.2/lib/security/cacerts
# Wed, 26 Sep 2018 14:19:57 GMT
RUN yum update -y &&     yum install -y nc unzip wget which &&     yum clean all
# Wed, 26 Sep 2018 14:19:57 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chmod 0775 /usr/share/elasticsearch &&     chgrp 0 /usr/share/elasticsearch
# Wed, 26 Sep 2018 14:19:58 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 26 Sep 2018 14:20:16 GMT
COPY --chown=1000:0dir:d1b06e189005dc6e789a7d111b7de790c08acdf95b3a71c641784b256029ad48 in /usr/share/elasticsearch 
# Wed, 26 Sep 2018 14:20:16 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Sep 2018 14:20:16 GMT
COPY --chown=1000:0file:0835d3d3ae8342e1be53607254cb0caca7134efdfcb7a65dcebbf3097ec59b11 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 26 Sep 2018 14:20:17 GMT
RUN chgrp 0 /usr/local/bin/docker-entrypoint.sh &&     chmod g=u /etc/passwd &&     chmod 0775 /usr/local/bin/docker-entrypoint.sh
# Wed, 26 Sep 2018 14:20:17 GMT
EXPOSE 9200 9300
# Wed, 26 Sep 2018 14:20:17 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=elasticsearch org.label-schema.version=6.4.2 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.vcs-url=https://github.com/elastic/elasticsearch-docker license=Elastic License
# Wed, 26 Sep 2018 14:20:17 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Wed, 26 Sep 2018 14:20:17 GMT
CMD ["eswrapper"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af8ca1bb9f4513c51a20611f037136f599f2e1772a40ff3cfc9ff22fb29529f`  
		Last Modified: Tue, 02 Oct 2018 15:11:19 GMT  
		Size: 205.4 MB (205374683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f910411dc8e2351afa7bde813da0bc8f9e4c27c8509ceef6c007dbb3cf67b365`  
		Last Modified: Tue, 02 Oct 2018 15:10:58 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0400545052493c14ba7b6acbcf86ade632d98ab80447f0b3c6f84c28ea79cb`  
		Last Modified: Tue, 02 Oct 2018 15:10:59 GMT  
		Size: 20.1 MB (20091046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4d2771ff41fd89a9f28fc6289cb382be40f46874b618eacd9cf6b6506f1167`  
		Last Modified: Tue, 02 Oct 2018 15:10:55 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14f19907b7958dcadec72e93cc6e95118bab6e00f1143de145035ecff6d09e5`  
		Last Modified: Tue, 02 Oct 2018 15:11:10 GMT  
		Size: 135.2 MB (135161191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea299a414bdfd9fd72f60496b2541c2e0bde9254fcc4ef2f150a6fed9bf90ad2`  
		Last Modified: Tue, 02 Oct 2018 15:10:54 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a644b305c4720435e5cabebebb7e69c654a53f5aa514b8390f441c6b1f21ba71`  
		Last Modified: Tue, 02 Oct 2018 15:10:54 GMT  
		Size: 2.4 KB (2407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

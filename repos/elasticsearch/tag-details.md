<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:5`](#elasticsearch5)
-	[`elasticsearch:5.6`](#elasticsearch56)
-	[`elasticsearch:5.6.12`](#elasticsearch5612)
-	[`elasticsearch:5.6.12-alpine`](#elasticsearch5612-alpine)
-	[`elasticsearch:5.6-alpine`](#elasticsearch56-alpine)
-	[`elasticsearch:5-alpine`](#elasticsearch5-alpine)
-	[`elasticsearch:6.4.0`](#elasticsearch640)
-	[`elasticsearch:6.4.1`](#elasticsearch641)
-	[`elasticsearch:6.4.2`](#elasticsearch642)
-	[`elasticsearch:alpine`](#elasticsearchalpine)
-	[`elasticsearch:latest`](#elasticsearchlatest)

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

## `elasticsearch:6.4.0`

```console
$ docker pull elasticsearch@sha256:96345f6d73c0d615ddf8b9683848d625f211efacfe3b5b8765debbd1eebc5663
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:6.4.0` - linux; amd64

```console
$ docker pull elasticsearch@sha256:2244676001fa9b12012ec1f7a51526a8d7384fcb02674e5ae29b6e637e363908
```

-	Docker Version: 18.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.8 MB (421784646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ac6765457316224b41e3663704f904473d5480f68eb20c983d91fa014205f9e`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 06 Aug 2018 19:21:47 GMT
ADD file:6340c690b08865d7eb84a36050a0ab0e8effc2b010a4ccb20b810153a97a9228 in / 
# Mon, 06 Aug 2018 19:21:47 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20180804
# Mon, 06 Aug 2018 19:21:48 GMT
CMD ["/bin/bash"]
# Sat, 18 Aug 2018 00:11:54 GMT
ENV ELASTIC_CONTAINER=true
# Sat, 18 Aug 2018 00:12:52 GMT
RUN curl -s https://download.java.net/java/GA/jdk10/10.0.2/19aef61b38124481863b1413dce1855f/13/openjdk-10.0.2_linux-x64_bin.tar.gz | tar -C /opt -zxf -
# Sat, 18 Aug 2018 00:12:53 GMT
ENV JAVA_HOME=/opt/jdk-10.0.2
# Sat, 18 Aug 2018 00:12:53 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts /opt/jdk-10.0.2/lib/security/cacerts
# Sat, 18 Aug 2018 00:13:05 GMT
RUN yum update -y &&     yum install -y nc unzip wget which &&     yum clean all
# Sat, 18 Aug 2018 00:13:06 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chmod 0775 /usr/share/elasticsearch &&     chgrp 0 /usr/share/elasticsearch
# Sat, 18 Aug 2018 00:13:06 GMT
WORKDIR /usr/share/elasticsearch
# Sat, 18 Aug 2018 00:13:26 GMT
COPY --chown=1000:0dir:bce56ccdc2f7d8059d5ebbfe079986b543102c9c3a39ba2303e813b2c87745f4 in /usr/share/elasticsearch 
# Sat, 18 Aug 2018 00:13:26 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 18 Aug 2018 00:13:26 GMT
COPY --chown=1000:0file:737355ec32e7c7ead5e61833779b20b646d2c81991739d23a30c2303796f4313 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 18 Aug 2018 00:13:27 GMT
RUN chgrp 0 /usr/local/bin/docker-entrypoint.sh &&     chmod g=u /etc/passwd &&     chmod 0775 /usr/local/bin/docker-entrypoint.sh
# Sat, 18 Aug 2018 00:13:27 GMT
EXPOSE 9200 9300
# Sat, 18 Aug 2018 00:13:27 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=elasticsearch org.label-schema.version=6.4.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.vcs-url=https://github.com/elastic/elasticsearch-docker license=Elastic License
# Sat, 18 Aug 2018 00:13:27 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Sat, 18 Aug 2018 00:13:27 GMT
CMD ["eswrapper"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb472d8b34a527752fc4c63acb88ef630884e555ed2581ad8977db3f97f76b1`  
		Last Modified: Thu, 23 Aug 2018 17:42:52 GMT  
		Size: 205.4 MB (205374685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a4f4d86c1c14da7b77ebbd639032872497ff4611154308905c26e920d1a43e4`  
		Last Modified: Thu, 23 Aug 2018 17:39:25 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d185a64a7692d934852527b114842637833cd3827a62ea212ab8548fcb7962b1`  
		Last Modified: Thu, 23 Aug 2018 17:39:50 GMT  
		Size: 6.6 MB (6563874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4d63245d6da5df2827a7faec3f0f381bf85dcc44a0d1078b8c5169f0d658e5`  
		Last Modified: Thu, 23 Aug 2018 17:39:21 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e97292a30a64e76ac4f913aa618027658d3559febecbed4ee5c438ca29754c`  
		Last Modified: Thu, 23 Aug 2018 17:42:47 GMT  
		Size: 135.1 MB (135144729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c1a056e791816e6d219abfeea64faa7df193790c3894121921c5ef387d444f`  
		Last Modified: Thu, 23 Aug 2018 17:39:21 GMT  
		Size: 2.0 KB (2027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b6c77c32368ce4dbde23cd2dfd456868fbeeb14427d06f1ca9895606bd732b`  
		Last Modified: Thu, 23 Aug 2018 17:39:22 GMT  
		Size: 2.4 KB (2370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:6.4.1`

```console
$ docker pull elasticsearch@sha256:92bdd45b76e2de9fcefd8b6d0c58cf894a3e8e896d668183bfe4a3c5e4438626
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:6.4.1` - linux; amd64

```console
$ docker pull elasticsearch@sha256:38a820e5cce4f6c9a3a5a135e8c1f0936655cb8934dcc03bfcb28c1450d5c457
```

-	Docker Version: 18.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.3 MB (435330758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c6e080644ac81f9d953945052ee97610c24b693b304f75e6d1414deb4d072e`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Mon, 06 Aug 2018 19:21:47 GMT
ADD file:6340c690b08865d7eb84a36050a0ab0e8effc2b010a4ccb20b810153a97a9228 in / 
# Mon, 06 Aug 2018 19:21:47 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20180804
# Mon, 06 Aug 2018 19:21:48 GMT
CMD ["/bin/bash"]
# Thu, 13 Sep 2018 23:04:19 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 13 Sep 2018 23:04:55 GMT
RUN curl -s https://download.java.net/java/GA/jdk10/10.0.2/19aef61b38124481863b1413dce1855f/13/openjdk-10.0.2_linux-x64_bin.tar.gz | tar -C /opt -zxf -
# Thu, 13 Sep 2018 23:04:55 GMT
ENV JAVA_HOME=/opt/jdk-10.0.2
# Thu, 13 Sep 2018 23:04:56 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts /opt/jdk-10.0.2/lib/security/cacerts
# Thu, 13 Sep 2018 23:05:25 GMT
RUN yum update -y &&     yum install -y nc unzip wget which &&     yum clean all
# Thu, 13 Sep 2018 23:05:25 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chmod 0775 /usr/share/elasticsearch &&     chgrp 0 /usr/share/elasticsearch
# Thu, 13 Sep 2018 23:05:25 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 13 Sep 2018 23:05:45 GMT
COPY --chown=1000:0dir:e111a9b6566b5aa7fb125b034476497d728ed321a5d5f4415928ad36283ab56d in /usr/share/elasticsearch 
# Thu, 13 Sep 2018 23:05:45 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Sep 2018 23:05:45 GMT
COPY --chown=1000:0file:0835d3d3ae8342e1be53607254cb0caca7134efdfcb7a65dcebbf3097ec59b11 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 13 Sep 2018 23:05:46 GMT
RUN chgrp 0 /usr/local/bin/docker-entrypoint.sh &&     chmod g=u /etc/passwd &&     chmod 0775 /usr/local/bin/docker-entrypoint.sh
# Thu, 13 Sep 2018 23:05:46 GMT
EXPOSE 9200 9300
# Thu, 13 Sep 2018 23:05:46 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=elasticsearch org.label-schema.version=6.4.1 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.vcs-url=https://github.com/elastic/elasticsearch-docker license=Elastic License
# Thu, 13 Sep 2018 23:05:46 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Thu, 13 Sep 2018 23:05:46 GMT
CMD ["eswrapper"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23717033cad3735459e69746cd6658d702d5bbd3420752aa24db69d8e77f67e9`  
		Last Modified: Tue, 18 Sep 2018 18:35:20 GMT  
		Size: 205.4 MB (205374579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a5d1e804d6b3904ae3d42f19672cfb680c15ff0331932bc564e50c0c3d0de0`  
		Last Modified: Tue, 18 Sep 2018 18:35:00 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4cea401c4752e1b90291be5d788554560028294d93a5582f782d876df17303`  
		Last Modified: Tue, 18 Sep 2018 18:34:59 GMT  
		Size: 20.1 MB (20091017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a6dfc1dcb18943b9d6ea3acf78e06d8a35e721f08ab563386f7bba01daa900b`  
		Last Modified: Tue, 18 Sep 2018 18:34:55 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addce80b2d10213b5b3043e450c8de77cc853a2531191981a0aa1475e705fb5d`  
		Last Modified: Tue, 18 Sep 2018 18:35:09 GMT  
		Size: 135.2 MB (135163721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe838fcbdd8444998ebe0e0ce083ea4625d3c82ed126171485b612b3c3baa562`  
		Last Modified: Tue, 18 Sep 2018 18:34:55 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4a081ee70d5d45c6fd628a0bc4cf59eec06abd9e0e56862088966203c42570`  
		Last Modified: Tue, 18 Sep 2018 18:34:55 GMT  
		Size: 2.4 KB (2410 bytes)  
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

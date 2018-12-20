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
$ docker pull elasticsearch@sha256:42121f24823b80c8ada903b3fb837b8a6e43244ac5934ee87ee693b78f7e0d92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:344e81a09484694bb39405266031f78dbf7bd75ec205a9524960dda02ebf3cd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.3 MB (219273812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1354170c86e79f45a694e6a0fe078c3a78110686fd8c5f7d09e43829e260f86`
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
# Fri, 16 Nov 2018 15:01:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 15:02:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 15:02:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 06:26:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 06:26:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 17 Nov 2018 06:26:36 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Nov 2018 06:26:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 12 Dec 2018 19:20:30 GMT
ENV ELASTICSEARCH_VERSION=5.6.14
# Wed, 12 Dec 2018 19:20:30 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.14
# Wed, 12 Dec 2018 19:20:47 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 19:20:47 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Dec 2018 19:20:48 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 12 Dec 2018 19:20:49 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 12 Dec 2018 19:20:50 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 12 Dec 2018 19:20:50 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 12 Dec 2018 19:20:51 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Wed, 12 Dec 2018 19:20:51 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 12 Dec 2018 19:20:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 19:20:52 GMT
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
	-	`sha256:e00a5e6055ccdd1c0491227009508127273e65aceaccad709eb6a10692fb68e3`  
		Last Modified: Fri, 16 Nov 2018 16:04:08 GMT  
		Size: 122.1 MB (122118624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8319f5fb56cff26b699a967e4afa404e605c23c58ae1952b0b19765a66db6a61`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 246.7 KB (246722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610c2713820deaa7e5f5dda6c1227b9d9ce667bf7565e5e1609246d549eca133`  
		Last Modified: Sat, 17 Nov 2018 06:27:38 GMT  
		Size: 500.9 KB (500916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e69c307cf099bf37021c1db6384ec0efaf3e8fa4c9fb8b6fd2e41f4f18e269e6`  
		Last Modified: Sat, 17 Nov 2018 06:27:38 GMT  
		Size: 1.4 KB (1444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef19439ea9ef6484db31069c66a3a902ec1c7a6eeb66952c153642b265b6c63`  
		Last Modified: Sat, 17 Nov 2018 06:27:37 GMT  
		Size: 920.4 KB (920404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e155daace5917e0fd1362f17796d5618d60b8b0a492d1c6a907d5b9b0df3b8db`  
		Last Modified: Wed, 12 Dec 2018 19:23:58 GMT  
		Size: 34.2 MB (34230611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d72dff16cad96b701a0c230b4e955fd0a6a4637a856a30d64070c40c6ba5b4a`  
		Last Modified: Wed, 12 Dec 2018 19:23:52 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd445a4a647f44667b5d8d5a20e1852e44a05e71ab676c27c7231ac08efd917`  
		Last Modified: Wed, 12 Dec 2018 19:23:53 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a6a54246832dabc54e0f52dce668f9a08d02edff046c82c63763a756745b08`  
		Last Modified: Wed, 12 Dec 2018 19:23:53 GMT  
		Size: 504.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6`

```console
$ docker pull elasticsearch@sha256:42121f24823b80c8ada903b3fb837b8a6e43244ac5934ee87ee693b78f7e0d92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6` - linux; amd64

```console
$ docker pull elasticsearch@sha256:344e81a09484694bb39405266031f78dbf7bd75ec205a9524960dda02ebf3cd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.3 MB (219273812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1354170c86e79f45a694e6a0fe078c3a78110686fd8c5f7d09e43829e260f86`
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
# Fri, 16 Nov 2018 15:01:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 15:02:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 15:02:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 06:26:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 06:26:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 17 Nov 2018 06:26:36 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Nov 2018 06:26:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 12 Dec 2018 19:20:30 GMT
ENV ELASTICSEARCH_VERSION=5.6.14
# Wed, 12 Dec 2018 19:20:30 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.14
# Wed, 12 Dec 2018 19:20:47 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 19:20:47 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Dec 2018 19:20:48 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 12 Dec 2018 19:20:49 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 12 Dec 2018 19:20:50 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 12 Dec 2018 19:20:50 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 12 Dec 2018 19:20:51 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Wed, 12 Dec 2018 19:20:51 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 12 Dec 2018 19:20:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 19:20:52 GMT
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
	-	`sha256:e00a5e6055ccdd1c0491227009508127273e65aceaccad709eb6a10692fb68e3`  
		Last Modified: Fri, 16 Nov 2018 16:04:08 GMT  
		Size: 122.1 MB (122118624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8319f5fb56cff26b699a967e4afa404e605c23c58ae1952b0b19765a66db6a61`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 246.7 KB (246722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610c2713820deaa7e5f5dda6c1227b9d9ce667bf7565e5e1609246d549eca133`  
		Last Modified: Sat, 17 Nov 2018 06:27:38 GMT  
		Size: 500.9 KB (500916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e69c307cf099bf37021c1db6384ec0efaf3e8fa4c9fb8b6fd2e41f4f18e269e6`  
		Last Modified: Sat, 17 Nov 2018 06:27:38 GMT  
		Size: 1.4 KB (1444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef19439ea9ef6484db31069c66a3a902ec1c7a6eeb66952c153642b265b6c63`  
		Last Modified: Sat, 17 Nov 2018 06:27:37 GMT  
		Size: 920.4 KB (920404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e155daace5917e0fd1362f17796d5618d60b8b0a492d1c6a907d5b9b0df3b8db`  
		Last Modified: Wed, 12 Dec 2018 19:23:58 GMT  
		Size: 34.2 MB (34230611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d72dff16cad96b701a0c230b4e955fd0a6a4637a856a30d64070c40c6ba5b4a`  
		Last Modified: Wed, 12 Dec 2018 19:23:52 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd445a4a647f44667b5d8d5a20e1852e44a05e71ab676c27c7231ac08efd917`  
		Last Modified: Wed, 12 Dec 2018 19:23:53 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a6a54246832dabc54e0f52dce668f9a08d02edff046c82c63763a756745b08`  
		Last Modified: Wed, 12 Dec 2018 19:23:53 GMT  
		Size: 504.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6.14`

```console
$ docker pull elasticsearch@sha256:42121f24823b80c8ada903b3fb837b8a6e43244ac5934ee87ee693b78f7e0d92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6.14` - linux; amd64

```console
$ docker pull elasticsearch@sha256:344e81a09484694bb39405266031f78dbf7bd75ec205a9524960dda02ebf3cd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.3 MB (219273812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1354170c86e79f45a694e6a0fe078c3a78110686fd8c5f7d09e43829e260f86`
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
# Fri, 16 Nov 2018 15:01:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 15:02:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 15:02:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 06:26:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 06:26:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 17 Nov 2018 06:26:36 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Nov 2018 06:26:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 12 Dec 2018 19:20:30 GMT
ENV ELASTICSEARCH_VERSION=5.6.14
# Wed, 12 Dec 2018 19:20:30 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.14
# Wed, 12 Dec 2018 19:20:47 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Dec 2018 19:20:47 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Dec 2018 19:20:48 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 12 Dec 2018 19:20:49 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 12 Dec 2018 19:20:50 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 12 Dec 2018 19:20:50 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 12 Dec 2018 19:20:51 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Wed, 12 Dec 2018 19:20:51 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 12 Dec 2018 19:20:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 19:20:52 GMT
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
	-	`sha256:e00a5e6055ccdd1c0491227009508127273e65aceaccad709eb6a10692fb68e3`  
		Last Modified: Fri, 16 Nov 2018 16:04:08 GMT  
		Size: 122.1 MB (122118624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8319f5fb56cff26b699a967e4afa404e605c23c58ae1952b0b19765a66db6a61`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 246.7 KB (246722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610c2713820deaa7e5f5dda6c1227b9d9ce667bf7565e5e1609246d549eca133`  
		Last Modified: Sat, 17 Nov 2018 06:27:38 GMT  
		Size: 500.9 KB (500916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e69c307cf099bf37021c1db6384ec0efaf3e8fa4c9fb8b6fd2e41f4f18e269e6`  
		Last Modified: Sat, 17 Nov 2018 06:27:38 GMT  
		Size: 1.4 KB (1444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef19439ea9ef6484db31069c66a3a902ec1c7a6eeb66952c153642b265b6c63`  
		Last Modified: Sat, 17 Nov 2018 06:27:37 GMT  
		Size: 920.4 KB (920404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e155daace5917e0fd1362f17796d5618d60b8b0a492d1c6a907d5b9b0df3b8db`  
		Last Modified: Wed, 12 Dec 2018 19:23:58 GMT  
		Size: 34.2 MB (34230611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d72dff16cad96b701a0c230b4e955fd0a6a4637a856a30d64070c40c6ba5b4a`  
		Last Modified: Wed, 12 Dec 2018 19:23:52 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd445a4a647f44667b5d8d5a20e1852e44a05e71ab676c27c7231ac08efd917`  
		Last Modified: Wed, 12 Dec 2018 19:23:53 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a6a54246832dabc54e0f52dce668f9a08d02edff046c82c63763a756745b08`  
		Last Modified: Wed, 12 Dec 2018 19:23:53 GMT  
		Size: 504.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6.14-alpine`

```console
$ docker pull elasticsearch@sha256:d0e241af1d0c0fa5a594ea5c23004c3666fd4040d5fe2d1719d1925cb1510234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6.14-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:2a9f82f05781421446ded0ce5da3e1a581d22744d29f822a0b23f6eca43ef4ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92534410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac5d415b7621e4c864af4a8a5f6eaaf815a1ea3220dae84839d77eae317c65b2`
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
# Wed, 12 Dec 2018 19:21:13 GMT
ENV ELASTICSEARCH_VERSION=5.6.14
# Wed, 12 Dec 2018 19:21:13 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.14.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.14.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=392e98ebd549aba91f3041c59fe0d7be1abbd229
# Wed, 12 Dec 2018 19:21:20 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 12 Dec 2018 19:21:33 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 12 Dec 2018 19:21:33 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 12 Dec 2018 19:21:33 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 12 Dec 2018 19:21:34 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 12 Dec 2018 19:21:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 19:21:34 GMT
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
	-	`sha256:85052d6716e4e67c13e0149e8f7d68b784a309fd005b127c1786b9d1dc143de7`  
		Last Modified: Wed, 12 Dec 2018 19:25:34 GMT  
		Size: 34.3 MB (34290497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf219607ff383e474f19168a8e0e5569ddeeeec3104d10aaca87a90d8b1c38cf`  
		Last Modified: Wed, 12 Dec 2018 19:25:30 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27e3f96f970388b8c4fda8a7f9b0b934e584be24ad95fe849f5c96ac801f62d`  
		Last Modified: Wed, 12 Dec 2018 19:25:31 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6-alpine`

```console
$ docker pull elasticsearch@sha256:d0e241af1d0c0fa5a594ea5c23004c3666fd4040d5fe2d1719d1925cb1510234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:2a9f82f05781421446ded0ce5da3e1a581d22744d29f822a0b23f6eca43ef4ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92534410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac5d415b7621e4c864af4a8a5f6eaaf815a1ea3220dae84839d77eae317c65b2`
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
# Wed, 12 Dec 2018 19:21:13 GMT
ENV ELASTICSEARCH_VERSION=5.6.14
# Wed, 12 Dec 2018 19:21:13 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.14.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.14.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=392e98ebd549aba91f3041c59fe0d7be1abbd229
# Wed, 12 Dec 2018 19:21:20 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 12 Dec 2018 19:21:33 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 12 Dec 2018 19:21:33 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 12 Dec 2018 19:21:33 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 12 Dec 2018 19:21:34 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 12 Dec 2018 19:21:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 19:21:34 GMT
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
	-	`sha256:85052d6716e4e67c13e0149e8f7d68b784a309fd005b127c1786b9d1dc143de7`  
		Last Modified: Wed, 12 Dec 2018 19:25:34 GMT  
		Size: 34.3 MB (34290497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf219607ff383e474f19168a8e0e5569ddeeeec3104d10aaca87a90d8b1c38cf`  
		Last Modified: Wed, 12 Dec 2018 19:25:30 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27e3f96f970388b8c4fda8a7f9b0b934e584be24ad95fe849f5c96ac801f62d`  
		Last Modified: Wed, 12 Dec 2018 19:25:31 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5-alpine`

```console
$ docker pull elasticsearch@sha256:d0e241af1d0c0fa5a594ea5c23004c3666fd4040d5fe2d1719d1925cb1510234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:2a9f82f05781421446ded0ce5da3e1a581d22744d29f822a0b23f6eca43ef4ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92534410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac5d415b7621e4c864af4a8a5f6eaaf815a1ea3220dae84839d77eae317c65b2`
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
# Wed, 12 Dec 2018 19:21:13 GMT
ENV ELASTICSEARCH_VERSION=5.6.14
# Wed, 12 Dec 2018 19:21:13 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.14.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.14.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=392e98ebd549aba91f3041c59fe0d7be1abbd229
# Wed, 12 Dec 2018 19:21:20 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 12 Dec 2018 19:21:33 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 12 Dec 2018 19:21:33 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 12 Dec 2018 19:21:33 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 12 Dec 2018 19:21:34 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 12 Dec 2018 19:21:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 19:21:34 GMT
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
	-	`sha256:85052d6716e4e67c13e0149e8f7d68b784a309fd005b127c1786b9d1dc143de7`  
		Last Modified: Wed, 12 Dec 2018 19:25:34 GMT  
		Size: 34.3 MB (34290497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf219607ff383e474f19168a8e0e5569ddeeeec3104d10aaca87a90d8b1c38cf`  
		Last Modified: Wed, 12 Dec 2018 19:25:30 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27e3f96f970388b8c4fda8a7f9b0b934e584be24ad95fe849f5c96ac801f62d`  
		Last Modified: Wed, 12 Dec 2018 19:25:31 GMT  
		Size: 508.0 B  
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

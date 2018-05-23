<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:3`](#mongo3)
-	[`mongo:3.2`](#mongo32)
-	[`mongo:3.2.20`](#mongo3220)
-	[`mongo:3.2.20-jessie`](#mongo3220-jessie)
-	[`mongo:3.2-jessie`](#mongo32-jessie)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3.4.15`](#mongo3415)
-	[`mongo:3.4.15-jessie`](#mongo3415-jessie)
-	[`mongo:3.4-jessie`](#mongo34-jessie)
-	[`mongo:3.6`](#mongo36)
-	[`mongo:3.6.5`](#mongo365)
-	[`mongo:3.6.5-jessie`](#mongo365-jessie)
-	[`mongo:3.6-jessie`](#mongo36-jessie)
-	[`mongo:3.7`](#mongo37)
-	[`mongo:3.7.9`](#mongo379)
-	[`mongo:3.7.9-xenial`](#mongo379-xenial)
-	[`mongo:3.7-xenial`](#mongo37-xenial)
-	[`mongo:3-jessie`](#mongo3-jessie)
-	[`mongo:4.0.0-rc0`](#mongo400-rc0)
-	[`mongo:4.0.0-rc0-xenial`](#mongo400-rc0-xenial)
-	[`mongo:4.0-rc`](#mongo40-rc)
-	[`mongo:4.0-rc-xenial`](#mongo40-rc-xenial)
-	[`mongo:jessie`](#mongojessie)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:rc`](#mongorc)
-	[`mongo:rc-xenial`](#mongorc-xenial)
-	[`mongo:unstable`](#mongounstable)
-	[`mongo:unstable-xenial`](#mongounstable-xenial)

## `mongo:3`

```console
$ docker pull mongo@sha256:89672f72dde6ec88618fcfa2fd11a45d147cbd7df97573c227ff8d80131c3c53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

```console
$ docker pull mongo@sha256:0e0c3294c7d6ea3ece35844ee278474c906a3a40f61f1aee7d8a59316c739d25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132043621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93ff881751f8ef4ec6bf52846ff55378b36eb9280a3a3060bf5e4a4b56d13ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 18:58:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 30 Apr 2018 18:59:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 18:59:13 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 18:59:14 GMT
ENV JSYAML_VERSION=3.10.0
# Mon, 30 Apr 2018 18:59:38 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Mon, 30 Apr 2018 18:59:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 19:18:05 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Mon, 30 Apr 2018 19:18:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 19:18:11 GMT
ARG MONGO_PACKAGE=mongodb-org
# Mon, 30 Apr 2018 19:18:12 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_MAJOR=3.6
# Wed, 23 May 2018 21:37:49 GMT
ENV MONGO_VERSION=3.6.5
# Wed, 23 May 2018 21:37:50 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 23 May 2018 21:38:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 23 May 2018 21:38:19 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 23 May 2018 21:38:19 GMT
VOLUME [/data/db /data/configdb]
# Wed, 23 May 2018 21:38:20 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 23 May 2018 21:38:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:38:20 GMT
EXPOSE 27017/tcp
# Wed, 23 May 2018 21:38:20 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2ecd7fdbddfcc251ab599e16b502ec10102e84c4e89ca5422ea19fd1cee30`  
		Last Modified: Mon, 30 Apr 2018 19:55:04 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a86da34d0f2d1360deeec92b8b73c9c2df70505c243c676d5407c61eb803f5`  
		Last Modified: Mon, 30 Apr 2018 19:55:05 GMT  
		Size: 2.4 MB (2398014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b1f447e4202f1b47a8d280dee75a7e029a44e8936357df17885b450f6b6760`  
		Last Modified: Mon, 30 Apr 2018 19:55:03 GMT  
		Size: 816.7 KB (816709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e820834b36f2c711e769427f07b84dcd6fbe125de1751a9e7ddeec2a7bdf75`  
		Last Modified: Mon, 30 Apr 2018 19:55:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa34fa64bf4973f1435723ffdd5cd867f25579dfdcccc3d1fae452f79bd9ab7`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ba5a2a5216a8f7ea6a3602d0c01aa85075cfd81fd221d8ee61ce5c48e57a4d`  
		Last Modified: Wed, 23 May 2018 21:40:31 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6024791f7c878ebce76b3b4daaf8d0ffcd5763a581c73e86b44ebcdba87895aa`  
		Last Modified: Wed, 23 May 2018 21:40:47 GMT  
		Size: 98.7 MB (98693870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796e396ed72c9f3b6253852fc5cb1f5c5abc65950888a01da83788c63205c457`  
		Last Modified: Wed, 23 May 2018 21:40:32 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ac33c0a702dea55ab91e766059065911f1a823baf91b47d44deb9a3c6c2efd`  
		Last Modified: Wed, 23 May 2018 21:40:31 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:79a6176ef96dd22a8b5739fbacc310cfd65c75566a6f08e58069bab28289f368
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

```console
$ docker pull mongo@sha256:b4ea95ed77f051fc88e4456c892a62f0d91bb5b02770feeede9e1864e2bc967f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104202870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1ab9c9c6fafc5bfeabb44525596ffe3e45350b837117461f1a5f9fb06114f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 18:58:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 30 Apr 2018 18:59:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 18:59:13 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 18:59:14 GMT
ENV JSYAML_VERSION=3.10.0
# Mon, 30 Apr 2018 18:59:38 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Mon, 30 Apr 2018 18:59:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 18:59:39 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Mon, 30 Apr 2018 18:59:44 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 18:59:44 GMT
ARG MONGO_PACKAGE=mongodb-org
# Mon, 30 Apr 2018 18:59:44 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 18:59:45 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 18:59:45 GMT
ENV MONGO_MAJOR=3.2
# Thu, 10 May 2018 20:31:53 GMT
ENV MONGO_VERSION=3.2.20
# Thu, 10 May 2018 20:31:54 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 10 May 2018 20:32:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 10 May 2018 20:32:20 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 10 May 2018 20:32:20 GMT
VOLUME [/data/db /data/configdb]
# Thu, 10 May 2018 20:32:21 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Thu, 10 May 2018 20:32:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 10 May 2018 20:32:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 10 May 2018 20:32:22 GMT
EXPOSE 27017/tcp
# Thu, 10 May 2018 20:32:22 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2ecd7fdbddfcc251ab599e16b502ec10102e84c4e89ca5422ea19fd1cee30`  
		Last Modified: Mon, 30 Apr 2018 19:55:04 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a86da34d0f2d1360deeec92b8b73c9c2df70505c243c676d5407c61eb803f5`  
		Last Modified: Mon, 30 Apr 2018 19:55:05 GMT  
		Size: 2.4 MB (2398014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b1f447e4202f1b47a8d280dee75a7e029a44e8936357df17885b450f6b6760`  
		Last Modified: Mon, 30 Apr 2018 19:55:03 GMT  
		Size: 816.7 KB (816709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e820834b36f2c711e769427f07b84dcd6fbe125de1751a9e7ddeec2a7bdf75`  
		Last Modified: Mon, 30 Apr 2018 19:55:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95cc146d3e5b86179872c7802583487b2873cf7f04acfa080e9d47a8af0a25ab`  
		Last Modified: Mon, 30 Apr 2018 19:55:02 GMT  
		Size: 3.6 KB (3595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca178240d8e8de9e5e48ba4714085b72c6bc18efff3f998e79e9b203fe80d9a7`  
		Last Modified: Thu, 10 May 2018 20:32:40 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08eb6ad571c5dd6fbb4aa596d244043b3bf84ea8d2f27804905225b714f06096`  
		Last Modified: Thu, 10 May 2018 20:32:53 GMT  
		Size: 70.9 MB (70850983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c119b19e0f1a2f54c2254cd28ae25dd73e9b8ab1e430f2006a63d0dc8a51cfa`  
		Last Modified: Thu, 10 May 2018 20:32:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4aacdd6e75ce5a0bc62ae25638f5e42f1f34d57a138c9c6f40566b4e2aaa57`  
		Last Modified: Thu, 10 May 2018 20:32:41 GMT  
		Size: 3.6 KB (3570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd5a923b5527f25946e5199b7290da2c777cb0c84282e805a2976c4e57f18c4`  
		Last Modified: Thu, 10 May 2018 20:32:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.20`

```console
$ docker pull mongo@sha256:79a6176ef96dd22a8b5739fbacc310cfd65c75566a6f08e58069bab28289f368
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2.20` - linux; amd64

```console
$ docker pull mongo@sha256:b4ea95ed77f051fc88e4456c892a62f0d91bb5b02770feeede9e1864e2bc967f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104202870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1ab9c9c6fafc5bfeabb44525596ffe3e45350b837117461f1a5f9fb06114f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 18:58:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 30 Apr 2018 18:59:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 18:59:13 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 18:59:14 GMT
ENV JSYAML_VERSION=3.10.0
# Mon, 30 Apr 2018 18:59:38 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Mon, 30 Apr 2018 18:59:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 18:59:39 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Mon, 30 Apr 2018 18:59:44 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 18:59:44 GMT
ARG MONGO_PACKAGE=mongodb-org
# Mon, 30 Apr 2018 18:59:44 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 18:59:45 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 18:59:45 GMT
ENV MONGO_MAJOR=3.2
# Thu, 10 May 2018 20:31:53 GMT
ENV MONGO_VERSION=3.2.20
# Thu, 10 May 2018 20:31:54 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 10 May 2018 20:32:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 10 May 2018 20:32:20 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 10 May 2018 20:32:20 GMT
VOLUME [/data/db /data/configdb]
# Thu, 10 May 2018 20:32:21 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Thu, 10 May 2018 20:32:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 10 May 2018 20:32:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 10 May 2018 20:32:22 GMT
EXPOSE 27017/tcp
# Thu, 10 May 2018 20:32:22 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2ecd7fdbddfcc251ab599e16b502ec10102e84c4e89ca5422ea19fd1cee30`  
		Last Modified: Mon, 30 Apr 2018 19:55:04 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a86da34d0f2d1360deeec92b8b73c9c2df70505c243c676d5407c61eb803f5`  
		Last Modified: Mon, 30 Apr 2018 19:55:05 GMT  
		Size: 2.4 MB (2398014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b1f447e4202f1b47a8d280dee75a7e029a44e8936357df17885b450f6b6760`  
		Last Modified: Mon, 30 Apr 2018 19:55:03 GMT  
		Size: 816.7 KB (816709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e820834b36f2c711e769427f07b84dcd6fbe125de1751a9e7ddeec2a7bdf75`  
		Last Modified: Mon, 30 Apr 2018 19:55:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95cc146d3e5b86179872c7802583487b2873cf7f04acfa080e9d47a8af0a25ab`  
		Last Modified: Mon, 30 Apr 2018 19:55:02 GMT  
		Size: 3.6 KB (3595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca178240d8e8de9e5e48ba4714085b72c6bc18efff3f998e79e9b203fe80d9a7`  
		Last Modified: Thu, 10 May 2018 20:32:40 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08eb6ad571c5dd6fbb4aa596d244043b3bf84ea8d2f27804905225b714f06096`  
		Last Modified: Thu, 10 May 2018 20:32:53 GMT  
		Size: 70.9 MB (70850983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c119b19e0f1a2f54c2254cd28ae25dd73e9b8ab1e430f2006a63d0dc8a51cfa`  
		Last Modified: Thu, 10 May 2018 20:32:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4aacdd6e75ce5a0bc62ae25638f5e42f1f34d57a138c9c6f40566b4e2aaa57`  
		Last Modified: Thu, 10 May 2018 20:32:41 GMT  
		Size: 3.6 KB (3570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd5a923b5527f25946e5199b7290da2c777cb0c84282e805a2976c4e57f18c4`  
		Last Modified: Thu, 10 May 2018 20:32:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.20-jessie`

```console
$ docker pull mongo@sha256:79a6176ef96dd22a8b5739fbacc310cfd65c75566a6f08e58069bab28289f368
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2.20-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:b4ea95ed77f051fc88e4456c892a62f0d91bb5b02770feeede9e1864e2bc967f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104202870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1ab9c9c6fafc5bfeabb44525596ffe3e45350b837117461f1a5f9fb06114f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 18:58:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 30 Apr 2018 18:59:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 18:59:13 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 18:59:14 GMT
ENV JSYAML_VERSION=3.10.0
# Mon, 30 Apr 2018 18:59:38 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Mon, 30 Apr 2018 18:59:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 18:59:39 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Mon, 30 Apr 2018 18:59:44 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 18:59:44 GMT
ARG MONGO_PACKAGE=mongodb-org
# Mon, 30 Apr 2018 18:59:44 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 18:59:45 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 18:59:45 GMT
ENV MONGO_MAJOR=3.2
# Thu, 10 May 2018 20:31:53 GMT
ENV MONGO_VERSION=3.2.20
# Thu, 10 May 2018 20:31:54 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 10 May 2018 20:32:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 10 May 2018 20:32:20 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 10 May 2018 20:32:20 GMT
VOLUME [/data/db /data/configdb]
# Thu, 10 May 2018 20:32:21 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Thu, 10 May 2018 20:32:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 10 May 2018 20:32:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 10 May 2018 20:32:22 GMT
EXPOSE 27017/tcp
# Thu, 10 May 2018 20:32:22 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2ecd7fdbddfcc251ab599e16b502ec10102e84c4e89ca5422ea19fd1cee30`  
		Last Modified: Mon, 30 Apr 2018 19:55:04 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a86da34d0f2d1360deeec92b8b73c9c2df70505c243c676d5407c61eb803f5`  
		Last Modified: Mon, 30 Apr 2018 19:55:05 GMT  
		Size: 2.4 MB (2398014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b1f447e4202f1b47a8d280dee75a7e029a44e8936357df17885b450f6b6760`  
		Last Modified: Mon, 30 Apr 2018 19:55:03 GMT  
		Size: 816.7 KB (816709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e820834b36f2c711e769427f07b84dcd6fbe125de1751a9e7ddeec2a7bdf75`  
		Last Modified: Mon, 30 Apr 2018 19:55:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95cc146d3e5b86179872c7802583487b2873cf7f04acfa080e9d47a8af0a25ab`  
		Last Modified: Mon, 30 Apr 2018 19:55:02 GMT  
		Size: 3.6 KB (3595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca178240d8e8de9e5e48ba4714085b72c6bc18efff3f998e79e9b203fe80d9a7`  
		Last Modified: Thu, 10 May 2018 20:32:40 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08eb6ad571c5dd6fbb4aa596d244043b3bf84ea8d2f27804905225b714f06096`  
		Last Modified: Thu, 10 May 2018 20:32:53 GMT  
		Size: 70.9 MB (70850983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c119b19e0f1a2f54c2254cd28ae25dd73e9b8ab1e430f2006a63d0dc8a51cfa`  
		Last Modified: Thu, 10 May 2018 20:32:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4aacdd6e75ce5a0bc62ae25638f5e42f1f34d57a138c9c6f40566b4e2aaa57`  
		Last Modified: Thu, 10 May 2018 20:32:41 GMT  
		Size: 3.6 KB (3570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd5a923b5527f25946e5199b7290da2c777cb0c84282e805a2976c4e57f18c4`  
		Last Modified: Thu, 10 May 2018 20:32:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-jessie`

```console
$ docker pull mongo@sha256:79a6176ef96dd22a8b5739fbacc310cfd65c75566a6f08e58069bab28289f368
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:b4ea95ed77f051fc88e4456c892a62f0d91bb5b02770feeede9e1864e2bc967f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104202870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1ab9c9c6fafc5bfeabb44525596ffe3e45350b837117461f1a5f9fb06114f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 18:58:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 30 Apr 2018 18:59:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 18:59:13 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 18:59:14 GMT
ENV JSYAML_VERSION=3.10.0
# Mon, 30 Apr 2018 18:59:38 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Mon, 30 Apr 2018 18:59:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 18:59:39 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Mon, 30 Apr 2018 18:59:44 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 18:59:44 GMT
ARG MONGO_PACKAGE=mongodb-org
# Mon, 30 Apr 2018 18:59:44 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 18:59:45 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 18:59:45 GMT
ENV MONGO_MAJOR=3.2
# Thu, 10 May 2018 20:31:53 GMT
ENV MONGO_VERSION=3.2.20
# Thu, 10 May 2018 20:31:54 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 10 May 2018 20:32:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 10 May 2018 20:32:20 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 10 May 2018 20:32:20 GMT
VOLUME [/data/db /data/configdb]
# Thu, 10 May 2018 20:32:21 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Thu, 10 May 2018 20:32:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 10 May 2018 20:32:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 10 May 2018 20:32:22 GMT
EXPOSE 27017/tcp
# Thu, 10 May 2018 20:32:22 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2ecd7fdbddfcc251ab599e16b502ec10102e84c4e89ca5422ea19fd1cee30`  
		Last Modified: Mon, 30 Apr 2018 19:55:04 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a86da34d0f2d1360deeec92b8b73c9c2df70505c243c676d5407c61eb803f5`  
		Last Modified: Mon, 30 Apr 2018 19:55:05 GMT  
		Size: 2.4 MB (2398014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b1f447e4202f1b47a8d280dee75a7e029a44e8936357df17885b450f6b6760`  
		Last Modified: Mon, 30 Apr 2018 19:55:03 GMT  
		Size: 816.7 KB (816709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e820834b36f2c711e769427f07b84dcd6fbe125de1751a9e7ddeec2a7bdf75`  
		Last Modified: Mon, 30 Apr 2018 19:55:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95cc146d3e5b86179872c7802583487b2873cf7f04acfa080e9d47a8af0a25ab`  
		Last Modified: Mon, 30 Apr 2018 19:55:02 GMT  
		Size: 3.6 KB (3595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca178240d8e8de9e5e48ba4714085b72c6bc18efff3f998e79e9b203fe80d9a7`  
		Last Modified: Thu, 10 May 2018 20:32:40 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08eb6ad571c5dd6fbb4aa596d244043b3bf84ea8d2f27804905225b714f06096`  
		Last Modified: Thu, 10 May 2018 20:32:53 GMT  
		Size: 70.9 MB (70850983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c119b19e0f1a2f54c2254cd28ae25dd73e9b8ab1e430f2006a63d0dc8a51cfa`  
		Last Modified: Thu, 10 May 2018 20:32:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4aacdd6e75ce5a0bc62ae25638f5e42f1f34d57a138c9c6f40566b4e2aaa57`  
		Last Modified: Thu, 10 May 2018 20:32:41 GMT  
		Size: 3.6 KB (3570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd5a923b5527f25946e5199b7290da2c777cb0c84282e805a2976c4e57f18c4`  
		Last Modified: Thu, 10 May 2018 20:32:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:1c2b8a8538024f75a75b527a6a46c32ab2ce3b450061fa861a2d173151cbf3e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

```console
$ docker pull mongo@sha256:00f7cc00463d64593368d6222375342a85c82a1d65a0b35a6115680fb0074a2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133277017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01dea996377049562f1803910a66651132976a0b53878f1b7ae506e1cf06184f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 18:58:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 30 Apr 2018 18:59:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 18:59:13 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 18:59:14 GMT
ENV JSYAML_VERSION=3.10.0
# Mon, 30 Apr 2018 18:59:38 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Mon, 30 Apr 2018 18:59:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 19:14:43 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Mon, 30 Apr 2018 19:14:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 19:14:48 GMT
ARG MONGO_PACKAGE=mongodb-org
# Mon, 30 Apr 2018 19:14:48 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:14:49 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:14:49 GMT
ENV MONGO_MAJOR=3.4
# Mon, 21 May 2018 21:25:48 GMT
ENV MONGO_VERSION=3.4.15
# Mon, 21 May 2018 21:25:49 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 21 May 2018 21:26:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 21 May 2018 21:26:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 21 May 2018 21:26:15 GMT
VOLUME [/data/db /data/configdb]
# Mon, 21 May 2018 21:26:15 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Mon, 21 May 2018 21:26:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 21 May 2018 21:26:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 May 2018 21:26:16 GMT
EXPOSE 27017/tcp
# Mon, 21 May 2018 21:26:17 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2ecd7fdbddfcc251ab599e16b502ec10102e84c4e89ca5422ea19fd1cee30`  
		Last Modified: Mon, 30 Apr 2018 19:55:04 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a86da34d0f2d1360deeec92b8b73c9c2df70505c243c676d5407c61eb803f5`  
		Last Modified: Mon, 30 Apr 2018 19:55:05 GMT  
		Size: 2.4 MB (2398014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b1f447e4202f1b47a8d280dee75a7e029a44e8936357df17885b450f6b6760`  
		Last Modified: Mon, 30 Apr 2018 19:55:03 GMT  
		Size: 816.7 KB (816709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e820834b36f2c711e769427f07b84dcd6fbe125de1751a9e7ddeec2a7bdf75`  
		Last Modified: Mon, 30 Apr 2018 19:55:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19c2af3f13ec0bb613bf4af0a77699dbd1981cad9a9db8df56b75a1bcce4b99`  
		Last Modified: Mon, 30 Apr 2018 19:57:29 GMT  
		Size: 2.0 KB (2005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90f50e2160cecd57dad68fd027848c4b9585cc0badbd785b0e82d08a0324140`  
		Last Modified: Mon, 21 May 2018 21:26:36 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59a043d341e06e0a3bca644fb1e9a370b6ab3afcce346925f4c2c73fcc57b92`  
		Last Modified: Mon, 21 May 2018 21:26:52 GMT  
		Size: 99.9 MB (99926722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3746e1e376ecc57308a2739fcb7034104f6e48e4307992bebea4e60d38836b72`  
		Last Modified: Mon, 21 May 2018 21:26:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffdc695f5a11d55b47517e1dcc851fae4ee9afa06784ebcc0b32cdb899842e8f`  
		Last Modified: Mon, 21 May 2018 21:26:36 GMT  
		Size: 3.6 KB (3569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29b6904561ebaae50f26c86394fefd1ca141bf848235110e1b3bc15072a7a7f`  
		Last Modified: Mon, 21 May 2018 21:26:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.15`

```console
$ docker pull mongo@sha256:1c2b8a8538024f75a75b527a6a46c32ab2ce3b450061fa861a2d173151cbf3e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4.15` - linux; amd64

```console
$ docker pull mongo@sha256:00f7cc00463d64593368d6222375342a85c82a1d65a0b35a6115680fb0074a2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133277017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01dea996377049562f1803910a66651132976a0b53878f1b7ae506e1cf06184f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 18:58:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 30 Apr 2018 18:59:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 18:59:13 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 18:59:14 GMT
ENV JSYAML_VERSION=3.10.0
# Mon, 30 Apr 2018 18:59:38 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Mon, 30 Apr 2018 18:59:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 19:14:43 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Mon, 30 Apr 2018 19:14:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 19:14:48 GMT
ARG MONGO_PACKAGE=mongodb-org
# Mon, 30 Apr 2018 19:14:48 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:14:49 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:14:49 GMT
ENV MONGO_MAJOR=3.4
# Mon, 21 May 2018 21:25:48 GMT
ENV MONGO_VERSION=3.4.15
# Mon, 21 May 2018 21:25:49 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 21 May 2018 21:26:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 21 May 2018 21:26:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 21 May 2018 21:26:15 GMT
VOLUME [/data/db /data/configdb]
# Mon, 21 May 2018 21:26:15 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Mon, 21 May 2018 21:26:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 21 May 2018 21:26:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 May 2018 21:26:16 GMT
EXPOSE 27017/tcp
# Mon, 21 May 2018 21:26:17 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2ecd7fdbddfcc251ab599e16b502ec10102e84c4e89ca5422ea19fd1cee30`  
		Last Modified: Mon, 30 Apr 2018 19:55:04 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a86da34d0f2d1360deeec92b8b73c9c2df70505c243c676d5407c61eb803f5`  
		Last Modified: Mon, 30 Apr 2018 19:55:05 GMT  
		Size: 2.4 MB (2398014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b1f447e4202f1b47a8d280dee75a7e029a44e8936357df17885b450f6b6760`  
		Last Modified: Mon, 30 Apr 2018 19:55:03 GMT  
		Size: 816.7 KB (816709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e820834b36f2c711e769427f07b84dcd6fbe125de1751a9e7ddeec2a7bdf75`  
		Last Modified: Mon, 30 Apr 2018 19:55:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19c2af3f13ec0bb613bf4af0a77699dbd1981cad9a9db8df56b75a1bcce4b99`  
		Last Modified: Mon, 30 Apr 2018 19:57:29 GMT  
		Size: 2.0 KB (2005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90f50e2160cecd57dad68fd027848c4b9585cc0badbd785b0e82d08a0324140`  
		Last Modified: Mon, 21 May 2018 21:26:36 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59a043d341e06e0a3bca644fb1e9a370b6ab3afcce346925f4c2c73fcc57b92`  
		Last Modified: Mon, 21 May 2018 21:26:52 GMT  
		Size: 99.9 MB (99926722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3746e1e376ecc57308a2739fcb7034104f6e48e4307992bebea4e60d38836b72`  
		Last Modified: Mon, 21 May 2018 21:26:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffdc695f5a11d55b47517e1dcc851fae4ee9afa06784ebcc0b32cdb899842e8f`  
		Last Modified: Mon, 21 May 2018 21:26:36 GMT  
		Size: 3.6 KB (3569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29b6904561ebaae50f26c86394fefd1ca141bf848235110e1b3bc15072a7a7f`  
		Last Modified: Mon, 21 May 2018 21:26:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.15-jessie`

```console
$ docker pull mongo@sha256:1c2b8a8538024f75a75b527a6a46c32ab2ce3b450061fa861a2d173151cbf3e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4.15-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:00f7cc00463d64593368d6222375342a85c82a1d65a0b35a6115680fb0074a2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133277017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01dea996377049562f1803910a66651132976a0b53878f1b7ae506e1cf06184f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 18:58:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 30 Apr 2018 18:59:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 18:59:13 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 18:59:14 GMT
ENV JSYAML_VERSION=3.10.0
# Mon, 30 Apr 2018 18:59:38 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Mon, 30 Apr 2018 18:59:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 19:14:43 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Mon, 30 Apr 2018 19:14:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 19:14:48 GMT
ARG MONGO_PACKAGE=mongodb-org
# Mon, 30 Apr 2018 19:14:48 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:14:49 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:14:49 GMT
ENV MONGO_MAJOR=3.4
# Mon, 21 May 2018 21:25:48 GMT
ENV MONGO_VERSION=3.4.15
# Mon, 21 May 2018 21:25:49 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 21 May 2018 21:26:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 21 May 2018 21:26:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 21 May 2018 21:26:15 GMT
VOLUME [/data/db /data/configdb]
# Mon, 21 May 2018 21:26:15 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Mon, 21 May 2018 21:26:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 21 May 2018 21:26:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 May 2018 21:26:16 GMT
EXPOSE 27017/tcp
# Mon, 21 May 2018 21:26:17 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2ecd7fdbddfcc251ab599e16b502ec10102e84c4e89ca5422ea19fd1cee30`  
		Last Modified: Mon, 30 Apr 2018 19:55:04 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a86da34d0f2d1360deeec92b8b73c9c2df70505c243c676d5407c61eb803f5`  
		Last Modified: Mon, 30 Apr 2018 19:55:05 GMT  
		Size: 2.4 MB (2398014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b1f447e4202f1b47a8d280dee75a7e029a44e8936357df17885b450f6b6760`  
		Last Modified: Mon, 30 Apr 2018 19:55:03 GMT  
		Size: 816.7 KB (816709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e820834b36f2c711e769427f07b84dcd6fbe125de1751a9e7ddeec2a7bdf75`  
		Last Modified: Mon, 30 Apr 2018 19:55:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19c2af3f13ec0bb613bf4af0a77699dbd1981cad9a9db8df56b75a1bcce4b99`  
		Last Modified: Mon, 30 Apr 2018 19:57:29 GMT  
		Size: 2.0 KB (2005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90f50e2160cecd57dad68fd027848c4b9585cc0badbd785b0e82d08a0324140`  
		Last Modified: Mon, 21 May 2018 21:26:36 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59a043d341e06e0a3bca644fb1e9a370b6ab3afcce346925f4c2c73fcc57b92`  
		Last Modified: Mon, 21 May 2018 21:26:52 GMT  
		Size: 99.9 MB (99926722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3746e1e376ecc57308a2739fcb7034104f6e48e4307992bebea4e60d38836b72`  
		Last Modified: Mon, 21 May 2018 21:26:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffdc695f5a11d55b47517e1dcc851fae4ee9afa06784ebcc0b32cdb899842e8f`  
		Last Modified: Mon, 21 May 2018 21:26:36 GMT  
		Size: 3.6 KB (3569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29b6904561ebaae50f26c86394fefd1ca141bf848235110e1b3bc15072a7a7f`  
		Last Modified: Mon, 21 May 2018 21:26:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-jessie`

```console
$ docker pull mongo@sha256:1c2b8a8538024f75a75b527a6a46c32ab2ce3b450061fa861a2d173151cbf3e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:00f7cc00463d64593368d6222375342a85c82a1d65a0b35a6115680fb0074a2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133277017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01dea996377049562f1803910a66651132976a0b53878f1b7ae506e1cf06184f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 18:58:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 30 Apr 2018 18:59:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 18:59:13 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 18:59:14 GMT
ENV JSYAML_VERSION=3.10.0
# Mon, 30 Apr 2018 18:59:38 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Mon, 30 Apr 2018 18:59:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 19:14:43 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Mon, 30 Apr 2018 19:14:48 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 19:14:48 GMT
ARG MONGO_PACKAGE=mongodb-org
# Mon, 30 Apr 2018 19:14:48 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:14:49 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:14:49 GMT
ENV MONGO_MAJOR=3.4
# Mon, 21 May 2018 21:25:48 GMT
ENV MONGO_VERSION=3.4.15
# Mon, 21 May 2018 21:25:49 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 21 May 2018 21:26:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 21 May 2018 21:26:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 21 May 2018 21:26:15 GMT
VOLUME [/data/db /data/configdb]
# Mon, 21 May 2018 21:26:15 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Mon, 21 May 2018 21:26:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 21 May 2018 21:26:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 May 2018 21:26:16 GMT
EXPOSE 27017/tcp
# Mon, 21 May 2018 21:26:17 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2ecd7fdbddfcc251ab599e16b502ec10102e84c4e89ca5422ea19fd1cee30`  
		Last Modified: Mon, 30 Apr 2018 19:55:04 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a86da34d0f2d1360deeec92b8b73c9c2df70505c243c676d5407c61eb803f5`  
		Last Modified: Mon, 30 Apr 2018 19:55:05 GMT  
		Size: 2.4 MB (2398014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b1f447e4202f1b47a8d280dee75a7e029a44e8936357df17885b450f6b6760`  
		Last Modified: Mon, 30 Apr 2018 19:55:03 GMT  
		Size: 816.7 KB (816709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e820834b36f2c711e769427f07b84dcd6fbe125de1751a9e7ddeec2a7bdf75`  
		Last Modified: Mon, 30 Apr 2018 19:55:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19c2af3f13ec0bb613bf4af0a77699dbd1981cad9a9db8df56b75a1bcce4b99`  
		Last Modified: Mon, 30 Apr 2018 19:57:29 GMT  
		Size: 2.0 KB (2005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90f50e2160cecd57dad68fd027848c4b9585cc0badbd785b0e82d08a0324140`  
		Last Modified: Mon, 21 May 2018 21:26:36 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59a043d341e06e0a3bca644fb1e9a370b6ab3afcce346925f4c2c73fcc57b92`  
		Last Modified: Mon, 21 May 2018 21:26:52 GMT  
		Size: 99.9 MB (99926722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3746e1e376ecc57308a2739fcb7034104f6e48e4307992bebea4e60d38836b72`  
		Last Modified: Mon, 21 May 2018 21:26:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffdc695f5a11d55b47517e1dcc851fae4ee9afa06784ebcc0b32cdb899842e8f`  
		Last Modified: Mon, 21 May 2018 21:26:36 GMT  
		Size: 3.6 KB (3569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29b6904561ebaae50f26c86394fefd1ca141bf848235110e1b3bc15072a7a7f`  
		Last Modified: Mon, 21 May 2018 21:26:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6`

```console
$ docker pull mongo@sha256:89672f72dde6ec88618fcfa2fd11a45d147cbd7df97573c227ff8d80131c3c53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6` - linux; amd64

```console
$ docker pull mongo@sha256:0e0c3294c7d6ea3ece35844ee278474c906a3a40f61f1aee7d8a59316c739d25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132043621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93ff881751f8ef4ec6bf52846ff55378b36eb9280a3a3060bf5e4a4b56d13ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 18:58:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 30 Apr 2018 18:59:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 18:59:13 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 18:59:14 GMT
ENV JSYAML_VERSION=3.10.0
# Mon, 30 Apr 2018 18:59:38 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Mon, 30 Apr 2018 18:59:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 19:18:05 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Mon, 30 Apr 2018 19:18:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 19:18:11 GMT
ARG MONGO_PACKAGE=mongodb-org
# Mon, 30 Apr 2018 19:18:12 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_MAJOR=3.6
# Wed, 23 May 2018 21:37:49 GMT
ENV MONGO_VERSION=3.6.5
# Wed, 23 May 2018 21:37:50 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 23 May 2018 21:38:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 23 May 2018 21:38:19 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 23 May 2018 21:38:19 GMT
VOLUME [/data/db /data/configdb]
# Wed, 23 May 2018 21:38:20 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 23 May 2018 21:38:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:38:20 GMT
EXPOSE 27017/tcp
# Wed, 23 May 2018 21:38:20 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2ecd7fdbddfcc251ab599e16b502ec10102e84c4e89ca5422ea19fd1cee30`  
		Last Modified: Mon, 30 Apr 2018 19:55:04 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a86da34d0f2d1360deeec92b8b73c9c2df70505c243c676d5407c61eb803f5`  
		Last Modified: Mon, 30 Apr 2018 19:55:05 GMT  
		Size: 2.4 MB (2398014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b1f447e4202f1b47a8d280dee75a7e029a44e8936357df17885b450f6b6760`  
		Last Modified: Mon, 30 Apr 2018 19:55:03 GMT  
		Size: 816.7 KB (816709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e820834b36f2c711e769427f07b84dcd6fbe125de1751a9e7ddeec2a7bdf75`  
		Last Modified: Mon, 30 Apr 2018 19:55:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa34fa64bf4973f1435723ffdd5cd867f25579dfdcccc3d1fae452f79bd9ab7`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ba5a2a5216a8f7ea6a3602d0c01aa85075cfd81fd221d8ee61ce5c48e57a4d`  
		Last Modified: Wed, 23 May 2018 21:40:31 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6024791f7c878ebce76b3b4daaf8d0ffcd5763a581c73e86b44ebcdba87895aa`  
		Last Modified: Wed, 23 May 2018 21:40:47 GMT  
		Size: 98.7 MB (98693870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796e396ed72c9f3b6253852fc5cb1f5c5abc65950888a01da83788c63205c457`  
		Last Modified: Wed, 23 May 2018 21:40:32 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ac33c0a702dea55ab91e766059065911f1a823baf91b47d44deb9a3c6c2efd`  
		Last Modified: Wed, 23 May 2018 21:40:31 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.5`

```console
$ docker pull mongo@sha256:89672f72dde6ec88618fcfa2fd11a45d147cbd7df97573c227ff8d80131c3c53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6.5` - linux; amd64

```console
$ docker pull mongo@sha256:0e0c3294c7d6ea3ece35844ee278474c906a3a40f61f1aee7d8a59316c739d25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132043621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93ff881751f8ef4ec6bf52846ff55378b36eb9280a3a3060bf5e4a4b56d13ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 18:58:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 30 Apr 2018 18:59:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 18:59:13 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 18:59:14 GMT
ENV JSYAML_VERSION=3.10.0
# Mon, 30 Apr 2018 18:59:38 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Mon, 30 Apr 2018 18:59:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 19:18:05 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Mon, 30 Apr 2018 19:18:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 19:18:11 GMT
ARG MONGO_PACKAGE=mongodb-org
# Mon, 30 Apr 2018 19:18:12 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_MAJOR=3.6
# Wed, 23 May 2018 21:37:49 GMT
ENV MONGO_VERSION=3.6.5
# Wed, 23 May 2018 21:37:50 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 23 May 2018 21:38:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 23 May 2018 21:38:19 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 23 May 2018 21:38:19 GMT
VOLUME [/data/db /data/configdb]
# Wed, 23 May 2018 21:38:20 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 23 May 2018 21:38:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:38:20 GMT
EXPOSE 27017/tcp
# Wed, 23 May 2018 21:38:20 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2ecd7fdbddfcc251ab599e16b502ec10102e84c4e89ca5422ea19fd1cee30`  
		Last Modified: Mon, 30 Apr 2018 19:55:04 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a86da34d0f2d1360deeec92b8b73c9c2df70505c243c676d5407c61eb803f5`  
		Last Modified: Mon, 30 Apr 2018 19:55:05 GMT  
		Size: 2.4 MB (2398014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b1f447e4202f1b47a8d280dee75a7e029a44e8936357df17885b450f6b6760`  
		Last Modified: Mon, 30 Apr 2018 19:55:03 GMT  
		Size: 816.7 KB (816709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e820834b36f2c711e769427f07b84dcd6fbe125de1751a9e7ddeec2a7bdf75`  
		Last Modified: Mon, 30 Apr 2018 19:55:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa34fa64bf4973f1435723ffdd5cd867f25579dfdcccc3d1fae452f79bd9ab7`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ba5a2a5216a8f7ea6a3602d0c01aa85075cfd81fd221d8ee61ce5c48e57a4d`  
		Last Modified: Wed, 23 May 2018 21:40:31 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6024791f7c878ebce76b3b4daaf8d0ffcd5763a581c73e86b44ebcdba87895aa`  
		Last Modified: Wed, 23 May 2018 21:40:47 GMT  
		Size: 98.7 MB (98693870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796e396ed72c9f3b6253852fc5cb1f5c5abc65950888a01da83788c63205c457`  
		Last Modified: Wed, 23 May 2018 21:40:32 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ac33c0a702dea55ab91e766059065911f1a823baf91b47d44deb9a3c6c2efd`  
		Last Modified: Wed, 23 May 2018 21:40:31 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.5-jessie`

```console
$ docker pull mongo@sha256:89672f72dde6ec88618fcfa2fd11a45d147cbd7df97573c227ff8d80131c3c53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6.5-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:0e0c3294c7d6ea3ece35844ee278474c906a3a40f61f1aee7d8a59316c739d25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132043621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93ff881751f8ef4ec6bf52846ff55378b36eb9280a3a3060bf5e4a4b56d13ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 18:58:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 30 Apr 2018 18:59:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 18:59:13 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 18:59:14 GMT
ENV JSYAML_VERSION=3.10.0
# Mon, 30 Apr 2018 18:59:38 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Mon, 30 Apr 2018 18:59:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 19:18:05 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Mon, 30 Apr 2018 19:18:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 19:18:11 GMT
ARG MONGO_PACKAGE=mongodb-org
# Mon, 30 Apr 2018 19:18:12 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_MAJOR=3.6
# Wed, 23 May 2018 21:37:49 GMT
ENV MONGO_VERSION=3.6.5
# Wed, 23 May 2018 21:37:50 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 23 May 2018 21:38:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 23 May 2018 21:38:19 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 23 May 2018 21:38:19 GMT
VOLUME [/data/db /data/configdb]
# Wed, 23 May 2018 21:38:20 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 23 May 2018 21:38:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:38:20 GMT
EXPOSE 27017/tcp
# Wed, 23 May 2018 21:38:20 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2ecd7fdbddfcc251ab599e16b502ec10102e84c4e89ca5422ea19fd1cee30`  
		Last Modified: Mon, 30 Apr 2018 19:55:04 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a86da34d0f2d1360deeec92b8b73c9c2df70505c243c676d5407c61eb803f5`  
		Last Modified: Mon, 30 Apr 2018 19:55:05 GMT  
		Size: 2.4 MB (2398014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b1f447e4202f1b47a8d280dee75a7e029a44e8936357df17885b450f6b6760`  
		Last Modified: Mon, 30 Apr 2018 19:55:03 GMT  
		Size: 816.7 KB (816709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e820834b36f2c711e769427f07b84dcd6fbe125de1751a9e7ddeec2a7bdf75`  
		Last Modified: Mon, 30 Apr 2018 19:55:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa34fa64bf4973f1435723ffdd5cd867f25579dfdcccc3d1fae452f79bd9ab7`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ba5a2a5216a8f7ea6a3602d0c01aa85075cfd81fd221d8ee61ce5c48e57a4d`  
		Last Modified: Wed, 23 May 2018 21:40:31 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6024791f7c878ebce76b3b4daaf8d0ffcd5763a581c73e86b44ebcdba87895aa`  
		Last Modified: Wed, 23 May 2018 21:40:47 GMT  
		Size: 98.7 MB (98693870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796e396ed72c9f3b6253852fc5cb1f5c5abc65950888a01da83788c63205c457`  
		Last Modified: Wed, 23 May 2018 21:40:32 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ac33c0a702dea55ab91e766059065911f1a823baf91b47d44deb9a3c6c2efd`  
		Last Modified: Wed, 23 May 2018 21:40:31 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6-jessie`

```console
$ docker pull mongo@sha256:89672f72dde6ec88618fcfa2fd11a45d147cbd7df97573c227ff8d80131c3c53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:0e0c3294c7d6ea3ece35844ee278474c906a3a40f61f1aee7d8a59316c739d25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132043621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93ff881751f8ef4ec6bf52846ff55378b36eb9280a3a3060bf5e4a4b56d13ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 18:58:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 30 Apr 2018 18:59:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 18:59:13 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 18:59:14 GMT
ENV JSYAML_VERSION=3.10.0
# Mon, 30 Apr 2018 18:59:38 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Mon, 30 Apr 2018 18:59:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 19:18:05 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Mon, 30 Apr 2018 19:18:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 19:18:11 GMT
ARG MONGO_PACKAGE=mongodb-org
# Mon, 30 Apr 2018 19:18:12 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_MAJOR=3.6
# Wed, 23 May 2018 21:37:49 GMT
ENV MONGO_VERSION=3.6.5
# Wed, 23 May 2018 21:37:50 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 23 May 2018 21:38:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 23 May 2018 21:38:19 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 23 May 2018 21:38:19 GMT
VOLUME [/data/db /data/configdb]
# Wed, 23 May 2018 21:38:20 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 23 May 2018 21:38:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:38:20 GMT
EXPOSE 27017/tcp
# Wed, 23 May 2018 21:38:20 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2ecd7fdbddfcc251ab599e16b502ec10102e84c4e89ca5422ea19fd1cee30`  
		Last Modified: Mon, 30 Apr 2018 19:55:04 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a86da34d0f2d1360deeec92b8b73c9c2df70505c243c676d5407c61eb803f5`  
		Last Modified: Mon, 30 Apr 2018 19:55:05 GMT  
		Size: 2.4 MB (2398014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b1f447e4202f1b47a8d280dee75a7e029a44e8936357df17885b450f6b6760`  
		Last Modified: Mon, 30 Apr 2018 19:55:03 GMT  
		Size: 816.7 KB (816709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e820834b36f2c711e769427f07b84dcd6fbe125de1751a9e7ddeec2a7bdf75`  
		Last Modified: Mon, 30 Apr 2018 19:55:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa34fa64bf4973f1435723ffdd5cd867f25579dfdcccc3d1fae452f79bd9ab7`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ba5a2a5216a8f7ea6a3602d0c01aa85075cfd81fd221d8ee61ce5c48e57a4d`  
		Last Modified: Wed, 23 May 2018 21:40:31 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6024791f7c878ebce76b3b4daaf8d0ffcd5763a581c73e86b44ebcdba87895aa`  
		Last Modified: Wed, 23 May 2018 21:40:47 GMT  
		Size: 98.7 MB (98693870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796e396ed72c9f3b6253852fc5cb1f5c5abc65950888a01da83788c63205c457`  
		Last Modified: Wed, 23 May 2018 21:40:32 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ac33c0a702dea55ab91e766059065911f1a823baf91b47d44deb9a3c6c2efd`  
		Last Modified: Wed, 23 May 2018 21:40:31 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7`

```console
$ docker pull mongo@sha256:019f06f1fc9de0c7093ba517ff65ddc30f8aa22ff23e2e6f0ecd1ad2d0987263
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.7` - linux; amd64

```console
$ docker pull mongo@sha256:343dd0417a21dce4e5450a5fa072d02ba371506a3c1ea4fb873b267fa56f0e23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131598953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3b7991cef630f68e737e55628fcaaf7cf3263f371e111bc3b319ee70588e185`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Wed, 23 May 2018 21:38:28 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 23 May 2018 21:38:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 May 2018 21:38:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 May 2018 21:38:53 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 23 May 2018 21:39:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 23 May 2018 21:39:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 May 2018 21:39:05 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Wed, 23 May 2018 21:39:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 May 2018 21:39:06 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 23 May 2018 21:39:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 23 May 2018 21:39:07 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 23 May 2018 21:39:07 GMT
ENV MONGO_MAJOR=3.7
# Wed, 23 May 2018 21:39:07 GMT
ENV MONGO_VERSION=3.7.9
# Wed, 23 May 2018 21:39:08 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 23 May 2018 21:39:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 23 May 2018 21:39:40 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 23 May 2018 21:39:40 GMT
VOLUME [/data/db /data/configdb]
# Wed, 23 May 2018 21:39:41 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 23 May 2018 21:39:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:39:41 GMT
EXPOSE 27017/tcp
# Wed, 23 May 2018 21:39:41 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c79e8ae4264589c0bd01e61cdc7a98d79a965983d19960c41ad7559424e902`  
		Last Modified: Wed, 23 May 2018 21:41:25 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28966b29e6bb03f03a0beb03c8f808866986695831e6594a57ce85d701cf6706`  
		Last Modified: Wed, 23 May 2018 21:41:25 GMT  
		Size: 2.9 MB (2946008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37ba80ef380a32efbe4f5e6d630debb06a2a67bcba8910f738f9a70c78e7312`  
		Last Modified: Wed, 23 May 2018 21:41:24 GMT  
		Size: 751.0 KB (751018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ba65be854f4f96eaadb3d98070e5875b57bcdbe43ead8b3d1669a1abe8e2e7`  
		Last Modified: Wed, 23 May 2018 21:41:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1606d294745a136975aaeb9571323f73216524f0f52f8e8e5045f487e2aff39`  
		Last Modified: Wed, 23 May 2018 21:41:22 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8c6300fec5f11d7ebdf0678687d8b152d8dd90d7d0aad083f52d8a99e66bbc`  
		Last Modified: Wed, 23 May 2018 21:41:22 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514dfb45722ae025df11830a0d3b0adf6969c2b673a77f45c4b0fd29b7666e75`  
		Last Modified: Wed, 23 May 2018 21:41:39 GMT  
		Size: 84.9 MB (84864950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3063fcb00560af742a2445fa2ba3fa8c5dd60f8ee346e4e16b6a777369c117db`  
		Last Modified: Wed, 23 May 2018 21:41:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb52bcc13439ddd5c1b5973aeeba8b1daea5fe611c35570917eda75ba0e910a`  
		Last Modified: Wed, 23 May 2018 21:41:23 GMT  
		Size: 3.7 KB (3714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7.9`

```console
$ docker pull mongo@sha256:019f06f1fc9de0c7093ba517ff65ddc30f8aa22ff23e2e6f0ecd1ad2d0987263
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.7.9` - linux; amd64

```console
$ docker pull mongo@sha256:343dd0417a21dce4e5450a5fa072d02ba371506a3c1ea4fb873b267fa56f0e23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131598953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3b7991cef630f68e737e55628fcaaf7cf3263f371e111bc3b319ee70588e185`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Wed, 23 May 2018 21:38:28 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 23 May 2018 21:38:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 May 2018 21:38:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 May 2018 21:38:53 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 23 May 2018 21:39:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 23 May 2018 21:39:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 May 2018 21:39:05 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Wed, 23 May 2018 21:39:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 May 2018 21:39:06 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 23 May 2018 21:39:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 23 May 2018 21:39:07 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 23 May 2018 21:39:07 GMT
ENV MONGO_MAJOR=3.7
# Wed, 23 May 2018 21:39:07 GMT
ENV MONGO_VERSION=3.7.9
# Wed, 23 May 2018 21:39:08 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 23 May 2018 21:39:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 23 May 2018 21:39:40 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 23 May 2018 21:39:40 GMT
VOLUME [/data/db /data/configdb]
# Wed, 23 May 2018 21:39:41 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 23 May 2018 21:39:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:39:41 GMT
EXPOSE 27017/tcp
# Wed, 23 May 2018 21:39:41 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c79e8ae4264589c0bd01e61cdc7a98d79a965983d19960c41ad7559424e902`  
		Last Modified: Wed, 23 May 2018 21:41:25 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28966b29e6bb03f03a0beb03c8f808866986695831e6594a57ce85d701cf6706`  
		Last Modified: Wed, 23 May 2018 21:41:25 GMT  
		Size: 2.9 MB (2946008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37ba80ef380a32efbe4f5e6d630debb06a2a67bcba8910f738f9a70c78e7312`  
		Last Modified: Wed, 23 May 2018 21:41:24 GMT  
		Size: 751.0 KB (751018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ba65be854f4f96eaadb3d98070e5875b57bcdbe43ead8b3d1669a1abe8e2e7`  
		Last Modified: Wed, 23 May 2018 21:41:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1606d294745a136975aaeb9571323f73216524f0f52f8e8e5045f487e2aff39`  
		Last Modified: Wed, 23 May 2018 21:41:22 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8c6300fec5f11d7ebdf0678687d8b152d8dd90d7d0aad083f52d8a99e66bbc`  
		Last Modified: Wed, 23 May 2018 21:41:22 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514dfb45722ae025df11830a0d3b0adf6969c2b673a77f45c4b0fd29b7666e75`  
		Last Modified: Wed, 23 May 2018 21:41:39 GMT  
		Size: 84.9 MB (84864950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3063fcb00560af742a2445fa2ba3fa8c5dd60f8ee346e4e16b6a777369c117db`  
		Last Modified: Wed, 23 May 2018 21:41:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb52bcc13439ddd5c1b5973aeeba8b1daea5fe611c35570917eda75ba0e910a`  
		Last Modified: Wed, 23 May 2018 21:41:23 GMT  
		Size: 3.7 KB (3714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7.9-xenial`

```console
$ docker pull mongo@sha256:019f06f1fc9de0c7093ba517ff65ddc30f8aa22ff23e2e6f0ecd1ad2d0987263
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.7.9-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:343dd0417a21dce4e5450a5fa072d02ba371506a3c1ea4fb873b267fa56f0e23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131598953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3b7991cef630f68e737e55628fcaaf7cf3263f371e111bc3b319ee70588e185`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Wed, 23 May 2018 21:38:28 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 23 May 2018 21:38:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 May 2018 21:38:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 May 2018 21:38:53 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 23 May 2018 21:39:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 23 May 2018 21:39:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 May 2018 21:39:05 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Wed, 23 May 2018 21:39:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 May 2018 21:39:06 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 23 May 2018 21:39:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 23 May 2018 21:39:07 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 23 May 2018 21:39:07 GMT
ENV MONGO_MAJOR=3.7
# Wed, 23 May 2018 21:39:07 GMT
ENV MONGO_VERSION=3.7.9
# Wed, 23 May 2018 21:39:08 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 23 May 2018 21:39:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 23 May 2018 21:39:40 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 23 May 2018 21:39:40 GMT
VOLUME [/data/db /data/configdb]
# Wed, 23 May 2018 21:39:41 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 23 May 2018 21:39:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:39:41 GMT
EXPOSE 27017/tcp
# Wed, 23 May 2018 21:39:41 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c79e8ae4264589c0bd01e61cdc7a98d79a965983d19960c41ad7559424e902`  
		Last Modified: Wed, 23 May 2018 21:41:25 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28966b29e6bb03f03a0beb03c8f808866986695831e6594a57ce85d701cf6706`  
		Last Modified: Wed, 23 May 2018 21:41:25 GMT  
		Size: 2.9 MB (2946008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37ba80ef380a32efbe4f5e6d630debb06a2a67bcba8910f738f9a70c78e7312`  
		Last Modified: Wed, 23 May 2018 21:41:24 GMT  
		Size: 751.0 KB (751018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ba65be854f4f96eaadb3d98070e5875b57bcdbe43ead8b3d1669a1abe8e2e7`  
		Last Modified: Wed, 23 May 2018 21:41:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1606d294745a136975aaeb9571323f73216524f0f52f8e8e5045f487e2aff39`  
		Last Modified: Wed, 23 May 2018 21:41:22 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8c6300fec5f11d7ebdf0678687d8b152d8dd90d7d0aad083f52d8a99e66bbc`  
		Last Modified: Wed, 23 May 2018 21:41:22 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514dfb45722ae025df11830a0d3b0adf6969c2b673a77f45c4b0fd29b7666e75`  
		Last Modified: Wed, 23 May 2018 21:41:39 GMT  
		Size: 84.9 MB (84864950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3063fcb00560af742a2445fa2ba3fa8c5dd60f8ee346e4e16b6a777369c117db`  
		Last Modified: Wed, 23 May 2018 21:41:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb52bcc13439ddd5c1b5973aeeba8b1daea5fe611c35570917eda75ba0e910a`  
		Last Modified: Wed, 23 May 2018 21:41:23 GMT  
		Size: 3.7 KB (3714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7-xenial`

```console
$ docker pull mongo@sha256:019f06f1fc9de0c7093ba517ff65ddc30f8aa22ff23e2e6f0ecd1ad2d0987263
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.7-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:343dd0417a21dce4e5450a5fa072d02ba371506a3c1ea4fb873b267fa56f0e23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131598953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3b7991cef630f68e737e55628fcaaf7cf3263f371e111bc3b319ee70588e185`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Wed, 23 May 2018 21:38:28 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 23 May 2018 21:38:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 May 2018 21:38:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 May 2018 21:38:53 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 23 May 2018 21:39:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 23 May 2018 21:39:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 May 2018 21:39:05 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Wed, 23 May 2018 21:39:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 May 2018 21:39:06 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 23 May 2018 21:39:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 23 May 2018 21:39:07 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 23 May 2018 21:39:07 GMT
ENV MONGO_MAJOR=3.7
# Wed, 23 May 2018 21:39:07 GMT
ENV MONGO_VERSION=3.7.9
# Wed, 23 May 2018 21:39:08 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 23 May 2018 21:39:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 23 May 2018 21:39:40 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 23 May 2018 21:39:40 GMT
VOLUME [/data/db /data/configdb]
# Wed, 23 May 2018 21:39:41 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 23 May 2018 21:39:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:39:41 GMT
EXPOSE 27017/tcp
# Wed, 23 May 2018 21:39:41 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c79e8ae4264589c0bd01e61cdc7a98d79a965983d19960c41ad7559424e902`  
		Last Modified: Wed, 23 May 2018 21:41:25 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28966b29e6bb03f03a0beb03c8f808866986695831e6594a57ce85d701cf6706`  
		Last Modified: Wed, 23 May 2018 21:41:25 GMT  
		Size: 2.9 MB (2946008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37ba80ef380a32efbe4f5e6d630debb06a2a67bcba8910f738f9a70c78e7312`  
		Last Modified: Wed, 23 May 2018 21:41:24 GMT  
		Size: 751.0 KB (751018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ba65be854f4f96eaadb3d98070e5875b57bcdbe43ead8b3d1669a1abe8e2e7`  
		Last Modified: Wed, 23 May 2018 21:41:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1606d294745a136975aaeb9571323f73216524f0f52f8e8e5045f487e2aff39`  
		Last Modified: Wed, 23 May 2018 21:41:22 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8c6300fec5f11d7ebdf0678687d8b152d8dd90d7d0aad083f52d8a99e66bbc`  
		Last Modified: Wed, 23 May 2018 21:41:22 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514dfb45722ae025df11830a0d3b0adf6969c2b673a77f45c4b0fd29b7666e75`  
		Last Modified: Wed, 23 May 2018 21:41:39 GMT  
		Size: 84.9 MB (84864950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3063fcb00560af742a2445fa2ba3fa8c5dd60f8ee346e4e16b6a777369c117db`  
		Last Modified: Wed, 23 May 2018 21:41:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb52bcc13439ddd5c1b5973aeeba8b1daea5fe611c35570917eda75ba0e910a`  
		Last Modified: Wed, 23 May 2018 21:41:23 GMT  
		Size: 3.7 KB (3714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-jessie`

```console
$ docker pull mongo@sha256:89672f72dde6ec88618fcfa2fd11a45d147cbd7df97573c227ff8d80131c3c53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:0e0c3294c7d6ea3ece35844ee278474c906a3a40f61f1aee7d8a59316c739d25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132043621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93ff881751f8ef4ec6bf52846ff55378b36eb9280a3a3060bf5e4a4b56d13ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 18:58:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 30 Apr 2018 18:59:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 18:59:13 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 18:59:14 GMT
ENV JSYAML_VERSION=3.10.0
# Mon, 30 Apr 2018 18:59:38 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Mon, 30 Apr 2018 18:59:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 19:18:05 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Mon, 30 Apr 2018 19:18:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 19:18:11 GMT
ARG MONGO_PACKAGE=mongodb-org
# Mon, 30 Apr 2018 19:18:12 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_MAJOR=3.6
# Wed, 23 May 2018 21:37:49 GMT
ENV MONGO_VERSION=3.6.5
# Wed, 23 May 2018 21:37:50 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 23 May 2018 21:38:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 23 May 2018 21:38:19 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 23 May 2018 21:38:19 GMT
VOLUME [/data/db /data/configdb]
# Wed, 23 May 2018 21:38:20 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 23 May 2018 21:38:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:38:20 GMT
EXPOSE 27017/tcp
# Wed, 23 May 2018 21:38:20 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2ecd7fdbddfcc251ab599e16b502ec10102e84c4e89ca5422ea19fd1cee30`  
		Last Modified: Mon, 30 Apr 2018 19:55:04 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a86da34d0f2d1360deeec92b8b73c9c2df70505c243c676d5407c61eb803f5`  
		Last Modified: Mon, 30 Apr 2018 19:55:05 GMT  
		Size: 2.4 MB (2398014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b1f447e4202f1b47a8d280dee75a7e029a44e8936357df17885b450f6b6760`  
		Last Modified: Mon, 30 Apr 2018 19:55:03 GMT  
		Size: 816.7 KB (816709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e820834b36f2c711e769427f07b84dcd6fbe125de1751a9e7ddeec2a7bdf75`  
		Last Modified: Mon, 30 Apr 2018 19:55:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa34fa64bf4973f1435723ffdd5cd867f25579dfdcccc3d1fae452f79bd9ab7`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ba5a2a5216a8f7ea6a3602d0c01aa85075cfd81fd221d8ee61ce5c48e57a4d`  
		Last Modified: Wed, 23 May 2018 21:40:31 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6024791f7c878ebce76b3b4daaf8d0ffcd5763a581c73e86b44ebcdba87895aa`  
		Last Modified: Wed, 23 May 2018 21:40:47 GMT  
		Size: 98.7 MB (98693870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796e396ed72c9f3b6253852fc5cb1f5c5abc65950888a01da83788c63205c457`  
		Last Modified: Wed, 23 May 2018 21:40:32 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ac33c0a702dea55ab91e766059065911f1a823baf91b47d44deb9a3c6c2efd`  
		Last Modified: Wed, 23 May 2018 21:40:31 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0.0-rc0`

```console
$ docker pull mongo@sha256:a1ce9c227099ce0d8a11b747bdd3d92b2f8080b151cc0729dec5972765f34de8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:4.0.0-rc0` - linux; amd64

```console
$ docker pull mongo@sha256:889065dffe3ff4f32a41ef12c153950866f7a26b0b19103b9c3e46673c80ae99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133098546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f0a9ba8c7d9461c3e3bccce1a974af0925c93ac91ef0e99408ee862e2e2de5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Wed, 23 May 2018 21:38:28 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 23 May 2018 21:38:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 May 2018 21:38:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 May 2018 21:38:53 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 23 May 2018 21:39:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 23 May 2018 21:39:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 May 2018 21:39:54 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 23 May 2018 21:39:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 May 2018 21:39:55 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 23 May 2018 21:39:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 23 May 2018 21:39:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 23 May 2018 21:39:56 GMT
ENV MONGO_MAJOR=testing
# Wed, 23 May 2018 21:39:56 GMT
ENV MONGO_VERSION=4.0.0~rc0
# Wed, 23 May 2018 21:39:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 23 May 2018 21:40:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 23 May 2018 21:40:14 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 23 May 2018 21:40:14 GMT
VOLUME [/data/db /data/configdb]
# Wed, 23 May 2018 21:40:15 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 23 May 2018 21:40:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:40:15 GMT
EXPOSE 27017/tcp
# Wed, 23 May 2018 21:40:15 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c79e8ae4264589c0bd01e61cdc7a98d79a965983d19960c41ad7559424e902`  
		Last Modified: Wed, 23 May 2018 21:41:25 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28966b29e6bb03f03a0beb03c8f808866986695831e6594a57ce85d701cf6706`  
		Last Modified: Wed, 23 May 2018 21:41:25 GMT  
		Size: 2.9 MB (2946008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37ba80ef380a32efbe4f5e6d630debb06a2a67bcba8910f738f9a70c78e7312`  
		Last Modified: Wed, 23 May 2018 21:41:24 GMT  
		Size: 751.0 KB (751018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ba65be854f4f96eaadb3d98070e5875b57bcdbe43ead8b3d1669a1abe8e2e7`  
		Last Modified: Wed, 23 May 2018 21:41:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec4bdb3c5eb956740f46633b69737c873ada0de1868afc593ae0e9224d3b60d`  
		Last Modified: Wed, 23 May 2018 21:42:07 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8ea998edfcb27f9e9c28e135714c9d918d0aa0aea4c931e1c951f00b2b5b69`  
		Last Modified: Wed, 23 May 2018 21:42:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2837a2f745c98e786b867696fcf5cf52b5b472e525e58ebee851e57a361c6e0d`  
		Last Modified: Wed, 23 May 2018 21:42:21 GMT  
		Size: 86.4 MB (86364545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cf1b21f7cb295b9ff850f2a5d4307859e491bde26d2d42f5242ddf73b72e8a`  
		Last Modified: Wed, 23 May 2018 21:42:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f504adde8b4d8c195fe84c63fd34c3a39b56368b0322b5c665a26725cf0604`  
		Last Modified: Wed, 23 May 2018 21:42:07 GMT  
		Size: 3.7 KB (3713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0.0-rc0-xenial`

```console
$ docker pull mongo@sha256:a1ce9c227099ce0d8a11b747bdd3d92b2f8080b151cc0729dec5972765f34de8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:4.0.0-rc0-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:889065dffe3ff4f32a41ef12c153950866f7a26b0b19103b9c3e46673c80ae99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133098546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f0a9ba8c7d9461c3e3bccce1a974af0925c93ac91ef0e99408ee862e2e2de5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Wed, 23 May 2018 21:38:28 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 23 May 2018 21:38:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 May 2018 21:38:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 May 2018 21:38:53 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 23 May 2018 21:39:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 23 May 2018 21:39:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 May 2018 21:39:54 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 23 May 2018 21:39:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 May 2018 21:39:55 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 23 May 2018 21:39:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 23 May 2018 21:39:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 23 May 2018 21:39:56 GMT
ENV MONGO_MAJOR=testing
# Wed, 23 May 2018 21:39:56 GMT
ENV MONGO_VERSION=4.0.0~rc0
# Wed, 23 May 2018 21:39:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 23 May 2018 21:40:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 23 May 2018 21:40:14 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 23 May 2018 21:40:14 GMT
VOLUME [/data/db /data/configdb]
# Wed, 23 May 2018 21:40:15 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 23 May 2018 21:40:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:40:15 GMT
EXPOSE 27017/tcp
# Wed, 23 May 2018 21:40:15 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c79e8ae4264589c0bd01e61cdc7a98d79a965983d19960c41ad7559424e902`  
		Last Modified: Wed, 23 May 2018 21:41:25 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28966b29e6bb03f03a0beb03c8f808866986695831e6594a57ce85d701cf6706`  
		Last Modified: Wed, 23 May 2018 21:41:25 GMT  
		Size: 2.9 MB (2946008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37ba80ef380a32efbe4f5e6d630debb06a2a67bcba8910f738f9a70c78e7312`  
		Last Modified: Wed, 23 May 2018 21:41:24 GMT  
		Size: 751.0 KB (751018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ba65be854f4f96eaadb3d98070e5875b57bcdbe43ead8b3d1669a1abe8e2e7`  
		Last Modified: Wed, 23 May 2018 21:41:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec4bdb3c5eb956740f46633b69737c873ada0de1868afc593ae0e9224d3b60d`  
		Last Modified: Wed, 23 May 2018 21:42:07 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8ea998edfcb27f9e9c28e135714c9d918d0aa0aea4c931e1c951f00b2b5b69`  
		Last Modified: Wed, 23 May 2018 21:42:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2837a2f745c98e786b867696fcf5cf52b5b472e525e58ebee851e57a361c6e0d`  
		Last Modified: Wed, 23 May 2018 21:42:21 GMT  
		Size: 86.4 MB (86364545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cf1b21f7cb295b9ff850f2a5d4307859e491bde26d2d42f5242ddf73b72e8a`  
		Last Modified: Wed, 23 May 2018 21:42:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f504adde8b4d8c195fe84c63fd34c3a39b56368b0322b5c665a26725cf0604`  
		Last Modified: Wed, 23 May 2018 21:42:07 GMT  
		Size: 3.7 KB (3713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0-rc`

```console
$ docker pull mongo@sha256:a1ce9c227099ce0d8a11b747bdd3d92b2f8080b151cc0729dec5972765f34de8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:4.0-rc` - linux; amd64

```console
$ docker pull mongo@sha256:889065dffe3ff4f32a41ef12c153950866f7a26b0b19103b9c3e46673c80ae99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133098546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f0a9ba8c7d9461c3e3bccce1a974af0925c93ac91ef0e99408ee862e2e2de5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Wed, 23 May 2018 21:38:28 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 23 May 2018 21:38:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 May 2018 21:38:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 May 2018 21:38:53 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 23 May 2018 21:39:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 23 May 2018 21:39:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 May 2018 21:39:54 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 23 May 2018 21:39:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 May 2018 21:39:55 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 23 May 2018 21:39:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 23 May 2018 21:39:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 23 May 2018 21:39:56 GMT
ENV MONGO_MAJOR=testing
# Wed, 23 May 2018 21:39:56 GMT
ENV MONGO_VERSION=4.0.0~rc0
# Wed, 23 May 2018 21:39:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 23 May 2018 21:40:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 23 May 2018 21:40:14 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 23 May 2018 21:40:14 GMT
VOLUME [/data/db /data/configdb]
# Wed, 23 May 2018 21:40:15 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 23 May 2018 21:40:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:40:15 GMT
EXPOSE 27017/tcp
# Wed, 23 May 2018 21:40:15 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c79e8ae4264589c0bd01e61cdc7a98d79a965983d19960c41ad7559424e902`  
		Last Modified: Wed, 23 May 2018 21:41:25 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28966b29e6bb03f03a0beb03c8f808866986695831e6594a57ce85d701cf6706`  
		Last Modified: Wed, 23 May 2018 21:41:25 GMT  
		Size: 2.9 MB (2946008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37ba80ef380a32efbe4f5e6d630debb06a2a67bcba8910f738f9a70c78e7312`  
		Last Modified: Wed, 23 May 2018 21:41:24 GMT  
		Size: 751.0 KB (751018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ba65be854f4f96eaadb3d98070e5875b57bcdbe43ead8b3d1669a1abe8e2e7`  
		Last Modified: Wed, 23 May 2018 21:41:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec4bdb3c5eb956740f46633b69737c873ada0de1868afc593ae0e9224d3b60d`  
		Last Modified: Wed, 23 May 2018 21:42:07 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8ea998edfcb27f9e9c28e135714c9d918d0aa0aea4c931e1c951f00b2b5b69`  
		Last Modified: Wed, 23 May 2018 21:42:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2837a2f745c98e786b867696fcf5cf52b5b472e525e58ebee851e57a361c6e0d`  
		Last Modified: Wed, 23 May 2018 21:42:21 GMT  
		Size: 86.4 MB (86364545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cf1b21f7cb295b9ff850f2a5d4307859e491bde26d2d42f5242ddf73b72e8a`  
		Last Modified: Wed, 23 May 2018 21:42:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f504adde8b4d8c195fe84c63fd34c3a39b56368b0322b5c665a26725cf0604`  
		Last Modified: Wed, 23 May 2018 21:42:07 GMT  
		Size: 3.7 KB (3713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0-rc-xenial`

```console
$ docker pull mongo@sha256:a1ce9c227099ce0d8a11b747bdd3d92b2f8080b151cc0729dec5972765f34de8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:4.0-rc-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:889065dffe3ff4f32a41ef12c153950866f7a26b0b19103b9c3e46673c80ae99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133098546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f0a9ba8c7d9461c3e3bccce1a974af0925c93ac91ef0e99408ee862e2e2de5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Wed, 23 May 2018 21:38:28 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 23 May 2018 21:38:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 May 2018 21:38:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 May 2018 21:38:53 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 23 May 2018 21:39:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 23 May 2018 21:39:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 May 2018 21:39:54 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 23 May 2018 21:39:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 May 2018 21:39:55 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 23 May 2018 21:39:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 23 May 2018 21:39:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 23 May 2018 21:39:56 GMT
ENV MONGO_MAJOR=testing
# Wed, 23 May 2018 21:39:56 GMT
ENV MONGO_VERSION=4.0.0~rc0
# Wed, 23 May 2018 21:39:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 23 May 2018 21:40:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 23 May 2018 21:40:14 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 23 May 2018 21:40:14 GMT
VOLUME [/data/db /data/configdb]
# Wed, 23 May 2018 21:40:15 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 23 May 2018 21:40:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:40:15 GMT
EXPOSE 27017/tcp
# Wed, 23 May 2018 21:40:15 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c79e8ae4264589c0bd01e61cdc7a98d79a965983d19960c41ad7559424e902`  
		Last Modified: Wed, 23 May 2018 21:41:25 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28966b29e6bb03f03a0beb03c8f808866986695831e6594a57ce85d701cf6706`  
		Last Modified: Wed, 23 May 2018 21:41:25 GMT  
		Size: 2.9 MB (2946008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37ba80ef380a32efbe4f5e6d630debb06a2a67bcba8910f738f9a70c78e7312`  
		Last Modified: Wed, 23 May 2018 21:41:24 GMT  
		Size: 751.0 KB (751018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ba65be854f4f96eaadb3d98070e5875b57bcdbe43ead8b3d1669a1abe8e2e7`  
		Last Modified: Wed, 23 May 2018 21:41:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec4bdb3c5eb956740f46633b69737c873ada0de1868afc593ae0e9224d3b60d`  
		Last Modified: Wed, 23 May 2018 21:42:07 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8ea998edfcb27f9e9c28e135714c9d918d0aa0aea4c931e1c951f00b2b5b69`  
		Last Modified: Wed, 23 May 2018 21:42:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2837a2f745c98e786b867696fcf5cf52b5b472e525e58ebee851e57a361c6e0d`  
		Last Modified: Wed, 23 May 2018 21:42:21 GMT  
		Size: 86.4 MB (86364545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cf1b21f7cb295b9ff850f2a5d4307859e491bde26d2d42f5242ddf73b72e8a`  
		Last Modified: Wed, 23 May 2018 21:42:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f504adde8b4d8c195fe84c63fd34c3a39b56368b0322b5c665a26725cf0604`  
		Last Modified: Wed, 23 May 2018 21:42:07 GMT  
		Size: 3.7 KB (3713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:jessie`

```console
$ docker pull mongo@sha256:89672f72dde6ec88618fcfa2fd11a45d147cbd7df97573c227ff8d80131c3c53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:jessie` - linux; amd64

```console
$ docker pull mongo@sha256:0e0c3294c7d6ea3ece35844ee278474c906a3a40f61f1aee7d8a59316c739d25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132043621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93ff881751f8ef4ec6bf52846ff55378b36eb9280a3a3060bf5e4a4b56d13ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 18:58:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 30 Apr 2018 18:59:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 18:59:13 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 18:59:14 GMT
ENV JSYAML_VERSION=3.10.0
# Mon, 30 Apr 2018 18:59:38 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Mon, 30 Apr 2018 18:59:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 19:18:05 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Mon, 30 Apr 2018 19:18:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 19:18:11 GMT
ARG MONGO_PACKAGE=mongodb-org
# Mon, 30 Apr 2018 19:18:12 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_MAJOR=3.6
# Wed, 23 May 2018 21:37:49 GMT
ENV MONGO_VERSION=3.6.5
# Wed, 23 May 2018 21:37:50 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 23 May 2018 21:38:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 23 May 2018 21:38:19 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 23 May 2018 21:38:19 GMT
VOLUME [/data/db /data/configdb]
# Wed, 23 May 2018 21:38:20 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 23 May 2018 21:38:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:38:20 GMT
EXPOSE 27017/tcp
# Wed, 23 May 2018 21:38:20 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2ecd7fdbddfcc251ab599e16b502ec10102e84c4e89ca5422ea19fd1cee30`  
		Last Modified: Mon, 30 Apr 2018 19:55:04 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a86da34d0f2d1360deeec92b8b73c9c2df70505c243c676d5407c61eb803f5`  
		Last Modified: Mon, 30 Apr 2018 19:55:05 GMT  
		Size: 2.4 MB (2398014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b1f447e4202f1b47a8d280dee75a7e029a44e8936357df17885b450f6b6760`  
		Last Modified: Mon, 30 Apr 2018 19:55:03 GMT  
		Size: 816.7 KB (816709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e820834b36f2c711e769427f07b84dcd6fbe125de1751a9e7ddeec2a7bdf75`  
		Last Modified: Mon, 30 Apr 2018 19:55:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa34fa64bf4973f1435723ffdd5cd867f25579dfdcccc3d1fae452f79bd9ab7`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ba5a2a5216a8f7ea6a3602d0c01aa85075cfd81fd221d8ee61ce5c48e57a4d`  
		Last Modified: Wed, 23 May 2018 21:40:31 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6024791f7c878ebce76b3b4daaf8d0ffcd5763a581c73e86b44ebcdba87895aa`  
		Last Modified: Wed, 23 May 2018 21:40:47 GMT  
		Size: 98.7 MB (98693870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796e396ed72c9f3b6253852fc5cb1f5c5abc65950888a01da83788c63205c457`  
		Last Modified: Wed, 23 May 2018 21:40:32 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ac33c0a702dea55ab91e766059065911f1a823baf91b47d44deb9a3c6c2efd`  
		Last Modified: Wed, 23 May 2018 21:40:31 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:89672f72dde6ec88618fcfa2fd11a45d147cbd7df97573c227ff8d80131c3c53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:0e0c3294c7d6ea3ece35844ee278474c906a3a40f61f1aee7d8a59316c739d25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132043621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93ff881751f8ef4ec6bf52846ff55378b36eb9280a3a3060bf5e4a4b56d13ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 18:58:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Mon, 30 Apr 2018 18:59:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 18:59:13 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 18:59:14 GMT
ENV JSYAML_VERSION=3.10.0
# Mon, 30 Apr 2018 18:59:38 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Mon, 30 Apr 2018 18:59:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 19:18:05 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Mon, 30 Apr 2018 19:18:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 19:18:11 GMT
ARG MONGO_PACKAGE=mongodb-org
# Mon, 30 Apr 2018 19:18:12 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_MAJOR=3.6
# Wed, 23 May 2018 21:37:49 GMT
ENV MONGO_VERSION=3.6.5
# Wed, 23 May 2018 21:37:50 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 23 May 2018 21:38:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 23 May 2018 21:38:19 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 23 May 2018 21:38:19 GMT
VOLUME [/data/db /data/configdb]
# Wed, 23 May 2018 21:38:20 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 23 May 2018 21:38:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:38:20 GMT
EXPOSE 27017/tcp
# Wed, 23 May 2018 21:38:20 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2ecd7fdbddfcc251ab599e16b502ec10102e84c4e89ca5422ea19fd1cee30`  
		Last Modified: Mon, 30 Apr 2018 19:55:04 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a86da34d0f2d1360deeec92b8b73c9c2df70505c243c676d5407c61eb803f5`  
		Last Modified: Mon, 30 Apr 2018 19:55:05 GMT  
		Size: 2.4 MB (2398014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b1f447e4202f1b47a8d280dee75a7e029a44e8936357df17885b450f6b6760`  
		Last Modified: Mon, 30 Apr 2018 19:55:03 GMT  
		Size: 816.7 KB (816709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e820834b36f2c711e769427f07b84dcd6fbe125de1751a9e7ddeec2a7bdf75`  
		Last Modified: Mon, 30 Apr 2018 19:55:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa34fa64bf4973f1435723ffdd5cd867f25579dfdcccc3d1fae452f79bd9ab7`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ba5a2a5216a8f7ea6a3602d0c01aa85075cfd81fd221d8ee61ce5c48e57a4d`  
		Last Modified: Wed, 23 May 2018 21:40:31 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6024791f7c878ebce76b3b4daaf8d0ffcd5763a581c73e86b44ebcdba87895aa`  
		Last Modified: Wed, 23 May 2018 21:40:47 GMT  
		Size: 98.7 MB (98693870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796e396ed72c9f3b6253852fc5cb1f5c5abc65950888a01da83788c63205c457`  
		Last Modified: Wed, 23 May 2018 21:40:32 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ac33c0a702dea55ab91e766059065911f1a823baf91b47d44deb9a3c6c2efd`  
		Last Modified: Wed, 23 May 2018 21:40:31 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:rc`

```console
$ docker pull mongo@sha256:a1ce9c227099ce0d8a11b747bdd3d92b2f8080b151cc0729dec5972765f34de8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:rc` - linux; amd64

```console
$ docker pull mongo@sha256:889065dffe3ff4f32a41ef12c153950866f7a26b0b19103b9c3e46673c80ae99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133098546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f0a9ba8c7d9461c3e3bccce1a974af0925c93ac91ef0e99408ee862e2e2de5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Wed, 23 May 2018 21:38:28 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 23 May 2018 21:38:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 May 2018 21:38:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 May 2018 21:38:53 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 23 May 2018 21:39:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 23 May 2018 21:39:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 May 2018 21:39:54 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 23 May 2018 21:39:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 May 2018 21:39:55 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 23 May 2018 21:39:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 23 May 2018 21:39:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 23 May 2018 21:39:56 GMT
ENV MONGO_MAJOR=testing
# Wed, 23 May 2018 21:39:56 GMT
ENV MONGO_VERSION=4.0.0~rc0
# Wed, 23 May 2018 21:39:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 23 May 2018 21:40:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 23 May 2018 21:40:14 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 23 May 2018 21:40:14 GMT
VOLUME [/data/db /data/configdb]
# Wed, 23 May 2018 21:40:15 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 23 May 2018 21:40:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:40:15 GMT
EXPOSE 27017/tcp
# Wed, 23 May 2018 21:40:15 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c79e8ae4264589c0bd01e61cdc7a98d79a965983d19960c41ad7559424e902`  
		Last Modified: Wed, 23 May 2018 21:41:25 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28966b29e6bb03f03a0beb03c8f808866986695831e6594a57ce85d701cf6706`  
		Last Modified: Wed, 23 May 2018 21:41:25 GMT  
		Size: 2.9 MB (2946008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37ba80ef380a32efbe4f5e6d630debb06a2a67bcba8910f738f9a70c78e7312`  
		Last Modified: Wed, 23 May 2018 21:41:24 GMT  
		Size: 751.0 KB (751018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ba65be854f4f96eaadb3d98070e5875b57bcdbe43ead8b3d1669a1abe8e2e7`  
		Last Modified: Wed, 23 May 2018 21:41:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec4bdb3c5eb956740f46633b69737c873ada0de1868afc593ae0e9224d3b60d`  
		Last Modified: Wed, 23 May 2018 21:42:07 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8ea998edfcb27f9e9c28e135714c9d918d0aa0aea4c931e1c951f00b2b5b69`  
		Last Modified: Wed, 23 May 2018 21:42:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2837a2f745c98e786b867696fcf5cf52b5b472e525e58ebee851e57a361c6e0d`  
		Last Modified: Wed, 23 May 2018 21:42:21 GMT  
		Size: 86.4 MB (86364545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cf1b21f7cb295b9ff850f2a5d4307859e491bde26d2d42f5242ddf73b72e8a`  
		Last Modified: Wed, 23 May 2018 21:42:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f504adde8b4d8c195fe84c63fd34c3a39b56368b0322b5c665a26725cf0604`  
		Last Modified: Wed, 23 May 2018 21:42:07 GMT  
		Size: 3.7 KB (3713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:rc-xenial`

```console
$ docker pull mongo@sha256:a1ce9c227099ce0d8a11b747bdd3d92b2f8080b151cc0729dec5972765f34de8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:rc-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:889065dffe3ff4f32a41ef12c153950866f7a26b0b19103b9c3e46673c80ae99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133098546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f0a9ba8c7d9461c3e3bccce1a974af0925c93ac91ef0e99408ee862e2e2de5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Wed, 23 May 2018 21:38:28 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 23 May 2018 21:38:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 May 2018 21:38:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 May 2018 21:38:53 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 23 May 2018 21:39:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 23 May 2018 21:39:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 May 2018 21:39:54 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 23 May 2018 21:39:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 May 2018 21:39:55 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 23 May 2018 21:39:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 23 May 2018 21:39:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 23 May 2018 21:39:56 GMT
ENV MONGO_MAJOR=testing
# Wed, 23 May 2018 21:39:56 GMT
ENV MONGO_VERSION=4.0.0~rc0
# Wed, 23 May 2018 21:39:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 23 May 2018 21:40:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 23 May 2018 21:40:14 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 23 May 2018 21:40:14 GMT
VOLUME [/data/db /data/configdb]
# Wed, 23 May 2018 21:40:15 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 23 May 2018 21:40:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:40:15 GMT
EXPOSE 27017/tcp
# Wed, 23 May 2018 21:40:15 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c79e8ae4264589c0bd01e61cdc7a98d79a965983d19960c41ad7559424e902`  
		Last Modified: Wed, 23 May 2018 21:41:25 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28966b29e6bb03f03a0beb03c8f808866986695831e6594a57ce85d701cf6706`  
		Last Modified: Wed, 23 May 2018 21:41:25 GMT  
		Size: 2.9 MB (2946008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37ba80ef380a32efbe4f5e6d630debb06a2a67bcba8910f738f9a70c78e7312`  
		Last Modified: Wed, 23 May 2018 21:41:24 GMT  
		Size: 751.0 KB (751018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ba65be854f4f96eaadb3d98070e5875b57bcdbe43ead8b3d1669a1abe8e2e7`  
		Last Modified: Wed, 23 May 2018 21:41:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec4bdb3c5eb956740f46633b69737c873ada0de1868afc593ae0e9224d3b60d`  
		Last Modified: Wed, 23 May 2018 21:42:07 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8ea998edfcb27f9e9c28e135714c9d918d0aa0aea4c931e1c951f00b2b5b69`  
		Last Modified: Wed, 23 May 2018 21:42:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2837a2f745c98e786b867696fcf5cf52b5b472e525e58ebee851e57a361c6e0d`  
		Last Modified: Wed, 23 May 2018 21:42:21 GMT  
		Size: 86.4 MB (86364545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cf1b21f7cb295b9ff850f2a5d4307859e491bde26d2d42f5242ddf73b72e8a`  
		Last Modified: Wed, 23 May 2018 21:42:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f504adde8b4d8c195fe84c63fd34c3a39b56368b0322b5c665a26725cf0604`  
		Last Modified: Wed, 23 May 2018 21:42:07 GMT  
		Size: 3.7 KB (3713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:019f06f1fc9de0c7093ba517ff65ddc30f8aa22ff23e2e6f0ecd1ad2d0987263
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:343dd0417a21dce4e5450a5fa072d02ba371506a3c1ea4fb873b267fa56f0e23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131598953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3b7991cef630f68e737e55628fcaaf7cf3263f371e111bc3b319ee70588e185`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Wed, 23 May 2018 21:38:28 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 23 May 2018 21:38:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 May 2018 21:38:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 May 2018 21:38:53 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 23 May 2018 21:39:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 23 May 2018 21:39:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 May 2018 21:39:05 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Wed, 23 May 2018 21:39:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 May 2018 21:39:06 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 23 May 2018 21:39:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 23 May 2018 21:39:07 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 23 May 2018 21:39:07 GMT
ENV MONGO_MAJOR=3.7
# Wed, 23 May 2018 21:39:07 GMT
ENV MONGO_VERSION=3.7.9
# Wed, 23 May 2018 21:39:08 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 23 May 2018 21:39:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 23 May 2018 21:39:40 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 23 May 2018 21:39:40 GMT
VOLUME [/data/db /data/configdb]
# Wed, 23 May 2018 21:39:41 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 23 May 2018 21:39:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:39:41 GMT
EXPOSE 27017/tcp
# Wed, 23 May 2018 21:39:41 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c79e8ae4264589c0bd01e61cdc7a98d79a965983d19960c41ad7559424e902`  
		Last Modified: Wed, 23 May 2018 21:41:25 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28966b29e6bb03f03a0beb03c8f808866986695831e6594a57ce85d701cf6706`  
		Last Modified: Wed, 23 May 2018 21:41:25 GMT  
		Size: 2.9 MB (2946008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37ba80ef380a32efbe4f5e6d630debb06a2a67bcba8910f738f9a70c78e7312`  
		Last Modified: Wed, 23 May 2018 21:41:24 GMT  
		Size: 751.0 KB (751018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ba65be854f4f96eaadb3d98070e5875b57bcdbe43ead8b3d1669a1abe8e2e7`  
		Last Modified: Wed, 23 May 2018 21:41:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1606d294745a136975aaeb9571323f73216524f0f52f8e8e5045f487e2aff39`  
		Last Modified: Wed, 23 May 2018 21:41:22 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8c6300fec5f11d7ebdf0678687d8b152d8dd90d7d0aad083f52d8a99e66bbc`  
		Last Modified: Wed, 23 May 2018 21:41:22 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514dfb45722ae025df11830a0d3b0adf6969c2b673a77f45c4b0fd29b7666e75`  
		Last Modified: Wed, 23 May 2018 21:41:39 GMT  
		Size: 84.9 MB (84864950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3063fcb00560af742a2445fa2ba3fa8c5dd60f8ee346e4e16b6a777369c117db`  
		Last Modified: Wed, 23 May 2018 21:41:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb52bcc13439ddd5c1b5973aeeba8b1daea5fe611c35570917eda75ba0e910a`  
		Last Modified: Wed, 23 May 2018 21:41:23 GMT  
		Size: 3.7 KB (3714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-xenial`

```console
$ docker pull mongo@sha256:019f06f1fc9de0c7093ba517ff65ddc30f8aa22ff23e2e6f0ecd1ad2d0987263
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:unstable-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:343dd0417a21dce4e5450a5fa072d02ba371506a3c1ea4fb873b267fa56f0e23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131598953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3b7991cef630f68e737e55628fcaaf7cf3263f371e111bc3b319ee70588e185`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Wed, 23 May 2018 21:38:28 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 23 May 2018 21:38:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 May 2018 21:38:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 May 2018 21:38:53 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 23 May 2018 21:39:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 23 May 2018 21:39:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 May 2018 21:39:05 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Wed, 23 May 2018 21:39:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 May 2018 21:39:06 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 23 May 2018 21:39:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 23 May 2018 21:39:07 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 23 May 2018 21:39:07 GMT
ENV MONGO_MAJOR=3.7
# Wed, 23 May 2018 21:39:07 GMT
ENV MONGO_VERSION=3.7.9
# Wed, 23 May 2018 21:39:08 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 23 May 2018 21:39:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 23 May 2018 21:39:40 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 23 May 2018 21:39:40 GMT
VOLUME [/data/db /data/configdb]
# Wed, 23 May 2018 21:39:41 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 23 May 2018 21:39:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:39:41 GMT
EXPOSE 27017/tcp
# Wed, 23 May 2018 21:39:41 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c79e8ae4264589c0bd01e61cdc7a98d79a965983d19960c41ad7559424e902`  
		Last Modified: Wed, 23 May 2018 21:41:25 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28966b29e6bb03f03a0beb03c8f808866986695831e6594a57ce85d701cf6706`  
		Last Modified: Wed, 23 May 2018 21:41:25 GMT  
		Size: 2.9 MB (2946008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37ba80ef380a32efbe4f5e6d630debb06a2a67bcba8910f738f9a70c78e7312`  
		Last Modified: Wed, 23 May 2018 21:41:24 GMT  
		Size: 751.0 KB (751018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ba65be854f4f96eaadb3d98070e5875b57bcdbe43ead8b3d1669a1abe8e2e7`  
		Last Modified: Wed, 23 May 2018 21:41:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1606d294745a136975aaeb9571323f73216524f0f52f8e8e5045f487e2aff39`  
		Last Modified: Wed, 23 May 2018 21:41:22 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8c6300fec5f11d7ebdf0678687d8b152d8dd90d7d0aad083f52d8a99e66bbc`  
		Last Modified: Wed, 23 May 2018 21:41:22 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514dfb45722ae025df11830a0d3b0adf6969c2b673a77f45c4b0fd29b7666e75`  
		Last Modified: Wed, 23 May 2018 21:41:39 GMT  
		Size: 84.9 MB (84864950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3063fcb00560af742a2445fa2ba3fa8c5dd60f8ee346e4e16b6a777369c117db`  
		Last Modified: Wed, 23 May 2018 21:41:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb52bcc13439ddd5c1b5973aeeba8b1daea5fe611c35570917eda75ba0e910a`  
		Last Modified: Wed, 23 May 2018 21:41:23 GMT  
		Size: 3.7 KB (3714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

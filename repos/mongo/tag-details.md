<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:3`](#mongo3)
-	[`mongo:3.2`](#mongo32)
-	[`mongo:3.2.20`](#mongo3220)
-	[`mongo:3.2.20-jessie`](#mongo3220-jessie)
-	[`mongo:3.2-jessie`](#mongo32-jessie)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3.4.14`](#mongo3414)
-	[`mongo:3.4.14-jessie`](#mongo3414-jessie)
-	[`mongo:3.4-jessie`](#mongo34-jessie)
-	[`mongo:3.6`](#mongo36)
-	[`mongo:3.6.4`](#mongo364)
-	[`mongo:3.6.4-jessie`](#mongo364-jessie)
-	[`mongo:3.6-jessie`](#mongo36-jessie)
-	[`mongo:3.7`](#mongo37)
-	[`mongo:3.7.9`](#mongo379)
-	[`mongo:3.7.9-jessie`](#mongo379-jessie)
-	[`mongo:3.7-jessie`](#mongo37-jessie)
-	[`mongo:3-jessie`](#mongo3-jessie)
-	[`mongo:jessie`](#mongojessie)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:unstable`](#mongounstable)
-	[`mongo:unstable-jessie`](#mongounstable-jessie)

## `mongo:3`

```console
$ docker pull mongo@sha256:c6d2b2f8c054210db26b492bab81ffab171ee54eb58925fa98fabb4faca3a9cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

```console
$ docker pull mongo@sha256:54fc224fa13069fcd198d26644d7f298fbdd55a0b6011959397ffc2d9c781624
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130640079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14c497d5c758b7b6c57e1e585f26869ddce663c2725f7cc9b9e882b06b9127b2`
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
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_VERSION=3.6.4
# Mon, 30 Apr 2018 19:18:13 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 30 Apr 2018 19:18:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 30 Apr 2018 19:18:39 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 30 Apr 2018 19:18:39 GMT
VOLUME [/data/db /data/configdb]
# Mon, 30 Apr 2018 19:18:40 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 30 Apr 2018 19:18:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 19:18:41 GMT
EXPOSE 27017/tcp
# Mon, 30 Apr 2018 19:18:41 GMT
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
	-	`sha256:63127ea58ee0b859bbc59fe6e7ca7f68f07d4751c5524fed7c163d2b047c51a5`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb46836c59830f9fe909bd4325abc135aa33bb2a57e4830bfd2bc7813375018`  
		Last Modified: Mon, 30 Apr 2018 20:20:31 GMT  
		Size: 97.3 MB (97290333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0abf374ec41d5f79e2b61bf624301e57367baddae95193c298e914db0a8270`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8b13c8fd3831f0e0314a8cb16acbc174fc24828754e266c9c37bf8cbeee07c`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:875fbf4016be7a93a24ca834b5c2a5b65f0447d6a4daecf2b4b650dad46668e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

```console
$ docker pull mongo@sha256:4494effec277e1ae763bc0409d8bdf2268f06f601d33911e2e66cd384fa71717
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104191900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf1238c7907a8b01852de07157f4be0e81420213a0db87fa37bcf963e68edc22`
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
# Mon, 30 Apr 2018 18:59:45 GMT
ENV MONGO_VERSION=3.2.19
# Mon, 30 Apr 2018 18:59:46 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 30 Apr 2018 19:00:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 30 Apr 2018 19:00:13 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 30 Apr 2018 19:00:13 GMT
VOLUME [/data/db /data/configdb]
# Mon, 30 Apr 2018 19:00:14 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Mon, 30 Apr 2018 19:00:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 30 Apr 2018 19:00:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 19:00:15 GMT
EXPOSE 27017/tcp
# Mon, 30 Apr 2018 19:00:15 GMT
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
	-	`sha256:ff8ca68df43aa33da3e36cb60af2cc3ef0225962a04605bcf12b5d29a94d2850`  
		Last Modified: Mon, 30 Apr 2018 19:55:00 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b1afde83f6c97e30809f492e88ea0044dff8658518ba612fd827b1522fecd1`  
		Last Modified: Mon, 30 Apr 2018 19:55:15 GMT  
		Size: 70.8 MB (70840018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecbbc92e45967cc51aabc21174da93c65618f217c3c7ea716a7e4eebfdcf4e9`  
		Last Modified: Mon, 30 Apr 2018 19:55:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23f8622a036651907534d657ec5b0110a426af7ee4d9d4f21024cde1aac2a27`  
		Last Modified: Mon, 30 Apr 2018 19:55:00 GMT  
		Size: 3.6 KB (3571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635904ae5f2f7385428b7ccf1d43b87304fefffb90922de68beb15fb8ba34e64`  
		Last Modified: Mon, 30 Apr 2018 19:55:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.20`

**does not exist** (yet?)

## `mongo:3.2.20-jessie`

**does not exist** (yet?)

## `mongo:3.2-jessie`

```console
$ docker pull mongo@sha256:875fbf4016be7a93a24ca834b5c2a5b65f0447d6a4daecf2b4b650dad46668e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:4494effec277e1ae763bc0409d8bdf2268f06f601d33911e2e66cd384fa71717
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104191900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf1238c7907a8b01852de07157f4be0e81420213a0db87fa37bcf963e68edc22`
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
# Mon, 30 Apr 2018 18:59:45 GMT
ENV MONGO_VERSION=3.2.19
# Mon, 30 Apr 2018 18:59:46 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 30 Apr 2018 19:00:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 30 Apr 2018 19:00:13 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 30 Apr 2018 19:00:13 GMT
VOLUME [/data/db /data/configdb]
# Mon, 30 Apr 2018 19:00:14 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Mon, 30 Apr 2018 19:00:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 30 Apr 2018 19:00:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 19:00:15 GMT
EXPOSE 27017/tcp
# Mon, 30 Apr 2018 19:00:15 GMT
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
	-	`sha256:ff8ca68df43aa33da3e36cb60af2cc3ef0225962a04605bcf12b5d29a94d2850`  
		Last Modified: Mon, 30 Apr 2018 19:55:00 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b1afde83f6c97e30809f492e88ea0044dff8658518ba612fd827b1522fecd1`  
		Last Modified: Mon, 30 Apr 2018 19:55:15 GMT  
		Size: 70.8 MB (70840018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecbbc92e45967cc51aabc21174da93c65618f217c3c7ea716a7e4eebfdcf4e9`  
		Last Modified: Mon, 30 Apr 2018 19:55:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23f8622a036651907534d657ec5b0110a426af7ee4d9d4f21024cde1aac2a27`  
		Last Modified: Mon, 30 Apr 2018 19:55:00 GMT  
		Size: 3.6 KB (3571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635904ae5f2f7385428b7ccf1d43b87304fefffb90922de68beb15fb8ba34e64`  
		Last Modified: Mon, 30 Apr 2018 19:55:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:567a1ce082128ccb415f8c6e653135fbf062d5522d05522bfdfdb401f58d8d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

```console
$ docker pull mongo@sha256:cef717c5c30541a2dbfdc9eaf911a20cd413e39981f612a4e777495b8679b170
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132120559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69fa4aaef06d0afe9017e3b8d150af999d08a818126ea8946c9add133dfc200d`
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
# Mon, 30 Apr 2018 19:14:49 GMT
ENV MONGO_VERSION=3.4.14
# Mon, 30 Apr 2018 19:14:50 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 30 Apr 2018 19:15:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 30 Apr 2018 19:15:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 30 Apr 2018 19:15:15 GMT
VOLUME [/data/db /data/configdb]
# Mon, 30 Apr 2018 19:15:15 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Mon, 30 Apr 2018 19:15:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 30 Apr 2018 19:15:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 19:15:16 GMT
EXPOSE 27017/tcp
# Mon, 30 Apr 2018 19:15:17 GMT
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
	-	`sha256:1661dac6fdcebe8aa63ccf8345a009df76c4421889eacfb639593d378bb092fb`  
		Last Modified: Mon, 30 Apr 2018 19:57:27 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5695088e12d5b44085c5b18d3a347d993afa35daf3947451d506721838d0974`  
		Last Modified: Mon, 30 Apr 2018 19:57:52 GMT  
		Size: 98.8 MB (98770270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148504a130a2b667e973a75728cc989f0ace2b136037a338ca4bd3db7da64234`  
		Last Modified: Mon, 30 Apr 2018 19:57:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8629537a433899c90fc560273bf2c1acf466a20acf99ad3fcf61d953b93290`  
		Last Modified: Mon, 30 Apr 2018 19:57:27 GMT  
		Size: 3.6 KB (3567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc7011b447c6ce5ea177c0046f608b2da84faa5bb9a05a0317c2b6ea02cf66f9`  
		Last Modified: Mon, 30 Apr 2018 19:57:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.14`

```console
$ docker pull mongo@sha256:567a1ce082128ccb415f8c6e653135fbf062d5522d05522bfdfdb401f58d8d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4.14` - linux; amd64

```console
$ docker pull mongo@sha256:cef717c5c30541a2dbfdc9eaf911a20cd413e39981f612a4e777495b8679b170
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132120559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69fa4aaef06d0afe9017e3b8d150af999d08a818126ea8946c9add133dfc200d`
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
# Mon, 30 Apr 2018 19:14:49 GMT
ENV MONGO_VERSION=3.4.14
# Mon, 30 Apr 2018 19:14:50 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 30 Apr 2018 19:15:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 30 Apr 2018 19:15:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 30 Apr 2018 19:15:15 GMT
VOLUME [/data/db /data/configdb]
# Mon, 30 Apr 2018 19:15:15 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Mon, 30 Apr 2018 19:15:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 30 Apr 2018 19:15:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 19:15:16 GMT
EXPOSE 27017/tcp
# Mon, 30 Apr 2018 19:15:17 GMT
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
	-	`sha256:1661dac6fdcebe8aa63ccf8345a009df76c4421889eacfb639593d378bb092fb`  
		Last Modified: Mon, 30 Apr 2018 19:57:27 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5695088e12d5b44085c5b18d3a347d993afa35daf3947451d506721838d0974`  
		Last Modified: Mon, 30 Apr 2018 19:57:52 GMT  
		Size: 98.8 MB (98770270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148504a130a2b667e973a75728cc989f0ace2b136037a338ca4bd3db7da64234`  
		Last Modified: Mon, 30 Apr 2018 19:57:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8629537a433899c90fc560273bf2c1acf466a20acf99ad3fcf61d953b93290`  
		Last Modified: Mon, 30 Apr 2018 19:57:27 GMT  
		Size: 3.6 KB (3567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc7011b447c6ce5ea177c0046f608b2da84faa5bb9a05a0317c2b6ea02cf66f9`  
		Last Modified: Mon, 30 Apr 2018 19:57:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.14-jessie`

```console
$ docker pull mongo@sha256:567a1ce082128ccb415f8c6e653135fbf062d5522d05522bfdfdb401f58d8d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4.14-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:cef717c5c30541a2dbfdc9eaf911a20cd413e39981f612a4e777495b8679b170
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132120559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69fa4aaef06d0afe9017e3b8d150af999d08a818126ea8946c9add133dfc200d`
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
# Mon, 30 Apr 2018 19:14:49 GMT
ENV MONGO_VERSION=3.4.14
# Mon, 30 Apr 2018 19:14:50 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 30 Apr 2018 19:15:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 30 Apr 2018 19:15:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 30 Apr 2018 19:15:15 GMT
VOLUME [/data/db /data/configdb]
# Mon, 30 Apr 2018 19:15:15 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Mon, 30 Apr 2018 19:15:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 30 Apr 2018 19:15:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 19:15:16 GMT
EXPOSE 27017/tcp
# Mon, 30 Apr 2018 19:15:17 GMT
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
	-	`sha256:1661dac6fdcebe8aa63ccf8345a009df76c4421889eacfb639593d378bb092fb`  
		Last Modified: Mon, 30 Apr 2018 19:57:27 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5695088e12d5b44085c5b18d3a347d993afa35daf3947451d506721838d0974`  
		Last Modified: Mon, 30 Apr 2018 19:57:52 GMT  
		Size: 98.8 MB (98770270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148504a130a2b667e973a75728cc989f0ace2b136037a338ca4bd3db7da64234`  
		Last Modified: Mon, 30 Apr 2018 19:57:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8629537a433899c90fc560273bf2c1acf466a20acf99ad3fcf61d953b93290`  
		Last Modified: Mon, 30 Apr 2018 19:57:27 GMT  
		Size: 3.6 KB (3567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc7011b447c6ce5ea177c0046f608b2da84faa5bb9a05a0317c2b6ea02cf66f9`  
		Last Modified: Mon, 30 Apr 2018 19:57:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-jessie`

```console
$ docker pull mongo@sha256:567a1ce082128ccb415f8c6e653135fbf062d5522d05522bfdfdb401f58d8d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:cef717c5c30541a2dbfdc9eaf911a20cd413e39981f612a4e777495b8679b170
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132120559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69fa4aaef06d0afe9017e3b8d150af999d08a818126ea8946c9add133dfc200d`
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
# Mon, 30 Apr 2018 19:14:49 GMT
ENV MONGO_VERSION=3.4.14
# Mon, 30 Apr 2018 19:14:50 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 30 Apr 2018 19:15:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 30 Apr 2018 19:15:15 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 30 Apr 2018 19:15:15 GMT
VOLUME [/data/db /data/configdb]
# Mon, 30 Apr 2018 19:15:15 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Mon, 30 Apr 2018 19:15:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 30 Apr 2018 19:15:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 19:15:16 GMT
EXPOSE 27017/tcp
# Mon, 30 Apr 2018 19:15:17 GMT
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
	-	`sha256:1661dac6fdcebe8aa63ccf8345a009df76c4421889eacfb639593d378bb092fb`  
		Last Modified: Mon, 30 Apr 2018 19:57:27 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5695088e12d5b44085c5b18d3a347d993afa35daf3947451d506721838d0974`  
		Last Modified: Mon, 30 Apr 2018 19:57:52 GMT  
		Size: 98.8 MB (98770270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148504a130a2b667e973a75728cc989f0ace2b136037a338ca4bd3db7da64234`  
		Last Modified: Mon, 30 Apr 2018 19:57:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8629537a433899c90fc560273bf2c1acf466a20acf99ad3fcf61d953b93290`  
		Last Modified: Mon, 30 Apr 2018 19:57:27 GMT  
		Size: 3.6 KB (3567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc7011b447c6ce5ea177c0046f608b2da84faa5bb9a05a0317c2b6ea02cf66f9`  
		Last Modified: Mon, 30 Apr 2018 19:57:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6`

```console
$ docker pull mongo@sha256:c6d2b2f8c054210db26b492bab81ffab171ee54eb58925fa98fabb4faca3a9cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6` - linux; amd64

```console
$ docker pull mongo@sha256:54fc224fa13069fcd198d26644d7f298fbdd55a0b6011959397ffc2d9c781624
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130640079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14c497d5c758b7b6c57e1e585f26869ddce663c2725f7cc9b9e882b06b9127b2`
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
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_VERSION=3.6.4
# Mon, 30 Apr 2018 19:18:13 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 30 Apr 2018 19:18:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 30 Apr 2018 19:18:39 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 30 Apr 2018 19:18:39 GMT
VOLUME [/data/db /data/configdb]
# Mon, 30 Apr 2018 19:18:40 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 30 Apr 2018 19:18:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 19:18:41 GMT
EXPOSE 27017/tcp
# Mon, 30 Apr 2018 19:18:41 GMT
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
	-	`sha256:63127ea58ee0b859bbc59fe6e7ca7f68f07d4751c5524fed7c163d2b047c51a5`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb46836c59830f9fe909bd4325abc135aa33bb2a57e4830bfd2bc7813375018`  
		Last Modified: Mon, 30 Apr 2018 20:20:31 GMT  
		Size: 97.3 MB (97290333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0abf374ec41d5f79e2b61bf624301e57367baddae95193c298e914db0a8270`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8b13c8fd3831f0e0314a8cb16acbc174fc24828754e266c9c37bf8cbeee07c`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.4`

```console
$ docker pull mongo@sha256:c6d2b2f8c054210db26b492bab81ffab171ee54eb58925fa98fabb4faca3a9cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6.4` - linux; amd64

```console
$ docker pull mongo@sha256:54fc224fa13069fcd198d26644d7f298fbdd55a0b6011959397ffc2d9c781624
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130640079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14c497d5c758b7b6c57e1e585f26869ddce663c2725f7cc9b9e882b06b9127b2`
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
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_VERSION=3.6.4
# Mon, 30 Apr 2018 19:18:13 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 30 Apr 2018 19:18:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 30 Apr 2018 19:18:39 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 30 Apr 2018 19:18:39 GMT
VOLUME [/data/db /data/configdb]
# Mon, 30 Apr 2018 19:18:40 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 30 Apr 2018 19:18:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 19:18:41 GMT
EXPOSE 27017/tcp
# Mon, 30 Apr 2018 19:18:41 GMT
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
	-	`sha256:63127ea58ee0b859bbc59fe6e7ca7f68f07d4751c5524fed7c163d2b047c51a5`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb46836c59830f9fe909bd4325abc135aa33bb2a57e4830bfd2bc7813375018`  
		Last Modified: Mon, 30 Apr 2018 20:20:31 GMT  
		Size: 97.3 MB (97290333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0abf374ec41d5f79e2b61bf624301e57367baddae95193c298e914db0a8270`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8b13c8fd3831f0e0314a8cb16acbc174fc24828754e266c9c37bf8cbeee07c`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.4-jessie`

```console
$ docker pull mongo@sha256:c6d2b2f8c054210db26b492bab81ffab171ee54eb58925fa98fabb4faca3a9cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6.4-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:54fc224fa13069fcd198d26644d7f298fbdd55a0b6011959397ffc2d9c781624
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130640079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14c497d5c758b7b6c57e1e585f26869ddce663c2725f7cc9b9e882b06b9127b2`
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
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_VERSION=3.6.4
# Mon, 30 Apr 2018 19:18:13 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 30 Apr 2018 19:18:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 30 Apr 2018 19:18:39 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 30 Apr 2018 19:18:39 GMT
VOLUME [/data/db /data/configdb]
# Mon, 30 Apr 2018 19:18:40 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 30 Apr 2018 19:18:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 19:18:41 GMT
EXPOSE 27017/tcp
# Mon, 30 Apr 2018 19:18:41 GMT
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
	-	`sha256:63127ea58ee0b859bbc59fe6e7ca7f68f07d4751c5524fed7c163d2b047c51a5`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb46836c59830f9fe909bd4325abc135aa33bb2a57e4830bfd2bc7813375018`  
		Last Modified: Mon, 30 Apr 2018 20:20:31 GMT  
		Size: 97.3 MB (97290333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0abf374ec41d5f79e2b61bf624301e57367baddae95193c298e914db0a8270`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8b13c8fd3831f0e0314a8cb16acbc174fc24828754e266c9c37bf8cbeee07c`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6-jessie`

```console
$ docker pull mongo@sha256:c6d2b2f8c054210db26b492bab81ffab171ee54eb58925fa98fabb4faca3a9cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:54fc224fa13069fcd198d26644d7f298fbdd55a0b6011959397ffc2d9c781624
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130640079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14c497d5c758b7b6c57e1e585f26869ddce663c2725f7cc9b9e882b06b9127b2`
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
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_VERSION=3.6.4
# Mon, 30 Apr 2018 19:18:13 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 30 Apr 2018 19:18:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 30 Apr 2018 19:18:39 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 30 Apr 2018 19:18:39 GMT
VOLUME [/data/db /data/configdb]
# Mon, 30 Apr 2018 19:18:40 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 30 Apr 2018 19:18:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 19:18:41 GMT
EXPOSE 27017/tcp
# Mon, 30 Apr 2018 19:18:41 GMT
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
	-	`sha256:63127ea58ee0b859bbc59fe6e7ca7f68f07d4751c5524fed7c163d2b047c51a5`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb46836c59830f9fe909bd4325abc135aa33bb2a57e4830bfd2bc7813375018`  
		Last Modified: Mon, 30 Apr 2018 20:20:31 GMT  
		Size: 97.3 MB (97290333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0abf374ec41d5f79e2b61bf624301e57367baddae95193c298e914db0a8270`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8b13c8fd3831f0e0314a8cb16acbc174fc24828754e266c9c37bf8cbeee07c`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7`

```console
$ docker pull mongo@sha256:e6f5c2185eb64e0eb4c3d8ef8a903ad0fff0e2554b1bc03c8b1bb25103882102
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.7` - linux; amd64

```console
$ docker pull mongo@sha256:cdbc54c8b744d5e6520bae7ba2b5360327d5923a96beacd893e806151a24b936
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116027254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f75e6e27600d73519b2761658c0abd5f5065b45d7b2b73dc8473de1880e0263`
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
# Mon, 30 Apr 2018 19:32:51 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Mon, 30 Apr 2018 19:32:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 19:32:57 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Mon, 30 Apr 2018 19:32:57 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:32:57 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:32:58 GMT
ENV MONGO_MAJOR=3.7
# Fri, 04 May 2018 23:43:11 GMT
ENV MONGO_VERSION=3.7.9
# Fri, 04 May 2018 23:43:12 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 04 May 2018 23:43:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 04 May 2018 23:43:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 04 May 2018 23:43:43 GMT
VOLUME [/data/db /data/configdb]
# Fri, 04 May 2018 23:43:44 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Fri, 04 May 2018 23:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 May 2018 23:43:44 GMT
EXPOSE 27017/tcp
# Fri, 04 May 2018 23:43:44 GMT
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
	-	`sha256:cc3a85962b5f5ee16a56ea4951805d54e5e2174029be0a1ffacd459c06f5f8d0`  
		Last Modified: Mon, 30 Apr 2018 20:22:03 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57685b7f931ff5960fe93b49d42a755657affabb2d54e633c8826ec68ea51b9`  
		Last Modified: Fri, 04 May 2018 23:44:02 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea524550273083c05ad0f68bfb10088c9b1958b1b1cb5695f74e1821450ee24`  
		Last Modified: Fri, 04 May 2018 23:44:14 GMT  
		Size: 82.7 MB (82677498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcab3502a479176fe280bdafb02db119f70ed9411e42c262e49e1587a27c2080`  
		Last Modified: Fri, 04 May 2018 23:44:01 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c890ba1233c018239c5f9e2f542958d5e1b82134221ced147845d81a952d7d6`  
		Last Modified: Fri, 04 May 2018 23:44:02 GMT  
		Size: 3.7 KB (3716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7.9`

```console
$ docker pull mongo@sha256:e6f5c2185eb64e0eb4c3d8ef8a903ad0fff0e2554b1bc03c8b1bb25103882102
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.7.9` - linux; amd64

```console
$ docker pull mongo@sha256:cdbc54c8b744d5e6520bae7ba2b5360327d5923a96beacd893e806151a24b936
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116027254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f75e6e27600d73519b2761658c0abd5f5065b45d7b2b73dc8473de1880e0263`
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
# Mon, 30 Apr 2018 19:32:51 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Mon, 30 Apr 2018 19:32:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 19:32:57 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Mon, 30 Apr 2018 19:32:57 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:32:57 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:32:58 GMT
ENV MONGO_MAJOR=3.7
# Fri, 04 May 2018 23:43:11 GMT
ENV MONGO_VERSION=3.7.9
# Fri, 04 May 2018 23:43:12 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 04 May 2018 23:43:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 04 May 2018 23:43:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 04 May 2018 23:43:43 GMT
VOLUME [/data/db /data/configdb]
# Fri, 04 May 2018 23:43:44 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Fri, 04 May 2018 23:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 May 2018 23:43:44 GMT
EXPOSE 27017/tcp
# Fri, 04 May 2018 23:43:44 GMT
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
	-	`sha256:cc3a85962b5f5ee16a56ea4951805d54e5e2174029be0a1ffacd459c06f5f8d0`  
		Last Modified: Mon, 30 Apr 2018 20:22:03 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57685b7f931ff5960fe93b49d42a755657affabb2d54e633c8826ec68ea51b9`  
		Last Modified: Fri, 04 May 2018 23:44:02 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea524550273083c05ad0f68bfb10088c9b1958b1b1cb5695f74e1821450ee24`  
		Last Modified: Fri, 04 May 2018 23:44:14 GMT  
		Size: 82.7 MB (82677498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcab3502a479176fe280bdafb02db119f70ed9411e42c262e49e1587a27c2080`  
		Last Modified: Fri, 04 May 2018 23:44:01 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c890ba1233c018239c5f9e2f542958d5e1b82134221ced147845d81a952d7d6`  
		Last Modified: Fri, 04 May 2018 23:44:02 GMT  
		Size: 3.7 KB (3716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7.9-jessie`

```console
$ docker pull mongo@sha256:e6f5c2185eb64e0eb4c3d8ef8a903ad0fff0e2554b1bc03c8b1bb25103882102
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.7.9-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:cdbc54c8b744d5e6520bae7ba2b5360327d5923a96beacd893e806151a24b936
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116027254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f75e6e27600d73519b2761658c0abd5f5065b45d7b2b73dc8473de1880e0263`
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
# Mon, 30 Apr 2018 19:32:51 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Mon, 30 Apr 2018 19:32:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 19:32:57 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Mon, 30 Apr 2018 19:32:57 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:32:57 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:32:58 GMT
ENV MONGO_MAJOR=3.7
# Fri, 04 May 2018 23:43:11 GMT
ENV MONGO_VERSION=3.7.9
# Fri, 04 May 2018 23:43:12 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 04 May 2018 23:43:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 04 May 2018 23:43:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 04 May 2018 23:43:43 GMT
VOLUME [/data/db /data/configdb]
# Fri, 04 May 2018 23:43:44 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Fri, 04 May 2018 23:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 May 2018 23:43:44 GMT
EXPOSE 27017/tcp
# Fri, 04 May 2018 23:43:44 GMT
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
	-	`sha256:cc3a85962b5f5ee16a56ea4951805d54e5e2174029be0a1ffacd459c06f5f8d0`  
		Last Modified: Mon, 30 Apr 2018 20:22:03 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57685b7f931ff5960fe93b49d42a755657affabb2d54e633c8826ec68ea51b9`  
		Last Modified: Fri, 04 May 2018 23:44:02 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea524550273083c05ad0f68bfb10088c9b1958b1b1cb5695f74e1821450ee24`  
		Last Modified: Fri, 04 May 2018 23:44:14 GMT  
		Size: 82.7 MB (82677498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcab3502a479176fe280bdafb02db119f70ed9411e42c262e49e1587a27c2080`  
		Last Modified: Fri, 04 May 2018 23:44:01 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c890ba1233c018239c5f9e2f542958d5e1b82134221ced147845d81a952d7d6`  
		Last Modified: Fri, 04 May 2018 23:44:02 GMT  
		Size: 3.7 KB (3716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7-jessie`

```console
$ docker pull mongo@sha256:e6f5c2185eb64e0eb4c3d8ef8a903ad0fff0e2554b1bc03c8b1bb25103882102
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.7-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:cdbc54c8b744d5e6520bae7ba2b5360327d5923a96beacd893e806151a24b936
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116027254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f75e6e27600d73519b2761658c0abd5f5065b45d7b2b73dc8473de1880e0263`
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
# Mon, 30 Apr 2018 19:32:51 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Mon, 30 Apr 2018 19:32:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 19:32:57 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Mon, 30 Apr 2018 19:32:57 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:32:57 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:32:58 GMT
ENV MONGO_MAJOR=3.7
# Fri, 04 May 2018 23:43:11 GMT
ENV MONGO_VERSION=3.7.9
# Fri, 04 May 2018 23:43:12 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 04 May 2018 23:43:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 04 May 2018 23:43:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 04 May 2018 23:43:43 GMT
VOLUME [/data/db /data/configdb]
# Fri, 04 May 2018 23:43:44 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Fri, 04 May 2018 23:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 May 2018 23:43:44 GMT
EXPOSE 27017/tcp
# Fri, 04 May 2018 23:43:44 GMT
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
	-	`sha256:cc3a85962b5f5ee16a56ea4951805d54e5e2174029be0a1ffacd459c06f5f8d0`  
		Last Modified: Mon, 30 Apr 2018 20:22:03 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57685b7f931ff5960fe93b49d42a755657affabb2d54e633c8826ec68ea51b9`  
		Last Modified: Fri, 04 May 2018 23:44:02 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea524550273083c05ad0f68bfb10088c9b1958b1b1cb5695f74e1821450ee24`  
		Last Modified: Fri, 04 May 2018 23:44:14 GMT  
		Size: 82.7 MB (82677498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcab3502a479176fe280bdafb02db119f70ed9411e42c262e49e1587a27c2080`  
		Last Modified: Fri, 04 May 2018 23:44:01 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c890ba1233c018239c5f9e2f542958d5e1b82134221ced147845d81a952d7d6`  
		Last Modified: Fri, 04 May 2018 23:44:02 GMT  
		Size: 3.7 KB (3716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-jessie`

```console
$ docker pull mongo@sha256:c6d2b2f8c054210db26b492bab81ffab171ee54eb58925fa98fabb4faca3a9cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:54fc224fa13069fcd198d26644d7f298fbdd55a0b6011959397ffc2d9c781624
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130640079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14c497d5c758b7b6c57e1e585f26869ddce663c2725f7cc9b9e882b06b9127b2`
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
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_VERSION=3.6.4
# Mon, 30 Apr 2018 19:18:13 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 30 Apr 2018 19:18:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 30 Apr 2018 19:18:39 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 30 Apr 2018 19:18:39 GMT
VOLUME [/data/db /data/configdb]
# Mon, 30 Apr 2018 19:18:40 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 30 Apr 2018 19:18:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 19:18:41 GMT
EXPOSE 27017/tcp
# Mon, 30 Apr 2018 19:18:41 GMT
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
	-	`sha256:63127ea58ee0b859bbc59fe6e7ca7f68f07d4751c5524fed7c163d2b047c51a5`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb46836c59830f9fe909bd4325abc135aa33bb2a57e4830bfd2bc7813375018`  
		Last Modified: Mon, 30 Apr 2018 20:20:31 GMT  
		Size: 97.3 MB (97290333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0abf374ec41d5f79e2b61bf624301e57367baddae95193c298e914db0a8270`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8b13c8fd3831f0e0314a8cb16acbc174fc24828754e266c9c37bf8cbeee07c`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:jessie`

```console
$ docker pull mongo@sha256:c6d2b2f8c054210db26b492bab81ffab171ee54eb58925fa98fabb4faca3a9cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:jessie` - linux; amd64

```console
$ docker pull mongo@sha256:54fc224fa13069fcd198d26644d7f298fbdd55a0b6011959397ffc2d9c781624
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130640079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14c497d5c758b7b6c57e1e585f26869ddce663c2725f7cc9b9e882b06b9127b2`
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
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_VERSION=3.6.4
# Mon, 30 Apr 2018 19:18:13 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 30 Apr 2018 19:18:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 30 Apr 2018 19:18:39 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 30 Apr 2018 19:18:39 GMT
VOLUME [/data/db /data/configdb]
# Mon, 30 Apr 2018 19:18:40 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 30 Apr 2018 19:18:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 19:18:41 GMT
EXPOSE 27017/tcp
# Mon, 30 Apr 2018 19:18:41 GMT
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
	-	`sha256:63127ea58ee0b859bbc59fe6e7ca7f68f07d4751c5524fed7c163d2b047c51a5`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb46836c59830f9fe909bd4325abc135aa33bb2a57e4830bfd2bc7813375018`  
		Last Modified: Mon, 30 Apr 2018 20:20:31 GMT  
		Size: 97.3 MB (97290333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0abf374ec41d5f79e2b61bf624301e57367baddae95193c298e914db0a8270`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8b13c8fd3831f0e0314a8cb16acbc174fc24828754e266c9c37bf8cbeee07c`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:c6d2b2f8c054210db26b492bab81ffab171ee54eb58925fa98fabb4faca3a9cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:54fc224fa13069fcd198d26644d7f298fbdd55a0b6011959397ffc2d9c781624
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130640079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14c497d5c758b7b6c57e1e585f26869ddce663c2725f7cc9b9e882b06b9127b2`
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
# Mon, 30 Apr 2018 19:18:12 GMT
ENV MONGO_VERSION=3.6.4
# Mon, 30 Apr 2018 19:18:13 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 30 Apr 2018 19:18:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 30 Apr 2018 19:18:39 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 30 Apr 2018 19:18:39 GMT
VOLUME [/data/db /data/configdb]
# Mon, 30 Apr 2018 19:18:40 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 30 Apr 2018 19:18:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 19:18:41 GMT
EXPOSE 27017/tcp
# Mon, 30 Apr 2018 19:18:41 GMT
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
	-	`sha256:63127ea58ee0b859bbc59fe6e7ca7f68f07d4751c5524fed7c163d2b047c51a5`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb46836c59830f9fe909bd4325abc135aa33bb2a57e4830bfd2bc7813375018`  
		Last Modified: Mon, 30 Apr 2018 20:20:31 GMT  
		Size: 97.3 MB (97290333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0abf374ec41d5f79e2b61bf624301e57367baddae95193c298e914db0a8270`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8b13c8fd3831f0e0314a8cb16acbc174fc24828754e266c9c37bf8cbeee07c`  
		Last Modified: Mon, 30 Apr 2018 20:20:13 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:e6f5c2185eb64e0eb4c3d8ef8a903ad0fff0e2554b1bc03c8b1bb25103882102
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:cdbc54c8b744d5e6520bae7ba2b5360327d5923a96beacd893e806151a24b936
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116027254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f75e6e27600d73519b2761658c0abd5f5065b45d7b2b73dc8473de1880e0263`
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
# Mon, 30 Apr 2018 19:32:51 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Mon, 30 Apr 2018 19:32:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 19:32:57 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Mon, 30 Apr 2018 19:32:57 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:32:57 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:32:58 GMT
ENV MONGO_MAJOR=3.7
# Fri, 04 May 2018 23:43:11 GMT
ENV MONGO_VERSION=3.7.9
# Fri, 04 May 2018 23:43:12 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 04 May 2018 23:43:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 04 May 2018 23:43:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 04 May 2018 23:43:43 GMT
VOLUME [/data/db /data/configdb]
# Fri, 04 May 2018 23:43:44 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Fri, 04 May 2018 23:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 May 2018 23:43:44 GMT
EXPOSE 27017/tcp
# Fri, 04 May 2018 23:43:44 GMT
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
	-	`sha256:cc3a85962b5f5ee16a56ea4951805d54e5e2174029be0a1ffacd459c06f5f8d0`  
		Last Modified: Mon, 30 Apr 2018 20:22:03 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57685b7f931ff5960fe93b49d42a755657affabb2d54e633c8826ec68ea51b9`  
		Last Modified: Fri, 04 May 2018 23:44:02 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea524550273083c05ad0f68bfb10088c9b1958b1b1cb5695f74e1821450ee24`  
		Last Modified: Fri, 04 May 2018 23:44:14 GMT  
		Size: 82.7 MB (82677498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcab3502a479176fe280bdafb02db119f70ed9411e42c262e49e1587a27c2080`  
		Last Modified: Fri, 04 May 2018 23:44:01 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c890ba1233c018239c5f9e2f542958d5e1b82134221ced147845d81a952d7d6`  
		Last Modified: Fri, 04 May 2018 23:44:02 GMT  
		Size: 3.7 KB (3716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-jessie`

```console
$ docker pull mongo@sha256:e6f5c2185eb64e0eb4c3d8ef8a903ad0fff0e2554b1bc03c8b1bb25103882102
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:unstable-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:cdbc54c8b744d5e6520bae7ba2b5360327d5923a96beacd893e806151a24b936
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116027254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f75e6e27600d73519b2761658c0abd5f5065b45d7b2b73dc8473de1880e0263`
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
# Mon, 30 Apr 2018 19:32:51 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Mon, 30 Apr 2018 19:32:57 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 19:32:57 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Mon, 30 Apr 2018 19:32:57 GMT
ARG MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:32:57 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Mon, 30 Apr 2018 19:32:58 GMT
ENV MONGO_MAJOR=3.7
# Fri, 04 May 2018 23:43:11 GMT
ENV MONGO_VERSION=3.7.9
# Fri, 04 May 2018 23:43:12 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 04 May 2018 23:43:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 04 May 2018 23:43:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 04 May 2018 23:43:43 GMT
VOLUME [/data/db /data/configdb]
# Fri, 04 May 2018 23:43:44 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Fri, 04 May 2018 23:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 May 2018 23:43:44 GMT
EXPOSE 27017/tcp
# Fri, 04 May 2018 23:43:44 GMT
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
	-	`sha256:cc3a85962b5f5ee16a56ea4951805d54e5e2174029be0a1ffacd459c06f5f8d0`  
		Last Modified: Mon, 30 Apr 2018 20:22:03 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57685b7f931ff5960fe93b49d42a755657affabb2d54e633c8826ec68ea51b9`  
		Last Modified: Fri, 04 May 2018 23:44:02 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea524550273083c05ad0f68bfb10088c9b1958b1b1cb5695f74e1821450ee24`  
		Last Modified: Fri, 04 May 2018 23:44:14 GMT  
		Size: 82.7 MB (82677498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcab3502a479176fe280bdafb02db119f70ed9411e42c262e49e1587a27c2080`  
		Last Modified: Fri, 04 May 2018 23:44:01 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c890ba1233c018239c5f9e2f542958d5e1b82134221ced147845d81a952d7d6`  
		Last Modified: Fri, 04 May 2018 23:44:02 GMT  
		Size: 3.7 KB (3716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

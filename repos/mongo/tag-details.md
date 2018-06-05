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
$ docker pull mongo@sha256:3a09cd85fb4e76f1d5832f9ea1d4e7481f76e807389b7d8ea6ac4d4ba96f83e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

```console
$ docker pull mongo@sha256:11f39eac4a3036f8e13076603ebd601de93e52a9814fc681ece4ab90ec3ad697
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132043875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f1a6e84e0012a52c1a176619256c3f0222591b78a266188f9fc983a383b64a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 22:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:13:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:13:19 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:14:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:14:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:16:23 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 05 Jun 2018 22:16:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:16:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 05 Jun 2018 22:16:33 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:16:33 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:16:33 GMT
ENV MONGO_MAJOR=3.6
# Tue, 05 Jun 2018 22:16:34 GMT
ENV MONGO_VERSION=3.6.5
# Tue, 05 Jun 2018 22:16:34 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:17:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:17:35 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:17:35 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:17:35 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:17:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:17:35 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:17:36 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e8f2a80d9c89186a03ac435a8eede75ebff297a60bcb9556b2fdb79816f046`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1dfbce34f0e1e7e5ff7e33328b35ce357cc1952701ebd17205710e5851e82c`  
		Last Modified: Tue, 05 Jun 2018 22:19:51 GMT  
		Size: 2.4 MB (2398197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c46dfce21d0ebc111b0995e92895523f5e233bacec1d6380d77e3c6fbae9fac`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 816.8 KB (816750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108b7b81738881e2e56ae623ec0f0254f257cd15cd8c9f01ac944618d54cd51`  
		Last Modified: Tue, 05 Jun 2018 22:19:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96cba0bb653f05be2d10994895de9acf8377accd7af072a70c571f2a3e750f5`  
		Last Modified: Tue, 05 Jun 2018 22:21:19 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11707d2d22ace16bc53c6f4f0d30381c757ea39c3dfdc35735041924940e822b`  
		Last Modified: Tue, 05 Jun 2018 22:21:19 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8c0aaadd20eea960f6d7b6a27c4480bc5054d651530029fcfc9e87c2806a8d`  
		Last Modified: Tue, 05 Jun 2018 22:21:56 GMT  
		Size: 98.7 MB (98693902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c7bba6fd7dddccef9233297e21476a90fdc8af0d056143eeb23219731e5ef5`  
		Last Modified: Tue, 05 Jun 2018 22:21:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f745addabe84c0a69cd9cc5928b6b5c8c69e309a958cd2b3ea82d35bfe2bdcc`  
		Last Modified: Tue, 05 Jun 2018 22:21:19 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:fb181a77639ad9d5b6da240a3cee1c3754faff082c9a62fa0635c0b4992554bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

```console
$ docker pull mongo@sha256:21975904e909e8ad04eb18c2248de0d2549d9ff27cee153679817ed301a81e8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104203113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c68441223da7240ac2d6300442584c700d2936542729a3a6cc10e2edfb60f8bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 22:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:13:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:13:19 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:14:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:14:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:14:09 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 05 Jun 2018 22:14:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:14:18 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 05 Jun 2018 22:14:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:14:18 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:14:19 GMT
ENV MONGO_MAJOR=3.2
# Tue, 05 Jun 2018 22:14:19 GMT
ENV MONGO_VERSION=3.2.20
# Tue, 05 Jun 2018 22:14:19 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:15:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:15:06 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:15:06 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:15:06 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:15:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Jun 2018 22:15:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:15:07 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:15:08 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e8f2a80d9c89186a03ac435a8eede75ebff297a60bcb9556b2fdb79816f046`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1dfbce34f0e1e7e5ff7e33328b35ce357cc1952701ebd17205710e5851e82c`  
		Last Modified: Tue, 05 Jun 2018 22:19:51 GMT  
		Size: 2.4 MB (2398197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c46dfce21d0ebc111b0995e92895523f5e233bacec1d6380d77e3c6fbae9fac`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 816.8 KB (816750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108b7b81738881e2e56ae623ec0f0254f257cd15cd8c9f01ac944618d54cd51`  
		Last Modified: Tue, 05 Jun 2018 22:19:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b38f14ad7add00ce138d74510ccc36147b9d8833bdd231e9e5fe02c804e620`  
		Last Modified: Tue, 05 Jun 2018 22:19:47 GMT  
		Size: 3.6 KB (3597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046a36863e4d917bcfa22c6bd4fafd4f88494a1dbcfff4b0c3a8fe94f4099bf9`  
		Last Modified: Tue, 05 Jun 2018 22:19:47 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7e5befb36525a71492dcb73f4e6f5c8304b181e00d1998f6c41f95b2c4b8fd`  
		Last Modified: Tue, 05 Jun 2018 22:20:15 GMT  
		Size: 70.9 MB (70851002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd9783569ea3a03a24f1cedb6f3d5fa971b44965f4333dd7849e9477e438050`  
		Last Modified: Tue, 05 Jun 2018 22:19:45 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c344cf29f43d4e269f6f9986731d9314fccd668d75ca3967c08e493a38a68d6`  
		Last Modified: Tue, 05 Jun 2018 22:19:45 GMT  
		Size: 3.6 KB (3572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346b2b0893fe93b3e89ca32c0a87fdfd24e89fc284a1849a5dbf317ead4180fa`  
		Last Modified: Tue, 05 Jun 2018 22:19:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.20`

```console
$ docker pull mongo@sha256:fb181a77639ad9d5b6da240a3cee1c3754faff082c9a62fa0635c0b4992554bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2.20` - linux; amd64

```console
$ docker pull mongo@sha256:21975904e909e8ad04eb18c2248de0d2549d9ff27cee153679817ed301a81e8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104203113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c68441223da7240ac2d6300442584c700d2936542729a3a6cc10e2edfb60f8bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 22:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:13:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:13:19 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:14:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:14:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:14:09 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 05 Jun 2018 22:14:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:14:18 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 05 Jun 2018 22:14:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:14:18 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:14:19 GMT
ENV MONGO_MAJOR=3.2
# Tue, 05 Jun 2018 22:14:19 GMT
ENV MONGO_VERSION=3.2.20
# Tue, 05 Jun 2018 22:14:19 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:15:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:15:06 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:15:06 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:15:06 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:15:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Jun 2018 22:15:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:15:07 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:15:08 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e8f2a80d9c89186a03ac435a8eede75ebff297a60bcb9556b2fdb79816f046`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1dfbce34f0e1e7e5ff7e33328b35ce357cc1952701ebd17205710e5851e82c`  
		Last Modified: Tue, 05 Jun 2018 22:19:51 GMT  
		Size: 2.4 MB (2398197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c46dfce21d0ebc111b0995e92895523f5e233bacec1d6380d77e3c6fbae9fac`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 816.8 KB (816750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108b7b81738881e2e56ae623ec0f0254f257cd15cd8c9f01ac944618d54cd51`  
		Last Modified: Tue, 05 Jun 2018 22:19:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b38f14ad7add00ce138d74510ccc36147b9d8833bdd231e9e5fe02c804e620`  
		Last Modified: Tue, 05 Jun 2018 22:19:47 GMT  
		Size: 3.6 KB (3597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046a36863e4d917bcfa22c6bd4fafd4f88494a1dbcfff4b0c3a8fe94f4099bf9`  
		Last Modified: Tue, 05 Jun 2018 22:19:47 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7e5befb36525a71492dcb73f4e6f5c8304b181e00d1998f6c41f95b2c4b8fd`  
		Last Modified: Tue, 05 Jun 2018 22:20:15 GMT  
		Size: 70.9 MB (70851002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd9783569ea3a03a24f1cedb6f3d5fa971b44965f4333dd7849e9477e438050`  
		Last Modified: Tue, 05 Jun 2018 22:19:45 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c344cf29f43d4e269f6f9986731d9314fccd668d75ca3967c08e493a38a68d6`  
		Last Modified: Tue, 05 Jun 2018 22:19:45 GMT  
		Size: 3.6 KB (3572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346b2b0893fe93b3e89ca32c0a87fdfd24e89fc284a1849a5dbf317ead4180fa`  
		Last Modified: Tue, 05 Jun 2018 22:19:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.20-jessie`

```console
$ docker pull mongo@sha256:fb181a77639ad9d5b6da240a3cee1c3754faff082c9a62fa0635c0b4992554bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2.20-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:21975904e909e8ad04eb18c2248de0d2549d9ff27cee153679817ed301a81e8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104203113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c68441223da7240ac2d6300442584c700d2936542729a3a6cc10e2edfb60f8bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 22:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:13:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:13:19 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:14:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:14:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:14:09 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 05 Jun 2018 22:14:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:14:18 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 05 Jun 2018 22:14:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:14:18 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:14:19 GMT
ENV MONGO_MAJOR=3.2
# Tue, 05 Jun 2018 22:14:19 GMT
ENV MONGO_VERSION=3.2.20
# Tue, 05 Jun 2018 22:14:19 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:15:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:15:06 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:15:06 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:15:06 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:15:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Jun 2018 22:15:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:15:07 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:15:08 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e8f2a80d9c89186a03ac435a8eede75ebff297a60bcb9556b2fdb79816f046`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1dfbce34f0e1e7e5ff7e33328b35ce357cc1952701ebd17205710e5851e82c`  
		Last Modified: Tue, 05 Jun 2018 22:19:51 GMT  
		Size: 2.4 MB (2398197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c46dfce21d0ebc111b0995e92895523f5e233bacec1d6380d77e3c6fbae9fac`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 816.8 KB (816750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108b7b81738881e2e56ae623ec0f0254f257cd15cd8c9f01ac944618d54cd51`  
		Last Modified: Tue, 05 Jun 2018 22:19:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b38f14ad7add00ce138d74510ccc36147b9d8833bdd231e9e5fe02c804e620`  
		Last Modified: Tue, 05 Jun 2018 22:19:47 GMT  
		Size: 3.6 KB (3597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046a36863e4d917bcfa22c6bd4fafd4f88494a1dbcfff4b0c3a8fe94f4099bf9`  
		Last Modified: Tue, 05 Jun 2018 22:19:47 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7e5befb36525a71492dcb73f4e6f5c8304b181e00d1998f6c41f95b2c4b8fd`  
		Last Modified: Tue, 05 Jun 2018 22:20:15 GMT  
		Size: 70.9 MB (70851002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd9783569ea3a03a24f1cedb6f3d5fa971b44965f4333dd7849e9477e438050`  
		Last Modified: Tue, 05 Jun 2018 22:19:45 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c344cf29f43d4e269f6f9986731d9314fccd668d75ca3967c08e493a38a68d6`  
		Last Modified: Tue, 05 Jun 2018 22:19:45 GMT  
		Size: 3.6 KB (3572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346b2b0893fe93b3e89ca32c0a87fdfd24e89fc284a1849a5dbf317ead4180fa`  
		Last Modified: Tue, 05 Jun 2018 22:19:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-jessie`

```console
$ docker pull mongo@sha256:fb181a77639ad9d5b6da240a3cee1c3754faff082c9a62fa0635c0b4992554bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:21975904e909e8ad04eb18c2248de0d2549d9ff27cee153679817ed301a81e8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104203113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c68441223da7240ac2d6300442584c700d2936542729a3a6cc10e2edfb60f8bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 22:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:13:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:13:19 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:14:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:14:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:14:09 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 05 Jun 2018 22:14:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:14:18 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 05 Jun 2018 22:14:18 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:14:18 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:14:19 GMT
ENV MONGO_MAJOR=3.2
# Tue, 05 Jun 2018 22:14:19 GMT
ENV MONGO_VERSION=3.2.20
# Tue, 05 Jun 2018 22:14:19 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:15:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:15:06 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:15:06 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:15:06 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:15:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Jun 2018 22:15:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:15:07 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:15:08 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e8f2a80d9c89186a03ac435a8eede75ebff297a60bcb9556b2fdb79816f046`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1dfbce34f0e1e7e5ff7e33328b35ce357cc1952701ebd17205710e5851e82c`  
		Last Modified: Tue, 05 Jun 2018 22:19:51 GMT  
		Size: 2.4 MB (2398197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c46dfce21d0ebc111b0995e92895523f5e233bacec1d6380d77e3c6fbae9fac`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 816.8 KB (816750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108b7b81738881e2e56ae623ec0f0254f257cd15cd8c9f01ac944618d54cd51`  
		Last Modified: Tue, 05 Jun 2018 22:19:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b38f14ad7add00ce138d74510ccc36147b9d8833bdd231e9e5fe02c804e620`  
		Last Modified: Tue, 05 Jun 2018 22:19:47 GMT  
		Size: 3.6 KB (3597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046a36863e4d917bcfa22c6bd4fafd4f88494a1dbcfff4b0c3a8fe94f4099bf9`  
		Last Modified: Tue, 05 Jun 2018 22:19:47 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7e5befb36525a71492dcb73f4e6f5c8304b181e00d1998f6c41f95b2c4b8fd`  
		Last Modified: Tue, 05 Jun 2018 22:20:15 GMT  
		Size: 70.9 MB (70851002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd9783569ea3a03a24f1cedb6f3d5fa971b44965f4333dd7849e9477e438050`  
		Last Modified: Tue, 05 Jun 2018 22:19:45 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c344cf29f43d4e269f6f9986731d9314fccd668d75ca3967c08e493a38a68d6`  
		Last Modified: Tue, 05 Jun 2018 22:19:45 GMT  
		Size: 3.6 KB (3572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346b2b0893fe93b3e89ca32c0a87fdfd24e89fc284a1849a5dbf317ead4180fa`  
		Last Modified: Tue, 05 Jun 2018 22:19:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:ff87ac287357285064a2db5e97e483bb7a6db07c20e25afe1d4800a4e151d975
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

```console
$ docker pull mongo@sha256:537a4262f98b7a10563fd7d12f938681d487b606045c15b17ceaa18e126ffbfb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133277248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15327bfd44e01b2998dd5581876a1eb79e37a14a0546c7d31b2cc9fe7301bba3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 22:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:13:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:13:19 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:14:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:14:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:15:15 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 05 Jun 2018 22:15:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:15:24 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 05 Jun 2018 22:15:24 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:15:24 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:15:24 GMT
ENV MONGO_MAJOR=3.4
# Tue, 05 Jun 2018 22:15:24 GMT
ENV MONGO_VERSION=3.4.15
# Tue, 05 Jun 2018 22:15:25 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:16:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:16:17 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:16:17 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:16:17 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:16:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Jun 2018 22:16:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:16:18 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:16:18 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e8f2a80d9c89186a03ac435a8eede75ebff297a60bcb9556b2fdb79816f046`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1dfbce34f0e1e7e5ff7e33328b35ce357cc1952701ebd17205710e5851e82c`  
		Last Modified: Tue, 05 Jun 2018 22:19:51 GMT  
		Size: 2.4 MB (2398197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c46dfce21d0ebc111b0995e92895523f5e233bacec1d6380d77e3c6fbae9fac`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 816.8 KB (816750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108b7b81738881e2e56ae623ec0f0254f257cd15cd8c9f01ac944618d54cd51`  
		Last Modified: Tue, 05 Jun 2018 22:19:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e128f93d7c917f3babbb413c882973244aa60ace6a8183a3d1361b537679e916`  
		Last Modified: Tue, 05 Jun 2018 22:20:30 GMT  
		Size: 2.0 KB (2001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:353452718ede2c21b72975fe8e0594abbf80ac14774437230dd8b4bc7af21997`  
		Last Modified: Tue, 05 Jun 2018 22:20:27 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d927887130a65c544de6eacc753fea2f09b349c8f9eb6e62a07614c6ce639e4`  
		Last Modified: Tue, 05 Jun 2018 22:21:04 GMT  
		Size: 99.9 MB (99926735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:584fcafa284988d634e665b322be823c9b7c00f2f58dd6bfc78730030aa36b27`  
		Last Modified: Tue, 05 Jun 2018 22:20:27 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3494dccc8d5254fb46040b4a720d5dba7aeb759592cf7778328664644d0d66`  
		Last Modified: Tue, 05 Jun 2018 22:20:29 GMT  
		Size: 3.6 KB (3571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247676053c2b4657e67ecde09594692e26014a4692a3ed374b3c6a0931f04eab`  
		Last Modified: Tue, 05 Jun 2018 22:20:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.15`

```console
$ docker pull mongo@sha256:ff87ac287357285064a2db5e97e483bb7a6db07c20e25afe1d4800a4e151d975
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4.15` - linux; amd64

```console
$ docker pull mongo@sha256:537a4262f98b7a10563fd7d12f938681d487b606045c15b17ceaa18e126ffbfb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133277248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15327bfd44e01b2998dd5581876a1eb79e37a14a0546c7d31b2cc9fe7301bba3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 22:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:13:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:13:19 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:14:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:14:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:15:15 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 05 Jun 2018 22:15:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:15:24 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 05 Jun 2018 22:15:24 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:15:24 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:15:24 GMT
ENV MONGO_MAJOR=3.4
# Tue, 05 Jun 2018 22:15:24 GMT
ENV MONGO_VERSION=3.4.15
# Tue, 05 Jun 2018 22:15:25 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:16:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:16:17 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:16:17 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:16:17 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:16:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Jun 2018 22:16:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:16:18 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:16:18 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e8f2a80d9c89186a03ac435a8eede75ebff297a60bcb9556b2fdb79816f046`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1dfbce34f0e1e7e5ff7e33328b35ce357cc1952701ebd17205710e5851e82c`  
		Last Modified: Tue, 05 Jun 2018 22:19:51 GMT  
		Size: 2.4 MB (2398197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c46dfce21d0ebc111b0995e92895523f5e233bacec1d6380d77e3c6fbae9fac`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 816.8 KB (816750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108b7b81738881e2e56ae623ec0f0254f257cd15cd8c9f01ac944618d54cd51`  
		Last Modified: Tue, 05 Jun 2018 22:19:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e128f93d7c917f3babbb413c882973244aa60ace6a8183a3d1361b537679e916`  
		Last Modified: Tue, 05 Jun 2018 22:20:30 GMT  
		Size: 2.0 KB (2001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:353452718ede2c21b72975fe8e0594abbf80ac14774437230dd8b4bc7af21997`  
		Last Modified: Tue, 05 Jun 2018 22:20:27 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d927887130a65c544de6eacc753fea2f09b349c8f9eb6e62a07614c6ce639e4`  
		Last Modified: Tue, 05 Jun 2018 22:21:04 GMT  
		Size: 99.9 MB (99926735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:584fcafa284988d634e665b322be823c9b7c00f2f58dd6bfc78730030aa36b27`  
		Last Modified: Tue, 05 Jun 2018 22:20:27 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3494dccc8d5254fb46040b4a720d5dba7aeb759592cf7778328664644d0d66`  
		Last Modified: Tue, 05 Jun 2018 22:20:29 GMT  
		Size: 3.6 KB (3571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247676053c2b4657e67ecde09594692e26014a4692a3ed374b3c6a0931f04eab`  
		Last Modified: Tue, 05 Jun 2018 22:20:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.15-jessie`

```console
$ docker pull mongo@sha256:ff87ac287357285064a2db5e97e483bb7a6db07c20e25afe1d4800a4e151d975
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4.15-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:537a4262f98b7a10563fd7d12f938681d487b606045c15b17ceaa18e126ffbfb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133277248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15327bfd44e01b2998dd5581876a1eb79e37a14a0546c7d31b2cc9fe7301bba3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 22:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:13:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:13:19 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:14:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:14:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:15:15 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 05 Jun 2018 22:15:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:15:24 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 05 Jun 2018 22:15:24 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:15:24 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:15:24 GMT
ENV MONGO_MAJOR=3.4
# Tue, 05 Jun 2018 22:15:24 GMT
ENV MONGO_VERSION=3.4.15
# Tue, 05 Jun 2018 22:15:25 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:16:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:16:17 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:16:17 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:16:17 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:16:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Jun 2018 22:16:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:16:18 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:16:18 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e8f2a80d9c89186a03ac435a8eede75ebff297a60bcb9556b2fdb79816f046`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1dfbce34f0e1e7e5ff7e33328b35ce357cc1952701ebd17205710e5851e82c`  
		Last Modified: Tue, 05 Jun 2018 22:19:51 GMT  
		Size: 2.4 MB (2398197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c46dfce21d0ebc111b0995e92895523f5e233bacec1d6380d77e3c6fbae9fac`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 816.8 KB (816750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108b7b81738881e2e56ae623ec0f0254f257cd15cd8c9f01ac944618d54cd51`  
		Last Modified: Tue, 05 Jun 2018 22:19:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e128f93d7c917f3babbb413c882973244aa60ace6a8183a3d1361b537679e916`  
		Last Modified: Tue, 05 Jun 2018 22:20:30 GMT  
		Size: 2.0 KB (2001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:353452718ede2c21b72975fe8e0594abbf80ac14774437230dd8b4bc7af21997`  
		Last Modified: Tue, 05 Jun 2018 22:20:27 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d927887130a65c544de6eacc753fea2f09b349c8f9eb6e62a07614c6ce639e4`  
		Last Modified: Tue, 05 Jun 2018 22:21:04 GMT  
		Size: 99.9 MB (99926735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:584fcafa284988d634e665b322be823c9b7c00f2f58dd6bfc78730030aa36b27`  
		Last Modified: Tue, 05 Jun 2018 22:20:27 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3494dccc8d5254fb46040b4a720d5dba7aeb759592cf7778328664644d0d66`  
		Last Modified: Tue, 05 Jun 2018 22:20:29 GMT  
		Size: 3.6 KB (3571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247676053c2b4657e67ecde09594692e26014a4692a3ed374b3c6a0931f04eab`  
		Last Modified: Tue, 05 Jun 2018 22:20:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-jessie`

```console
$ docker pull mongo@sha256:ff87ac287357285064a2db5e97e483bb7a6db07c20e25afe1d4800a4e151d975
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:537a4262f98b7a10563fd7d12f938681d487b606045c15b17ceaa18e126ffbfb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133277248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15327bfd44e01b2998dd5581876a1eb79e37a14a0546c7d31b2cc9fe7301bba3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 22:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:13:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:13:19 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:14:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:14:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:15:15 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 05 Jun 2018 22:15:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:15:24 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 05 Jun 2018 22:15:24 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:15:24 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:15:24 GMT
ENV MONGO_MAJOR=3.4
# Tue, 05 Jun 2018 22:15:24 GMT
ENV MONGO_VERSION=3.4.15
# Tue, 05 Jun 2018 22:15:25 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:16:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:16:17 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:16:17 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:16:17 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:16:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Jun 2018 22:16:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:16:18 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:16:18 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e8f2a80d9c89186a03ac435a8eede75ebff297a60bcb9556b2fdb79816f046`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1dfbce34f0e1e7e5ff7e33328b35ce357cc1952701ebd17205710e5851e82c`  
		Last Modified: Tue, 05 Jun 2018 22:19:51 GMT  
		Size: 2.4 MB (2398197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c46dfce21d0ebc111b0995e92895523f5e233bacec1d6380d77e3c6fbae9fac`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 816.8 KB (816750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108b7b81738881e2e56ae623ec0f0254f257cd15cd8c9f01ac944618d54cd51`  
		Last Modified: Tue, 05 Jun 2018 22:19:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e128f93d7c917f3babbb413c882973244aa60ace6a8183a3d1361b537679e916`  
		Last Modified: Tue, 05 Jun 2018 22:20:30 GMT  
		Size: 2.0 KB (2001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:353452718ede2c21b72975fe8e0594abbf80ac14774437230dd8b4bc7af21997`  
		Last Modified: Tue, 05 Jun 2018 22:20:27 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d927887130a65c544de6eacc753fea2f09b349c8f9eb6e62a07614c6ce639e4`  
		Last Modified: Tue, 05 Jun 2018 22:21:04 GMT  
		Size: 99.9 MB (99926735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:584fcafa284988d634e665b322be823c9b7c00f2f58dd6bfc78730030aa36b27`  
		Last Modified: Tue, 05 Jun 2018 22:20:27 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3494dccc8d5254fb46040b4a720d5dba7aeb759592cf7778328664644d0d66`  
		Last Modified: Tue, 05 Jun 2018 22:20:29 GMT  
		Size: 3.6 KB (3571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247676053c2b4657e67ecde09594692e26014a4692a3ed374b3c6a0931f04eab`  
		Last Modified: Tue, 05 Jun 2018 22:20:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6`

```console
$ docker pull mongo@sha256:3a09cd85fb4e76f1d5832f9ea1d4e7481f76e807389b7d8ea6ac4d4ba96f83e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6` - linux; amd64

```console
$ docker pull mongo@sha256:11f39eac4a3036f8e13076603ebd601de93e52a9814fc681ece4ab90ec3ad697
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132043875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f1a6e84e0012a52c1a176619256c3f0222591b78a266188f9fc983a383b64a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 22:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:13:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:13:19 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:14:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:14:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:16:23 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 05 Jun 2018 22:16:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:16:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 05 Jun 2018 22:16:33 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:16:33 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:16:33 GMT
ENV MONGO_MAJOR=3.6
# Tue, 05 Jun 2018 22:16:34 GMT
ENV MONGO_VERSION=3.6.5
# Tue, 05 Jun 2018 22:16:34 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:17:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:17:35 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:17:35 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:17:35 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:17:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:17:35 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:17:36 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e8f2a80d9c89186a03ac435a8eede75ebff297a60bcb9556b2fdb79816f046`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1dfbce34f0e1e7e5ff7e33328b35ce357cc1952701ebd17205710e5851e82c`  
		Last Modified: Tue, 05 Jun 2018 22:19:51 GMT  
		Size: 2.4 MB (2398197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c46dfce21d0ebc111b0995e92895523f5e233bacec1d6380d77e3c6fbae9fac`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 816.8 KB (816750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108b7b81738881e2e56ae623ec0f0254f257cd15cd8c9f01ac944618d54cd51`  
		Last Modified: Tue, 05 Jun 2018 22:19:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96cba0bb653f05be2d10994895de9acf8377accd7af072a70c571f2a3e750f5`  
		Last Modified: Tue, 05 Jun 2018 22:21:19 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11707d2d22ace16bc53c6f4f0d30381c757ea39c3dfdc35735041924940e822b`  
		Last Modified: Tue, 05 Jun 2018 22:21:19 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8c0aaadd20eea960f6d7b6a27c4480bc5054d651530029fcfc9e87c2806a8d`  
		Last Modified: Tue, 05 Jun 2018 22:21:56 GMT  
		Size: 98.7 MB (98693902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c7bba6fd7dddccef9233297e21476a90fdc8af0d056143eeb23219731e5ef5`  
		Last Modified: Tue, 05 Jun 2018 22:21:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f745addabe84c0a69cd9cc5928b6b5c8c69e309a958cd2b3ea82d35bfe2bdcc`  
		Last Modified: Tue, 05 Jun 2018 22:21:19 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.5`

```console
$ docker pull mongo@sha256:3a09cd85fb4e76f1d5832f9ea1d4e7481f76e807389b7d8ea6ac4d4ba96f83e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6.5` - linux; amd64

```console
$ docker pull mongo@sha256:11f39eac4a3036f8e13076603ebd601de93e52a9814fc681ece4ab90ec3ad697
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132043875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f1a6e84e0012a52c1a176619256c3f0222591b78a266188f9fc983a383b64a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 22:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:13:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:13:19 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:14:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:14:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:16:23 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 05 Jun 2018 22:16:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:16:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 05 Jun 2018 22:16:33 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:16:33 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:16:33 GMT
ENV MONGO_MAJOR=3.6
# Tue, 05 Jun 2018 22:16:34 GMT
ENV MONGO_VERSION=3.6.5
# Tue, 05 Jun 2018 22:16:34 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:17:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:17:35 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:17:35 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:17:35 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:17:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:17:35 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:17:36 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e8f2a80d9c89186a03ac435a8eede75ebff297a60bcb9556b2fdb79816f046`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1dfbce34f0e1e7e5ff7e33328b35ce357cc1952701ebd17205710e5851e82c`  
		Last Modified: Tue, 05 Jun 2018 22:19:51 GMT  
		Size: 2.4 MB (2398197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c46dfce21d0ebc111b0995e92895523f5e233bacec1d6380d77e3c6fbae9fac`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 816.8 KB (816750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108b7b81738881e2e56ae623ec0f0254f257cd15cd8c9f01ac944618d54cd51`  
		Last Modified: Tue, 05 Jun 2018 22:19:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96cba0bb653f05be2d10994895de9acf8377accd7af072a70c571f2a3e750f5`  
		Last Modified: Tue, 05 Jun 2018 22:21:19 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11707d2d22ace16bc53c6f4f0d30381c757ea39c3dfdc35735041924940e822b`  
		Last Modified: Tue, 05 Jun 2018 22:21:19 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8c0aaadd20eea960f6d7b6a27c4480bc5054d651530029fcfc9e87c2806a8d`  
		Last Modified: Tue, 05 Jun 2018 22:21:56 GMT  
		Size: 98.7 MB (98693902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c7bba6fd7dddccef9233297e21476a90fdc8af0d056143eeb23219731e5ef5`  
		Last Modified: Tue, 05 Jun 2018 22:21:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f745addabe84c0a69cd9cc5928b6b5c8c69e309a958cd2b3ea82d35bfe2bdcc`  
		Last Modified: Tue, 05 Jun 2018 22:21:19 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.5-jessie`

```console
$ docker pull mongo@sha256:3a09cd85fb4e76f1d5832f9ea1d4e7481f76e807389b7d8ea6ac4d4ba96f83e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6.5-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:11f39eac4a3036f8e13076603ebd601de93e52a9814fc681ece4ab90ec3ad697
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132043875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f1a6e84e0012a52c1a176619256c3f0222591b78a266188f9fc983a383b64a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 22:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:13:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:13:19 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:14:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:14:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:16:23 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 05 Jun 2018 22:16:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:16:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 05 Jun 2018 22:16:33 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:16:33 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:16:33 GMT
ENV MONGO_MAJOR=3.6
# Tue, 05 Jun 2018 22:16:34 GMT
ENV MONGO_VERSION=3.6.5
# Tue, 05 Jun 2018 22:16:34 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:17:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:17:35 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:17:35 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:17:35 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:17:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:17:35 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:17:36 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e8f2a80d9c89186a03ac435a8eede75ebff297a60bcb9556b2fdb79816f046`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1dfbce34f0e1e7e5ff7e33328b35ce357cc1952701ebd17205710e5851e82c`  
		Last Modified: Tue, 05 Jun 2018 22:19:51 GMT  
		Size: 2.4 MB (2398197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c46dfce21d0ebc111b0995e92895523f5e233bacec1d6380d77e3c6fbae9fac`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 816.8 KB (816750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108b7b81738881e2e56ae623ec0f0254f257cd15cd8c9f01ac944618d54cd51`  
		Last Modified: Tue, 05 Jun 2018 22:19:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96cba0bb653f05be2d10994895de9acf8377accd7af072a70c571f2a3e750f5`  
		Last Modified: Tue, 05 Jun 2018 22:21:19 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11707d2d22ace16bc53c6f4f0d30381c757ea39c3dfdc35735041924940e822b`  
		Last Modified: Tue, 05 Jun 2018 22:21:19 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8c0aaadd20eea960f6d7b6a27c4480bc5054d651530029fcfc9e87c2806a8d`  
		Last Modified: Tue, 05 Jun 2018 22:21:56 GMT  
		Size: 98.7 MB (98693902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c7bba6fd7dddccef9233297e21476a90fdc8af0d056143eeb23219731e5ef5`  
		Last Modified: Tue, 05 Jun 2018 22:21:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f745addabe84c0a69cd9cc5928b6b5c8c69e309a958cd2b3ea82d35bfe2bdcc`  
		Last Modified: Tue, 05 Jun 2018 22:21:19 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6-jessie`

```console
$ docker pull mongo@sha256:3a09cd85fb4e76f1d5832f9ea1d4e7481f76e807389b7d8ea6ac4d4ba96f83e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:11f39eac4a3036f8e13076603ebd601de93e52a9814fc681ece4ab90ec3ad697
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132043875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f1a6e84e0012a52c1a176619256c3f0222591b78a266188f9fc983a383b64a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 22:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:13:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:13:19 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:14:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:14:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:16:23 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 05 Jun 2018 22:16:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:16:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 05 Jun 2018 22:16:33 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:16:33 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:16:33 GMT
ENV MONGO_MAJOR=3.6
# Tue, 05 Jun 2018 22:16:34 GMT
ENV MONGO_VERSION=3.6.5
# Tue, 05 Jun 2018 22:16:34 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:17:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:17:35 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:17:35 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:17:35 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:17:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:17:35 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:17:36 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e8f2a80d9c89186a03ac435a8eede75ebff297a60bcb9556b2fdb79816f046`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1dfbce34f0e1e7e5ff7e33328b35ce357cc1952701ebd17205710e5851e82c`  
		Last Modified: Tue, 05 Jun 2018 22:19:51 GMT  
		Size: 2.4 MB (2398197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c46dfce21d0ebc111b0995e92895523f5e233bacec1d6380d77e3c6fbae9fac`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 816.8 KB (816750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108b7b81738881e2e56ae623ec0f0254f257cd15cd8c9f01ac944618d54cd51`  
		Last Modified: Tue, 05 Jun 2018 22:19:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96cba0bb653f05be2d10994895de9acf8377accd7af072a70c571f2a3e750f5`  
		Last Modified: Tue, 05 Jun 2018 22:21:19 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11707d2d22ace16bc53c6f4f0d30381c757ea39c3dfdc35735041924940e822b`  
		Last Modified: Tue, 05 Jun 2018 22:21:19 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8c0aaadd20eea960f6d7b6a27c4480bc5054d651530029fcfc9e87c2806a8d`  
		Last Modified: Tue, 05 Jun 2018 22:21:56 GMT  
		Size: 98.7 MB (98693902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c7bba6fd7dddccef9233297e21476a90fdc8af0d056143eeb23219731e5ef5`  
		Last Modified: Tue, 05 Jun 2018 22:21:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f745addabe84c0a69cd9cc5928b6b5c8c69e309a958cd2b3ea82d35bfe2bdcc`  
		Last Modified: Tue, 05 Jun 2018 22:21:19 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7`

```console
$ docker pull mongo@sha256:447c1d369ee3354a76bdeabb54cdd6d4a1585364f0f98a03d49e4a29b866d906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:3.7` - linux; amd64

```console
$ docker pull mongo@sha256:759c41f4aad2deb917101eb73efaf02655c9342ca225b82bacf5229e352f06f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131694527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5651314706c29278eb8085b198f9b75f563a1d324feb77a11213ee12750442ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 22:17:46 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:18:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:18:03 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:18:03 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:18:14 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:18:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:18:15 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Tue, 05 Jun 2018 22:18:16 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:18:16 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Tue, 05 Jun 2018 22:18:16 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:16 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:16 GMT
ENV MONGO_MAJOR=3.7
# Tue, 05 Jun 2018 22:18:17 GMT
ENV MONGO_VERSION=3.7.9
# Tue, 05 Jun 2018 22:18:17 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:18:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:18:46 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:18:46 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:18:46 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:18:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:18:47 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:18:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81ef705874ba41139fb9e3e738890926d3b288a7bcb95ad4a221dca803bee64`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03aae48954c67da71e6660e9e9a7d998f1091136f2a9fbb12ff1cd2b1007025`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 2.9 MB (2946140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f5018fd172c8d359b998fb99d68bea25ebac4863591020c4a140bdf6d3dda8`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 750.9 KB (750919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a113ac70b9a14fa4f056d53b06fef4996af9097c8ab7e7e73d8511c79b6e6b3`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82aae640fd2f461e965ccf94e7ff01fd3a796f9513795fcf8be87967032c67d9`  
		Last Modified: Tue, 05 Jun 2018 22:22:18 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bdb06e04e5dcc8ee82ecbd5b2370c412f3e9c6a9ffeec88711c635a937e55b`  
		Last Modified: Tue, 05 Jun 2018 22:22:19 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d669c5dd47be812991675aefb6433f123c67e141b3ff125f82663f8ff0c940a9`  
		Last Modified: Tue, 05 Jun 2018 22:22:50 GMT  
		Size: 84.9 MB (84864886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb7e45d2127c3fc7cec060d78a04585d1cc8ce05a7c0457220c5d32a7526332`  
		Last Modified: Tue, 05 Jun 2018 22:22:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8acaf5636ee25a3bc09dc5b1cf68901dea50bbefe08f54659e0d4a46346bad`  
		Last Modified: Tue, 05 Jun 2018 22:22:19 GMT  
		Size: 3.7 KB (3708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.7` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:ef3d6887d2892566babea7d2617e6a105377f30bd7ff971d5e235ecaa9024184
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151829675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afbdd93dbb7dbf56640097d84dcfaeae205fa38e98b958df6cce6c0d75b0165a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 01 May 2018 01:12:52 GMT
ADD file:fef3655a03a1c7f1533148016797b982955b3d5556f32c777214b8426028509b in / 
# Tue, 01 May 2018 01:12:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 01 May 2018 01:13:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 01:13:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 01 May 2018 01:13:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 01 May 2018 01:13:20 GMT
CMD ["/bin/bash"]
# Fri, 25 May 2018 08:40:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 25 May 2018 08:40:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 08:40:29 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 08:40:30 GMT
ENV JSYAML_VERSION=3.10.0
# Fri, 25 May 2018 08:40:50 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Fri, 25 May 2018 08:40:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 25 May 2018 08:40:53 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Fri, 25 May 2018 08:40:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 25 May 2018 08:40:55 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Fri, 25 May 2018 08:40:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:40:56 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:40:57 GMT
ENV MONGO_MAJOR=3.7
# Fri, 25 May 2018 08:40:58 GMT
ENV MONGO_VERSION=3.7.9
# Fri, 25 May 2018 08:40:59 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 25 May 2018 08:42:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 25 May 2018 08:42:16 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 25 May 2018 08:42:17 GMT
VOLUME [/data/db /data/configdb]
# Fri, 25 May 2018 08:42:19 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Fri, 25 May 2018 08:42:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 08:42:20 GMT
EXPOSE 27017/tcp
# Fri, 25 May 2018 08:42:21 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:83c016a9a148a71d05469a3994d54eb7eb9c3d40a65e07bf68788018a71d951b`  
		Last Modified: Mon, 23 Apr 2018 14:56:07 GMT  
		Size: 39.2 MB (39223827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a1976297de94ed1f5c4c0f13b0b25199c6d6ca003ddfc3e873938aa2f8e86b`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167d83417bbef32ed4713f4224bcb9f9573597ee6d91174dc7403ce457f145d2`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2544c5c45beca34c948aca9c981d56b587a973354727e4c97dc99d88227fb6a`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb92ef1d410a96b276ec1425b000d80d5c1d914688aae8bce3e6f20d8a5a7a5f`  
		Last Modified: Tue, 01 May 2018 01:17:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55133372d30b5944da324c510c56a654de356b4e50a127fcffb7beb74c1e0da7`  
		Last Modified: Fri, 25 May 2018 08:45:02 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70081c1c602ffca6670e61e1b7452b02b1e74bed8f4e68074f4ac921de5d6f0e`  
		Last Modified: Fri, 25 May 2018 08:45:03 GMT  
		Size: 2.5 MB (2475007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4003ba073adbd4c4c25a0dbcff1d4094a220a088a69810b784ea59e8932a59ec`  
		Last Modified: Fri, 25 May 2018 08:45:01 GMT  
		Size: 717.9 KB (717880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08920d2e7cf333d5a15d9325cd13ff6864e8863c26ae0327244cf9bea134875`  
		Last Modified: Fri, 25 May 2018 08:45:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0806db873e5ef926a633bf7a002438d62483db4fe042ab13ecc0fefd9b8a8549`  
		Last Modified: Fri, 25 May 2018 08:44:58 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f21708b986047de70d3fbaefd764cc432b35dcd2922aeeef9ad80e6739e8371`  
		Last Modified: Fri, 25 May 2018 08:44:58 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b05d35e137e861e45e8982b93ba5deaacf0984bb2652809eec8e4bd1afc67a1`  
		Last Modified: Fri, 25 May 2018 08:46:16 GMT  
		Size: 109.4 MB (109402835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d756010910ce09eed246c680a96ba5ad52b6ef4725b9b9e96b34acfa2050e9a8`  
		Last Modified: Fri, 25 May 2018 08:44:58 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120904c0111ef92825d312f3114d97e39391ecf654ad0ac9460c5adb3e6aea35`  
		Last Modified: Fri, 25 May 2018 08:44:58 GMT  
		Size: 3.7 KB (3711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7.9`

```console
$ docker pull mongo@sha256:447c1d369ee3354a76bdeabb54cdd6d4a1585364f0f98a03d49e4a29b866d906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:3.7.9` - linux; amd64

```console
$ docker pull mongo@sha256:759c41f4aad2deb917101eb73efaf02655c9342ca225b82bacf5229e352f06f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131694527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5651314706c29278eb8085b198f9b75f563a1d324feb77a11213ee12750442ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 22:17:46 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:18:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:18:03 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:18:03 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:18:14 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:18:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:18:15 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Tue, 05 Jun 2018 22:18:16 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:18:16 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Tue, 05 Jun 2018 22:18:16 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:16 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:16 GMT
ENV MONGO_MAJOR=3.7
# Tue, 05 Jun 2018 22:18:17 GMT
ENV MONGO_VERSION=3.7.9
# Tue, 05 Jun 2018 22:18:17 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:18:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:18:46 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:18:46 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:18:46 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:18:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:18:47 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:18:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81ef705874ba41139fb9e3e738890926d3b288a7bcb95ad4a221dca803bee64`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03aae48954c67da71e6660e9e9a7d998f1091136f2a9fbb12ff1cd2b1007025`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 2.9 MB (2946140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f5018fd172c8d359b998fb99d68bea25ebac4863591020c4a140bdf6d3dda8`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 750.9 KB (750919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a113ac70b9a14fa4f056d53b06fef4996af9097c8ab7e7e73d8511c79b6e6b3`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82aae640fd2f461e965ccf94e7ff01fd3a796f9513795fcf8be87967032c67d9`  
		Last Modified: Tue, 05 Jun 2018 22:22:18 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bdb06e04e5dcc8ee82ecbd5b2370c412f3e9c6a9ffeec88711c635a937e55b`  
		Last Modified: Tue, 05 Jun 2018 22:22:19 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d669c5dd47be812991675aefb6433f123c67e141b3ff125f82663f8ff0c940a9`  
		Last Modified: Tue, 05 Jun 2018 22:22:50 GMT  
		Size: 84.9 MB (84864886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb7e45d2127c3fc7cec060d78a04585d1cc8ce05a7c0457220c5d32a7526332`  
		Last Modified: Tue, 05 Jun 2018 22:22:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8acaf5636ee25a3bc09dc5b1cf68901dea50bbefe08f54659e0d4a46346bad`  
		Last Modified: Tue, 05 Jun 2018 22:22:19 GMT  
		Size: 3.7 KB (3708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.7.9` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:ef3d6887d2892566babea7d2617e6a105377f30bd7ff971d5e235ecaa9024184
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151829675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afbdd93dbb7dbf56640097d84dcfaeae205fa38e98b958df6cce6c0d75b0165a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 01 May 2018 01:12:52 GMT
ADD file:fef3655a03a1c7f1533148016797b982955b3d5556f32c777214b8426028509b in / 
# Tue, 01 May 2018 01:12:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 01 May 2018 01:13:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 01:13:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 01 May 2018 01:13:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 01 May 2018 01:13:20 GMT
CMD ["/bin/bash"]
# Fri, 25 May 2018 08:40:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 25 May 2018 08:40:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 08:40:29 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 08:40:30 GMT
ENV JSYAML_VERSION=3.10.0
# Fri, 25 May 2018 08:40:50 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Fri, 25 May 2018 08:40:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 25 May 2018 08:40:53 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Fri, 25 May 2018 08:40:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 25 May 2018 08:40:55 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Fri, 25 May 2018 08:40:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:40:56 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:40:57 GMT
ENV MONGO_MAJOR=3.7
# Fri, 25 May 2018 08:40:58 GMT
ENV MONGO_VERSION=3.7.9
# Fri, 25 May 2018 08:40:59 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 25 May 2018 08:42:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 25 May 2018 08:42:16 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 25 May 2018 08:42:17 GMT
VOLUME [/data/db /data/configdb]
# Fri, 25 May 2018 08:42:19 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Fri, 25 May 2018 08:42:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 08:42:20 GMT
EXPOSE 27017/tcp
# Fri, 25 May 2018 08:42:21 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:83c016a9a148a71d05469a3994d54eb7eb9c3d40a65e07bf68788018a71d951b`  
		Last Modified: Mon, 23 Apr 2018 14:56:07 GMT  
		Size: 39.2 MB (39223827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a1976297de94ed1f5c4c0f13b0b25199c6d6ca003ddfc3e873938aa2f8e86b`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167d83417bbef32ed4713f4224bcb9f9573597ee6d91174dc7403ce457f145d2`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2544c5c45beca34c948aca9c981d56b587a973354727e4c97dc99d88227fb6a`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb92ef1d410a96b276ec1425b000d80d5c1d914688aae8bce3e6f20d8a5a7a5f`  
		Last Modified: Tue, 01 May 2018 01:17:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55133372d30b5944da324c510c56a654de356b4e50a127fcffb7beb74c1e0da7`  
		Last Modified: Fri, 25 May 2018 08:45:02 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70081c1c602ffca6670e61e1b7452b02b1e74bed8f4e68074f4ac921de5d6f0e`  
		Last Modified: Fri, 25 May 2018 08:45:03 GMT  
		Size: 2.5 MB (2475007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4003ba073adbd4c4c25a0dbcff1d4094a220a088a69810b784ea59e8932a59ec`  
		Last Modified: Fri, 25 May 2018 08:45:01 GMT  
		Size: 717.9 KB (717880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08920d2e7cf333d5a15d9325cd13ff6864e8863c26ae0327244cf9bea134875`  
		Last Modified: Fri, 25 May 2018 08:45:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0806db873e5ef926a633bf7a002438d62483db4fe042ab13ecc0fefd9b8a8549`  
		Last Modified: Fri, 25 May 2018 08:44:58 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f21708b986047de70d3fbaefd764cc432b35dcd2922aeeef9ad80e6739e8371`  
		Last Modified: Fri, 25 May 2018 08:44:58 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b05d35e137e861e45e8982b93ba5deaacf0984bb2652809eec8e4bd1afc67a1`  
		Last Modified: Fri, 25 May 2018 08:46:16 GMT  
		Size: 109.4 MB (109402835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d756010910ce09eed246c680a96ba5ad52b6ef4725b9b9e96b34acfa2050e9a8`  
		Last Modified: Fri, 25 May 2018 08:44:58 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120904c0111ef92825d312f3114d97e39391ecf654ad0ac9460c5adb3e6aea35`  
		Last Modified: Fri, 25 May 2018 08:44:58 GMT  
		Size: 3.7 KB (3711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7.9-xenial`

```console
$ docker pull mongo@sha256:447c1d369ee3354a76bdeabb54cdd6d4a1585364f0f98a03d49e4a29b866d906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:3.7.9-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:759c41f4aad2deb917101eb73efaf02655c9342ca225b82bacf5229e352f06f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131694527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5651314706c29278eb8085b198f9b75f563a1d324feb77a11213ee12750442ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 22:17:46 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:18:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:18:03 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:18:03 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:18:14 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:18:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:18:15 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Tue, 05 Jun 2018 22:18:16 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:18:16 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Tue, 05 Jun 2018 22:18:16 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:16 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:16 GMT
ENV MONGO_MAJOR=3.7
# Tue, 05 Jun 2018 22:18:17 GMT
ENV MONGO_VERSION=3.7.9
# Tue, 05 Jun 2018 22:18:17 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:18:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:18:46 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:18:46 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:18:46 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:18:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:18:47 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:18:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81ef705874ba41139fb9e3e738890926d3b288a7bcb95ad4a221dca803bee64`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03aae48954c67da71e6660e9e9a7d998f1091136f2a9fbb12ff1cd2b1007025`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 2.9 MB (2946140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f5018fd172c8d359b998fb99d68bea25ebac4863591020c4a140bdf6d3dda8`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 750.9 KB (750919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a113ac70b9a14fa4f056d53b06fef4996af9097c8ab7e7e73d8511c79b6e6b3`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82aae640fd2f461e965ccf94e7ff01fd3a796f9513795fcf8be87967032c67d9`  
		Last Modified: Tue, 05 Jun 2018 22:22:18 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bdb06e04e5dcc8ee82ecbd5b2370c412f3e9c6a9ffeec88711c635a937e55b`  
		Last Modified: Tue, 05 Jun 2018 22:22:19 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d669c5dd47be812991675aefb6433f123c67e141b3ff125f82663f8ff0c940a9`  
		Last Modified: Tue, 05 Jun 2018 22:22:50 GMT  
		Size: 84.9 MB (84864886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb7e45d2127c3fc7cec060d78a04585d1cc8ce05a7c0457220c5d32a7526332`  
		Last Modified: Tue, 05 Jun 2018 22:22:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8acaf5636ee25a3bc09dc5b1cf68901dea50bbefe08f54659e0d4a46346bad`  
		Last Modified: Tue, 05 Jun 2018 22:22:19 GMT  
		Size: 3.7 KB (3708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.7.9-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:ef3d6887d2892566babea7d2617e6a105377f30bd7ff971d5e235ecaa9024184
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151829675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afbdd93dbb7dbf56640097d84dcfaeae205fa38e98b958df6cce6c0d75b0165a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 01 May 2018 01:12:52 GMT
ADD file:fef3655a03a1c7f1533148016797b982955b3d5556f32c777214b8426028509b in / 
# Tue, 01 May 2018 01:12:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 01 May 2018 01:13:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 01:13:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 01 May 2018 01:13:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 01 May 2018 01:13:20 GMT
CMD ["/bin/bash"]
# Fri, 25 May 2018 08:40:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 25 May 2018 08:40:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 08:40:29 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 08:40:30 GMT
ENV JSYAML_VERSION=3.10.0
# Fri, 25 May 2018 08:40:50 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Fri, 25 May 2018 08:40:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 25 May 2018 08:40:53 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Fri, 25 May 2018 08:40:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 25 May 2018 08:40:55 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Fri, 25 May 2018 08:40:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:40:56 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:40:57 GMT
ENV MONGO_MAJOR=3.7
# Fri, 25 May 2018 08:40:58 GMT
ENV MONGO_VERSION=3.7.9
# Fri, 25 May 2018 08:40:59 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 25 May 2018 08:42:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 25 May 2018 08:42:16 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 25 May 2018 08:42:17 GMT
VOLUME [/data/db /data/configdb]
# Fri, 25 May 2018 08:42:19 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Fri, 25 May 2018 08:42:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 08:42:20 GMT
EXPOSE 27017/tcp
# Fri, 25 May 2018 08:42:21 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:83c016a9a148a71d05469a3994d54eb7eb9c3d40a65e07bf68788018a71d951b`  
		Last Modified: Mon, 23 Apr 2018 14:56:07 GMT  
		Size: 39.2 MB (39223827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a1976297de94ed1f5c4c0f13b0b25199c6d6ca003ddfc3e873938aa2f8e86b`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167d83417bbef32ed4713f4224bcb9f9573597ee6d91174dc7403ce457f145d2`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2544c5c45beca34c948aca9c981d56b587a973354727e4c97dc99d88227fb6a`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb92ef1d410a96b276ec1425b000d80d5c1d914688aae8bce3e6f20d8a5a7a5f`  
		Last Modified: Tue, 01 May 2018 01:17:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55133372d30b5944da324c510c56a654de356b4e50a127fcffb7beb74c1e0da7`  
		Last Modified: Fri, 25 May 2018 08:45:02 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70081c1c602ffca6670e61e1b7452b02b1e74bed8f4e68074f4ac921de5d6f0e`  
		Last Modified: Fri, 25 May 2018 08:45:03 GMT  
		Size: 2.5 MB (2475007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4003ba073adbd4c4c25a0dbcff1d4094a220a088a69810b784ea59e8932a59ec`  
		Last Modified: Fri, 25 May 2018 08:45:01 GMT  
		Size: 717.9 KB (717880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08920d2e7cf333d5a15d9325cd13ff6864e8863c26ae0327244cf9bea134875`  
		Last Modified: Fri, 25 May 2018 08:45:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0806db873e5ef926a633bf7a002438d62483db4fe042ab13ecc0fefd9b8a8549`  
		Last Modified: Fri, 25 May 2018 08:44:58 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f21708b986047de70d3fbaefd764cc432b35dcd2922aeeef9ad80e6739e8371`  
		Last Modified: Fri, 25 May 2018 08:44:58 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b05d35e137e861e45e8982b93ba5deaacf0984bb2652809eec8e4bd1afc67a1`  
		Last Modified: Fri, 25 May 2018 08:46:16 GMT  
		Size: 109.4 MB (109402835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d756010910ce09eed246c680a96ba5ad52b6ef4725b9b9e96b34acfa2050e9a8`  
		Last Modified: Fri, 25 May 2018 08:44:58 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120904c0111ef92825d312f3114d97e39391ecf654ad0ac9460c5adb3e6aea35`  
		Last Modified: Fri, 25 May 2018 08:44:58 GMT  
		Size: 3.7 KB (3711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7-xenial`

```console
$ docker pull mongo@sha256:447c1d369ee3354a76bdeabb54cdd6d4a1585364f0f98a03d49e4a29b866d906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:3.7-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:759c41f4aad2deb917101eb73efaf02655c9342ca225b82bacf5229e352f06f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131694527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5651314706c29278eb8085b198f9b75f563a1d324feb77a11213ee12750442ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 22:17:46 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:18:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:18:03 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:18:03 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:18:14 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:18:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:18:15 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Tue, 05 Jun 2018 22:18:16 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:18:16 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Tue, 05 Jun 2018 22:18:16 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:16 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:16 GMT
ENV MONGO_MAJOR=3.7
# Tue, 05 Jun 2018 22:18:17 GMT
ENV MONGO_VERSION=3.7.9
# Tue, 05 Jun 2018 22:18:17 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:18:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:18:46 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:18:46 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:18:46 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:18:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:18:47 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:18:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81ef705874ba41139fb9e3e738890926d3b288a7bcb95ad4a221dca803bee64`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03aae48954c67da71e6660e9e9a7d998f1091136f2a9fbb12ff1cd2b1007025`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 2.9 MB (2946140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f5018fd172c8d359b998fb99d68bea25ebac4863591020c4a140bdf6d3dda8`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 750.9 KB (750919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a113ac70b9a14fa4f056d53b06fef4996af9097c8ab7e7e73d8511c79b6e6b3`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82aae640fd2f461e965ccf94e7ff01fd3a796f9513795fcf8be87967032c67d9`  
		Last Modified: Tue, 05 Jun 2018 22:22:18 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bdb06e04e5dcc8ee82ecbd5b2370c412f3e9c6a9ffeec88711c635a937e55b`  
		Last Modified: Tue, 05 Jun 2018 22:22:19 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d669c5dd47be812991675aefb6433f123c67e141b3ff125f82663f8ff0c940a9`  
		Last Modified: Tue, 05 Jun 2018 22:22:50 GMT  
		Size: 84.9 MB (84864886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb7e45d2127c3fc7cec060d78a04585d1cc8ce05a7c0457220c5d32a7526332`  
		Last Modified: Tue, 05 Jun 2018 22:22:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8acaf5636ee25a3bc09dc5b1cf68901dea50bbefe08f54659e0d4a46346bad`  
		Last Modified: Tue, 05 Jun 2018 22:22:19 GMT  
		Size: 3.7 KB (3708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:3.7-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:ef3d6887d2892566babea7d2617e6a105377f30bd7ff971d5e235ecaa9024184
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151829675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afbdd93dbb7dbf56640097d84dcfaeae205fa38e98b958df6cce6c0d75b0165a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 01 May 2018 01:12:52 GMT
ADD file:fef3655a03a1c7f1533148016797b982955b3d5556f32c777214b8426028509b in / 
# Tue, 01 May 2018 01:12:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 01 May 2018 01:13:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 01:13:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 01 May 2018 01:13:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 01 May 2018 01:13:20 GMT
CMD ["/bin/bash"]
# Fri, 25 May 2018 08:40:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 25 May 2018 08:40:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 08:40:29 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 08:40:30 GMT
ENV JSYAML_VERSION=3.10.0
# Fri, 25 May 2018 08:40:50 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Fri, 25 May 2018 08:40:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 25 May 2018 08:40:53 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Fri, 25 May 2018 08:40:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 25 May 2018 08:40:55 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Fri, 25 May 2018 08:40:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:40:56 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:40:57 GMT
ENV MONGO_MAJOR=3.7
# Fri, 25 May 2018 08:40:58 GMT
ENV MONGO_VERSION=3.7.9
# Fri, 25 May 2018 08:40:59 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 25 May 2018 08:42:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 25 May 2018 08:42:16 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 25 May 2018 08:42:17 GMT
VOLUME [/data/db /data/configdb]
# Fri, 25 May 2018 08:42:19 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Fri, 25 May 2018 08:42:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 08:42:20 GMT
EXPOSE 27017/tcp
# Fri, 25 May 2018 08:42:21 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:83c016a9a148a71d05469a3994d54eb7eb9c3d40a65e07bf68788018a71d951b`  
		Last Modified: Mon, 23 Apr 2018 14:56:07 GMT  
		Size: 39.2 MB (39223827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a1976297de94ed1f5c4c0f13b0b25199c6d6ca003ddfc3e873938aa2f8e86b`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167d83417bbef32ed4713f4224bcb9f9573597ee6d91174dc7403ce457f145d2`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2544c5c45beca34c948aca9c981d56b587a973354727e4c97dc99d88227fb6a`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb92ef1d410a96b276ec1425b000d80d5c1d914688aae8bce3e6f20d8a5a7a5f`  
		Last Modified: Tue, 01 May 2018 01:17:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55133372d30b5944da324c510c56a654de356b4e50a127fcffb7beb74c1e0da7`  
		Last Modified: Fri, 25 May 2018 08:45:02 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70081c1c602ffca6670e61e1b7452b02b1e74bed8f4e68074f4ac921de5d6f0e`  
		Last Modified: Fri, 25 May 2018 08:45:03 GMT  
		Size: 2.5 MB (2475007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4003ba073adbd4c4c25a0dbcff1d4094a220a088a69810b784ea59e8932a59ec`  
		Last Modified: Fri, 25 May 2018 08:45:01 GMT  
		Size: 717.9 KB (717880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08920d2e7cf333d5a15d9325cd13ff6864e8863c26ae0327244cf9bea134875`  
		Last Modified: Fri, 25 May 2018 08:45:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0806db873e5ef926a633bf7a002438d62483db4fe042ab13ecc0fefd9b8a8549`  
		Last Modified: Fri, 25 May 2018 08:44:58 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f21708b986047de70d3fbaefd764cc432b35dcd2922aeeef9ad80e6739e8371`  
		Last Modified: Fri, 25 May 2018 08:44:58 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b05d35e137e861e45e8982b93ba5deaacf0984bb2652809eec8e4bd1afc67a1`  
		Last Modified: Fri, 25 May 2018 08:46:16 GMT  
		Size: 109.4 MB (109402835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d756010910ce09eed246c680a96ba5ad52b6ef4725b9b9e96b34acfa2050e9a8`  
		Last Modified: Fri, 25 May 2018 08:44:58 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120904c0111ef92825d312f3114d97e39391ecf654ad0ac9460c5adb3e6aea35`  
		Last Modified: Fri, 25 May 2018 08:44:58 GMT  
		Size: 3.7 KB (3711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-jessie`

```console
$ docker pull mongo@sha256:3a09cd85fb4e76f1d5832f9ea1d4e7481f76e807389b7d8ea6ac4d4ba96f83e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:11f39eac4a3036f8e13076603ebd601de93e52a9814fc681ece4ab90ec3ad697
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132043875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f1a6e84e0012a52c1a176619256c3f0222591b78a266188f9fc983a383b64a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 22:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:13:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:13:19 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:14:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:14:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:16:23 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 05 Jun 2018 22:16:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:16:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 05 Jun 2018 22:16:33 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:16:33 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:16:33 GMT
ENV MONGO_MAJOR=3.6
# Tue, 05 Jun 2018 22:16:34 GMT
ENV MONGO_VERSION=3.6.5
# Tue, 05 Jun 2018 22:16:34 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:17:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:17:35 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:17:35 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:17:35 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:17:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:17:35 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:17:36 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e8f2a80d9c89186a03ac435a8eede75ebff297a60bcb9556b2fdb79816f046`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1dfbce34f0e1e7e5ff7e33328b35ce357cc1952701ebd17205710e5851e82c`  
		Last Modified: Tue, 05 Jun 2018 22:19:51 GMT  
		Size: 2.4 MB (2398197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c46dfce21d0ebc111b0995e92895523f5e233bacec1d6380d77e3c6fbae9fac`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 816.8 KB (816750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108b7b81738881e2e56ae623ec0f0254f257cd15cd8c9f01ac944618d54cd51`  
		Last Modified: Tue, 05 Jun 2018 22:19:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96cba0bb653f05be2d10994895de9acf8377accd7af072a70c571f2a3e750f5`  
		Last Modified: Tue, 05 Jun 2018 22:21:19 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11707d2d22ace16bc53c6f4f0d30381c757ea39c3dfdc35735041924940e822b`  
		Last Modified: Tue, 05 Jun 2018 22:21:19 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8c0aaadd20eea960f6d7b6a27c4480bc5054d651530029fcfc9e87c2806a8d`  
		Last Modified: Tue, 05 Jun 2018 22:21:56 GMT  
		Size: 98.7 MB (98693902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c7bba6fd7dddccef9233297e21476a90fdc8af0d056143eeb23219731e5ef5`  
		Last Modified: Tue, 05 Jun 2018 22:21:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f745addabe84c0a69cd9cc5928b6b5c8c69e309a958cd2b3ea82d35bfe2bdcc`  
		Last Modified: Tue, 05 Jun 2018 22:21:19 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0.0-rc0`

```console
$ docker pull mongo@sha256:6319aab346715193d1ec1cbe0c367dffca1a10fc098bf88650a3ae28040872cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:4.0.0-rc0` - linux; amd64

```console
$ docker pull mongo@sha256:cebe89a1968ec9fec65ee102cb4715ac6d191ad6db35400f55f0a582410ebaff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133194064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b37a329662497b8bec12085bd278d3685f47e25ad0b8052c6f3efb05ce6d451`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 22:17:46 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:18:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:18:03 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:18:03 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:18:14 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:18:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:18:55 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 05 Jun 2018 22:18:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:18:56 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 05 Jun 2018 22:18:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:56 GMT
ENV MONGO_MAJOR=testing
# Tue, 05 Jun 2018 22:18:56 GMT
ENV MONGO_VERSION=4.0.0~rc0
# Tue, 05 Jun 2018 22:18:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:19:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:19:32 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:19:32 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:19:32 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:19:32 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:19:33 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81ef705874ba41139fb9e3e738890926d3b288a7bcb95ad4a221dca803bee64`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03aae48954c67da71e6660e9e9a7d998f1091136f2a9fbb12ff1cd2b1007025`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 2.9 MB (2946140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f5018fd172c8d359b998fb99d68bea25ebac4863591020c4a140bdf6d3dda8`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 750.9 KB (750919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a113ac70b9a14fa4f056d53b06fef4996af9097c8ab7e7e73d8511c79b6e6b3`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5de9f6f5aca92a32077d8ea3c392759667ed649ba98c2afd35cb9009b24fdd`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdd0b89af778344ca0a118a849864ba1ffdb7ade214e39cdaaa2c8d35fb4888`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95bce0c187be379e5ac2ed8e2fb3c533a8429d9eaf83c51ea64672f5b185ec13`  
		Last Modified: Tue, 05 Jun 2018 22:23:48 GMT  
		Size: 86.4 MB (86364419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853c59a37c1830ce57625c2790371de7181d519b410eac0aee47d2c7a903b955`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96824def85a179bb2e0407f11c55f7581dc6aae2c0d56e1f91718c49ef4f8d2f`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 3.7 KB (3709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0.0-rc0` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:788bd9049eca93459222e0e0f356e15ffe3d8ad02ee8a8c118294e1bdce81862
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153203708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63a84be5d65968ab10235900084fd435fecc90fc4bd177ab45cfbdf150b190dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 01 May 2018 01:12:52 GMT
ADD file:fef3655a03a1c7f1533148016797b982955b3d5556f32c777214b8426028509b in / 
# Tue, 01 May 2018 01:12:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 01 May 2018 01:13:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 01:13:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 01 May 2018 01:13:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 01 May 2018 01:13:20 GMT
CMD ["/bin/bash"]
# Fri, 25 May 2018 08:40:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 25 May 2018 08:40:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 08:40:29 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 08:40:30 GMT
ENV JSYAML_VERSION=3.10.0
# Fri, 25 May 2018 08:40:50 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Fri, 25 May 2018 08:40:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 25 May 2018 08:42:51 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Fri, 25 May 2018 08:42:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 25 May 2018 08:42:54 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 25 May 2018 08:42:54 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:42:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:42:57 GMT
ENV MONGO_MAJOR=testing
# Fri, 25 May 2018 08:42:58 GMT
ENV MONGO_VERSION=4.0.0~rc0
# Fri, 25 May 2018 08:43:00 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 25 May 2018 08:44:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 25 May 2018 08:44:20 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 25 May 2018 08:44:21 GMT
VOLUME [/data/db /data/configdb]
# Fri, 25 May 2018 08:44:23 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Fri, 25 May 2018 08:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 08:44:26 GMT
EXPOSE 27017/tcp
# Fri, 25 May 2018 08:44:27 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:83c016a9a148a71d05469a3994d54eb7eb9c3d40a65e07bf68788018a71d951b`  
		Last Modified: Mon, 23 Apr 2018 14:56:07 GMT  
		Size: 39.2 MB (39223827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a1976297de94ed1f5c4c0f13b0b25199c6d6ca003ddfc3e873938aa2f8e86b`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167d83417bbef32ed4713f4224bcb9f9573597ee6d91174dc7403ce457f145d2`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2544c5c45beca34c948aca9c981d56b587a973354727e4c97dc99d88227fb6a`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb92ef1d410a96b276ec1425b000d80d5c1d914688aae8bce3e6f20d8a5a7a5f`  
		Last Modified: Tue, 01 May 2018 01:17:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55133372d30b5944da324c510c56a654de356b4e50a127fcffb7beb74c1e0da7`  
		Last Modified: Fri, 25 May 2018 08:45:02 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70081c1c602ffca6670e61e1b7452b02b1e74bed8f4e68074f4ac921de5d6f0e`  
		Last Modified: Fri, 25 May 2018 08:45:03 GMT  
		Size: 2.5 MB (2475007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4003ba073adbd4c4c25a0dbcff1d4094a220a088a69810b784ea59e8932a59ec`  
		Last Modified: Fri, 25 May 2018 08:45:01 GMT  
		Size: 717.9 KB (717880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08920d2e7cf333d5a15d9325cd13ff6864e8863c26ae0327244cf9bea134875`  
		Last Modified: Fri, 25 May 2018 08:45:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f1763e2454a49b74370492e8227f5f2e03602515ffdd73a1527182c47f3a74`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0693304e27ca5ebf608e88e4aa07825265894d4ff15d328787b4313296f71d`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c26cb6ff019522ea8829a40d4d1e897b5ebb897fb798fd4cc073b480b98fb6`  
		Last Modified: Fri, 25 May 2018 08:48:15 GMT  
		Size: 110.8 MB (110776876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44f56a7c163ce792aa841d56e41c6c50eb6239e42acc1cc846e5aa930929497`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c6c9c99bb5f883ee6e0fb1a4ab72e401712e3650630153ee0d2ecd6c0d72b7`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 3.7 KB (3708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0.0-rc0-xenial`

```console
$ docker pull mongo@sha256:6319aab346715193d1ec1cbe0c367dffca1a10fc098bf88650a3ae28040872cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:4.0.0-rc0-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:cebe89a1968ec9fec65ee102cb4715ac6d191ad6db35400f55f0a582410ebaff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133194064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b37a329662497b8bec12085bd278d3685f47e25ad0b8052c6f3efb05ce6d451`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 22:17:46 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:18:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:18:03 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:18:03 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:18:14 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:18:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:18:55 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 05 Jun 2018 22:18:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:18:56 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 05 Jun 2018 22:18:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:56 GMT
ENV MONGO_MAJOR=testing
# Tue, 05 Jun 2018 22:18:56 GMT
ENV MONGO_VERSION=4.0.0~rc0
# Tue, 05 Jun 2018 22:18:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:19:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:19:32 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:19:32 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:19:32 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:19:32 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:19:33 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81ef705874ba41139fb9e3e738890926d3b288a7bcb95ad4a221dca803bee64`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03aae48954c67da71e6660e9e9a7d998f1091136f2a9fbb12ff1cd2b1007025`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 2.9 MB (2946140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f5018fd172c8d359b998fb99d68bea25ebac4863591020c4a140bdf6d3dda8`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 750.9 KB (750919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a113ac70b9a14fa4f056d53b06fef4996af9097c8ab7e7e73d8511c79b6e6b3`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5de9f6f5aca92a32077d8ea3c392759667ed649ba98c2afd35cb9009b24fdd`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdd0b89af778344ca0a118a849864ba1ffdb7ade214e39cdaaa2c8d35fb4888`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95bce0c187be379e5ac2ed8e2fb3c533a8429d9eaf83c51ea64672f5b185ec13`  
		Last Modified: Tue, 05 Jun 2018 22:23:48 GMT  
		Size: 86.4 MB (86364419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853c59a37c1830ce57625c2790371de7181d519b410eac0aee47d2c7a903b955`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96824def85a179bb2e0407f11c55f7581dc6aae2c0d56e1f91718c49ef4f8d2f`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 3.7 KB (3709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0.0-rc0-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:788bd9049eca93459222e0e0f356e15ffe3d8ad02ee8a8c118294e1bdce81862
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153203708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63a84be5d65968ab10235900084fd435fecc90fc4bd177ab45cfbdf150b190dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 01 May 2018 01:12:52 GMT
ADD file:fef3655a03a1c7f1533148016797b982955b3d5556f32c777214b8426028509b in / 
# Tue, 01 May 2018 01:12:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 01 May 2018 01:13:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 01:13:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 01 May 2018 01:13:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 01 May 2018 01:13:20 GMT
CMD ["/bin/bash"]
# Fri, 25 May 2018 08:40:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 25 May 2018 08:40:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 08:40:29 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 08:40:30 GMT
ENV JSYAML_VERSION=3.10.0
# Fri, 25 May 2018 08:40:50 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Fri, 25 May 2018 08:40:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 25 May 2018 08:42:51 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Fri, 25 May 2018 08:42:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 25 May 2018 08:42:54 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 25 May 2018 08:42:54 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:42:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:42:57 GMT
ENV MONGO_MAJOR=testing
# Fri, 25 May 2018 08:42:58 GMT
ENV MONGO_VERSION=4.0.0~rc0
# Fri, 25 May 2018 08:43:00 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 25 May 2018 08:44:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 25 May 2018 08:44:20 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 25 May 2018 08:44:21 GMT
VOLUME [/data/db /data/configdb]
# Fri, 25 May 2018 08:44:23 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Fri, 25 May 2018 08:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 08:44:26 GMT
EXPOSE 27017/tcp
# Fri, 25 May 2018 08:44:27 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:83c016a9a148a71d05469a3994d54eb7eb9c3d40a65e07bf68788018a71d951b`  
		Last Modified: Mon, 23 Apr 2018 14:56:07 GMT  
		Size: 39.2 MB (39223827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a1976297de94ed1f5c4c0f13b0b25199c6d6ca003ddfc3e873938aa2f8e86b`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167d83417bbef32ed4713f4224bcb9f9573597ee6d91174dc7403ce457f145d2`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2544c5c45beca34c948aca9c981d56b587a973354727e4c97dc99d88227fb6a`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb92ef1d410a96b276ec1425b000d80d5c1d914688aae8bce3e6f20d8a5a7a5f`  
		Last Modified: Tue, 01 May 2018 01:17:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55133372d30b5944da324c510c56a654de356b4e50a127fcffb7beb74c1e0da7`  
		Last Modified: Fri, 25 May 2018 08:45:02 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70081c1c602ffca6670e61e1b7452b02b1e74bed8f4e68074f4ac921de5d6f0e`  
		Last Modified: Fri, 25 May 2018 08:45:03 GMT  
		Size: 2.5 MB (2475007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4003ba073adbd4c4c25a0dbcff1d4094a220a088a69810b784ea59e8932a59ec`  
		Last Modified: Fri, 25 May 2018 08:45:01 GMT  
		Size: 717.9 KB (717880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08920d2e7cf333d5a15d9325cd13ff6864e8863c26ae0327244cf9bea134875`  
		Last Modified: Fri, 25 May 2018 08:45:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f1763e2454a49b74370492e8227f5f2e03602515ffdd73a1527182c47f3a74`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0693304e27ca5ebf608e88e4aa07825265894d4ff15d328787b4313296f71d`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c26cb6ff019522ea8829a40d4d1e897b5ebb897fb798fd4cc073b480b98fb6`  
		Last Modified: Fri, 25 May 2018 08:48:15 GMT  
		Size: 110.8 MB (110776876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44f56a7c163ce792aa841d56e41c6c50eb6239e42acc1cc846e5aa930929497`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c6c9c99bb5f883ee6e0fb1a4ab72e401712e3650630153ee0d2ecd6c0d72b7`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 3.7 KB (3708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0-rc`

```console
$ docker pull mongo@sha256:6319aab346715193d1ec1cbe0c367dffca1a10fc098bf88650a3ae28040872cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:4.0-rc` - linux; amd64

```console
$ docker pull mongo@sha256:cebe89a1968ec9fec65ee102cb4715ac6d191ad6db35400f55f0a582410ebaff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133194064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b37a329662497b8bec12085bd278d3685f47e25ad0b8052c6f3efb05ce6d451`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 22:17:46 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:18:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:18:03 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:18:03 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:18:14 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:18:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:18:55 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 05 Jun 2018 22:18:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:18:56 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 05 Jun 2018 22:18:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:56 GMT
ENV MONGO_MAJOR=testing
# Tue, 05 Jun 2018 22:18:56 GMT
ENV MONGO_VERSION=4.0.0~rc0
# Tue, 05 Jun 2018 22:18:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:19:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:19:32 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:19:32 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:19:32 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:19:32 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:19:33 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81ef705874ba41139fb9e3e738890926d3b288a7bcb95ad4a221dca803bee64`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03aae48954c67da71e6660e9e9a7d998f1091136f2a9fbb12ff1cd2b1007025`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 2.9 MB (2946140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f5018fd172c8d359b998fb99d68bea25ebac4863591020c4a140bdf6d3dda8`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 750.9 KB (750919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a113ac70b9a14fa4f056d53b06fef4996af9097c8ab7e7e73d8511c79b6e6b3`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5de9f6f5aca92a32077d8ea3c392759667ed649ba98c2afd35cb9009b24fdd`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdd0b89af778344ca0a118a849864ba1ffdb7ade214e39cdaaa2c8d35fb4888`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95bce0c187be379e5ac2ed8e2fb3c533a8429d9eaf83c51ea64672f5b185ec13`  
		Last Modified: Tue, 05 Jun 2018 22:23:48 GMT  
		Size: 86.4 MB (86364419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853c59a37c1830ce57625c2790371de7181d519b410eac0aee47d2c7a903b955`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96824def85a179bb2e0407f11c55f7581dc6aae2c0d56e1f91718c49ef4f8d2f`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 3.7 KB (3709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0-rc` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:788bd9049eca93459222e0e0f356e15ffe3d8ad02ee8a8c118294e1bdce81862
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153203708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63a84be5d65968ab10235900084fd435fecc90fc4bd177ab45cfbdf150b190dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 01 May 2018 01:12:52 GMT
ADD file:fef3655a03a1c7f1533148016797b982955b3d5556f32c777214b8426028509b in / 
# Tue, 01 May 2018 01:12:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 01 May 2018 01:13:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 01:13:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 01 May 2018 01:13:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 01 May 2018 01:13:20 GMT
CMD ["/bin/bash"]
# Fri, 25 May 2018 08:40:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 25 May 2018 08:40:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 08:40:29 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 08:40:30 GMT
ENV JSYAML_VERSION=3.10.0
# Fri, 25 May 2018 08:40:50 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Fri, 25 May 2018 08:40:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 25 May 2018 08:42:51 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Fri, 25 May 2018 08:42:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 25 May 2018 08:42:54 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 25 May 2018 08:42:54 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:42:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:42:57 GMT
ENV MONGO_MAJOR=testing
# Fri, 25 May 2018 08:42:58 GMT
ENV MONGO_VERSION=4.0.0~rc0
# Fri, 25 May 2018 08:43:00 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 25 May 2018 08:44:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 25 May 2018 08:44:20 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 25 May 2018 08:44:21 GMT
VOLUME [/data/db /data/configdb]
# Fri, 25 May 2018 08:44:23 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Fri, 25 May 2018 08:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 08:44:26 GMT
EXPOSE 27017/tcp
# Fri, 25 May 2018 08:44:27 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:83c016a9a148a71d05469a3994d54eb7eb9c3d40a65e07bf68788018a71d951b`  
		Last Modified: Mon, 23 Apr 2018 14:56:07 GMT  
		Size: 39.2 MB (39223827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a1976297de94ed1f5c4c0f13b0b25199c6d6ca003ddfc3e873938aa2f8e86b`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167d83417bbef32ed4713f4224bcb9f9573597ee6d91174dc7403ce457f145d2`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2544c5c45beca34c948aca9c981d56b587a973354727e4c97dc99d88227fb6a`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb92ef1d410a96b276ec1425b000d80d5c1d914688aae8bce3e6f20d8a5a7a5f`  
		Last Modified: Tue, 01 May 2018 01:17:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55133372d30b5944da324c510c56a654de356b4e50a127fcffb7beb74c1e0da7`  
		Last Modified: Fri, 25 May 2018 08:45:02 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70081c1c602ffca6670e61e1b7452b02b1e74bed8f4e68074f4ac921de5d6f0e`  
		Last Modified: Fri, 25 May 2018 08:45:03 GMT  
		Size: 2.5 MB (2475007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4003ba073adbd4c4c25a0dbcff1d4094a220a088a69810b784ea59e8932a59ec`  
		Last Modified: Fri, 25 May 2018 08:45:01 GMT  
		Size: 717.9 KB (717880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08920d2e7cf333d5a15d9325cd13ff6864e8863c26ae0327244cf9bea134875`  
		Last Modified: Fri, 25 May 2018 08:45:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f1763e2454a49b74370492e8227f5f2e03602515ffdd73a1527182c47f3a74`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0693304e27ca5ebf608e88e4aa07825265894d4ff15d328787b4313296f71d`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c26cb6ff019522ea8829a40d4d1e897b5ebb897fb798fd4cc073b480b98fb6`  
		Last Modified: Fri, 25 May 2018 08:48:15 GMT  
		Size: 110.8 MB (110776876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44f56a7c163ce792aa841d56e41c6c50eb6239e42acc1cc846e5aa930929497`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c6c9c99bb5f883ee6e0fb1a4ab72e401712e3650630153ee0d2ecd6c0d72b7`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 3.7 KB (3708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0-rc-xenial`

```console
$ docker pull mongo@sha256:6319aab346715193d1ec1cbe0c367dffca1a10fc098bf88650a3ae28040872cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:4.0-rc-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:cebe89a1968ec9fec65ee102cb4715ac6d191ad6db35400f55f0a582410ebaff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133194064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b37a329662497b8bec12085bd278d3685f47e25ad0b8052c6f3efb05ce6d451`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 22:17:46 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:18:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:18:03 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:18:03 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:18:14 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:18:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:18:55 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 05 Jun 2018 22:18:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:18:56 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 05 Jun 2018 22:18:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:56 GMT
ENV MONGO_MAJOR=testing
# Tue, 05 Jun 2018 22:18:56 GMT
ENV MONGO_VERSION=4.0.0~rc0
# Tue, 05 Jun 2018 22:18:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:19:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:19:32 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:19:32 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:19:32 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:19:32 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:19:33 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81ef705874ba41139fb9e3e738890926d3b288a7bcb95ad4a221dca803bee64`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03aae48954c67da71e6660e9e9a7d998f1091136f2a9fbb12ff1cd2b1007025`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 2.9 MB (2946140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f5018fd172c8d359b998fb99d68bea25ebac4863591020c4a140bdf6d3dda8`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 750.9 KB (750919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a113ac70b9a14fa4f056d53b06fef4996af9097c8ab7e7e73d8511c79b6e6b3`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5de9f6f5aca92a32077d8ea3c392759667ed649ba98c2afd35cb9009b24fdd`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdd0b89af778344ca0a118a849864ba1ffdb7ade214e39cdaaa2c8d35fb4888`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95bce0c187be379e5ac2ed8e2fb3c533a8429d9eaf83c51ea64672f5b185ec13`  
		Last Modified: Tue, 05 Jun 2018 22:23:48 GMT  
		Size: 86.4 MB (86364419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853c59a37c1830ce57625c2790371de7181d519b410eac0aee47d2c7a903b955`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96824def85a179bb2e0407f11c55f7581dc6aae2c0d56e1f91718c49ef4f8d2f`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 3.7 KB (3709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0-rc-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:788bd9049eca93459222e0e0f356e15ffe3d8ad02ee8a8c118294e1bdce81862
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153203708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63a84be5d65968ab10235900084fd435fecc90fc4bd177ab45cfbdf150b190dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 01 May 2018 01:12:52 GMT
ADD file:fef3655a03a1c7f1533148016797b982955b3d5556f32c777214b8426028509b in / 
# Tue, 01 May 2018 01:12:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 01 May 2018 01:13:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 01:13:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 01 May 2018 01:13:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 01 May 2018 01:13:20 GMT
CMD ["/bin/bash"]
# Fri, 25 May 2018 08:40:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 25 May 2018 08:40:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 08:40:29 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 08:40:30 GMT
ENV JSYAML_VERSION=3.10.0
# Fri, 25 May 2018 08:40:50 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Fri, 25 May 2018 08:40:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 25 May 2018 08:42:51 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Fri, 25 May 2018 08:42:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 25 May 2018 08:42:54 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 25 May 2018 08:42:54 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:42:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:42:57 GMT
ENV MONGO_MAJOR=testing
# Fri, 25 May 2018 08:42:58 GMT
ENV MONGO_VERSION=4.0.0~rc0
# Fri, 25 May 2018 08:43:00 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 25 May 2018 08:44:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 25 May 2018 08:44:20 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 25 May 2018 08:44:21 GMT
VOLUME [/data/db /data/configdb]
# Fri, 25 May 2018 08:44:23 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Fri, 25 May 2018 08:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 08:44:26 GMT
EXPOSE 27017/tcp
# Fri, 25 May 2018 08:44:27 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:83c016a9a148a71d05469a3994d54eb7eb9c3d40a65e07bf68788018a71d951b`  
		Last Modified: Mon, 23 Apr 2018 14:56:07 GMT  
		Size: 39.2 MB (39223827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a1976297de94ed1f5c4c0f13b0b25199c6d6ca003ddfc3e873938aa2f8e86b`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167d83417bbef32ed4713f4224bcb9f9573597ee6d91174dc7403ce457f145d2`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2544c5c45beca34c948aca9c981d56b587a973354727e4c97dc99d88227fb6a`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb92ef1d410a96b276ec1425b000d80d5c1d914688aae8bce3e6f20d8a5a7a5f`  
		Last Modified: Tue, 01 May 2018 01:17:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55133372d30b5944da324c510c56a654de356b4e50a127fcffb7beb74c1e0da7`  
		Last Modified: Fri, 25 May 2018 08:45:02 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70081c1c602ffca6670e61e1b7452b02b1e74bed8f4e68074f4ac921de5d6f0e`  
		Last Modified: Fri, 25 May 2018 08:45:03 GMT  
		Size: 2.5 MB (2475007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4003ba073adbd4c4c25a0dbcff1d4094a220a088a69810b784ea59e8932a59ec`  
		Last Modified: Fri, 25 May 2018 08:45:01 GMT  
		Size: 717.9 KB (717880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08920d2e7cf333d5a15d9325cd13ff6864e8863c26ae0327244cf9bea134875`  
		Last Modified: Fri, 25 May 2018 08:45:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f1763e2454a49b74370492e8227f5f2e03602515ffdd73a1527182c47f3a74`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0693304e27ca5ebf608e88e4aa07825265894d4ff15d328787b4313296f71d`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c26cb6ff019522ea8829a40d4d1e897b5ebb897fb798fd4cc073b480b98fb6`  
		Last Modified: Fri, 25 May 2018 08:48:15 GMT  
		Size: 110.8 MB (110776876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44f56a7c163ce792aa841d56e41c6c50eb6239e42acc1cc846e5aa930929497`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c6c9c99bb5f883ee6e0fb1a4ab72e401712e3650630153ee0d2ecd6c0d72b7`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 3.7 KB (3708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:jessie`

```console
$ docker pull mongo@sha256:3a09cd85fb4e76f1d5832f9ea1d4e7481f76e807389b7d8ea6ac4d4ba96f83e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:jessie` - linux; amd64

```console
$ docker pull mongo@sha256:11f39eac4a3036f8e13076603ebd601de93e52a9814fc681ece4ab90ec3ad697
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132043875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f1a6e84e0012a52c1a176619256c3f0222591b78a266188f9fc983a383b64a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 22:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:13:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:13:19 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:14:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:14:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:16:23 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 05 Jun 2018 22:16:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:16:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 05 Jun 2018 22:16:33 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:16:33 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:16:33 GMT
ENV MONGO_MAJOR=3.6
# Tue, 05 Jun 2018 22:16:34 GMT
ENV MONGO_VERSION=3.6.5
# Tue, 05 Jun 2018 22:16:34 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:17:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:17:35 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:17:35 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:17:35 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:17:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:17:35 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:17:36 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e8f2a80d9c89186a03ac435a8eede75ebff297a60bcb9556b2fdb79816f046`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1dfbce34f0e1e7e5ff7e33328b35ce357cc1952701ebd17205710e5851e82c`  
		Last Modified: Tue, 05 Jun 2018 22:19:51 GMT  
		Size: 2.4 MB (2398197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c46dfce21d0ebc111b0995e92895523f5e233bacec1d6380d77e3c6fbae9fac`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 816.8 KB (816750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108b7b81738881e2e56ae623ec0f0254f257cd15cd8c9f01ac944618d54cd51`  
		Last Modified: Tue, 05 Jun 2018 22:19:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96cba0bb653f05be2d10994895de9acf8377accd7af072a70c571f2a3e750f5`  
		Last Modified: Tue, 05 Jun 2018 22:21:19 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11707d2d22ace16bc53c6f4f0d30381c757ea39c3dfdc35735041924940e822b`  
		Last Modified: Tue, 05 Jun 2018 22:21:19 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8c0aaadd20eea960f6d7b6a27c4480bc5054d651530029fcfc9e87c2806a8d`  
		Last Modified: Tue, 05 Jun 2018 22:21:56 GMT  
		Size: 98.7 MB (98693902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c7bba6fd7dddccef9233297e21476a90fdc8af0d056143eeb23219731e5ef5`  
		Last Modified: Tue, 05 Jun 2018 22:21:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f745addabe84c0a69cd9cc5928b6b5c8c69e309a958cd2b3ea82d35bfe2bdcc`  
		Last Modified: Tue, 05 Jun 2018 22:21:19 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:3a09cd85fb4e76f1d5832f9ea1d4e7481f76e807389b7d8ea6ac4d4ba96f83e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:11f39eac4a3036f8e13076603ebd601de93e52a9814fc681ece4ab90ec3ad697
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132043875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f1a6e84e0012a52c1a176619256c3f0222591b78a266188f9fc983a383b64a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 22:12:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:13:18 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:13:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:13:19 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:14:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:14:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:16:23 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 05 Jun 2018 22:16:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:16:33 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 05 Jun 2018 22:16:33 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:16:33 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:16:33 GMT
ENV MONGO_MAJOR=3.6
# Tue, 05 Jun 2018 22:16:34 GMT
ENV MONGO_VERSION=3.6.5
# Tue, 05 Jun 2018 22:16:34 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:17:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:17:35 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:17:35 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:17:35 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:17:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:17:35 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:17:36 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e8f2a80d9c89186a03ac435a8eede75ebff297a60bcb9556b2fdb79816f046`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1dfbce34f0e1e7e5ff7e33328b35ce357cc1952701ebd17205710e5851e82c`  
		Last Modified: Tue, 05 Jun 2018 22:19:51 GMT  
		Size: 2.4 MB (2398197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c46dfce21d0ebc111b0995e92895523f5e233bacec1d6380d77e3c6fbae9fac`  
		Last Modified: Tue, 05 Jun 2018 22:19:50 GMT  
		Size: 816.8 KB (816750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5108b7b81738881e2e56ae623ec0f0254f257cd15cd8c9f01ac944618d54cd51`  
		Last Modified: Tue, 05 Jun 2018 22:19:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96cba0bb653f05be2d10994895de9acf8377accd7af072a70c571f2a3e750f5`  
		Last Modified: Tue, 05 Jun 2018 22:21:19 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11707d2d22ace16bc53c6f4f0d30381c757ea39c3dfdc35735041924940e822b`  
		Last Modified: Tue, 05 Jun 2018 22:21:19 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8c0aaadd20eea960f6d7b6a27c4480bc5054d651530029fcfc9e87c2806a8d`  
		Last Modified: Tue, 05 Jun 2018 22:21:56 GMT  
		Size: 98.7 MB (98693902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c7bba6fd7dddccef9233297e21476a90fdc8af0d056143eeb23219731e5ef5`  
		Last Modified: Tue, 05 Jun 2018 22:21:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f745addabe84c0a69cd9cc5928b6b5c8c69e309a958cd2b3ea82d35bfe2bdcc`  
		Last Modified: Tue, 05 Jun 2018 22:21:19 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:rc`

```console
$ docker pull mongo@sha256:6319aab346715193d1ec1cbe0c367dffca1a10fc098bf88650a3ae28040872cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:rc` - linux; amd64

```console
$ docker pull mongo@sha256:cebe89a1968ec9fec65ee102cb4715ac6d191ad6db35400f55f0a582410ebaff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133194064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b37a329662497b8bec12085bd278d3685f47e25ad0b8052c6f3efb05ce6d451`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 22:17:46 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:18:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:18:03 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:18:03 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:18:14 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:18:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:18:55 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 05 Jun 2018 22:18:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:18:56 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 05 Jun 2018 22:18:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:56 GMT
ENV MONGO_MAJOR=testing
# Tue, 05 Jun 2018 22:18:56 GMT
ENV MONGO_VERSION=4.0.0~rc0
# Tue, 05 Jun 2018 22:18:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:19:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:19:32 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:19:32 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:19:32 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:19:32 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:19:33 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81ef705874ba41139fb9e3e738890926d3b288a7bcb95ad4a221dca803bee64`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03aae48954c67da71e6660e9e9a7d998f1091136f2a9fbb12ff1cd2b1007025`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 2.9 MB (2946140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f5018fd172c8d359b998fb99d68bea25ebac4863591020c4a140bdf6d3dda8`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 750.9 KB (750919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a113ac70b9a14fa4f056d53b06fef4996af9097c8ab7e7e73d8511c79b6e6b3`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5de9f6f5aca92a32077d8ea3c392759667ed649ba98c2afd35cb9009b24fdd`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdd0b89af778344ca0a118a849864ba1ffdb7ade214e39cdaaa2c8d35fb4888`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95bce0c187be379e5ac2ed8e2fb3c533a8429d9eaf83c51ea64672f5b185ec13`  
		Last Modified: Tue, 05 Jun 2018 22:23:48 GMT  
		Size: 86.4 MB (86364419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853c59a37c1830ce57625c2790371de7181d519b410eac0aee47d2c7a903b955`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96824def85a179bb2e0407f11c55f7581dc6aae2c0d56e1f91718c49ef4f8d2f`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 3.7 KB (3709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:rc` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:788bd9049eca93459222e0e0f356e15ffe3d8ad02ee8a8c118294e1bdce81862
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153203708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63a84be5d65968ab10235900084fd435fecc90fc4bd177ab45cfbdf150b190dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 01 May 2018 01:12:52 GMT
ADD file:fef3655a03a1c7f1533148016797b982955b3d5556f32c777214b8426028509b in / 
# Tue, 01 May 2018 01:12:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 01 May 2018 01:13:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 01:13:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 01 May 2018 01:13:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 01 May 2018 01:13:20 GMT
CMD ["/bin/bash"]
# Fri, 25 May 2018 08:40:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 25 May 2018 08:40:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 08:40:29 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 08:40:30 GMT
ENV JSYAML_VERSION=3.10.0
# Fri, 25 May 2018 08:40:50 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Fri, 25 May 2018 08:40:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 25 May 2018 08:42:51 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Fri, 25 May 2018 08:42:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 25 May 2018 08:42:54 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 25 May 2018 08:42:54 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:42:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:42:57 GMT
ENV MONGO_MAJOR=testing
# Fri, 25 May 2018 08:42:58 GMT
ENV MONGO_VERSION=4.0.0~rc0
# Fri, 25 May 2018 08:43:00 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 25 May 2018 08:44:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 25 May 2018 08:44:20 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 25 May 2018 08:44:21 GMT
VOLUME [/data/db /data/configdb]
# Fri, 25 May 2018 08:44:23 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Fri, 25 May 2018 08:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 08:44:26 GMT
EXPOSE 27017/tcp
# Fri, 25 May 2018 08:44:27 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:83c016a9a148a71d05469a3994d54eb7eb9c3d40a65e07bf68788018a71d951b`  
		Last Modified: Mon, 23 Apr 2018 14:56:07 GMT  
		Size: 39.2 MB (39223827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a1976297de94ed1f5c4c0f13b0b25199c6d6ca003ddfc3e873938aa2f8e86b`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167d83417bbef32ed4713f4224bcb9f9573597ee6d91174dc7403ce457f145d2`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2544c5c45beca34c948aca9c981d56b587a973354727e4c97dc99d88227fb6a`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb92ef1d410a96b276ec1425b000d80d5c1d914688aae8bce3e6f20d8a5a7a5f`  
		Last Modified: Tue, 01 May 2018 01:17:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55133372d30b5944da324c510c56a654de356b4e50a127fcffb7beb74c1e0da7`  
		Last Modified: Fri, 25 May 2018 08:45:02 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70081c1c602ffca6670e61e1b7452b02b1e74bed8f4e68074f4ac921de5d6f0e`  
		Last Modified: Fri, 25 May 2018 08:45:03 GMT  
		Size: 2.5 MB (2475007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4003ba073adbd4c4c25a0dbcff1d4094a220a088a69810b784ea59e8932a59ec`  
		Last Modified: Fri, 25 May 2018 08:45:01 GMT  
		Size: 717.9 KB (717880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08920d2e7cf333d5a15d9325cd13ff6864e8863c26ae0327244cf9bea134875`  
		Last Modified: Fri, 25 May 2018 08:45:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f1763e2454a49b74370492e8227f5f2e03602515ffdd73a1527182c47f3a74`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0693304e27ca5ebf608e88e4aa07825265894d4ff15d328787b4313296f71d`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c26cb6ff019522ea8829a40d4d1e897b5ebb897fb798fd4cc073b480b98fb6`  
		Last Modified: Fri, 25 May 2018 08:48:15 GMT  
		Size: 110.8 MB (110776876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44f56a7c163ce792aa841d56e41c6c50eb6239e42acc1cc846e5aa930929497`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c6c9c99bb5f883ee6e0fb1a4ab72e401712e3650630153ee0d2ecd6c0d72b7`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 3.7 KB (3708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:rc-xenial`

```console
$ docker pull mongo@sha256:6319aab346715193d1ec1cbe0c367dffca1a10fc098bf88650a3ae28040872cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:rc-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:cebe89a1968ec9fec65ee102cb4715ac6d191ad6db35400f55f0a582410ebaff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133194064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b37a329662497b8bec12085bd278d3685f47e25ad0b8052c6f3efb05ce6d451`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 22:17:46 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:18:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:18:03 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:18:03 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:18:14 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:18:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:18:55 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 05 Jun 2018 22:18:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:18:56 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 05 Jun 2018 22:18:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:56 GMT
ENV MONGO_MAJOR=testing
# Tue, 05 Jun 2018 22:18:56 GMT
ENV MONGO_VERSION=4.0.0~rc0
# Tue, 05 Jun 2018 22:18:57 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:19:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:19:32 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:19:32 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:19:32 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:19:32 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:19:33 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81ef705874ba41139fb9e3e738890926d3b288a7bcb95ad4a221dca803bee64`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03aae48954c67da71e6660e9e9a7d998f1091136f2a9fbb12ff1cd2b1007025`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 2.9 MB (2946140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f5018fd172c8d359b998fb99d68bea25ebac4863591020c4a140bdf6d3dda8`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 750.9 KB (750919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a113ac70b9a14fa4f056d53b06fef4996af9097c8ab7e7e73d8511c79b6e6b3`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5de9f6f5aca92a32077d8ea3c392759667ed649ba98c2afd35cb9009b24fdd`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdd0b89af778344ca0a118a849864ba1ffdb7ade214e39cdaaa2c8d35fb4888`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95bce0c187be379e5ac2ed8e2fb3c533a8429d9eaf83c51ea64672f5b185ec13`  
		Last Modified: Tue, 05 Jun 2018 22:23:48 GMT  
		Size: 86.4 MB (86364419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853c59a37c1830ce57625c2790371de7181d519b410eac0aee47d2c7a903b955`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96824def85a179bb2e0407f11c55f7581dc6aae2c0d56e1f91718c49ef4f8d2f`  
		Last Modified: Tue, 05 Jun 2018 22:23:09 GMT  
		Size: 3.7 KB (3709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:rc-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:788bd9049eca93459222e0e0f356e15ffe3d8ad02ee8a8c118294e1bdce81862
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153203708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63a84be5d65968ab10235900084fd435fecc90fc4bd177ab45cfbdf150b190dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 01 May 2018 01:12:52 GMT
ADD file:fef3655a03a1c7f1533148016797b982955b3d5556f32c777214b8426028509b in / 
# Tue, 01 May 2018 01:12:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 01 May 2018 01:13:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 01:13:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 01 May 2018 01:13:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 01 May 2018 01:13:20 GMT
CMD ["/bin/bash"]
# Fri, 25 May 2018 08:40:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 25 May 2018 08:40:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 08:40:29 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 08:40:30 GMT
ENV JSYAML_VERSION=3.10.0
# Fri, 25 May 2018 08:40:50 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Fri, 25 May 2018 08:40:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 25 May 2018 08:42:51 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Fri, 25 May 2018 08:42:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 25 May 2018 08:42:54 GMT
ARG MONGO_PACKAGE=mongodb-org
# Fri, 25 May 2018 08:42:54 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:42:56 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:42:57 GMT
ENV MONGO_MAJOR=testing
# Fri, 25 May 2018 08:42:58 GMT
ENV MONGO_VERSION=4.0.0~rc0
# Fri, 25 May 2018 08:43:00 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 25 May 2018 08:44:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 25 May 2018 08:44:20 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 25 May 2018 08:44:21 GMT
VOLUME [/data/db /data/configdb]
# Fri, 25 May 2018 08:44:23 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Fri, 25 May 2018 08:44:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 08:44:26 GMT
EXPOSE 27017/tcp
# Fri, 25 May 2018 08:44:27 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:83c016a9a148a71d05469a3994d54eb7eb9c3d40a65e07bf68788018a71d951b`  
		Last Modified: Mon, 23 Apr 2018 14:56:07 GMT  
		Size: 39.2 MB (39223827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a1976297de94ed1f5c4c0f13b0b25199c6d6ca003ddfc3e873938aa2f8e86b`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167d83417bbef32ed4713f4224bcb9f9573597ee6d91174dc7403ce457f145d2`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2544c5c45beca34c948aca9c981d56b587a973354727e4c97dc99d88227fb6a`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb92ef1d410a96b276ec1425b000d80d5c1d914688aae8bce3e6f20d8a5a7a5f`  
		Last Modified: Tue, 01 May 2018 01:17:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55133372d30b5944da324c510c56a654de356b4e50a127fcffb7beb74c1e0da7`  
		Last Modified: Fri, 25 May 2018 08:45:02 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70081c1c602ffca6670e61e1b7452b02b1e74bed8f4e68074f4ac921de5d6f0e`  
		Last Modified: Fri, 25 May 2018 08:45:03 GMT  
		Size: 2.5 MB (2475007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4003ba073adbd4c4c25a0dbcff1d4094a220a088a69810b784ea59e8932a59ec`  
		Last Modified: Fri, 25 May 2018 08:45:01 GMT  
		Size: 717.9 KB (717880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08920d2e7cf333d5a15d9325cd13ff6864e8863c26ae0327244cf9bea134875`  
		Last Modified: Fri, 25 May 2018 08:45:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f1763e2454a49b74370492e8227f5f2e03602515ffdd73a1527182c47f3a74`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0693304e27ca5ebf608e88e4aa07825265894d4ff15d328787b4313296f71d`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c26cb6ff019522ea8829a40d4d1e897b5ebb897fb798fd4cc073b480b98fb6`  
		Last Modified: Fri, 25 May 2018 08:48:15 GMT  
		Size: 110.8 MB (110776876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44f56a7c163ce792aa841d56e41c6c50eb6239e42acc1cc846e5aa930929497`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c6c9c99bb5f883ee6e0fb1a4ab72e401712e3650630153ee0d2ecd6c0d72b7`  
		Last Modified: Fri, 25 May 2018 08:47:01 GMT  
		Size: 3.7 KB (3708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:447c1d369ee3354a76bdeabb54cdd6d4a1585364f0f98a03d49e4a29b866d906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:759c41f4aad2deb917101eb73efaf02655c9342ca225b82bacf5229e352f06f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131694527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5651314706c29278eb8085b198f9b75f563a1d324feb77a11213ee12750442ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 22:17:46 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:18:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:18:03 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:18:03 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:18:14 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:18:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:18:15 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Tue, 05 Jun 2018 22:18:16 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:18:16 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Tue, 05 Jun 2018 22:18:16 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:16 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:16 GMT
ENV MONGO_MAJOR=3.7
# Tue, 05 Jun 2018 22:18:17 GMT
ENV MONGO_VERSION=3.7.9
# Tue, 05 Jun 2018 22:18:17 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:18:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:18:46 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:18:46 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:18:46 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:18:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:18:47 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:18:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81ef705874ba41139fb9e3e738890926d3b288a7bcb95ad4a221dca803bee64`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03aae48954c67da71e6660e9e9a7d998f1091136f2a9fbb12ff1cd2b1007025`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 2.9 MB (2946140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f5018fd172c8d359b998fb99d68bea25ebac4863591020c4a140bdf6d3dda8`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 750.9 KB (750919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a113ac70b9a14fa4f056d53b06fef4996af9097c8ab7e7e73d8511c79b6e6b3`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82aae640fd2f461e965ccf94e7ff01fd3a796f9513795fcf8be87967032c67d9`  
		Last Modified: Tue, 05 Jun 2018 22:22:18 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bdb06e04e5dcc8ee82ecbd5b2370c412f3e9c6a9ffeec88711c635a937e55b`  
		Last Modified: Tue, 05 Jun 2018 22:22:19 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d669c5dd47be812991675aefb6433f123c67e141b3ff125f82663f8ff0c940a9`  
		Last Modified: Tue, 05 Jun 2018 22:22:50 GMT  
		Size: 84.9 MB (84864886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb7e45d2127c3fc7cec060d78a04585d1cc8ce05a7c0457220c5d32a7526332`  
		Last Modified: Tue, 05 Jun 2018 22:22:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8acaf5636ee25a3bc09dc5b1cf68901dea50bbefe08f54659e0d4a46346bad`  
		Last Modified: Tue, 05 Jun 2018 22:22:19 GMT  
		Size: 3.7 KB (3708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:ef3d6887d2892566babea7d2617e6a105377f30bd7ff971d5e235ecaa9024184
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151829675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afbdd93dbb7dbf56640097d84dcfaeae205fa38e98b958df6cce6c0d75b0165a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 01 May 2018 01:12:52 GMT
ADD file:fef3655a03a1c7f1533148016797b982955b3d5556f32c777214b8426028509b in / 
# Tue, 01 May 2018 01:12:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 01 May 2018 01:13:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 01:13:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 01 May 2018 01:13:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 01 May 2018 01:13:20 GMT
CMD ["/bin/bash"]
# Fri, 25 May 2018 08:40:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 25 May 2018 08:40:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 08:40:29 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 08:40:30 GMT
ENV JSYAML_VERSION=3.10.0
# Fri, 25 May 2018 08:40:50 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Fri, 25 May 2018 08:40:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 25 May 2018 08:40:53 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Fri, 25 May 2018 08:40:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 25 May 2018 08:40:55 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Fri, 25 May 2018 08:40:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:40:56 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:40:57 GMT
ENV MONGO_MAJOR=3.7
# Fri, 25 May 2018 08:40:58 GMT
ENV MONGO_VERSION=3.7.9
# Fri, 25 May 2018 08:40:59 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 25 May 2018 08:42:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 25 May 2018 08:42:16 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 25 May 2018 08:42:17 GMT
VOLUME [/data/db /data/configdb]
# Fri, 25 May 2018 08:42:19 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Fri, 25 May 2018 08:42:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 08:42:20 GMT
EXPOSE 27017/tcp
# Fri, 25 May 2018 08:42:21 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:83c016a9a148a71d05469a3994d54eb7eb9c3d40a65e07bf68788018a71d951b`  
		Last Modified: Mon, 23 Apr 2018 14:56:07 GMT  
		Size: 39.2 MB (39223827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a1976297de94ed1f5c4c0f13b0b25199c6d6ca003ddfc3e873938aa2f8e86b`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167d83417bbef32ed4713f4224bcb9f9573597ee6d91174dc7403ce457f145d2`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2544c5c45beca34c948aca9c981d56b587a973354727e4c97dc99d88227fb6a`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb92ef1d410a96b276ec1425b000d80d5c1d914688aae8bce3e6f20d8a5a7a5f`  
		Last Modified: Tue, 01 May 2018 01:17:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55133372d30b5944da324c510c56a654de356b4e50a127fcffb7beb74c1e0da7`  
		Last Modified: Fri, 25 May 2018 08:45:02 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70081c1c602ffca6670e61e1b7452b02b1e74bed8f4e68074f4ac921de5d6f0e`  
		Last Modified: Fri, 25 May 2018 08:45:03 GMT  
		Size: 2.5 MB (2475007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4003ba073adbd4c4c25a0dbcff1d4094a220a088a69810b784ea59e8932a59ec`  
		Last Modified: Fri, 25 May 2018 08:45:01 GMT  
		Size: 717.9 KB (717880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08920d2e7cf333d5a15d9325cd13ff6864e8863c26ae0327244cf9bea134875`  
		Last Modified: Fri, 25 May 2018 08:45:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0806db873e5ef926a633bf7a002438d62483db4fe042ab13ecc0fefd9b8a8549`  
		Last Modified: Fri, 25 May 2018 08:44:58 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f21708b986047de70d3fbaefd764cc432b35dcd2922aeeef9ad80e6739e8371`  
		Last Modified: Fri, 25 May 2018 08:44:58 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b05d35e137e861e45e8982b93ba5deaacf0984bb2652809eec8e4bd1afc67a1`  
		Last Modified: Fri, 25 May 2018 08:46:16 GMT  
		Size: 109.4 MB (109402835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d756010910ce09eed246c680a96ba5ad52b6ef4725b9b9e96b34acfa2050e9a8`  
		Last Modified: Fri, 25 May 2018 08:44:58 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120904c0111ef92825d312f3114d97e39391ecf654ad0ac9460c5adb3e6aea35`  
		Last Modified: Fri, 25 May 2018 08:44:58 GMT  
		Size: 3.7 KB (3711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-xenial`

```console
$ docker pull mongo@sha256:447c1d369ee3354a76bdeabb54cdd6d4a1585364f0f98a03d49e4a29b866d906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:unstable-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:759c41f4aad2deb917101eb73efaf02655c9342ca225b82bacf5229e352f06f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131694527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5651314706c29278eb8085b198f9b75f563a1d324feb77a11213ee12750442ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 22:17:46 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 05 Jun 2018 22:18:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:18:03 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Jun 2018 22:18:03 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 05 Jun 2018 22:18:14 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 05 Jun 2018 22:18:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Jun 2018 22:18:15 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Tue, 05 Jun 2018 22:18:16 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 05 Jun 2018 22:18:16 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Tue, 05 Jun 2018 22:18:16 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:16 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Tue, 05 Jun 2018 22:18:16 GMT
ENV MONGO_MAJOR=3.7
# Tue, 05 Jun 2018 22:18:17 GMT
ENV MONGO_VERSION=3.7.9
# Tue, 05 Jun 2018 22:18:17 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 05 Jun 2018 22:18:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 05 Jun 2018 22:18:46 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 05 Jun 2018 22:18:46 GMT
VOLUME [/data/db /data/configdb]
# Tue, 05 Jun 2018 22:18:46 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 05 Jun 2018 22:18:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Jun 2018 22:18:47 GMT
EXPOSE 27017/tcp
# Tue, 05 Jun 2018 22:18:47 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81ef705874ba41139fb9e3e738890926d3b288a7bcb95ad4a221dca803bee64`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03aae48954c67da71e6660e9e9a7d998f1091136f2a9fbb12ff1cd2b1007025`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 2.9 MB (2946140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f5018fd172c8d359b998fb99d68bea25ebac4863591020c4a140bdf6d3dda8`  
		Last Modified: Tue, 05 Jun 2018 22:22:23 GMT  
		Size: 750.9 KB (750919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a113ac70b9a14fa4f056d53b06fef4996af9097c8ab7e7e73d8511c79b6e6b3`  
		Last Modified: Tue, 05 Jun 2018 22:22:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82aae640fd2f461e965ccf94e7ff01fd3a796f9513795fcf8be87967032c67d9`  
		Last Modified: Tue, 05 Jun 2018 22:22:18 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bdb06e04e5dcc8ee82ecbd5b2370c412f3e9c6a9ffeec88711c635a937e55b`  
		Last Modified: Tue, 05 Jun 2018 22:22:19 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d669c5dd47be812991675aefb6433f123c67e141b3ff125f82663f8ff0c940a9`  
		Last Modified: Tue, 05 Jun 2018 22:22:50 GMT  
		Size: 84.9 MB (84864886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb7e45d2127c3fc7cec060d78a04585d1cc8ce05a7c0457220c5d32a7526332`  
		Last Modified: Tue, 05 Jun 2018 22:22:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8acaf5636ee25a3bc09dc5b1cf68901dea50bbefe08f54659e0d4a46346bad`  
		Last Modified: Tue, 05 Jun 2018 22:22:19 GMT  
		Size: 3.7 KB (3708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:ef3d6887d2892566babea7d2617e6a105377f30bd7ff971d5e235ecaa9024184
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151829675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afbdd93dbb7dbf56640097d84dcfaeae205fa38e98b958df6cce6c0d75b0165a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 01 May 2018 01:12:52 GMT
ADD file:fef3655a03a1c7f1533148016797b982955b3d5556f32c777214b8426028509b in / 
# Tue, 01 May 2018 01:12:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 01 May 2018 01:13:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 01:13:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 01 May 2018 01:13:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 01 May 2018 01:13:20 GMT
CMD ["/bin/bash"]
# Fri, 25 May 2018 08:40:04 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Fri, 25 May 2018 08:40:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 08:40:29 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 May 2018 08:40:30 GMT
ENV JSYAML_VERSION=3.10.0
# Fri, 25 May 2018 08:40:50 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Fri, 25 May 2018 08:40:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 25 May 2018 08:40:53 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Fri, 25 May 2018 08:40:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 25 May 2018 08:40:55 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Fri, 25 May 2018 08:40:56 GMT
ARG MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:40:56 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Fri, 25 May 2018 08:40:57 GMT
ENV MONGO_MAJOR=3.7
# Fri, 25 May 2018 08:40:58 GMT
ENV MONGO_VERSION=3.7.9
# Fri, 25 May 2018 08:40:59 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 25 May 2018 08:42:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 25 May 2018 08:42:16 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 25 May 2018 08:42:17 GMT
VOLUME [/data/db /data/configdb]
# Fri, 25 May 2018 08:42:19 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Fri, 25 May 2018 08:42:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 08:42:20 GMT
EXPOSE 27017/tcp
# Fri, 25 May 2018 08:42:21 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:83c016a9a148a71d05469a3994d54eb7eb9c3d40a65e07bf68788018a71d951b`  
		Last Modified: Mon, 23 Apr 2018 14:56:07 GMT  
		Size: 39.2 MB (39223827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a1976297de94ed1f5c4c0f13b0b25199c6d6ca003ddfc3e873938aa2f8e86b`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167d83417bbef32ed4713f4224bcb9f9573597ee6d91174dc7403ce457f145d2`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2544c5c45beca34c948aca9c981d56b587a973354727e4c97dc99d88227fb6a`  
		Last Modified: Tue, 01 May 2018 01:17:18 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb92ef1d410a96b276ec1425b000d80d5c1d914688aae8bce3e6f20d8a5a7a5f`  
		Last Modified: Tue, 01 May 2018 01:17:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55133372d30b5944da324c510c56a654de356b4e50a127fcffb7beb74c1e0da7`  
		Last Modified: Fri, 25 May 2018 08:45:02 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70081c1c602ffca6670e61e1b7452b02b1e74bed8f4e68074f4ac921de5d6f0e`  
		Last Modified: Fri, 25 May 2018 08:45:03 GMT  
		Size: 2.5 MB (2475007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4003ba073adbd4c4c25a0dbcff1d4094a220a088a69810b784ea59e8932a59ec`  
		Last Modified: Fri, 25 May 2018 08:45:01 GMT  
		Size: 717.9 KB (717880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08920d2e7cf333d5a15d9325cd13ff6864e8863c26ae0327244cf9bea134875`  
		Last Modified: Fri, 25 May 2018 08:45:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0806db873e5ef926a633bf7a002438d62483db4fe042ab13ecc0fefd9b8a8549`  
		Last Modified: Fri, 25 May 2018 08:44:58 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f21708b986047de70d3fbaefd764cc432b35dcd2922aeeef9ad80e6739e8371`  
		Last Modified: Fri, 25 May 2018 08:44:58 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b05d35e137e861e45e8982b93ba5deaacf0984bb2652809eec8e4bd1afc67a1`  
		Last Modified: Fri, 25 May 2018 08:46:16 GMT  
		Size: 109.4 MB (109402835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d756010910ce09eed246c680a96ba5ad52b6ef4725b9b9e96b34acfa2050e9a8`  
		Last Modified: Fri, 25 May 2018 08:44:58 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120904c0111ef92825d312f3114d97e39391ecf654ad0ac9460c5adb3e6aea35`  
		Last Modified: Fri, 25 May 2018 08:44:58 GMT  
		Size: 3.7 KB (3711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
-	[`mongo:4.0.0-rc5`](#mongo400-rc5)
-	[`mongo:4.0.0-rc5-xenial`](#mongo400-rc5-xenial)
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
$ docker pull mongo@sha256:68953db62bc07d41249e6f25364b6eb5e1217376b96e8008050ee1ca53b749a0
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
$ docker pull mongo@sha256:28cee9e9920ffaff6a44a063ce416f64fad17b6afa6bed5eb47a02281f874cca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151888959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cabbf3db263e53fc90a0b6f58f2a1e970d33573d2a21ca12ed69da9b2de7f137`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:41:32 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 06 Jun 2018 10:42:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:42:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Jun 2018 10:42:12 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 06 Jun 2018 10:42:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 06 Jun 2018 10:42:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Jun 2018 10:42:55 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Wed, 06 Jun 2018 10:42:58 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 06 Jun 2018 10:42:59 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 06 Jun 2018 10:42:59 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 06 Jun 2018 10:43:00 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 06 Jun 2018 10:43:01 GMT
ENV MONGO_MAJOR=3.7
# Wed, 06 Jun 2018 10:43:02 GMT
ENV MONGO_VERSION=3.7.9
# Wed, 06 Jun 2018 10:43:04 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 06 Jun 2018 10:44:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 06 Jun 2018 10:44:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 06 Jun 2018 10:44:45 GMT
VOLUME [/data/db /data/configdb]
# Wed, 06 Jun 2018 10:44:47 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 06 Jun 2018 10:44:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Jun 2018 10:44:51 GMT
EXPOSE 27017/tcp
# Wed, 06 Jun 2018 10:44:56 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65166e186b0f755bceb763832e7e1c061687a5b6d2fa3dae1f1fce6e19f1e3`  
		Last Modified: Wed, 06 Jun 2018 10:48:14 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03fc6d46aeeb4deb87079ac87fc8579d68283ff85a7a3bc12349c2175230490`  
		Last Modified: Wed, 06 Jun 2018 10:48:17 GMT  
		Size: 2.5 MB (2474969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc1a4d2360f90254ba7da51561477e79e2bb549c3ede15f70b2361117d0e24f`  
		Last Modified: Wed, 06 Jun 2018 10:48:14 GMT  
		Size: 717.9 KB (717900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c801b5777b67a93934e6ac32be46391aa742ad3b0365b6b8d3220a23884df4`  
		Last Modified: Wed, 06 Jun 2018 10:48:12 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b894f0f75850c3ce82d5924a0f2aca274b48f0b7dad92fc652bd145aa860a801`  
		Last Modified: Wed, 06 Jun 2018 10:48:10 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a5177998eee3331ce81d9670c6c814b7393e0ae057e741cf184d219d26767a`  
		Last Modified: Wed, 06 Jun 2018 10:48:10 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51466417b34f207631969a18bee88d15ea3552b663d68f9166fd39902c09848f`  
		Last Modified: Wed, 06 Jun 2018 10:48:52 GMT  
		Size: 109.4 MB (109402683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0542c529cdd3fa70fa079d8d2f04da0a28f205b1258fc820f357050c7c31aeb`  
		Last Modified: Wed, 06 Jun 2018 10:48:10 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af5403fa0068cb06769de2eab3ed3ed201138f6b99fbdb5faa5a706b277e94a`  
		Last Modified: Wed, 06 Jun 2018 10:48:10 GMT  
		Size: 3.7 KB (3709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7.9`

```console
$ docker pull mongo@sha256:68953db62bc07d41249e6f25364b6eb5e1217376b96e8008050ee1ca53b749a0
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
$ docker pull mongo@sha256:28cee9e9920ffaff6a44a063ce416f64fad17b6afa6bed5eb47a02281f874cca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151888959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cabbf3db263e53fc90a0b6f58f2a1e970d33573d2a21ca12ed69da9b2de7f137`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:41:32 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 06 Jun 2018 10:42:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:42:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Jun 2018 10:42:12 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 06 Jun 2018 10:42:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 06 Jun 2018 10:42:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Jun 2018 10:42:55 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Wed, 06 Jun 2018 10:42:58 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 06 Jun 2018 10:42:59 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 06 Jun 2018 10:42:59 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 06 Jun 2018 10:43:00 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 06 Jun 2018 10:43:01 GMT
ENV MONGO_MAJOR=3.7
# Wed, 06 Jun 2018 10:43:02 GMT
ENV MONGO_VERSION=3.7.9
# Wed, 06 Jun 2018 10:43:04 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 06 Jun 2018 10:44:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 06 Jun 2018 10:44:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 06 Jun 2018 10:44:45 GMT
VOLUME [/data/db /data/configdb]
# Wed, 06 Jun 2018 10:44:47 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 06 Jun 2018 10:44:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Jun 2018 10:44:51 GMT
EXPOSE 27017/tcp
# Wed, 06 Jun 2018 10:44:56 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65166e186b0f755bceb763832e7e1c061687a5b6d2fa3dae1f1fce6e19f1e3`  
		Last Modified: Wed, 06 Jun 2018 10:48:14 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03fc6d46aeeb4deb87079ac87fc8579d68283ff85a7a3bc12349c2175230490`  
		Last Modified: Wed, 06 Jun 2018 10:48:17 GMT  
		Size: 2.5 MB (2474969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc1a4d2360f90254ba7da51561477e79e2bb549c3ede15f70b2361117d0e24f`  
		Last Modified: Wed, 06 Jun 2018 10:48:14 GMT  
		Size: 717.9 KB (717900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c801b5777b67a93934e6ac32be46391aa742ad3b0365b6b8d3220a23884df4`  
		Last Modified: Wed, 06 Jun 2018 10:48:12 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b894f0f75850c3ce82d5924a0f2aca274b48f0b7dad92fc652bd145aa860a801`  
		Last Modified: Wed, 06 Jun 2018 10:48:10 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a5177998eee3331ce81d9670c6c814b7393e0ae057e741cf184d219d26767a`  
		Last Modified: Wed, 06 Jun 2018 10:48:10 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51466417b34f207631969a18bee88d15ea3552b663d68f9166fd39902c09848f`  
		Last Modified: Wed, 06 Jun 2018 10:48:52 GMT  
		Size: 109.4 MB (109402683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0542c529cdd3fa70fa079d8d2f04da0a28f205b1258fc820f357050c7c31aeb`  
		Last Modified: Wed, 06 Jun 2018 10:48:10 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af5403fa0068cb06769de2eab3ed3ed201138f6b99fbdb5faa5a706b277e94a`  
		Last Modified: Wed, 06 Jun 2018 10:48:10 GMT  
		Size: 3.7 KB (3709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7.9-xenial`

```console
$ docker pull mongo@sha256:68953db62bc07d41249e6f25364b6eb5e1217376b96e8008050ee1ca53b749a0
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
$ docker pull mongo@sha256:28cee9e9920ffaff6a44a063ce416f64fad17b6afa6bed5eb47a02281f874cca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151888959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cabbf3db263e53fc90a0b6f58f2a1e970d33573d2a21ca12ed69da9b2de7f137`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:41:32 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 06 Jun 2018 10:42:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:42:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Jun 2018 10:42:12 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 06 Jun 2018 10:42:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 06 Jun 2018 10:42:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Jun 2018 10:42:55 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Wed, 06 Jun 2018 10:42:58 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 06 Jun 2018 10:42:59 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 06 Jun 2018 10:42:59 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 06 Jun 2018 10:43:00 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 06 Jun 2018 10:43:01 GMT
ENV MONGO_MAJOR=3.7
# Wed, 06 Jun 2018 10:43:02 GMT
ENV MONGO_VERSION=3.7.9
# Wed, 06 Jun 2018 10:43:04 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 06 Jun 2018 10:44:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 06 Jun 2018 10:44:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 06 Jun 2018 10:44:45 GMT
VOLUME [/data/db /data/configdb]
# Wed, 06 Jun 2018 10:44:47 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 06 Jun 2018 10:44:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Jun 2018 10:44:51 GMT
EXPOSE 27017/tcp
# Wed, 06 Jun 2018 10:44:56 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65166e186b0f755bceb763832e7e1c061687a5b6d2fa3dae1f1fce6e19f1e3`  
		Last Modified: Wed, 06 Jun 2018 10:48:14 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03fc6d46aeeb4deb87079ac87fc8579d68283ff85a7a3bc12349c2175230490`  
		Last Modified: Wed, 06 Jun 2018 10:48:17 GMT  
		Size: 2.5 MB (2474969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc1a4d2360f90254ba7da51561477e79e2bb549c3ede15f70b2361117d0e24f`  
		Last Modified: Wed, 06 Jun 2018 10:48:14 GMT  
		Size: 717.9 KB (717900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c801b5777b67a93934e6ac32be46391aa742ad3b0365b6b8d3220a23884df4`  
		Last Modified: Wed, 06 Jun 2018 10:48:12 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b894f0f75850c3ce82d5924a0f2aca274b48f0b7dad92fc652bd145aa860a801`  
		Last Modified: Wed, 06 Jun 2018 10:48:10 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a5177998eee3331ce81d9670c6c814b7393e0ae057e741cf184d219d26767a`  
		Last Modified: Wed, 06 Jun 2018 10:48:10 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51466417b34f207631969a18bee88d15ea3552b663d68f9166fd39902c09848f`  
		Last Modified: Wed, 06 Jun 2018 10:48:52 GMT  
		Size: 109.4 MB (109402683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0542c529cdd3fa70fa079d8d2f04da0a28f205b1258fc820f357050c7c31aeb`  
		Last Modified: Wed, 06 Jun 2018 10:48:10 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af5403fa0068cb06769de2eab3ed3ed201138f6b99fbdb5faa5a706b277e94a`  
		Last Modified: Wed, 06 Jun 2018 10:48:10 GMT  
		Size: 3.7 KB (3709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7-xenial`

```console
$ docker pull mongo@sha256:68953db62bc07d41249e6f25364b6eb5e1217376b96e8008050ee1ca53b749a0
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
$ docker pull mongo@sha256:28cee9e9920ffaff6a44a063ce416f64fad17b6afa6bed5eb47a02281f874cca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151888959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cabbf3db263e53fc90a0b6f58f2a1e970d33573d2a21ca12ed69da9b2de7f137`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:41:32 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 06 Jun 2018 10:42:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:42:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Jun 2018 10:42:12 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 06 Jun 2018 10:42:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 06 Jun 2018 10:42:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Jun 2018 10:42:55 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Wed, 06 Jun 2018 10:42:58 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 06 Jun 2018 10:42:59 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 06 Jun 2018 10:42:59 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 06 Jun 2018 10:43:00 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 06 Jun 2018 10:43:01 GMT
ENV MONGO_MAJOR=3.7
# Wed, 06 Jun 2018 10:43:02 GMT
ENV MONGO_VERSION=3.7.9
# Wed, 06 Jun 2018 10:43:04 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 06 Jun 2018 10:44:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 06 Jun 2018 10:44:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 06 Jun 2018 10:44:45 GMT
VOLUME [/data/db /data/configdb]
# Wed, 06 Jun 2018 10:44:47 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 06 Jun 2018 10:44:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Jun 2018 10:44:51 GMT
EXPOSE 27017/tcp
# Wed, 06 Jun 2018 10:44:56 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65166e186b0f755bceb763832e7e1c061687a5b6d2fa3dae1f1fce6e19f1e3`  
		Last Modified: Wed, 06 Jun 2018 10:48:14 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03fc6d46aeeb4deb87079ac87fc8579d68283ff85a7a3bc12349c2175230490`  
		Last Modified: Wed, 06 Jun 2018 10:48:17 GMT  
		Size: 2.5 MB (2474969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc1a4d2360f90254ba7da51561477e79e2bb549c3ede15f70b2361117d0e24f`  
		Last Modified: Wed, 06 Jun 2018 10:48:14 GMT  
		Size: 717.9 KB (717900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c801b5777b67a93934e6ac32be46391aa742ad3b0365b6b8d3220a23884df4`  
		Last Modified: Wed, 06 Jun 2018 10:48:12 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b894f0f75850c3ce82d5924a0f2aca274b48f0b7dad92fc652bd145aa860a801`  
		Last Modified: Wed, 06 Jun 2018 10:48:10 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a5177998eee3331ce81d9670c6c814b7393e0ae057e741cf184d219d26767a`  
		Last Modified: Wed, 06 Jun 2018 10:48:10 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51466417b34f207631969a18bee88d15ea3552b663d68f9166fd39902c09848f`  
		Last Modified: Wed, 06 Jun 2018 10:48:52 GMT  
		Size: 109.4 MB (109402683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0542c529cdd3fa70fa079d8d2f04da0a28f205b1258fc820f357050c7c31aeb`  
		Last Modified: Wed, 06 Jun 2018 10:48:10 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af5403fa0068cb06769de2eab3ed3ed201138f6b99fbdb5faa5a706b277e94a`  
		Last Modified: Wed, 06 Jun 2018 10:48:10 GMT  
		Size: 3.7 KB (3709 bytes)  
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

## `mongo:4.0.0-rc5`

**does not exist** (yet?)

## `mongo:4.0.0-rc5-xenial`

**does not exist** (yet?)

## `mongo:4.0-rc`

```console
$ docker pull mongo@sha256:51a824fae75728ceb13da75a6a295e04ad63402e1dda159bef0cb77e27a36232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:4.0-rc` - linux; amd64

```console
$ docker pull mongo@sha256:ef40d8ddb59acaced66e5b38fcc553fa81585d0522ef0f07aaeb66c11764d65a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133246947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94b4c85fe130f95832e0a367a8323a420efc33e89c2765f2b0a38f81a5a14d6a`
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
# Sat, 09 Jun 2018 00:23:37 GMT
ENV MONGO_VERSION=4.0.0~rc4
# Sat, 09 Jun 2018 00:23:37 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 09 Jun 2018 00:24:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 09 Jun 2018 00:24:46 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 09 Jun 2018 00:24:46 GMT
VOLUME [/data/db /data/configdb]
# Sat, 09 Jun 2018 00:24:46 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Sat, 09 Jun 2018 00:24:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 00:24:46 GMT
EXPOSE 27017/tcp
# Sat, 09 Jun 2018 00:24:47 GMT
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
	-	`sha256:90d48ac16ff8b510e527c310ee41ba735ce77c4ca80928d2a3685628769829f4`  
		Last Modified: Sat, 09 Jun 2018 00:25:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d91a4c81a65c0221404765e8db246f2a98ac8aafb8c7a717db5756e1a2777cb`  
		Last Modified: Sat, 09 Jun 2018 00:25:50 GMT  
		Size: 86.4 MB (86417305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff634b923089f375511cdd0e0cb26f0882f0d2ac30642e056e7b080a01af9cf`  
		Last Modified: Sat, 09 Jun 2018 00:25:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432aa5e00cf065fb608b8a9ff6f11e9255bae49fc1d62d1c21252f1ae3d8934d`  
		Last Modified: Sat, 09 Jun 2018 00:25:13 GMT  
		Size: 3.7 KB (3707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0-rc` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:54ad95434952e115deeb02bc9ca6e1f9585c61804220e0eb36af57a0d09755ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153317311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d216c259156a071b407c3b8691d7298b73c73e4a1708e1c97b1c3aaaa6aa49f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:41:32 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 06 Jun 2018 10:42:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:42:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Jun 2018 10:42:12 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 06 Jun 2018 10:42:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 06 Jun 2018 10:42:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Jun 2018 10:45:22 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 06 Jun 2018 10:45:25 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 06 Jun 2018 10:45:28 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 06 Jun 2018 10:45:31 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 06 Jun 2018 10:45:34 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 06 Jun 2018 10:45:35 GMT
ENV MONGO_MAJOR=testing
# Sat, 09 Jun 2018 08:55:12 GMT
ENV MONGO_VERSION=4.0.0~rc4
# Sat, 09 Jun 2018 08:55:14 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 09 Jun 2018 08:56:30 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 09 Jun 2018 08:56:33 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 09 Jun 2018 08:56:34 GMT
VOLUME [/data/db /data/configdb]
# Sat, 09 Jun 2018 08:56:35 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Sat, 09 Jun 2018 08:56:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 08:56:36 GMT
EXPOSE 27017/tcp
# Sat, 09 Jun 2018 08:56:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65166e186b0f755bceb763832e7e1c061687a5b6d2fa3dae1f1fce6e19f1e3`  
		Last Modified: Wed, 06 Jun 2018 10:48:14 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03fc6d46aeeb4deb87079ac87fc8579d68283ff85a7a3bc12349c2175230490`  
		Last Modified: Wed, 06 Jun 2018 10:48:17 GMT  
		Size: 2.5 MB (2474969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc1a4d2360f90254ba7da51561477e79e2bb549c3ede15f70b2361117d0e24f`  
		Last Modified: Wed, 06 Jun 2018 10:48:14 GMT  
		Size: 717.9 KB (717900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c801b5777b67a93934e6ac32be46391aa742ad3b0365b6b8d3220a23884df4`  
		Last Modified: Wed, 06 Jun 2018 10:48:12 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f3cc35ee7920cd06f65d5f0909f54e5626231d9e8dfe25eb9f6ce3c05b50e`  
		Last Modified: Wed, 06 Jun 2018 10:49:33 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78f8d6b08c91617c192eeef41c63c2c9d646eaa849122f6306726c9add1b03c`  
		Last Modified: Sat, 09 Jun 2018 08:57:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7649a75a87dc8a0711b50bd45ebf9e53a35a5c69b3086136df108140cb414ea1`  
		Last Modified: Sat, 09 Jun 2018 08:57:56 GMT  
		Size: 110.8 MB (110831040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7298d63029fe4ad3917ee1d495f244932edcddc1bd0304ad131e10f82bbee0`  
		Last Modified: Sat, 09 Jun 2018 08:57:08 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fe21ab3c9374ac75a4691ca06b824843baec603bb87aaf086f2634e77b270c`  
		Last Modified: Sat, 09 Jun 2018 08:57:08 GMT  
		Size: 3.7 KB (3709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0-rc-xenial`

```console
$ docker pull mongo@sha256:51a824fae75728ceb13da75a6a295e04ad63402e1dda159bef0cb77e27a36232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:4.0-rc-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:ef40d8ddb59acaced66e5b38fcc553fa81585d0522ef0f07aaeb66c11764d65a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133246947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94b4c85fe130f95832e0a367a8323a420efc33e89c2765f2b0a38f81a5a14d6a`
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
# Sat, 09 Jun 2018 00:23:37 GMT
ENV MONGO_VERSION=4.0.0~rc4
# Sat, 09 Jun 2018 00:23:37 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 09 Jun 2018 00:24:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 09 Jun 2018 00:24:46 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 09 Jun 2018 00:24:46 GMT
VOLUME [/data/db /data/configdb]
# Sat, 09 Jun 2018 00:24:46 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Sat, 09 Jun 2018 00:24:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 00:24:46 GMT
EXPOSE 27017/tcp
# Sat, 09 Jun 2018 00:24:47 GMT
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
	-	`sha256:90d48ac16ff8b510e527c310ee41ba735ce77c4ca80928d2a3685628769829f4`  
		Last Modified: Sat, 09 Jun 2018 00:25:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d91a4c81a65c0221404765e8db246f2a98ac8aafb8c7a717db5756e1a2777cb`  
		Last Modified: Sat, 09 Jun 2018 00:25:50 GMT  
		Size: 86.4 MB (86417305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff634b923089f375511cdd0e0cb26f0882f0d2ac30642e056e7b080a01af9cf`  
		Last Modified: Sat, 09 Jun 2018 00:25:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432aa5e00cf065fb608b8a9ff6f11e9255bae49fc1d62d1c21252f1ae3d8934d`  
		Last Modified: Sat, 09 Jun 2018 00:25:13 GMT  
		Size: 3.7 KB (3707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0-rc-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:54ad95434952e115deeb02bc9ca6e1f9585c61804220e0eb36af57a0d09755ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153317311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d216c259156a071b407c3b8691d7298b73c73e4a1708e1c97b1c3aaaa6aa49f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:41:32 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 06 Jun 2018 10:42:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:42:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Jun 2018 10:42:12 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 06 Jun 2018 10:42:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 06 Jun 2018 10:42:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Jun 2018 10:45:22 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 06 Jun 2018 10:45:25 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 06 Jun 2018 10:45:28 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 06 Jun 2018 10:45:31 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 06 Jun 2018 10:45:34 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 06 Jun 2018 10:45:35 GMT
ENV MONGO_MAJOR=testing
# Sat, 09 Jun 2018 08:55:12 GMT
ENV MONGO_VERSION=4.0.0~rc4
# Sat, 09 Jun 2018 08:55:14 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 09 Jun 2018 08:56:30 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 09 Jun 2018 08:56:33 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 09 Jun 2018 08:56:34 GMT
VOLUME [/data/db /data/configdb]
# Sat, 09 Jun 2018 08:56:35 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Sat, 09 Jun 2018 08:56:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 08:56:36 GMT
EXPOSE 27017/tcp
# Sat, 09 Jun 2018 08:56:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65166e186b0f755bceb763832e7e1c061687a5b6d2fa3dae1f1fce6e19f1e3`  
		Last Modified: Wed, 06 Jun 2018 10:48:14 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03fc6d46aeeb4deb87079ac87fc8579d68283ff85a7a3bc12349c2175230490`  
		Last Modified: Wed, 06 Jun 2018 10:48:17 GMT  
		Size: 2.5 MB (2474969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc1a4d2360f90254ba7da51561477e79e2bb549c3ede15f70b2361117d0e24f`  
		Last Modified: Wed, 06 Jun 2018 10:48:14 GMT  
		Size: 717.9 KB (717900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c801b5777b67a93934e6ac32be46391aa742ad3b0365b6b8d3220a23884df4`  
		Last Modified: Wed, 06 Jun 2018 10:48:12 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f3cc35ee7920cd06f65d5f0909f54e5626231d9e8dfe25eb9f6ce3c05b50e`  
		Last Modified: Wed, 06 Jun 2018 10:49:33 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78f8d6b08c91617c192eeef41c63c2c9d646eaa849122f6306726c9add1b03c`  
		Last Modified: Sat, 09 Jun 2018 08:57:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7649a75a87dc8a0711b50bd45ebf9e53a35a5c69b3086136df108140cb414ea1`  
		Last Modified: Sat, 09 Jun 2018 08:57:56 GMT  
		Size: 110.8 MB (110831040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7298d63029fe4ad3917ee1d495f244932edcddc1bd0304ad131e10f82bbee0`  
		Last Modified: Sat, 09 Jun 2018 08:57:08 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fe21ab3c9374ac75a4691ca06b824843baec603bb87aaf086f2634e77b270c`  
		Last Modified: Sat, 09 Jun 2018 08:57:08 GMT  
		Size: 3.7 KB (3709 bytes)  
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
$ docker pull mongo@sha256:51a824fae75728ceb13da75a6a295e04ad63402e1dda159bef0cb77e27a36232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:rc` - linux; amd64

```console
$ docker pull mongo@sha256:ef40d8ddb59acaced66e5b38fcc553fa81585d0522ef0f07aaeb66c11764d65a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133246947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94b4c85fe130f95832e0a367a8323a420efc33e89c2765f2b0a38f81a5a14d6a`
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
# Sat, 09 Jun 2018 00:23:37 GMT
ENV MONGO_VERSION=4.0.0~rc4
# Sat, 09 Jun 2018 00:23:37 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 09 Jun 2018 00:24:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 09 Jun 2018 00:24:46 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 09 Jun 2018 00:24:46 GMT
VOLUME [/data/db /data/configdb]
# Sat, 09 Jun 2018 00:24:46 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Sat, 09 Jun 2018 00:24:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 00:24:46 GMT
EXPOSE 27017/tcp
# Sat, 09 Jun 2018 00:24:47 GMT
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
	-	`sha256:90d48ac16ff8b510e527c310ee41ba735ce77c4ca80928d2a3685628769829f4`  
		Last Modified: Sat, 09 Jun 2018 00:25:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d91a4c81a65c0221404765e8db246f2a98ac8aafb8c7a717db5756e1a2777cb`  
		Last Modified: Sat, 09 Jun 2018 00:25:50 GMT  
		Size: 86.4 MB (86417305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff634b923089f375511cdd0e0cb26f0882f0d2ac30642e056e7b080a01af9cf`  
		Last Modified: Sat, 09 Jun 2018 00:25:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432aa5e00cf065fb608b8a9ff6f11e9255bae49fc1d62d1c21252f1ae3d8934d`  
		Last Modified: Sat, 09 Jun 2018 00:25:13 GMT  
		Size: 3.7 KB (3707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:rc` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:54ad95434952e115deeb02bc9ca6e1f9585c61804220e0eb36af57a0d09755ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153317311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d216c259156a071b407c3b8691d7298b73c73e4a1708e1c97b1c3aaaa6aa49f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:41:32 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 06 Jun 2018 10:42:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:42:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Jun 2018 10:42:12 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 06 Jun 2018 10:42:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 06 Jun 2018 10:42:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Jun 2018 10:45:22 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 06 Jun 2018 10:45:25 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 06 Jun 2018 10:45:28 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 06 Jun 2018 10:45:31 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 06 Jun 2018 10:45:34 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 06 Jun 2018 10:45:35 GMT
ENV MONGO_MAJOR=testing
# Sat, 09 Jun 2018 08:55:12 GMT
ENV MONGO_VERSION=4.0.0~rc4
# Sat, 09 Jun 2018 08:55:14 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 09 Jun 2018 08:56:30 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 09 Jun 2018 08:56:33 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 09 Jun 2018 08:56:34 GMT
VOLUME [/data/db /data/configdb]
# Sat, 09 Jun 2018 08:56:35 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Sat, 09 Jun 2018 08:56:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 08:56:36 GMT
EXPOSE 27017/tcp
# Sat, 09 Jun 2018 08:56:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65166e186b0f755bceb763832e7e1c061687a5b6d2fa3dae1f1fce6e19f1e3`  
		Last Modified: Wed, 06 Jun 2018 10:48:14 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03fc6d46aeeb4deb87079ac87fc8579d68283ff85a7a3bc12349c2175230490`  
		Last Modified: Wed, 06 Jun 2018 10:48:17 GMT  
		Size: 2.5 MB (2474969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc1a4d2360f90254ba7da51561477e79e2bb549c3ede15f70b2361117d0e24f`  
		Last Modified: Wed, 06 Jun 2018 10:48:14 GMT  
		Size: 717.9 KB (717900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c801b5777b67a93934e6ac32be46391aa742ad3b0365b6b8d3220a23884df4`  
		Last Modified: Wed, 06 Jun 2018 10:48:12 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f3cc35ee7920cd06f65d5f0909f54e5626231d9e8dfe25eb9f6ce3c05b50e`  
		Last Modified: Wed, 06 Jun 2018 10:49:33 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78f8d6b08c91617c192eeef41c63c2c9d646eaa849122f6306726c9add1b03c`  
		Last Modified: Sat, 09 Jun 2018 08:57:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7649a75a87dc8a0711b50bd45ebf9e53a35a5c69b3086136df108140cb414ea1`  
		Last Modified: Sat, 09 Jun 2018 08:57:56 GMT  
		Size: 110.8 MB (110831040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7298d63029fe4ad3917ee1d495f244932edcddc1bd0304ad131e10f82bbee0`  
		Last Modified: Sat, 09 Jun 2018 08:57:08 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fe21ab3c9374ac75a4691ca06b824843baec603bb87aaf086f2634e77b270c`  
		Last Modified: Sat, 09 Jun 2018 08:57:08 GMT  
		Size: 3.7 KB (3709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:rc-xenial`

```console
$ docker pull mongo@sha256:51a824fae75728ceb13da75a6a295e04ad63402e1dda159bef0cb77e27a36232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:rc-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:ef40d8ddb59acaced66e5b38fcc553fa81585d0522ef0f07aaeb66c11764d65a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133246947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94b4c85fe130f95832e0a367a8323a420efc33e89c2765f2b0a38f81a5a14d6a`
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
# Sat, 09 Jun 2018 00:23:37 GMT
ENV MONGO_VERSION=4.0.0~rc4
# Sat, 09 Jun 2018 00:23:37 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 09 Jun 2018 00:24:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 09 Jun 2018 00:24:46 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 09 Jun 2018 00:24:46 GMT
VOLUME [/data/db /data/configdb]
# Sat, 09 Jun 2018 00:24:46 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Sat, 09 Jun 2018 00:24:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 00:24:46 GMT
EXPOSE 27017/tcp
# Sat, 09 Jun 2018 00:24:47 GMT
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
	-	`sha256:90d48ac16ff8b510e527c310ee41ba735ce77c4ca80928d2a3685628769829f4`  
		Last Modified: Sat, 09 Jun 2018 00:25:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d91a4c81a65c0221404765e8db246f2a98ac8aafb8c7a717db5756e1a2777cb`  
		Last Modified: Sat, 09 Jun 2018 00:25:50 GMT  
		Size: 86.4 MB (86417305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff634b923089f375511cdd0e0cb26f0882f0d2ac30642e056e7b080a01af9cf`  
		Last Modified: Sat, 09 Jun 2018 00:25:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432aa5e00cf065fb608b8a9ff6f11e9255bae49fc1d62d1c21252f1ae3d8934d`  
		Last Modified: Sat, 09 Jun 2018 00:25:13 GMT  
		Size: 3.7 KB (3707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:rc-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:54ad95434952e115deeb02bc9ca6e1f9585c61804220e0eb36af57a0d09755ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153317311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d216c259156a071b407c3b8691d7298b73c73e4a1708e1c97b1c3aaaa6aa49f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:41:32 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 06 Jun 2018 10:42:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:42:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Jun 2018 10:42:12 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 06 Jun 2018 10:42:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 06 Jun 2018 10:42:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Jun 2018 10:45:22 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Wed, 06 Jun 2018 10:45:25 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 06 Jun 2018 10:45:28 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 06 Jun 2018 10:45:31 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 06 Jun 2018 10:45:34 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 06 Jun 2018 10:45:35 GMT
ENV MONGO_MAJOR=testing
# Sat, 09 Jun 2018 08:55:12 GMT
ENV MONGO_VERSION=4.0.0~rc4
# Sat, 09 Jun 2018 08:55:14 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sat, 09 Jun 2018 08:56:30 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sat, 09 Jun 2018 08:56:33 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sat, 09 Jun 2018 08:56:34 GMT
VOLUME [/data/db /data/configdb]
# Sat, 09 Jun 2018 08:56:35 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Sat, 09 Jun 2018 08:56:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 08:56:36 GMT
EXPOSE 27017/tcp
# Sat, 09 Jun 2018 08:56:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65166e186b0f755bceb763832e7e1c061687a5b6d2fa3dae1f1fce6e19f1e3`  
		Last Modified: Wed, 06 Jun 2018 10:48:14 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03fc6d46aeeb4deb87079ac87fc8579d68283ff85a7a3bc12349c2175230490`  
		Last Modified: Wed, 06 Jun 2018 10:48:17 GMT  
		Size: 2.5 MB (2474969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc1a4d2360f90254ba7da51561477e79e2bb549c3ede15f70b2361117d0e24f`  
		Last Modified: Wed, 06 Jun 2018 10:48:14 GMT  
		Size: 717.9 KB (717900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c801b5777b67a93934e6ac32be46391aa742ad3b0365b6b8d3220a23884df4`  
		Last Modified: Wed, 06 Jun 2018 10:48:12 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f3cc35ee7920cd06f65d5f0909f54e5626231d9e8dfe25eb9f6ce3c05b50e`  
		Last Modified: Wed, 06 Jun 2018 10:49:33 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78f8d6b08c91617c192eeef41c63c2c9d646eaa849122f6306726c9add1b03c`  
		Last Modified: Sat, 09 Jun 2018 08:57:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7649a75a87dc8a0711b50bd45ebf9e53a35a5c69b3086136df108140cb414ea1`  
		Last Modified: Sat, 09 Jun 2018 08:57:56 GMT  
		Size: 110.8 MB (110831040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7298d63029fe4ad3917ee1d495f244932edcddc1bd0304ad131e10f82bbee0`  
		Last Modified: Sat, 09 Jun 2018 08:57:08 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fe21ab3c9374ac75a4691ca06b824843baec603bb87aaf086f2634e77b270c`  
		Last Modified: Sat, 09 Jun 2018 08:57:08 GMT  
		Size: 3.7 KB (3709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:68953db62bc07d41249e6f25364b6eb5e1217376b96e8008050ee1ca53b749a0
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
$ docker pull mongo@sha256:28cee9e9920ffaff6a44a063ce416f64fad17b6afa6bed5eb47a02281f874cca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151888959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cabbf3db263e53fc90a0b6f58f2a1e970d33573d2a21ca12ed69da9b2de7f137`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:41:32 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 06 Jun 2018 10:42:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:42:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Jun 2018 10:42:12 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 06 Jun 2018 10:42:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 06 Jun 2018 10:42:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Jun 2018 10:42:55 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Wed, 06 Jun 2018 10:42:58 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 06 Jun 2018 10:42:59 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 06 Jun 2018 10:42:59 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 06 Jun 2018 10:43:00 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 06 Jun 2018 10:43:01 GMT
ENV MONGO_MAJOR=3.7
# Wed, 06 Jun 2018 10:43:02 GMT
ENV MONGO_VERSION=3.7.9
# Wed, 06 Jun 2018 10:43:04 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 06 Jun 2018 10:44:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 06 Jun 2018 10:44:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 06 Jun 2018 10:44:45 GMT
VOLUME [/data/db /data/configdb]
# Wed, 06 Jun 2018 10:44:47 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 06 Jun 2018 10:44:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Jun 2018 10:44:51 GMT
EXPOSE 27017/tcp
# Wed, 06 Jun 2018 10:44:56 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65166e186b0f755bceb763832e7e1c061687a5b6d2fa3dae1f1fce6e19f1e3`  
		Last Modified: Wed, 06 Jun 2018 10:48:14 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03fc6d46aeeb4deb87079ac87fc8579d68283ff85a7a3bc12349c2175230490`  
		Last Modified: Wed, 06 Jun 2018 10:48:17 GMT  
		Size: 2.5 MB (2474969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc1a4d2360f90254ba7da51561477e79e2bb549c3ede15f70b2361117d0e24f`  
		Last Modified: Wed, 06 Jun 2018 10:48:14 GMT  
		Size: 717.9 KB (717900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c801b5777b67a93934e6ac32be46391aa742ad3b0365b6b8d3220a23884df4`  
		Last Modified: Wed, 06 Jun 2018 10:48:12 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b894f0f75850c3ce82d5924a0f2aca274b48f0b7dad92fc652bd145aa860a801`  
		Last Modified: Wed, 06 Jun 2018 10:48:10 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a5177998eee3331ce81d9670c6c814b7393e0ae057e741cf184d219d26767a`  
		Last Modified: Wed, 06 Jun 2018 10:48:10 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51466417b34f207631969a18bee88d15ea3552b663d68f9166fd39902c09848f`  
		Last Modified: Wed, 06 Jun 2018 10:48:52 GMT  
		Size: 109.4 MB (109402683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0542c529cdd3fa70fa079d8d2f04da0a28f205b1258fc820f357050c7c31aeb`  
		Last Modified: Wed, 06 Jun 2018 10:48:10 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af5403fa0068cb06769de2eab3ed3ed201138f6b99fbdb5faa5a706b277e94a`  
		Last Modified: Wed, 06 Jun 2018 10:48:10 GMT  
		Size: 3.7 KB (3709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-xenial`

```console
$ docker pull mongo@sha256:68953db62bc07d41249e6f25364b6eb5e1217376b96e8008050ee1ca53b749a0
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
$ docker pull mongo@sha256:28cee9e9920ffaff6a44a063ce416f64fad17b6afa6bed5eb47a02281f874cca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151888959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cabbf3db263e53fc90a0b6f58f2a1e970d33573d2a21ca12ed69da9b2de7f137`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:41:32 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 06 Jun 2018 10:42:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:42:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Jun 2018 10:42:12 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 06 Jun 2018 10:42:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 06 Jun 2018 10:42:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Jun 2018 10:42:55 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Wed, 06 Jun 2018 10:42:58 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 06 Jun 2018 10:42:59 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 06 Jun 2018 10:42:59 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 06 Jun 2018 10:43:00 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 06 Jun 2018 10:43:01 GMT
ENV MONGO_MAJOR=3.7
# Wed, 06 Jun 2018 10:43:02 GMT
ENV MONGO_VERSION=3.7.9
# Wed, 06 Jun 2018 10:43:04 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 06 Jun 2018 10:44:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 06 Jun 2018 10:44:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 06 Jun 2018 10:44:45 GMT
VOLUME [/data/db /data/configdb]
# Wed, 06 Jun 2018 10:44:47 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 06 Jun 2018 10:44:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Jun 2018 10:44:51 GMT
EXPOSE 27017/tcp
# Wed, 06 Jun 2018 10:44:56 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae65166e186b0f755bceb763832e7e1c061687a5b6d2fa3dae1f1fce6e19f1e3`  
		Last Modified: Wed, 06 Jun 2018 10:48:14 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03fc6d46aeeb4deb87079ac87fc8579d68283ff85a7a3bc12349c2175230490`  
		Last Modified: Wed, 06 Jun 2018 10:48:17 GMT  
		Size: 2.5 MB (2474969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc1a4d2360f90254ba7da51561477e79e2bb549c3ede15f70b2361117d0e24f`  
		Last Modified: Wed, 06 Jun 2018 10:48:14 GMT  
		Size: 717.9 KB (717900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c801b5777b67a93934e6ac32be46391aa742ad3b0365b6b8d3220a23884df4`  
		Last Modified: Wed, 06 Jun 2018 10:48:12 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b894f0f75850c3ce82d5924a0f2aca274b48f0b7dad92fc652bd145aa860a801`  
		Last Modified: Wed, 06 Jun 2018 10:48:10 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a5177998eee3331ce81d9670c6c814b7393e0ae057e741cf184d219d26767a`  
		Last Modified: Wed, 06 Jun 2018 10:48:10 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51466417b34f207631969a18bee88d15ea3552b663d68f9166fd39902c09848f`  
		Last Modified: Wed, 06 Jun 2018 10:48:52 GMT  
		Size: 109.4 MB (109402683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0542c529cdd3fa70fa079d8d2f04da0a28f205b1258fc820f357050c7c31aeb`  
		Last Modified: Wed, 06 Jun 2018 10:48:10 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af5403fa0068cb06769de2eab3ed3ed201138f6b99fbdb5faa5a706b277e94a`  
		Last Modified: Wed, 06 Jun 2018 10:48:10 GMT  
		Size: 3.7 KB (3709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

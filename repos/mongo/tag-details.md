<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:3`](#mongo3)
-	[`mongo:3.2`](#mongo32)
-	[`mongo:3.2.20`](#mongo3220)
-	[`mongo:3.2.20-jessie`](#mongo3220-jessie)
-	[`mongo:3.2-jessie`](#mongo32-jessie)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3.4.16`](#mongo3416)
-	[`mongo:3.4.16-jessie`](#mongo3416-jessie)
-	[`mongo:3.4-jessie`](#mongo34-jessie)
-	[`mongo:3.6`](#mongo36)
-	[`mongo:3.6.6`](#mongo366)
-	[`mongo:3.6.6-jessie`](#mongo366-jessie)
-	[`mongo:3.6-jessie`](#mongo36-jessie)
-	[`mongo:3-jessie`](#mongo3-jessie)
-	[`mongo:4`](#mongo4)
-	[`mongo:4.0`](#mongo40)
-	[`mongo:4.0.0`](#mongo400)
-	[`mongo:4.0.0-xenial`](#mongo400-xenial)
-	[`mongo:4.0-xenial`](#mongo40-xenial)
-	[`mongo:4-xenial`](#mongo4-xenial)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:xenial`](#mongoxenial)

## `mongo:3`

```console
$ docker pull mongo@sha256:df82a70fd59c4642508e996b5c8aeaa328781570d94ee665c777173e1b6e0fa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

```console
$ docker pull mongo@sha256:364155a755d57ce71c9c8fb1573664224629c8c87e97c71347f7524de2289f90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132156303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceee4d1620d4291b3456182540fc47c6c8eef2827e2359eebf025fd465b4030a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:06:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jul 2018 04:07:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:07:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 04:07:35 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 17 Jul 2018 04:08:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 17 Jul 2018 04:08:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:11:49 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 17 Jul 2018 04:11:59 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:11:59 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 17 Jul 2018 04:11:59 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:12:00 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:12:00 GMT
ENV MONGO_MAJOR=3.6
# Tue, 17 Jul 2018 04:12:00 GMT
ENV MONGO_VERSION=3.6.6
# Tue, 17 Jul 2018 04:12:01 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 17 Jul 2018 04:12:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jul 2018 04:12:47 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jul 2018 04:12:48 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jul 2018 04:12:48 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:13:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:13:00 GMT
EXPOSE 27017/tcp
# Tue, 17 Jul 2018 04:13:00 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f47d82692cde614aa658782984a01c5130c4a7d2a1232bf8c0d4c42bd0ba2f`  
		Last Modified: Tue, 17 Jul 2018 04:15:19 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254ab97aaba698526568b72c72d15e9480931723be804e276c216e99fcb400d8`  
		Last Modified: Tue, 17 Jul 2018 04:15:17 GMT  
		Size: 2.4 MB (2350907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c87549305057643760fb5628970f71371b7803361cad5d43fd4d6d46d7c7fe`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 816.5 KB (816479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49beac3d0f281149b335b57fab3f8bac57f821af15d0b8c4169982d2ee97bbe7`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520a8baafbe7977cd8698dd85f30a3605793c35e0cddfe9f328a663926d27350`  
		Last Modified: Tue, 17 Jul 2018 04:17:36 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf62c4cb4b1ce6c6a21d09d0557b4838c3fedce6548c01b7f4996752263f0da`  
		Last Modified: Tue, 17 Jul 2018 04:17:35 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2c9b97b30adf46fba2db946d99f8086cf5060e323d6e0b6bb519def70aa688`  
		Last Modified: Tue, 17 Jul 2018 04:18:12 GMT  
		Size: 98.9 MB (98861028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e6f17075b2585536df6d1ad5fe38d793c2b415f4b80dc19c45881cace38031`  
		Last Modified: Tue, 17 Jul 2018 04:17:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b510662cfc9e4b92733c0158e8e1d72020405ac792e803d545293ddad1f957a9`  
		Last Modified: Tue, 17 Jul 2018 04:17:35 GMT  
		Size: 3.7 KB (3714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:2ea3783f7ee258361a4264ea1d5b69b79e66abef97a26d2e92f493331368c9c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

```console
$ docker pull mongo@sha256:4032af5e26478b1618a7e807d8dc580ff39b4f8b531feed1b46f68c79fe6a033
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104148112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b4f7eadfd2eea8052577d61046dda99c4ecc49cef4f3f350baca8138f78fe0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:06:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jul 2018 04:07:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:07:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 04:07:35 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 17 Jul 2018 04:08:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 17 Jul 2018 04:08:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:08:29 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 17 Jul 2018 04:08:37 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:08:43 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 17 Jul 2018 04:08:43 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:08:44 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:08:44 GMT
ENV MONGO_MAJOR=3.2
# Tue, 17 Jul 2018 04:08:44 GMT
ENV MONGO_VERSION=3.2.20
# Tue, 17 Jul 2018 04:08:45 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 17 Jul 2018 04:09:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jul 2018 04:09:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jul 2018 04:09:43 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jul 2018 04:09:44 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:09:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 04:09:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:09:45 GMT
EXPOSE 27017/tcp
# Tue, 17 Jul 2018 04:09:56 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f47d82692cde614aa658782984a01c5130c4a7d2a1232bf8c0d4c42bd0ba2f`  
		Last Modified: Tue, 17 Jul 2018 04:15:19 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254ab97aaba698526568b72c72d15e9480931723be804e276c216e99fcb400d8`  
		Last Modified: Tue, 17 Jul 2018 04:15:17 GMT  
		Size: 2.4 MB (2350907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c87549305057643760fb5628970f71371b7803361cad5d43fd4d6d46d7c7fe`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 816.5 KB (816479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49beac3d0f281149b335b57fab3f8bac57f821af15d0b8c4169982d2ee97bbe7`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175436a0d68cde5c6033c918bd8adcf6d116da8c45e74416eb17a2c8d69335f8`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 3.6 KB (3601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d866dc1d55e872c254f929abaa4f97c0c9c778c8ca62f4bfd211bd5a2f66c5d2`  
		Last Modified: Tue, 17 Jul 2018 04:15:13 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3701929ad2dcd442bfeffee5af83d3d91c51ae302fdd851be2ff36a7b66e4a98`  
		Last Modified: Tue, 17 Jul 2018 04:15:43 GMT  
		Size: 70.9 MB (70850704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368d9372d91f5f7584a4110ec0c75fa69c9093fbc8e6176d2792514800cc70ee`  
		Last Modified: Tue, 17 Jul 2018 04:15:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4872a4715dd6dcc50234554ec4ada262e918f492e6726fcdbd0f023b583d952e`  
		Last Modified: Tue, 17 Jul 2018 04:15:13 GMT  
		Size: 3.6 KB (3568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c5c79e60c53d9be37c668a30c252ce3a3a6aeafb9702ba36ce3aed0b2503be`  
		Last Modified: Tue, 17 Jul 2018 04:15:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.20`

```console
$ docker pull mongo@sha256:2ea3783f7ee258361a4264ea1d5b69b79e66abef97a26d2e92f493331368c9c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2.20` - linux; amd64

```console
$ docker pull mongo@sha256:4032af5e26478b1618a7e807d8dc580ff39b4f8b531feed1b46f68c79fe6a033
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104148112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b4f7eadfd2eea8052577d61046dda99c4ecc49cef4f3f350baca8138f78fe0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:06:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jul 2018 04:07:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:07:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 04:07:35 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 17 Jul 2018 04:08:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 17 Jul 2018 04:08:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:08:29 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 17 Jul 2018 04:08:37 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:08:43 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 17 Jul 2018 04:08:43 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:08:44 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:08:44 GMT
ENV MONGO_MAJOR=3.2
# Tue, 17 Jul 2018 04:08:44 GMT
ENV MONGO_VERSION=3.2.20
# Tue, 17 Jul 2018 04:08:45 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 17 Jul 2018 04:09:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jul 2018 04:09:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jul 2018 04:09:43 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jul 2018 04:09:44 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:09:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 04:09:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:09:45 GMT
EXPOSE 27017/tcp
# Tue, 17 Jul 2018 04:09:56 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f47d82692cde614aa658782984a01c5130c4a7d2a1232bf8c0d4c42bd0ba2f`  
		Last Modified: Tue, 17 Jul 2018 04:15:19 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254ab97aaba698526568b72c72d15e9480931723be804e276c216e99fcb400d8`  
		Last Modified: Tue, 17 Jul 2018 04:15:17 GMT  
		Size: 2.4 MB (2350907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c87549305057643760fb5628970f71371b7803361cad5d43fd4d6d46d7c7fe`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 816.5 KB (816479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49beac3d0f281149b335b57fab3f8bac57f821af15d0b8c4169982d2ee97bbe7`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175436a0d68cde5c6033c918bd8adcf6d116da8c45e74416eb17a2c8d69335f8`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 3.6 KB (3601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d866dc1d55e872c254f929abaa4f97c0c9c778c8ca62f4bfd211bd5a2f66c5d2`  
		Last Modified: Tue, 17 Jul 2018 04:15:13 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3701929ad2dcd442bfeffee5af83d3d91c51ae302fdd851be2ff36a7b66e4a98`  
		Last Modified: Tue, 17 Jul 2018 04:15:43 GMT  
		Size: 70.9 MB (70850704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368d9372d91f5f7584a4110ec0c75fa69c9093fbc8e6176d2792514800cc70ee`  
		Last Modified: Tue, 17 Jul 2018 04:15:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4872a4715dd6dcc50234554ec4ada262e918f492e6726fcdbd0f023b583d952e`  
		Last Modified: Tue, 17 Jul 2018 04:15:13 GMT  
		Size: 3.6 KB (3568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c5c79e60c53d9be37c668a30c252ce3a3a6aeafb9702ba36ce3aed0b2503be`  
		Last Modified: Tue, 17 Jul 2018 04:15:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.20-jessie`

```console
$ docker pull mongo@sha256:2ea3783f7ee258361a4264ea1d5b69b79e66abef97a26d2e92f493331368c9c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2.20-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:4032af5e26478b1618a7e807d8dc580ff39b4f8b531feed1b46f68c79fe6a033
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104148112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b4f7eadfd2eea8052577d61046dda99c4ecc49cef4f3f350baca8138f78fe0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:06:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jul 2018 04:07:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:07:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 04:07:35 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 17 Jul 2018 04:08:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 17 Jul 2018 04:08:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:08:29 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 17 Jul 2018 04:08:37 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:08:43 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 17 Jul 2018 04:08:43 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:08:44 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:08:44 GMT
ENV MONGO_MAJOR=3.2
# Tue, 17 Jul 2018 04:08:44 GMT
ENV MONGO_VERSION=3.2.20
# Tue, 17 Jul 2018 04:08:45 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 17 Jul 2018 04:09:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jul 2018 04:09:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jul 2018 04:09:43 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jul 2018 04:09:44 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:09:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 04:09:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:09:45 GMT
EXPOSE 27017/tcp
# Tue, 17 Jul 2018 04:09:56 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f47d82692cde614aa658782984a01c5130c4a7d2a1232bf8c0d4c42bd0ba2f`  
		Last Modified: Tue, 17 Jul 2018 04:15:19 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254ab97aaba698526568b72c72d15e9480931723be804e276c216e99fcb400d8`  
		Last Modified: Tue, 17 Jul 2018 04:15:17 GMT  
		Size: 2.4 MB (2350907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c87549305057643760fb5628970f71371b7803361cad5d43fd4d6d46d7c7fe`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 816.5 KB (816479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49beac3d0f281149b335b57fab3f8bac57f821af15d0b8c4169982d2ee97bbe7`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175436a0d68cde5c6033c918bd8adcf6d116da8c45e74416eb17a2c8d69335f8`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 3.6 KB (3601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d866dc1d55e872c254f929abaa4f97c0c9c778c8ca62f4bfd211bd5a2f66c5d2`  
		Last Modified: Tue, 17 Jul 2018 04:15:13 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3701929ad2dcd442bfeffee5af83d3d91c51ae302fdd851be2ff36a7b66e4a98`  
		Last Modified: Tue, 17 Jul 2018 04:15:43 GMT  
		Size: 70.9 MB (70850704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368d9372d91f5f7584a4110ec0c75fa69c9093fbc8e6176d2792514800cc70ee`  
		Last Modified: Tue, 17 Jul 2018 04:15:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4872a4715dd6dcc50234554ec4ada262e918f492e6726fcdbd0f023b583d952e`  
		Last Modified: Tue, 17 Jul 2018 04:15:13 GMT  
		Size: 3.6 KB (3568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c5c79e60c53d9be37c668a30c252ce3a3a6aeafb9702ba36ce3aed0b2503be`  
		Last Modified: Tue, 17 Jul 2018 04:15:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-jessie`

```console
$ docker pull mongo@sha256:2ea3783f7ee258361a4264ea1d5b69b79e66abef97a26d2e92f493331368c9c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:4032af5e26478b1618a7e807d8dc580ff39b4f8b531feed1b46f68c79fe6a033
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104148112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b4f7eadfd2eea8052577d61046dda99c4ecc49cef4f3f350baca8138f78fe0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:06:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jul 2018 04:07:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:07:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 04:07:35 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 17 Jul 2018 04:08:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 17 Jul 2018 04:08:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:08:29 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Tue, 17 Jul 2018 04:08:37 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:08:43 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 17 Jul 2018 04:08:43 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:08:44 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:08:44 GMT
ENV MONGO_MAJOR=3.2
# Tue, 17 Jul 2018 04:08:44 GMT
ENV MONGO_VERSION=3.2.20
# Tue, 17 Jul 2018 04:08:45 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 17 Jul 2018 04:09:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jul 2018 04:09:43 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jul 2018 04:09:43 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jul 2018 04:09:44 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:09:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 04:09:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:09:45 GMT
EXPOSE 27017/tcp
# Tue, 17 Jul 2018 04:09:56 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f47d82692cde614aa658782984a01c5130c4a7d2a1232bf8c0d4c42bd0ba2f`  
		Last Modified: Tue, 17 Jul 2018 04:15:19 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254ab97aaba698526568b72c72d15e9480931723be804e276c216e99fcb400d8`  
		Last Modified: Tue, 17 Jul 2018 04:15:17 GMT  
		Size: 2.4 MB (2350907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c87549305057643760fb5628970f71371b7803361cad5d43fd4d6d46d7c7fe`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 816.5 KB (816479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49beac3d0f281149b335b57fab3f8bac57f821af15d0b8c4169982d2ee97bbe7`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175436a0d68cde5c6033c918bd8adcf6d116da8c45e74416eb17a2c8d69335f8`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 3.6 KB (3601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d866dc1d55e872c254f929abaa4f97c0c9c778c8ca62f4bfd211bd5a2f66c5d2`  
		Last Modified: Tue, 17 Jul 2018 04:15:13 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3701929ad2dcd442bfeffee5af83d3d91c51ae302fdd851be2ff36a7b66e4a98`  
		Last Modified: Tue, 17 Jul 2018 04:15:43 GMT  
		Size: 70.9 MB (70850704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368d9372d91f5f7584a4110ec0c75fa69c9093fbc8e6176d2792514800cc70ee`  
		Last Modified: Tue, 17 Jul 2018 04:15:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4872a4715dd6dcc50234554ec4ada262e918f492e6726fcdbd0f023b583d952e`  
		Last Modified: Tue, 17 Jul 2018 04:15:13 GMT  
		Size: 3.6 KB (3568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c5c79e60c53d9be37c668a30c252ce3a3a6aeafb9702ba36ce3aed0b2503be`  
		Last Modified: Tue, 17 Jul 2018 04:15:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:3132ed027d9aa9fbca9ddf40188ceef082204ee3fc9677653c9dd0c3ff3b0bbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

```console
$ docker pull mongo@sha256:06b4a78af2d9de98a8787f26d17efc46e2f6a1834a74f6ed942de0d92e1b433f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133262270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb37fe6c4890270ae43eee40e995ea27c58b94d88d3beba1714cab11264b035`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:06:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jul 2018 04:07:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:07:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 04:07:35 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 17 Jul 2018 04:08:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 17 Jul 2018 04:08:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:10:13 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 17 Jul 2018 04:10:22 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:10:22 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 17 Jul 2018 04:10:22 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:10:23 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:10:23 GMT
ENV MONGO_MAJOR=3.4
# Tue, 17 Jul 2018 04:10:23 GMT
ENV MONGO_VERSION=3.4.16
# Tue, 17 Jul 2018 04:10:24 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 17 Jul 2018 04:11:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jul 2018 04:11:13 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jul 2018 04:11:13 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jul 2018 04:11:24 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:11:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 04:11:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:11:26 GMT
EXPOSE 27017/tcp
# Tue, 17 Jul 2018 04:11:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f47d82692cde614aa658782984a01c5130c4a7d2a1232bf8c0d4c42bd0ba2f`  
		Last Modified: Tue, 17 Jul 2018 04:15:19 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254ab97aaba698526568b72c72d15e9480931723be804e276c216e99fcb400d8`  
		Last Modified: Tue, 17 Jul 2018 04:15:17 GMT  
		Size: 2.4 MB (2350907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c87549305057643760fb5628970f71371b7803361cad5d43fd4d6d46d7c7fe`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 816.5 KB (816479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49beac3d0f281149b335b57fab3f8bac57f821af15d0b8c4169982d2ee97bbe7`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68bfdbed18f9c7fb7e427322243337618233b73fb73cdd98bb89fc3a3c22ef0`  
		Last Modified: Tue, 17 Jul 2018 04:16:27 GMT  
		Size: 2.0 KB (2006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33dd1468b0b723f42fbc9f7ed07f9922bb573a7e63b72dc088b807814b8d599`  
		Last Modified: Tue, 17 Jul 2018 04:16:24 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8f3ba27ec9778e8e8d3165ec744c09a183106feaff73347c2c3ad03105afe3`  
		Last Modified: Tue, 17 Jul 2018 04:17:01 GMT  
		Size: 100.0 MB (99966455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035548ba668d2d2288d69611c8a7d4515dda24eea0adcbe42d36e142461daba7`  
		Last Modified: Tue, 17 Jul 2018 04:16:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385e541391f861937bb4c5508fd62aaf1d5b8096982b99ab90b58822bf3e7b3e`  
		Last Modified: Tue, 17 Jul 2018 04:16:24 GMT  
		Size: 3.6 KB (3568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baedb6798aac70cf84825489f8c600870a7784508fcab902c9171b291728f56d`  
		Last Modified: Tue, 17 Jul 2018 04:16:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.16`

```console
$ docker pull mongo@sha256:3132ed027d9aa9fbca9ddf40188ceef082204ee3fc9677653c9dd0c3ff3b0bbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4.16` - linux; amd64

```console
$ docker pull mongo@sha256:06b4a78af2d9de98a8787f26d17efc46e2f6a1834a74f6ed942de0d92e1b433f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133262270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb37fe6c4890270ae43eee40e995ea27c58b94d88d3beba1714cab11264b035`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:06:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jul 2018 04:07:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:07:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 04:07:35 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 17 Jul 2018 04:08:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 17 Jul 2018 04:08:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:10:13 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 17 Jul 2018 04:10:22 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:10:22 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 17 Jul 2018 04:10:22 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:10:23 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:10:23 GMT
ENV MONGO_MAJOR=3.4
# Tue, 17 Jul 2018 04:10:23 GMT
ENV MONGO_VERSION=3.4.16
# Tue, 17 Jul 2018 04:10:24 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 17 Jul 2018 04:11:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jul 2018 04:11:13 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jul 2018 04:11:13 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jul 2018 04:11:24 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:11:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 04:11:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:11:26 GMT
EXPOSE 27017/tcp
# Tue, 17 Jul 2018 04:11:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f47d82692cde614aa658782984a01c5130c4a7d2a1232bf8c0d4c42bd0ba2f`  
		Last Modified: Tue, 17 Jul 2018 04:15:19 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254ab97aaba698526568b72c72d15e9480931723be804e276c216e99fcb400d8`  
		Last Modified: Tue, 17 Jul 2018 04:15:17 GMT  
		Size: 2.4 MB (2350907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c87549305057643760fb5628970f71371b7803361cad5d43fd4d6d46d7c7fe`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 816.5 KB (816479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49beac3d0f281149b335b57fab3f8bac57f821af15d0b8c4169982d2ee97bbe7`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68bfdbed18f9c7fb7e427322243337618233b73fb73cdd98bb89fc3a3c22ef0`  
		Last Modified: Tue, 17 Jul 2018 04:16:27 GMT  
		Size: 2.0 KB (2006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33dd1468b0b723f42fbc9f7ed07f9922bb573a7e63b72dc088b807814b8d599`  
		Last Modified: Tue, 17 Jul 2018 04:16:24 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8f3ba27ec9778e8e8d3165ec744c09a183106feaff73347c2c3ad03105afe3`  
		Last Modified: Tue, 17 Jul 2018 04:17:01 GMT  
		Size: 100.0 MB (99966455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035548ba668d2d2288d69611c8a7d4515dda24eea0adcbe42d36e142461daba7`  
		Last Modified: Tue, 17 Jul 2018 04:16:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385e541391f861937bb4c5508fd62aaf1d5b8096982b99ab90b58822bf3e7b3e`  
		Last Modified: Tue, 17 Jul 2018 04:16:24 GMT  
		Size: 3.6 KB (3568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baedb6798aac70cf84825489f8c600870a7784508fcab902c9171b291728f56d`  
		Last Modified: Tue, 17 Jul 2018 04:16:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.16-jessie`

```console
$ docker pull mongo@sha256:3132ed027d9aa9fbca9ddf40188ceef082204ee3fc9677653c9dd0c3ff3b0bbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4.16-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:06b4a78af2d9de98a8787f26d17efc46e2f6a1834a74f6ed942de0d92e1b433f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133262270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb37fe6c4890270ae43eee40e995ea27c58b94d88d3beba1714cab11264b035`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:06:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jul 2018 04:07:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:07:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 04:07:35 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 17 Jul 2018 04:08:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 17 Jul 2018 04:08:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:10:13 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 17 Jul 2018 04:10:22 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:10:22 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 17 Jul 2018 04:10:22 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:10:23 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:10:23 GMT
ENV MONGO_MAJOR=3.4
# Tue, 17 Jul 2018 04:10:23 GMT
ENV MONGO_VERSION=3.4.16
# Tue, 17 Jul 2018 04:10:24 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 17 Jul 2018 04:11:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jul 2018 04:11:13 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jul 2018 04:11:13 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jul 2018 04:11:24 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:11:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 04:11:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:11:26 GMT
EXPOSE 27017/tcp
# Tue, 17 Jul 2018 04:11:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f47d82692cde614aa658782984a01c5130c4a7d2a1232bf8c0d4c42bd0ba2f`  
		Last Modified: Tue, 17 Jul 2018 04:15:19 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254ab97aaba698526568b72c72d15e9480931723be804e276c216e99fcb400d8`  
		Last Modified: Tue, 17 Jul 2018 04:15:17 GMT  
		Size: 2.4 MB (2350907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c87549305057643760fb5628970f71371b7803361cad5d43fd4d6d46d7c7fe`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 816.5 KB (816479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49beac3d0f281149b335b57fab3f8bac57f821af15d0b8c4169982d2ee97bbe7`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68bfdbed18f9c7fb7e427322243337618233b73fb73cdd98bb89fc3a3c22ef0`  
		Last Modified: Tue, 17 Jul 2018 04:16:27 GMT  
		Size: 2.0 KB (2006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33dd1468b0b723f42fbc9f7ed07f9922bb573a7e63b72dc088b807814b8d599`  
		Last Modified: Tue, 17 Jul 2018 04:16:24 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8f3ba27ec9778e8e8d3165ec744c09a183106feaff73347c2c3ad03105afe3`  
		Last Modified: Tue, 17 Jul 2018 04:17:01 GMT  
		Size: 100.0 MB (99966455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035548ba668d2d2288d69611c8a7d4515dda24eea0adcbe42d36e142461daba7`  
		Last Modified: Tue, 17 Jul 2018 04:16:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385e541391f861937bb4c5508fd62aaf1d5b8096982b99ab90b58822bf3e7b3e`  
		Last Modified: Tue, 17 Jul 2018 04:16:24 GMT  
		Size: 3.6 KB (3568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baedb6798aac70cf84825489f8c600870a7784508fcab902c9171b291728f56d`  
		Last Modified: Tue, 17 Jul 2018 04:16:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-jessie`

```console
$ docker pull mongo@sha256:3132ed027d9aa9fbca9ddf40188ceef082204ee3fc9677653c9dd0c3ff3b0bbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:06b4a78af2d9de98a8787f26d17efc46e2f6a1834a74f6ed942de0d92e1b433f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133262270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb37fe6c4890270ae43eee40e995ea27c58b94d88d3beba1714cab11264b035`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:06:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jul 2018 04:07:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:07:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 04:07:35 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 17 Jul 2018 04:08:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 17 Jul 2018 04:08:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:10:13 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Tue, 17 Jul 2018 04:10:22 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:10:22 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 17 Jul 2018 04:10:22 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:10:23 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:10:23 GMT
ENV MONGO_MAJOR=3.4
# Tue, 17 Jul 2018 04:10:23 GMT
ENV MONGO_VERSION=3.4.16
# Tue, 17 Jul 2018 04:10:24 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 17 Jul 2018 04:11:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jul 2018 04:11:13 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jul 2018 04:11:13 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jul 2018 04:11:24 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:11:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 04:11:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:11:26 GMT
EXPOSE 27017/tcp
# Tue, 17 Jul 2018 04:11:26 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f47d82692cde614aa658782984a01c5130c4a7d2a1232bf8c0d4c42bd0ba2f`  
		Last Modified: Tue, 17 Jul 2018 04:15:19 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254ab97aaba698526568b72c72d15e9480931723be804e276c216e99fcb400d8`  
		Last Modified: Tue, 17 Jul 2018 04:15:17 GMT  
		Size: 2.4 MB (2350907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c87549305057643760fb5628970f71371b7803361cad5d43fd4d6d46d7c7fe`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 816.5 KB (816479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49beac3d0f281149b335b57fab3f8bac57f821af15d0b8c4169982d2ee97bbe7`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68bfdbed18f9c7fb7e427322243337618233b73fb73cdd98bb89fc3a3c22ef0`  
		Last Modified: Tue, 17 Jul 2018 04:16:27 GMT  
		Size: 2.0 KB (2006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33dd1468b0b723f42fbc9f7ed07f9922bb573a7e63b72dc088b807814b8d599`  
		Last Modified: Tue, 17 Jul 2018 04:16:24 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8f3ba27ec9778e8e8d3165ec744c09a183106feaff73347c2c3ad03105afe3`  
		Last Modified: Tue, 17 Jul 2018 04:17:01 GMT  
		Size: 100.0 MB (99966455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035548ba668d2d2288d69611c8a7d4515dda24eea0adcbe42d36e142461daba7`  
		Last Modified: Tue, 17 Jul 2018 04:16:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385e541391f861937bb4c5508fd62aaf1d5b8096982b99ab90b58822bf3e7b3e`  
		Last Modified: Tue, 17 Jul 2018 04:16:24 GMT  
		Size: 3.6 KB (3568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baedb6798aac70cf84825489f8c600870a7784508fcab902c9171b291728f56d`  
		Last Modified: Tue, 17 Jul 2018 04:16:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6`

```console
$ docker pull mongo@sha256:df82a70fd59c4642508e996b5c8aeaa328781570d94ee665c777173e1b6e0fa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6` - linux; amd64

```console
$ docker pull mongo@sha256:364155a755d57ce71c9c8fb1573664224629c8c87e97c71347f7524de2289f90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132156303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceee4d1620d4291b3456182540fc47c6c8eef2827e2359eebf025fd465b4030a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:06:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jul 2018 04:07:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:07:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 04:07:35 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 17 Jul 2018 04:08:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 17 Jul 2018 04:08:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:11:49 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 17 Jul 2018 04:11:59 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:11:59 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 17 Jul 2018 04:11:59 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:12:00 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:12:00 GMT
ENV MONGO_MAJOR=3.6
# Tue, 17 Jul 2018 04:12:00 GMT
ENV MONGO_VERSION=3.6.6
# Tue, 17 Jul 2018 04:12:01 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 17 Jul 2018 04:12:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jul 2018 04:12:47 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jul 2018 04:12:48 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jul 2018 04:12:48 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:13:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:13:00 GMT
EXPOSE 27017/tcp
# Tue, 17 Jul 2018 04:13:00 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f47d82692cde614aa658782984a01c5130c4a7d2a1232bf8c0d4c42bd0ba2f`  
		Last Modified: Tue, 17 Jul 2018 04:15:19 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254ab97aaba698526568b72c72d15e9480931723be804e276c216e99fcb400d8`  
		Last Modified: Tue, 17 Jul 2018 04:15:17 GMT  
		Size: 2.4 MB (2350907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c87549305057643760fb5628970f71371b7803361cad5d43fd4d6d46d7c7fe`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 816.5 KB (816479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49beac3d0f281149b335b57fab3f8bac57f821af15d0b8c4169982d2ee97bbe7`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520a8baafbe7977cd8698dd85f30a3605793c35e0cddfe9f328a663926d27350`  
		Last Modified: Tue, 17 Jul 2018 04:17:36 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf62c4cb4b1ce6c6a21d09d0557b4838c3fedce6548c01b7f4996752263f0da`  
		Last Modified: Tue, 17 Jul 2018 04:17:35 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2c9b97b30adf46fba2db946d99f8086cf5060e323d6e0b6bb519def70aa688`  
		Last Modified: Tue, 17 Jul 2018 04:18:12 GMT  
		Size: 98.9 MB (98861028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e6f17075b2585536df6d1ad5fe38d793c2b415f4b80dc19c45881cace38031`  
		Last Modified: Tue, 17 Jul 2018 04:17:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b510662cfc9e4b92733c0158e8e1d72020405ac792e803d545293ddad1f957a9`  
		Last Modified: Tue, 17 Jul 2018 04:17:35 GMT  
		Size: 3.7 KB (3714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.6`

```console
$ docker pull mongo@sha256:df82a70fd59c4642508e996b5c8aeaa328781570d94ee665c777173e1b6e0fa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6.6` - linux; amd64

```console
$ docker pull mongo@sha256:364155a755d57ce71c9c8fb1573664224629c8c87e97c71347f7524de2289f90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132156303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceee4d1620d4291b3456182540fc47c6c8eef2827e2359eebf025fd465b4030a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:06:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jul 2018 04:07:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:07:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 04:07:35 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 17 Jul 2018 04:08:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 17 Jul 2018 04:08:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:11:49 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 17 Jul 2018 04:11:59 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:11:59 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 17 Jul 2018 04:11:59 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:12:00 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:12:00 GMT
ENV MONGO_MAJOR=3.6
# Tue, 17 Jul 2018 04:12:00 GMT
ENV MONGO_VERSION=3.6.6
# Tue, 17 Jul 2018 04:12:01 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 17 Jul 2018 04:12:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jul 2018 04:12:47 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jul 2018 04:12:48 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jul 2018 04:12:48 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:13:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:13:00 GMT
EXPOSE 27017/tcp
# Tue, 17 Jul 2018 04:13:00 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f47d82692cde614aa658782984a01c5130c4a7d2a1232bf8c0d4c42bd0ba2f`  
		Last Modified: Tue, 17 Jul 2018 04:15:19 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254ab97aaba698526568b72c72d15e9480931723be804e276c216e99fcb400d8`  
		Last Modified: Tue, 17 Jul 2018 04:15:17 GMT  
		Size: 2.4 MB (2350907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c87549305057643760fb5628970f71371b7803361cad5d43fd4d6d46d7c7fe`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 816.5 KB (816479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49beac3d0f281149b335b57fab3f8bac57f821af15d0b8c4169982d2ee97bbe7`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520a8baafbe7977cd8698dd85f30a3605793c35e0cddfe9f328a663926d27350`  
		Last Modified: Tue, 17 Jul 2018 04:17:36 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf62c4cb4b1ce6c6a21d09d0557b4838c3fedce6548c01b7f4996752263f0da`  
		Last Modified: Tue, 17 Jul 2018 04:17:35 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2c9b97b30adf46fba2db946d99f8086cf5060e323d6e0b6bb519def70aa688`  
		Last Modified: Tue, 17 Jul 2018 04:18:12 GMT  
		Size: 98.9 MB (98861028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e6f17075b2585536df6d1ad5fe38d793c2b415f4b80dc19c45881cace38031`  
		Last Modified: Tue, 17 Jul 2018 04:17:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b510662cfc9e4b92733c0158e8e1d72020405ac792e803d545293ddad1f957a9`  
		Last Modified: Tue, 17 Jul 2018 04:17:35 GMT  
		Size: 3.7 KB (3714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.6-jessie`

```console
$ docker pull mongo@sha256:df82a70fd59c4642508e996b5c8aeaa328781570d94ee665c777173e1b6e0fa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6.6-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:364155a755d57ce71c9c8fb1573664224629c8c87e97c71347f7524de2289f90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132156303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceee4d1620d4291b3456182540fc47c6c8eef2827e2359eebf025fd465b4030a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:06:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jul 2018 04:07:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:07:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 04:07:35 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 17 Jul 2018 04:08:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 17 Jul 2018 04:08:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:11:49 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 17 Jul 2018 04:11:59 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:11:59 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 17 Jul 2018 04:11:59 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:12:00 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:12:00 GMT
ENV MONGO_MAJOR=3.6
# Tue, 17 Jul 2018 04:12:00 GMT
ENV MONGO_VERSION=3.6.6
# Tue, 17 Jul 2018 04:12:01 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 17 Jul 2018 04:12:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jul 2018 04:12:47 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jul 2018 04:12:48 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jul 2018 04:12:48 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:13:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:13:00 GMT
EXPOSE 27017/tcp
# Tue, 17 Jul 2018 04:13:00 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f47d82692cde614aa658782984a01c5130c4a7d2a1232bf8c0d4c42bd0ba2f`  
		Last Modified: Tue, 17 Jul 2018 04:15:19 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254ab97aaba698526568b72c72d15e9480931723be804e276c216e99fcb400d8`  
		Last Modified: Tue, 17 Jul 2018 04:15:17 GMT  
		Size: 2.4 MB (2350907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c87549305057643760fb5628970f71371b7803361cad5d43fd4d6d46d7c7fe`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 816.5 KB (816479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49beac3d0f281149b335b57fab3f8bac57f821af15d0b8c4169982d2ee97bbe7`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520a8baafbe7977cd8698dd85f30a3605793c35e0cddfe9f328a663926d27350`  
		Last Modified: Tue, 17 Jul 2018 04:17:36 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf62c4cb4b1ce6c6a21d09d0557b4838c3fedce6548c01b7f4996752263f0da`  
		Last Modified: Tue, 17 Jul 2018 04:17:35 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2c9b97b30adf46fba2db946d99f8086cf5060e323d6e0b6bb519def70aa688`  
		Last Modified: Tue, 17 Jul 2018 04:18:12 GMT  
		Size: 98.9 MB (98861028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e6f17075b2585536df6d1ad5fe38d793c2b415f4b80dc19c45881cace38031`  
		Last Modified: Tue, 17 Jul 2018 04:17:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b510662cfc9e4b92733c0158e8e1d72020405ac792e803d545293ddad1f957a9`  
		Last Modified: Tue, 17 Jul 2018 04:17:35 GMT  
		Size: 3.7 KB (3714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6-jessie`

```console
$ docker pull mongo@sha256:df82a70fd59c4642508e996b5c8aeaa328781570d94ee665c777173e1b6e0fa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:364155a755d57ce71c9c8fb1573664224629c8c87e97c71347f7524de2289f90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132156303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceee4d1620d4291b3456182540fc47c6c8eef2827e2359eebf025fd465b4030a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:06:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jul 2018 04:07:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:07:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 04:07:35 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 17 Jul 2018 04:08:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 17 Jul 2018 04:08:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:11:49 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 17 Jul 2018 04:11:59 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:11:59 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 17 Jul 2018 04:11:59 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:12:00 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:12:00 GMT
ENV MONGO_MAJOR=3.6
# Tue, 17 Jul 2018 04:12:00 GMT
ENV MONGO_VERSION=3.6.6
# Tue, 17 Jul 2018 04:12:01 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 17 Jul 2018 04:12:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jul 2018 04:12:47 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jul 2018 04:12:48 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jul 2018 04:12:48 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:13:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:13:00 GMT
EXPOSE 27017/tcp
# Tue, 17 Jul 2018 04:13:00 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f47d82692cde614aa658782984a01c5130c4a7d2a1232bf8c0d4c42bd0ba2f`  
		Last Modified: Tue, 17 Jul 2018 04:15:19 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254ab97aaba698526568b72c72d15e9480931723be804e276c216e99fcb400d8`  
		Last Modified: Tue, 17 Jul 2018 04:15:17 GMT  
		Size: 2.4 MB (2350907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c87549305057643760fb5628970f71371b7803361cad5d43fd4d6d46d7c7fe`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 816.5 KB (816479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49beac3d0f281149b335b57fab3f8bac57f821af15d0b8c4169982d2ee97bbe7`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520a8baafbe7977cd8698dd85f30a3605793c35e0cddfe9f328a663926d27350`  
		Last Modified: Tue, 17 Jul 2018 04:17:36 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf62c4cb4b1ce6c6a21d09d0557b4838c3fedce6548c01b7f4996752263f0da`  
		Last Modified: Tue, 17 Jul 2018 04:17:35 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2c9b97b30adf46fba2db946d99f8086cf5060e323d6e0b6bb519def70aa688`  
		Last Modified: Tue, 17 Jul 2018 04:18:12 GMT  
		Size: 98.9 MB (98861028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e6f17075b2585536df6d1ad5fe38d793c2b415f4b80dc19c45881cace38031`  
		Last Modified: Tue, 17 Jul 2018 04:17:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b510662cfc9e4b92733c0158e8e1d72020405ac792e803d545293ddad1f957a9`  
		Last Modified: Tue, 17 Jul 2018 04:17:35 GMT  
		Size: 3.7 KB (3714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-jessie`

```console
$ docker pull mongo@sha256:df82a70fd59c4642508e996b5c8aeaa328781570d94ee665c777173e1b6e0fa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:364155a755d57ce71c9c8fb1573664224629c8c87e97c71347f7524de2289f90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132156303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceee4d1620d4291b3456182540fc47c6c8eef2827e2359eebf025fd465b4030a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:06:52 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jul 2018 04:07:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:07:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 04:07:35 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 17 Jul 2018 04:08:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 17 Jul 2018 04:08:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:11:49 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 17 Jul 2018 04:11:59 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:11:59 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 17 Jul 2018 04:11:59 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:12:00 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:12:00 GMT
ENV MONGO_MAJOR=3.6
# Tue, 17 Jul 2018 04:12:00 GMT
ENV MONGO_VERSION=3.6.6
# Tue, 17 Jul 2018 04:12:01 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 17 Jul 2018 04:12:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jul 2018 04:12:47 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jul 2018 04:12:48 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jul 2018 04:12:48 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:13:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:13:00 GMT
EXPOSE 27017/tcp
# Tue, 17 Jul 2018 04:13:00 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f47d82692cde614aa658782984a01c5130c4a7d2a1232bf8c0d4c42bd0ba2f`  
		Last Modified: Tue, 17 Jul 2018 04:15:19 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254ab97aaba698526568b72c72d15e9480931723be804e276c216e99fcb400d8`  
		Last Modified: Tue, 17 Jul 2018 04:15:17 GMT  
		Size: 2.4 MB (2350907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c87549305057643760fb5628970f71371b7803361cad5d43fd4d6d46d7c7fe`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 816.5 KB (816479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49beac3d0f281149b335b57fab3f8bac57f821af15d0b8c4169982d2ee97bbe7`  
		Last Modified: Tue, 17 Jul 2018 04:15:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520a8baafbe7977cd8698dd85f30a3605793c35e0cddfe9f328a663926d27350`  
		Last Modified: Tue, 17 Jul 2018 04:17:36 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf62c4cb4b1ce6c6a21d09d0557b4838c3fedce6548c01b7f4996752263f0da`  
		Last Modified: Tue, 17 Jul 2018 04:17:35 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2c9b97b30adf46fba2db946d99f8086cf5060e323d6e0b6bb519def70aa688`  
		Last Modified: Tue, 17 Jul 2018 04:18:12 GMT  
		Size: 98.9 MB (98861028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e6f17075b2585536df6d1ad5fe38d793c2b415f4b80dc19c45881cace38031`  
		Last Modified: Tue, 17 Jul 2018 04:17:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b510662cfc9e4b92733c0158e8e1d72020405ac792e803d545293ddad1f957a9`  
		Last Modified: Tue, 17 Jul 2018 04:17:35 GMT  
		Size: 3.7 KB (3714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4`

```console
$ docker pull mongo@sha256:2e5e54f94429839d4904c9962b6933ef631b1938b6223c1cf84a0442421f111d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:4` - linux; amd64

```console
$ docker pull mongo@sha256:810e499962b39a05131c5d25230fc92ba385f9353fc44ee8ed27a14ce49c8bac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.4 MB (133354235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af93d1bb9e2a9ff0ac62127421bccc0773a23423b756e1918e8a07c84249d72f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:59 GMT
ADD file:7b8419bb9079c6d91ceeb2d0f35c46bcb8083d9d666eb21fda765ed755a07840 in / 
# Tue, 17 Jul 2018 00:54:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:54:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:54:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:54:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:54:02 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 04:13:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jul 2018 04:13:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:13:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 04:13:54 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 17 Jul 2018 04:14:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 17 Jul 2018 04:14:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:14:05 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 17 Jul 2018 04:14:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:14:06 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 17 Jul 2018 04:14:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_MAJOR=4.0
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_VERSION=4.0.0
# Tue, 17 Jul 2018 04:14:08 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 17 Jul 2018 04:14:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jul 2018 04:14:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jul 2018 04:14:36 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jul 2018 04:14:37 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:14:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:14:37 GMT
EXPOSE 27017/tcp
# Tue, 17 Jul 2018 04:14:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3620e2d282dce98978bc2ae770aa43121cfa88cafdb8888d552bfd96ade2c857`  
		Last Modified: Mon, 09 Jul 2018 15:05:32 GMT  
		Size: 43.2 MB (43190074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22f5e4b3b2cfcefabf6ae23afc6eec160c1a9ab32ba72f9117feee454a6dc5`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f229f854da0ebac56b80462718952353fe22745701123dee20cbd24dede33d`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe433abe16a89c38c06a4e91d1db85448407c4783d6cfbde3a03c4d71481d24`  
		Last Modified: Tue, 17 Jul 2018 00:59:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b72a16d85e58632c1b2114dd92916b5c923f697a667ae56fd14a9a9a33869b`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1757e0920c931d89a7bd21c6c8c1a2fdf46dde51618efca1ebc28980179cf08`  
		Last Modified: Tue, 17 Jul 2018 04:19:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad61d16333c1e67cf913d1e225e170895ee9551a930fef8a568c97b09a71ed0`  
		Last Modified: Tue, 17 Jul 2018 04:19:03 GMT  
		Size: 2.9 MB (2946412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b55b55716bc598f4d649c91b0c3d5488230836771fe87e12955be7236151cf9`  
		Last Modified: Tue, 17 Jul 2018 04:19:02 GMT  
		Size: 751.0 KB (750984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e1a31a5de88e167f03c1e3d692cae35cae0ebb41ecca648a0e0b628983e5bb`  
		Last Modified: Tue, 17 Jul 2018 04:19:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a871e8da652e6493ad642c0ba31a0374b3c0fca95b6cc17cb5f4d69844db2ed6`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0015ffced2abb51adcd314e55061390aba19478f0c212cdee68ed5cb9a0b73b4`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e51b51b8ea3a23cf43672a19f4e8a5aafe435c0538207183b67b520979edb`  
		Last Modified: Tue, 17 Jul 2018 04:19:32 GMT  
		Size: 86.5 MB (86456659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210e26b24d82b846a60a8be45e7fb9f982aabc727ed09622cb0b3b5eed098297`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f5ff21092f19c4afc701a131323fb624af8e736a10bf467c5d8c9d32263ccd`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 3.7 KB (3709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:1b8bf8ff2ee640bce76bb2dd0e0713f35db160978a9ec58debeb1efcb333ee9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.4 MB (153400245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2de9565c102337622bbacf0d1fa2f53647a63ff47dc9d8a7cb8393b2d04ed8c7`
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
# Thu, 28 Jun 2018 08:54:43 GMT
ENV MONGO_MAJOR=4.0
# Thu, 28 Jun 2018 08:54:44 GMT
ENV MONGO_VERSION=4.0.0
# Thu, 28 Jun 2018 08:54:46 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 28 Jun 2018 08:55:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 28 Jun 2018 08:55:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 28 Jun 2018 08:55:49 GMT
VOLUME [/data/db /data/configdb]
# Thu, 28 Jun 2018 08:55:50 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Thu, 28 Jun 2018 08:55:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Jun 2018 08:55:51 GMT
EXPOSE 27017/tcp
# Thu, 28 Jun 2018 08:55:52 GMT
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
	-	`sha256:0c3614a36961c82b81e5ebcd34185dbfcc29fd8c5657f6779031222d361b61a9`  
		Last Modified: Thu, 28 Jun 2018 08:56:15 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7c4375ba956271dc1ceadb002429a373fb794b488ef598e467312851a16245`  
		Last Modified: Thu, 28 Jun 2018 08:56:57 GMT  
		Size: 110.9 MB (110913974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e954604bb4a970ff9023f2314a45f28c015a352af249ac1191fbd08ba4d479f4`  
		Last Modified: Thu, 28 Jun 2018 08:56:14 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cab44ecd74c0d6968682f859655f7bd87f5ec7e23ec42a5e2db3757a577a6a8`  
		Last Modified: Thu, 28 Jun 2018 08:56:15 GMT  
		Size: 3.7 KB (3711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0`

```console
$ docker pull mongo@sha256:2e5e54f94429839d4904c9962b6933ef631b1938b6223c1cf84a0442421f111d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:4.0` - linux; amd64

```console
$ docker pull mongo@sha256:810e499962b39a05131c5d25230fc92ba385f9353fc44ee8ed27a14ce49c8bac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.4 MB (133354235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af93d1bb9e2a9ff0ac62127421bccc0773a23423b756e1918e8a07c84249d72f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:59 GMT
ADD file:7b8419bb9079c6d91ceeb2d0f35c46bcb8083d9d666eb21fda765ed755a07840 in / 
# Tue, 17 Jul 2018 00:54:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:54:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:54:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:54:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:54:02 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 04:13:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jul 2018 04:13:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:13:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 04:13:54 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 17 Jul 2018 04:14:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 17 Jul 2018 04:14:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:14:05 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 17 Jul 2018 04:14:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:14:06 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 17 Jul 2018 04:14:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_MAJOR=4.0
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_VERSION=4.0.0
# Tue, 17 Jul 2018 04:14:08 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 17 Jul 2018 04:14:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jul 2018 04:14:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jul 2018 04:14:36 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jul 2018 04:14:37 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:14:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:14:37 GMT
EXPOSE 27017/tcp
# Tue, 17 Jul 2018 04:14:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3620e2d282dce98978bc2ae770aa43121cfa88cafdb8888d552bfd96ade2c857`  
		Last Modified: Mon, 09 Jul 2018 15:05:32 GMT  
		Size: 43.2 MB (43190074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22f5e4b3b2cfcefabf6ae23afc6eec160c1a9ab32ba72f9117feee454a6dc5`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f229f854da0ebac56b80462718952353fe22745701123dee20cbd24dede33d`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe433abe16a89c38c06a4e91d1db85448407c4783d6cfbde3a03c4d71481d24`  
		Last Modified: Tue, 17 Jul 2018 00:59:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b72a16d85e58632c1b2114dd92916b5c923f697a667ae56fd14a9a9a33869b`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1757e0920c931d89a7bd21c6c8c1a2fdf46dde51618efca1ebc28980179cf08`  
		Last Modified: Tue, 17 Jul 2018 04:19:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad61d16333c1e67cf913d1e225e170895ee9551a930fef8a568c97b09a71ed0`  
		Last Modified: Tue, 17 Jul 2018 04:19:03 GMT  
		Size: 2.9 MB (2946412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b55b55716bc598f4d649c91b0c3d5488230836771fe87e12955be7236151cf9`  
		Last Modified: Tue, 17 Jul 2018 04:19:02 GMT  
		Size: 751.0 KB (750984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e1a31a5de88e167f03c1e3d692cae35cae0ebb41ecca648a0e0b628983e5bb`  
		Last Modified: Tue, 17 Jul 2018 04:19:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a871e8da652e6493ad642c0ba31a0374b3c0fca95b6cc17cb5f4d69844db2ed6`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0015ffced2abb51adcd314e55061390aba19478f0c212cdee68ed5cb9a0b73b4`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e51b51b8ea3a23cf43672a19f4e8a5aafe435c0538207183b67b520979edb`  
		Last Modified: Tue, 17 Jul 2018 04:19:32 GMT  
		Size: 86.5 MB (86456659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210e26b24d82b846a60a8be45e7fb9f982aabc727ed09622cb0b3b5eed098297`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f5ff21092f19c4afc701a131323fb624af8e736a10bf467c5d8c9d32263ccd`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 3.7 KB (3709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:1b8bf8ff2ee640bce76bb2dd0e0713f35db160978a9ec58debeb1efcb333ee9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.4 MB (153400245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2de9565c102337622bbacf0d1fa2f53647a63ff47dc9d8a7cb8393b2d04ed8c7`
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
# Thu, 28 Jun 2018 08:54:43 GMT
ENV MONGO_MAJOR=4.0
# Thu, 28 Jun 2018 08:54:44 GMT
ENV MONGO_VERSION=4.0.0
# Thu, 28 Jun 2018 08:54:46 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 28 Jun 2018 08:55:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 28 Jun 2018 08:55:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 28 Jun 2018 08:55:49 GMT
VOLUME [/data/db /data/configdb]
# Thu, 28 Jun 2018 08:55:50 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Thu, 28 Jun 2018 08:55:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Jun 2018 08:55:51 GMT
EXPOSE 27017/tcp
# Thu, 28 Jun 2018 08:55:52 GMT
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
	-	`sha256:0c3614a36961c82b81e5ebcd34185dbfcc29fd8c5657f6779031222d361b61a9`  
		Last Modified: Thu, 28 Jun 2018 08:56:15 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7c4375ba956271dc1ceadb002429a373fb794b488ef598e467312851a16245`  
		Last Modified: Thu, 28 Jun 2018 08:56:57 GMT  
		Size: 110.9 MB (110913974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e954604bb4a970ff9023f2314a45f28c015a352af249ac1191fbd08ba4d479f4`  
		Last Modified: Thu, 28 Jun 2018 08:56:14 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cab44ecd74c0d6968682f859655f7bd87f5ec7e23ec42a5e2db3757a577a6a8`  
		Last Modified: Thu, 28 Jun 2018 08:56:15 GMT  
		Size: 3.7 KB (3711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0.0`

```console
$ docker pull mongo@sha256:2e5e54f94429839d4904c9962b6933ef631b1938b6223c1cf84a0442421f111d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:4.0.0` - linux; amd64

```console
$ docker pull mongo@sha256:810e499962b39a05131c5d25230fc92ba385f9353fc44ee8ed27a14ce49c8bac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.4 MB (133354235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af93d1bb9e2a9ff0ac62127421bccc0773a23423b756e1918e8a07c84249d72f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:59 GMT
ADD file:7b8419bb9079c6d91ceeb2d0f35c46bcb8083d9d666eb21fda765ed755a07840 in / 
# Tue, 17 Jul 2018 00:54:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:54:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:54:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:54:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:54:02 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 04:13:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jul 2018 04:13:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:13:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 04:13:54 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 17 Jul 2018 04:14:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 17 Jul 2018 04:14:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:14:05 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 17 Jul 2018 04:14:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:14:06 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 17 Jul 2018 04:14:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_MAJOR=4.0
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_VERSION=4.0.0
# Tue, 17 Jul 2018 04:14:08 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 17 Jul 2018 04:14:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jul 2018 04:14:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jul 2018 04:14:36 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jul 2018 04:14:37 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:14:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:14:37 GMT
EXPOSE 27017/tcp
# Tue, 17 Jul 2018 04:14:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3620e2d282dce98978bc2ae770aa43121cfa88cafdb8888d552bfd96ade2c857`  
		Last Modified: Mon, 09 Jul 2018 15:05:32 GMT  
		Size: 43.2 MB (43190074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22f5e4b3b2cfcefabf6ae23afc6eec160c1a9ab32ba72f9117feee454a6dc5`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f229f854da0ebac56b80462718952353fe22745701123dee20cbd24dede33d`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe433abe16a89c38c06a4e91d1db85448407c4783d6cfbde3a03c4d71481d24`  
		Last Modified: Tue, 17 Jul 2018 00:59:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b72a16d85e58632c1b2114dd92916b5c923f697a667ae56fd14a9a9a33869b`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1757e0920c931d89a7bd21c6c8c1a2fdf46dde51618efca1ebc28980179cf08`  
		Last Modified: Tue, 17 Jul 2018 04:19:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad61d16333c1e67cf913d1e225e170895ee9551a930fef8a568c97b09a71ed0`  
		Last Modified: Tue, 17 Jul 2018 04:19:03 GMT  
		Size: 2.9 MB (2946412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b55b55716bc598f4d649c91b0c3d5488230836771fe87e12955be7236151cf9`  
		Last Modified: Tue, 17 Jul 2018 04:19:02 GMT  
		Size: 751.0 KB (750984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e1a31a5de88e167f03c1e3d692cae35cae0ebb41ecca648a0e0b628983e5bb`  
		Last Modified: Tue, 17 Jul 2018 04:19:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a871e8da652e6493ad642c0ba31a0374b3c0fca95b6cc17cb5f4d69844db2ed6`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0015ffced2abb51adcd314e55061390aba19478f0c212cdee68ed5cb9a0b73b4`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e51b51b8ea3a23cf43672a19f4e8a5aafe435c0538207183b67b520979edb`  
		Last Modified: Tue, 17 Jul 2018 04:19:32 GMT  
		Size: 86.5 MB (86456659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210e26b24d82b846a60a8be45e7fb9f982aabc727ed09622cb0b3b5eed098297`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f5ff21092f19c4afc701a131323fb624af8e736a10bf467c5d8c9d32263ccd`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 3.7 KB (3709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0.0` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:1b8bf8ff2ee640bce76bb2dd0e0713f35db160978a9ec58debeb1efcb333ee9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.4 MB (153400245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2de9565c102337622bbacf0d1fa2f53647a63ff47dc9d8a7cb8393b2d04ed8c7`
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
# Thu, 28 Jun 2018 08:54:43 GMT
ENV MONGO_MAJOR=4.0
# Thu, 28 Jun 2018 08:54:44 GMT
ENV MONGO_VERSION=4.0.0
# Thu, 28 Jun 2018 08:54:46 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 28 Jun 2018 08:55:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 28 Jun 2018 08:55:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 28 Jun 2018 08:55:49 GMT
VOLUME [/data/db /data/configdb]
# Thu, 28 Jun 2018 08:55:50 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Thu, 28 Jun 2018 08:55:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Jun 2018 08:55:51 GMT
EXPOSE 27017/tcp
# Thu, 28 Jun 2018 08:55:52 GMT
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
	-	`sha256:0c3614a36961c82b81e5ebcd34185dbfcc29fd8c5657f6779031222d361b61a9`  
		Last Modified: Thu, 28 Jun 2018 08:56:15 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7c4375ba956271dc1ceadb002429a373fb794b488ef598e467312851a16245`  
		Last Modified: Thu, 28 Jun 2018 08:56:57 GMT  
		Size: 110.9 MB (110913974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e954604bb4a970ff9023f2314a45f28c015a352af249ac1191fbd08ba4d479f4`  
		Last Modified: Thu, 28 Jun 2018 08:56:14 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cab44ecd74c0d6968682f859655f7bd87f5ec7e23ec42a5e2db3757a577a6a8`  
		Last Modified: Thu, 28 Jun 2018 08:56:15 GMT  
		Size: 3.7 KB (3711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0.0-xenial`

```console
$ docker pull mongo@sha256:2e5e54f94429839d4904c9962b6933ef631b1938b6223c1cf84a0442421f111d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:4.0.0-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:810e499962b39a05131c5d25230fc92ba385f9353fc44ee8ed27a14ce49c8bac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.4 MB (133354235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af93d1bb9e2a9ff0ac62127421bccc0773a23423b756e1918e8a07c84249d72f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:59 GMT
ADD file:7b8419bb9079c6d91ceeb2d0f35c46bcb8083d9d666eb21fda765ed755a07840 in / 
# Tue, 17 Jul 2018 00:54:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:54:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:54:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:54:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:54:02 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 04:13:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jul 2018 04:13:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:13:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 04:13:54 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 17 Jul 2018 04:14:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 17 Jul 2018 04:14:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:14:05 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 17 Jul 2018 04:14:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:14:06 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 17 Jul 2018 04:14:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_MAJOR=4.0
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_VERSION=4.0.0
# Tue, 17 Jul 2018 04:14:08 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 17 Jul 2018 04:14:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jul 2018 04:14:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jul 2018 04:14:36 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jul 2018 04:14:37 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:14:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:14:37 GMT
EXPOSE 27017/tcp
# Tue, 17 Jul 2018 04:14:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3620e2d282dce98978bc2ae770aa43121cfa88cafdb8888d552bfd96ade2c857`  
		Last Modified: Mon, 09 Jul 2018 15:05:32 GMT  
		Size: 43.2 MB (43190074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22f5e4b3b2cfcefabf6ae23afc6eec160c1a9ab32ba72f9117feee454a6dc5`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f229f854da0ebac56b80462718952353fe22745701123dee20cbd24dede33d`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe433abe16a89c38c06a4e91d1db85448407c4783d6cfbde3a03c4d71481d24`  
		Last Modified: Tue, 17 Jul 2018 00:59:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b72a16d85e58632c1b2114dd92916b5c923f697a667ae56fd14a9a9a33869b`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1757e0920c931d89a7bd21c6c8c1a2fdf46dde51618efca1ebc28980179cf08`  
		Last Modified: Tue, 17 Jul 2018 04:19:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad61d16333c1e67cf913d1e225e170895ee9551a930fef8a568c97b09a71ed0`  
		Last Modified: Tue, 17 Jul 2018 04:19:03 GMT  
		Size: 2.9 MB (2946412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b55b55716bc598f4d649c91b0c3d5488230836771fe87e12955be7236151cf9`  
		Last Modified: Tue, 17 Jul 2018 04:19:02 GMT  
		Size: 751.0 KB (750984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e1a31a5de88e167f03c1e3d692cae35cae0ebb41ecca648a0e0b628983e5bb`  
		Last Modified: Tue, 17 Jul 2018 04:19:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a871e8da652e6493ad642c0ba31a0374b3c0fca95b6cc17cb5f4d69844db2ed6`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0015ffced2abb51adcd314e55061390aba19478f0c212cdee68ed5cb9a0b73b4`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e51b51b8ea3a23cf43672a19f4e8a5aafe435c0538207183b67b520979edb`  
		Last Modified: Tue, 17 Jul 2018 04:19:32 GMT  
		Size: 86.5 MB (86456659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210e26b24d82b846a60a8be45e7fb9f982aabc727ed09622cb0b3b5eed098297`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f5ff21092f19c4afc701a131323fb624af8e736a10bf467c5d8c9d32263ccd`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 3.7 KB (3709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0.0-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:1b8bf8ff2ee640bce76bb2dd0e0713f35db160978a9ec58debeb1efcb333ee9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.4 MB (153400245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2de9565c102337622bbacf0d1fa2f53647a63ff47dc9d8a7cb8393b2d04ed8c7`
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
# Thu, 28 Jun 2018 08:54:43 GMT
ENV MONGO_MAJOR=4.0
# Thu, 28 Jun 2018 08:54:44 GMT
ENV MONGO_VERSION=4.0.0
# Thu, 28 Jun 2018 08:54:46 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 28 Jun 2018 08:55:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 28 Jun 2018 08:55:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 28 Jun 2018 08:55:49 GMT
VOLUME [/data/db /data/configdb]
# Thu, 28 Jun 2018 08:55:50 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Thu, 28 Jun 2018 08:55:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Jun 2018 08:55:51 GMT
EXPOSE 27017/tcp
# Thu, 28 Jun 2018 08:55:52 GMT
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
	-	`sha256:0c3614a36961c82b81e5ebcd34185dbfcc29fd8c5657f6779031222d361b61a9`  
		Last Modified: Thu, 28 Jun 2018 08:56:15 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7c4375ba956271dc1ceadb002429a373fb794b488ef598e467312851a16245`  
		Last Modified: Thu, 28 Jun 2018 08:56:57 GMT  
		Size: 110.9 MB (110913974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e954604bb4a970ff9023f2314a45f28c015a352af249ac1191fbd08ba4d479f4`  
		Last Modified: Thu, 28 Jun 2018 08:56:14 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cab44ecd74c0d6968682f859655f7bd87f5ec7e23ec42a5e2db3757a577a6a8`  
		Last Modified: Thu, 28 Jun 2018 08:56:15 GMT  
		Size: 3.7 KB (3711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4.0-xenial`

```console
$ docker pull mongo@sha256:2e5e54f94429839d4904c9962b6933ef631b1938b6223c1cf84a0442421f111d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:4.0-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:810e499962b39a05131c5d25230fc92ba385f9353fc44ee8ed27a14ce49c8bac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.4 MB (133354235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af93d1bb9e2a9ff0ac62127421bccc0773a23423b756e1918e8a07c84249d72f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:59 GMT
ADD file:7b8419bb9079c6d91ceeb2d0f35c46bcb8083d9d666eb21fda765ed755a07840 in / 
# Tue, 17 Jul 2018 00:54:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:54:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:54:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:54:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:54:02 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 04:13:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jul 2018 04:13:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:13:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 04:13:54 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 17 Jul 2018 04:14:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 17 Jul 2018 04:14:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:14:05 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 17 Jul 2018 04:14:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:14:06 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 17 Jul 2018 04:14:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_MAJOR=4.0
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_VERSION=4.0.0
# Tue, 17 Jul 2018 04:14:08 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 17 Jul 2018 04:14:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jul 2018 04:14:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jul 2018 04:14:36 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jul 2018 04:14:37 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:14:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:14:37 GMT
EXPOSE 27017/tcp
# Tue, 17 Jul 2018 04:14:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3620e2d282dce98978bc2ae770aa43121cfa88cafdb8888d552bfd96ade2c857`  
		Last Modified: Mon, 09 Jul 2018 15:05:32 GMT  
		Size: 43.2 MB (43190074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22f5e4b3b2cfcefabf6ae23afc6eec160c1a9ab32ba72f9117feee454a6dc5`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f229f854da0ebac56b80462718952353fe22745701123dee20cbd24dede33d`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe433abe16a89c38c06a4e91d1db85448407c4783d6cfbde3a03c4d71481d24`  
		Last Modified: Tue, 17 Jul 2018 00:59:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b72a16d85e58632c1b2114dd92916b5c923f697a667ae56fd14a9a9a33869b`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1757e0920c931d89a7bd21c6c8c1a2fdf46dde51618efca1ebc28980179cf08`  
		Last Modified: Tue, 17 Jul 2018 04:19:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad61d16333c1e67cf913d1e225e170895ee9551a930fef8a568c97b09a71ed0`  
		Last Modified: Tue, 17 Jul 2018 04:19:03 GMT  
		Size: 2.9 MB (2946412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b55b55716bc598f4d649c91b0c3d5488230836771fe87e12955be7236151cf9`  
		Last Modified: Tue, 17 Jul 2018 04:19:02 GMT  
		Size: 751.0 KB (750984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e1a31a5de88e167f03c1e3d692cae35cae0ebb41ecca648a0e0b628983e5bb`  
		Last Modified: Tue, 17 Jul 2018 04:19:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a871e8da652e6493ad642c0ba31a0374b3c0fca95b6cc17cb5f4d69844db2ed6`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0015ffced2abb51adcd314e55061390aba19478f0c212cdee68ed5cb9a0b73b4`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e51b51b8ea3a23cf43672a19f4e8a5aafe435c0538207183b67b520979edb`  
		Last Modified: Tue, 17 Jul 2018 04:19:32 GMT  
		Size: 86.5 MB (86456659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210e26b24d82b846a60a8be45e7fb9f982aabc727ed09622cb0b3b5eed098297`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f5ff21092f19c4afc701a131323fb624af8e736a10bf467c5d8c9d32263ccd`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 3.7 KB (3709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4.0-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:1b8bf8ff2ee640bce76bb2dd0e0713f35db160978a9ec58debeb1efcb333ee9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.4 MB (153400245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2de9565c102337622bbacf0d1fa2f53647a63ff47dc9d8a7cb8393b2d04ed8c7`
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
# Thu, 28 Jun 2018 08:54:43 GMT
ENV MONGO_MAJOR=4.0
# Thu, 28 Jun 2018 08:54:44 GMT
ENV MONGO_VERSION=4.0.0
# Thu, 28 Jun 2018 08:54:46 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 28 Jun 2018 08:55:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 28 Jun 2018 08:55:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 28 Jun 2018 08:55:49 GMT
VOLUME [/data/db /data/configdb]
# Thu, 28 Jun 2018 08:55:50 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Thu, 28 Jun 2018 08:55:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Jun 2018 08:55:51 GMT
EXPOSE 27017/tcp
# Thu, 28 Jun 2018 08:55:52 GMT
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
	-	`sha256:0c3614a36961c82b81e5ebcd34185dbfcc29fd8c5657f6779031222d361b61a9`  
		Last Modified: Thu, 28 Jun 2018 08:56:15 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7c4375ba956271dc1ceadb002429a373fb794b488ef598e467312851a16245`  
		Last Modified: Thu, 28 Jun 2018 08:56:57 GMT  
		Size: 110.9 MB (110913974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e954604bb4a970ff9023f2314a45f28c015a352af249ac1191fbd08ba4d479f4`  
		Last Modified: Thu, 28 Jun 2018 08:56:14 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cab44ecd74c0d6968682f859655f7bd87f5ec7e23ec42a5e2db3757a577a6a8`  
		Last Modified: Thu, 28 Jun 2018 08:56:15 GMT  
		Size: 3.7 KB (3711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:4-xenial`

```console
$ docker pull mongo@sha256:2e5e54f94429839d4904c9962b6933ef631b1938b6223c1cf84a0442421f111d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:4-xenial` - linux; amd64

```console
$ docker pull mongo@sha256:810e499962b39a05131c5d25230fc92ba385f9353fc44ee8ed27a14ce49c8bac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.4 MB (133354235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af93d1bb9e2a9ff0ac62127421bccc0773a23423b756e1918e8a07c84249d72f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:59 GMT
ADD file:7b8419bb9079c6d91ceeb2d0f35c46bcb8083d9d666eb21fda765ed755a07840 in / 
# Tue, 17 Jul 2018 00:54:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:54:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:54:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:54:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:54:02 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 04:13:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jul 2018 04:13:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:13:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 04:13:54 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 17 Jul 2018 04:14:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 17 Jul 2018 04:14:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:14:05 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 17 Jul 2018 04:14:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:14:06 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 17 Jul 2018 04:14:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_MAJOR=4.0
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_VERSION=4.0.0
# Tue, 17 Jul 2018 04:14:08 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 17 Jul 2018 04:14:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jul 2018 04:14:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jul 2018 04:14:36 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jul 2018 04:14:37 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:14:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:14:37 GMT
EXPOSE 27017/tcp
# Tue, 17 Jul 2018 04:14:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3620e2d282dce98978bc2ae770aa43121cfa88cafdb8888d552bfd96ade2c857`  
		Last Modified: Mon, 09 Jul 2018 15:05:32 GMT  
		Size: 43.2 MB (43190074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22f5e4b3b2cfcefabf6ae23afc6eec160c1a9ab32ba72f9117feee454a6dc5`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f229f854da0ebac56b80462718952353fe22745701123dee20cbd24dede33d`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe433abe16a89c38c06a4e91d1db85448407c4783d6cfbde3a03c4d71481d24`  
		Last Modified: Tue, 17 Jul 2018 00:59:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b72a16d85e58632c1b2114dd92916b5c923f697a667ae56fd14a9a9a33869b`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1757e0920c931d89a7bd21c6c8c1a2fdf46dde51618efca1ebc28980179cf08`  
		Last Modified: Tue, 17 Jul 2018 04:19:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad61d16333c1e67cf913d1e225e170895ee9551a930fef8a568c97b09a71ed0`  
		Last Modified: Tue, 17 Jul 2018 04:19:03 GMT  
		Size: 2.9 MB (2946412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b55b55716bc598f4d649c91b0c3d5488230836771fe87e12955be7236151cf9`  
		Last Modified: Tue, 17 Jul 2018 04:19:02 GMT  
		Size: 751.0 KB (750984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e1a31a5de88e167f03c1e3d692cae35cae0ebb41ecca648a0e0b628983e5bb`  
		Last Modified: Tue, 17 Jul 2018 04:19:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a871e8da652e6493ad642c0ba31a0374b3c0fca95b6cc17cb5f4d69844db2ed6`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0015ffced2abb51adcd314e55061390aba19478f0c212cdee68ed5cb9a0b73b4`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e51b51b8ea3a23cf43672a19f4e8a5aafe435c0538207183b67b520979edb`  
		Last Modified: Tue, 17 Jul 2018 04:19:32 GMT  
		Size: 86.5 MB (86456659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210e26b24d82b846a60a8be45e7fb9f982aabc727ed09622cb0b3b5eed098297`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f5ff21092f19c4afc701a131323fb624af8e736a10bf467c5d8c9d32263ccd`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 3.7 KB (3709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:4-xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:1b8bf8ff2ee640bce76bb2dd0e0713f35db160978a9ec58debeb1efcb333ee9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.4 MB (153400245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2de9565c102337622bbacf0d1fa2f53647a63ff47dc9d8a7cb8393b2d04ed8c7`
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
# Thu, 28 Jun 2018 08:54:43 GMT
ENV MONGO_MAJOR=4.0
# Thu, 28 Jun 2018 08:54:44 GMT
ENV MONGO_VERSION=4.0.0
# Thu, 28 Jun 2018 08:54:46 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 28 Jun 2018 08:55:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 28 Jun 2018 08:55:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 28 Jun 2018 08:55:49 GMT
VOLUME [/data/db /data/configdb]
# Thu, 28 Jun 2018 08:55:50 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Thu, 28 Jun 2018 08:55:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Jun 2018 08:55:51 GMT
EXPOSE 27017/tcp
# Thu, 28 Jun 2018 08:55:52 GMT
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
	-	`sha256:0c3614a36961c82b81e5ebcd34185dbfcc29fd8c5657f6779031222d361b61a9`  
		Last Modified: Thu, 28 Jun 2018 08:56:15 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7c4375ba956271dc1ceadb002429a373fb794b488ef598e467312851a16245`  
		Last Modified: Thu, 28 Jun 2018 08:56:57 GMT  
		Size: 110.9 MB (110913974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e954604bb4a970ff9023f2314a45f28c015a352af249ac1191fbd08ba4d479f4`  
		Last Modified: Thu, 28 Jun 2018 08:56:14 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cab44ecd74c0d6968682f859655f7bd87f5ec7e23ec42a5e2db3757a577a6a8`  
		Last Modified: Thu, 28 Jun 2018 08:56:15 GMT  
		Size: 3.7 KB (3711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:2e5e54f94429839d4904c9962b6933ef631b1938b6223c1cf84a0442421f111d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:810e499962b39a05131c5d25230fc92ba385f9353fc44ee8ed27a14ce49c8bac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.4 MB (133354235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af93d1bb9e2a9ff0ac62127421bccc0773a23423b756e1918e8a07c84249d72f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:59 GMT
ADD file:7b8419bb9079c6d91ceeb2d0f35c46bcb8083d9d666eb21fda765ed755a07840 in / 
# Tue, 17 Jul 2018 00:54:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:54:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:54:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:54:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:54:02 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 04:13:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jul 2018 04:13:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:13:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 04:13:54 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 17 Jul 2018 04:14:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 17 Jul 2018 04:14:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:14:05 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 17 Jul 2018 04:14:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:14:06 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 17 Jul 2018 04:14:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_MAJOR=4.0
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_VERSION=4.0.0
# Tue, 17 Jul 2018 04:14:08 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 17 Jul 2018 04:14:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jul 2018 04:14:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jul 2018 04:14:36 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jul 2018 04:14:37 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:14:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:14:37 GMT
EXPOSE 27017/tcp
# Tue, 17 Jul 2018 04:14:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3620e2d282dce98978bc2ae770aa43121cfa88cafdb8888d552bfd96ade2c857`  
		Last Modified: Mon, 09 Jul 2018 15:05:32 GMT  
		Size: 43.2 MB (43190074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22f5e4b3b2cfcefabf6ae23afc6eec160c1a9ab32ba72f9117feee454a6dc5`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f229f854da0ebac56b80462718952353fe22745701123dee20cbd24dede33d`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe433abe16a89c38c06a4e91d1db85448407c4783d6cfbde3a03c4d71481d24`  
		Last Modified: Tue, 17 Jul 2018 00:59:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b72a16d85e58632c1b2114dd92916b5c923f697a667ae56fd14a9a9a33869b`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1757e0920c931d89a7bd21c6c8c1a2fdf46dde51618efca1ebc28980179cf08`  
		Last Modified: Tue, 17 Jul 2018 04:19:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad61d16333c1e67cf913d1e225e170895ee9551a930fef8a568c97b09a71ed0`  
		Last Modified: Tue, 17 Jul 2018 04:19:03 GMT  
		Size: 2.9 MB (2946412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b55b55716bc598f4d649c91b0c3d5488230836771fe87e12955be7236151cf9`  
		Last Modified: Tue, 17 Jul 2018 04:19:02 GMT  
		Size: 751.0 KB (750984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e1a31a5de88e167f03c1e3d692cae35cae0ebb41ecca648a0e0b628983e5bb`  
		Last Modified: Tue, 17 Jul 2018 04:19:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a871e8da652e6493ad642c0ba31a0374b3c0fca95b6cc17cb5f4d69844db2ed6`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0015ffced2abb51adcd314e55061390aba19478f0c212cdee68ed5cb9a0b73b4`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e51b51b8ea3a23cf43672a19f4e8a5aafe435c0538207183b67b520979edb`  
		Last Modified: Tue, 17 Jul 2018 04:19:32 GMT  
		Size: 86.5 MB (86456659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210e26b24d82b846a60a8be45e7fb9f982aabc727ed09622cb0b3b5eed098297`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f5ff21092f19c4afc701a131323fb624af8e736a10bf467c5d8c9d32263ccd`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 3.7 KB (3709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:latest` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:1b8bf8ff2ee640bce76bb2dd0e0713f35db160978a9ec58debeb1efcb333ee9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.4 MB (153400245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2de9565c102337622bbacf0d1fa2f53647a63ff47dc9d8a7cb8393b2d04ed8c7`
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
# Thu, 28 Jun 2018 08:54:43 GMT
ENV MONGO_MAJOR=4.0
# Thu, 28 Jun 2018 08:54:44 GMT
ENV MONGO_VERSION=4.0.0
# Thu, 28 Jun 2018 08:54:46 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 28 Jun 2018 08:55:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 28 Jun 2018 08:55:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 28 Jun 2018 08:55:49 GMT
VOLUME [/data/db /data/configdb]
# Thu, 28 Jun 2018 08:55:50 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Thu, 28 Jun 2018 08:55:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Jun 2018 08:55:51 GMT
EXPOSE 27017/tcp
# Thu, 28 Jun 2018 08:55:52 GMT
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
	-	`sha256:0c3614a36961c82b81e5ebcd34185dbfcc29fd8c5657f6779031222d361b61a9`  
		Last Modified: Thu, 28 Jun 2018 08:56:15 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7c4375ba956271dc1ceadb002429a373fb794b488ef598e467312851a16245`  
		Last Modified: Thu, 28 Jun 2018 08:56:57 GMT  
		Size: 110.9 MB (110913974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e954604bb4a970ff9023f2314a45f28c015a352af249ac1191fbd08ba4d479f4`  
		Last Modified: Thu, 28 Jun 2018 08:56:14 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cab44ecd74c0d6968682f859655f7bd87f5ec7e23ec42a5e2db3757a577a6a8`  
		Last Modified: Thu, 28 Jun 2018 08:56:15 GMT  
		Size: 3.7 KB (3711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:xenial`

```console
$ docker pull mongo@sha256:2e5e54f94429839d4904c9962b6933ef631b1938b6223c1cf84a0442421f111d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo:xenial` - linux; amd64

```console
$ docker pull mongo@sha256:810e499962b39a05131c5d25230fc92ba385f9353fc44ee8ed27a14ce49c8bac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.4 MB (133354235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af93d1bb9e2a9ff0ac62127421bccc0773a23423b756e1918e8a07c84249d72f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:59 GMT
ADD file:7b8419bb9079c6d91ceeb2d0f35c46bcb8083d9d666eb21fda765ed755a07840 in / 
# Tue, 17 Jul 2018 00:54:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:54:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:54:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:54:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:54:02 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 04:13:37 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Tue, 17 Jul 2018 04:13:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:13:54 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 04:13:54 GMT
ENV JSYAML_VERSION=3.10.0
# Tue, 17 Jul 2018 04:14:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 17 Jul 2018 04:14:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:14:05 GMT
ENV GPG_KEYS=9DA31620334BD75D9DCB49F368818C72E52529D4
# Tue, 17 Jul 2018 04:14:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 04:14:06 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 17 Jul 2018 04:14:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_MAJOR=4.0
# Tue, 17 Jul 2018 04:14:07 GMT
ENV MONGO_VERSION=4.0.0
# Tue, 17 Jul 2018 04:14:08 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 17 Jul 2018 04:14:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 17 Jul 2018 04:14:36 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 17 Jul 2018 04:14:36 GMT
VOLUME [/data/db /data/configdb]
# Tue, 17 Jul 2018 04:14:37 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:14:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:14:37 GMT
EXPOSE 27017/tcp
# Tue, 17 Jul 2018 04:14:37 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3620e2d282dce98978bc2ae770aa43121cfa88cafdb8888d552bfd96ade2c857`  
		Last Modified: Mon, 09 Jul 2018 15:05:32 GMT  
		Size: 43.2 MB (43190074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22f5e4b3b2cfcefabf6ae23afc6eec160c1a9ab32ba72f9117feee454a6dc5`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f229f854da0ebac56b80462718952353fe22745701123dee20cbd24dede33d`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe433abe16a89c38c06a4e91d1db85448407c4783d6cfbde3a03c4d71481d24`  
		Last Modified: Tue, 17 Jul 2018 00:59:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b72a16d85e58632c1b2114dd92916b5c923f697a667ae56fd14a9a9a33869b`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1757e0920c931d89a7bd21c6c8c1a2fdf46dde51618efca1ebc28980179cf08`  
		Last Modified: Tue, 17 Jul 2018 04:19:04 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad61d16333c1e67cf913d1e225e170895ee9551a930fef8a568c97b09a71ed0`  
		Last Modified: Tue, 17 Jul 2018 04:19:03 GMT  
		Size: 2.9 MB (2946412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b55b55716bc598f4d649c91b0c3d5488230836771fe87e12955be7236151cf9`  
		Last Modified: Tue, 17 Jul 2018 04:19:02 GMT  
		Size: 751.0 KB (750984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e1a31a5de88e167f03c1e3d692cae35cae0ebb41ecca648a0e0b628983e5bb`  
		Last Modified: Tue, 17 Jul 2018 04:19:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a871e8da652e6493ad642c0ba31a0374b3c0fca95b6cc17cb5f4d69844db2ed6`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0015ffced2abb51adcd314e55061390aba19478f0c212cdee68ed5cb9a0b73b4`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e51b51b8ea3a23cf43672a19f4e8a5aafe435c0538207183b67b520979edb`  
		Last Modified: Tue, 17 Jul 2018 04:19:32 GMT  
		Size: 86.5 MB (86456659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210e26b24d82b846a60a8be45e7fb9f982aabc727ed09622cb0b3b5eed098297`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f5ff21092f19c4afc701a131323fb624af8e736a10bf467c5d8c9d32263ccd`  
		Last Modified: Tue, 17 Jul 2018 04:18:59 GMT  
		Size: 3.7 KB (3709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:xenial` - linux; arm64 variant v8

```console
$ docker pull mongo@sha256:1b8bf8ff2ee640bce76bb2dd0e0713f35db160978a9ec58debeb1efcb333ee9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.4 MB (153400245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2de9565c102337622bbacf0d1fa2f53647a63ff47dc9d8a7cb8393b2d04ed8c7`
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
# Thu, 28 Jun 2018 08:54:43 GMT
ENV MONGO_MAJOR=4.0
# Thu, 28 Jun 2018 08:54:44 GMT
ENV MONGO_VERSION=4.0.0
# Thu, 28 Jun 2018 08:54:46 GMT
RUN echo "deb http://$MONGO_REPO/apt/ubuntu xenial/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR multiverse" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 28 Jun 2018 08:55:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 28 Jun 2018 08:55:48 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 28 Jun 2018 08:55:49 GMT
VOLUME [/data/db /data/configdb]
# Thu, 28 Jun 2018 08:55:50 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Thu, 28 Jun 2018 08:55:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Jun 2018 08:55:51 GMT
EXPOSE 27017/tcp
# Thu, 28 Jun 2018 08:55:52 GMT
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
	-	`sha256:0c3614a36961c82b81e5ebcd34185dbfcc29fd8c5657f6779031222d361b61a9`  
		Last Modified: Thu, 28 Jun 2018 08:56:15 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7c4375ba956271dc1ceadb002429a373fb794b488ef598e467312851a16245`  
		Last Modified: Thu, 28 Jun 2018 08:56:57 GMT  
		Size: 110.9 MB (110913974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e954604bb4a970ff9023f2314a45f28c015a352af249ac1191fbd08ba4d479f4`  
		Last Modified: Thu, 28 Jun 2018 08:56:14 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cab44ecd74c0d6968682f859655f7bd87f5ec7e23ec42a5e2db3757a577a6a8`  
		Last Modified: Thu, 28 Jun 2018 08:56:15 GMT  
		Size: 3.7 KB (3711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

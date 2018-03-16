<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mongo`

-	[`mongo:3`](#mongo3)
-	[`mongo:3.0`](#mongo30)
-	[`mongo:3.0.15`](#mongo3015)
-	[`mongo:3.0.15-wheezy`](#mongo3015-wheezy)
-	[`mongo:3.0-wheezy`](#mongo30-wheezy)
-	[`mongo:3.2`](#mongo32)
-	[`mongo:3.2.19`](#mongo3219)
-	[`mongo:3.2.19-jessie`](#mongo3219-jessie)
-	[`mongo:3.2-jessie`](#mongo32-jessie)
-	[`mongo:3.4`](#mongo34)
-	[`mongo:3.4.13`](#mongo3413)
-	[`mongo:3.4.13-jessie`](#mongo3413-jessie)
-	[`mongo:3.4-jessie`](#mongo34-jessie)
-	[`mongo:3.6`](#mongo36)
-	[`mongo:3.6.3`](#mongo363)
-	[`mongo:3.6.3-jessie`](#mongo363-jessie)
-	[`mongo:3.6-jessie`](#mongo36-jessie)
-	[`mongo:3.7`](#mongo37)
-	[`mongo:3.7.3`](#mongo373)
-	[`mongo:3.7.3-jessie`](#mongo373-jessie)
-	[`mongo:3.7-jessie`](#mongo37-jessie)
-	[`mongo:3-jessie`](#mongo3-jessie)
-	[`mongo:jessie`](#mongojessie)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:unstable`](#mongounstable)
-	[`mongo:unstable-jessie`](#mongounstable-jessie)

## `mongo:3`

```console
$ docker pull mongo@sha256:d969194a7c4dcd817cae5dc726b1493547a3ad3f1b30f7f58857adc9ae6a4483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

```console
$ docker pull mongo@sha256:fd85473bdcfad727d1d8d755a4879b7c7427a7fc84f50c92ab87508653469c6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130528818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b1317f8158fa35a66116d083d8c7e2c64720713b1ce90e2a1ec186e36a98984`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:29:43 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:30:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:30:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:30:05 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:30:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:30:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:32:28 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 14 Mar 2018 06:32:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:32:34 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 14 Mar 2018 06:32:34 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:32:34 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:32:35 GMT
ENV MONGO_MAJOR=3.6
# Wed, 14 Mar 2018 06:32:35 GMT
ENV MONGO_VERSION=3.6.3
# Wed, 14 Mar 2018 06:32:36 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 14 Mar 2018 06:33:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Mar 2018 06:33:03 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Mar 2018 06:33:03 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Mar 2018 06:33:04 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 14 Mar 2018 06:33:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:33:04 GMT
EXPOSE 27017/tcp
# Wed, 14 Mar 2018 06:33:05 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8b5b4e67a0c87e0946dcac28cc647a7e6c9331118dd0eef93747725d1dab7c`  
		Last Modified: Wed, 14 Mar 2018 07:02:24 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87b29dbb5532144cd840d9b72eab4321de933a252e86cc472b61546f202c14e`  
		Last Modified: Wed, 14 Mar 2018 07:02:25 GMT  
		Size: 2.4 MB (2397877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908c259a6a99e48c455f1d2bf92c7174f7b4d3067f922fdf908d106ccd0d091c`  
		Last Modified: Wed, 14 Mar 2018 07:02:23 GMT  
		Size: 816.7 KB (816677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdec16e62a33da762a06b5a7e10ce995a2eb745168ec87d54aa8f5e52482617`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e233c6c476cb9a3c3af96224851e2874771a736e19ef2c84b13c896e0d8044dc`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 1.4 KB (1443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671c302f3b4092b304b0bee534b3e911775ca626850456158211dddec06004d4`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207ff3c88601bd15065d069fa544f5b73b6dc7e6fe0f1222f6d20506ac2fba8a`  
		Last Modified: Wed, 14 Mar 2018 07:04:26 GMT  
		Size: 97.2 MB (97184127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a7998bea9fdf4dba81c93004e7641e5ef7ce64ec82aa24228152ba6f4ee2b3f`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d605d67f267c15bedbf7720cbe79065e26004d4600c2ed87799dcfdd1e5331`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:0bd9a3fbdfdd53fa6097f684ec1981b40f4706e03c22404d7bcc9335238ea0d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.0` - linux; amd64

```console
$ docker pull mongo@sha256:fa88237eca63229d290eda74b30622c48e679a54a143ba481485f9aa7876c9b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.5 MB (84531078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a11f85fc31a55b557af1effe287176a5f4af46f041c324cba7f06c6a74d301`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 22:32:45 GMT
ADD file:af758135c73a37131799a71b5785fc971129890495aa4436efe54486c2246efd in / 
# Tue, 13 Mar 2018 22:32:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:28:41 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:28:41 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 14 Mar 2018 06:28:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:28:54 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:28:54 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:29:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:29:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:29:06 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Wed, 14 Mar 2018 06:29:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:29:07 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 14 Mar 2018 06:29:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:29:08 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:29:08 GMT
ENV MONGO_MAJOR=3.0
# Wed, 14 Mar 2018 06:29:08 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 14 Mar 2018 06:29:09 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 14 Mar 2018 06:29:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Mar 2018 06:29:19 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Mar 2018 06:29:20 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Mar 2018 06:29:20 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Wed, 14 Mar 2018 06:29:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Mar 2018 06:29:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:29:21 GMT
EXPOSE 27017/tcp
# Wed, 14 Mar 2018 06:29:22 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:8f8a1db549f78ffe921c86665d3fdc384ae8655886d2fb701441b2052779210f`  
		Last Modified: Tue, 13 Mar 2018 22:59:49 GMT  
		Size: 19.2 MB (19165436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94eed6686302d376873c9519603329d0642cb4ccdc0b7bf507b4d3a18cf53868`  
		Last Modified: Wed, 14 Mar 2018 06:59:52 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f399c81870138791b8c2f7078c80fd5fbe3fcb5fbccc244aa7a08de26093ab4`  
		Last Modified: Wed, 14 Mar 2018 06:59:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613a353510bbf320f0eca30961b7cb37c6d654c950b4b75c185c208159668360`  
		Last Modified: Wed, 14 Mar 2018 06:59:50 GMT  
		Size: 2.7 MB (2660579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e376f98174b0ac4bfabcc1a59887178658c9b505d87c5bb2e3e02498fb766d97`  
		Last Modified: Wed, 14 Mar 2018 06:59:50 GMT  
		Size: 810.6 KB (810598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e03a6a5e0a7cda127b27137d15dabc8d3173989a0f7a83017555459088fb155`  
		Last Modified: Wed, 14 Mar 2018 06:59:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef366f855280adcb3b894207e20df02d8e0862be654f0a47b48e25dcc0027c5`  
		Last Modified: Wed, 14 Mar 2018 06:59:50 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:306ec60a87038c4534aaebef0d10584263aa1c3c22501bc5f5057042c738a2cd`  
		Last Modified: Wed, 14 Mar 2018 06:59:47 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51205eacf9b72aaa6554e80adb3abc688dc5d4ad63782a117e6636030967fbf4`  
		Last Modified: Wed, 14 Mar 2018 07:00:00 GMT  
		Size: 61.9 MB (61886289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece00118fe48762c1fac93570e2c461358eadcc6a087fdedadcb0d3ae3dc5bbe`  
		Last Modified: Wed, 14 Mar 2018 06:59:47 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf4cc3298ce3d866f5fb87bd92fe4d597a6466aa9b2f2eeb09273b947b8645d`  
		Last Modified: Wed, 14 Mar 2018 06:59:46 GMT  
		Size: 3.6 KB (3568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b076d49d901ea11354f56b65e376fc8c03e606b9bc9ce7722f0a8fa25d14427b`  
		Last Modified: Wed, 14 Mar 2018 06:59:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.15`

```console
$ docker pull mongo@sha256:0bd9a3fbdfdd53fa6097f684ec1981b40f4706e03c22404d7bcc9335238ea0d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.0.15` - linux; amd64

```console
$ docker pull mongo@sha256:fa88237eca63229d290eda74b30622c48e679a54a143ba481485f9aa7876c9b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.5 MB (84531078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a11f85fc31a55b557af1effe287176a5f4af46f041c324cba7f06c6a74d301`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 22:32:45 GMT
ADD file:af758135c73a37131799a71b5785fc971129890495aa4436efe54486c2246efd in / 
# Tue, 13 Mar 2018 22:32:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:28:41 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:28:41 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 14 Mar 2018 06:28:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:28:54 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:28:54 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:29:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:29:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:29:06 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Wed, 14 Mar 2018 06:29:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:29:07 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 14 Mar 2018 06:29:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:29:08 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:29:08 GMT
ENV MONGO_MAJOR=3.0
# Wed, 14 Mar 2018 06:29:08 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 14 Mar 2018 06:29:09 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 14 Mar 2018 06:29:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Mar 2018 06:29:19 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Mar 2018 06:29:20 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Mar 2018 06:29:20 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Wed, 14 Mar 2018 06:29:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Mar 2018 06:29:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:29:21 GMT
EXPOSE 27017/tcp
# Wed, 14 Mar 2018 06:29:22 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:8f8a1db549f78ffe921c86665d3fdc384ae8655886d2fb701441b2052779210f`  
		Last Modified: Tue, 13 Mar 2018 22:59:49 GMT  
		Size: 19.2 MB (19165436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94eed6686302d376873c9519603329d0642cb4ccdc0b7bf507b4d3a18cf53868`  
		Last Modified: Wed, 14 Mar 2018 06:59:52 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f399c81870138791b8c2f7078c80fd5fbe3fcb5fbccc244aa7a08de26093ab4`  
		Last Modified: Wed, 14 Mar 2018 06:59:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613a353510bbf320f0eca30961b7cb37c6d654c950b4b75c185c208159668360`  
		Last Modified: Wed, 14 Mar 2018 06:59:50 GMT  
		Size: 2.7 MB (2660579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e376f98174b0ac4bfabcc1a59887178658c9b505d87c5bb2e3e02498fb766d97`  
		Last Modified: Wed, 14 Mar 2018 06:59:50 GMT  
		Size: 810.6 KB (810598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e03a6a5e0a7cda127b27137d15dabc8d3173989a0f7a83017555459088fb155`  
		Last Modified: Wed, 14 Mar 2018 06:59:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef366f855280adcb3b894207e20df02d8e0862be654f0a47b48e25dcc0027c5`  
		Last Modified: Wed, 14 Mar 2018 06:59:50 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:306ec60a87038c4534aaebef0d10584263aa1c3c22501bc5f5057042c738a2cd`  
		Last Modified: Wed, 14 Mar 2018 06:59:47 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51205eacf9b72aaa6554e80adb3abc688dc5d4ad63782a117e6636030967fbf4`  
		Last Modified: Wed, 14 Mar 2018 07:00:00 GMT  
		Size: 61.9 MB (61886289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece00118fe48762c1fac93570e2c461358eadcc6a087fdedadcb0d3ae3dc5bbe`  
		Last Modified: Wed, 14 Mar 2018 06:59:47 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf4cc3298ce3d866f5fb87bd92fe4d597a6466aa9b2f2eeb09273b947b8645d`  
		Last Modified: Wed, 14 Mar 2018 06:59:46 GMT  
		Size: 3.6 KB (3568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b076d49d901ea11354f56b65e376fc8c03e606b9bc9ce7722f0a8fa25d14427b`  
		Last Modified: Wed, 14 Mar 2018 06:59:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.15-wheezy`

```console
$ docker pull mongo@sha256:0bd9a3fbdfdd53fa6097f684ec1981b40f4706e03c22404d7bcc9335238ea0d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.0.15-wheezy` - linux; amd64

```console
$ docker pull mongo@sha256:fa88237eca63229d290eda74b30622c48e679a54a143ba481485f9aa7876c9b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.5 MB (84531078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a11f85fc31a55b557af1effe287176a5f4af46f041c324cba7f06c6a74d301`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 22:32:45 GMT
ADD file:af758135c73a37131799a71b5785fc971129890495aa4436efe54486c2246efd in / 
# Tue, 13 Mar 2018 22:32:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:28:41 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:28:41 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 14 Mar 2018 06:28:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:28:54 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:28:54 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:29:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:29:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:29:06 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Wed, 14 Mar 2018 06:29:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:29:07 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 14 Mar 2018 06:29:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:29:08 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:29:08 GMT
ENV MONGO_MAJOR=3.0
# Wed, 14 Mar 2018 06:29:08 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 14 Mar 2018 06:29:09 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 14 Mar 2018 06:29:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Mar 2018 06:29:19 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Mar 2018 06:29:20 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Mar 2018 06:29:20 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Wed, 14 Mar 2018 06:29:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Mar 2018 06:29:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:29:21 GMT
EXPOSE 27017/tcp
# Wed, 14 Mar 2018 06:29:22 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:8f8a1db549f78ffe921c86665d3fdc384ae8655886d2fb701441b2052779210f`  
		Last Modified: Tue, 13 Mar 2018 22:59:49 GMT  
		Size: 19.2 MB (19165436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94eed6686302d376873c9519603329d0642cb4ccdc0b7bf507b4d3a18cf53868`  
		Last Modified: Wed, 14 Mar 2018 06:59:52 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f399c81870138791b8c2f7078c80fd5fbe3fcb5fbccc244aa7a08de26093ab4`  
		Last Modified: Wed, 14 Mar 2018 06:59:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613a353510bbf320f0eca30961b7cb37c6d654c950b4b75c185c208159668360`  
		Last Modified: Wed, 14 Mar 2018 06:59:50 GMT  
		Size: 2.7 MB (2660579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e376f98174b0ac4bfabcc1a59887178658c9b505d87c5bb2e3e02498fb766d97`  
		Last Modified: Wed, 14 Mar 2018 06:59:50 GMT  
		Size: 810.6 KB (810598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e03a6a5e0a7cda127b27137d15dabc8d3173989a0f7a83017555459088fb155`  
		Last Modified: Wed, 14 Mar 2018 06:59:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef366f855280adcb3b894207e20df02d8e0862be654f0a47b48e25dcc0027c5`  
		Last Modified: Wed, 14 Mar 2018 06:59:50 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:306ec60a87038c4534aaebef0d10584263aa1c3c22501bc5f5057042c738a2cd`  
		Last Modified: Wed, 14 Mar 2018 06:59:47 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51205eacf9b72aaa6554e80adb3abc688dc5d4ad63782a117e6636030967fbf4`  
		Last Modified: Wed, 14 Mar 2018 07:00:00 GMT  
		Size: 61.9 MB (61886289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece00118fe48762c1fac93570e2c461358eadcc6a087fdedadcb0d3ae3dc5bbe`  
		Last Modified: Wed, 14 Mar 2018 06:59:47 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf4cc3298ce3d866f5fb87bd92fe4d597a6466aa9b2f2eeb09273b947b8645d`  
		Last Modified: Wed, 14 Mar 2018 06:59:46 GMT  
		Size: 3.6 KB (3568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b076d49d901ea11354f56b65e376fc8c03e606b9bc9ce7722f0a8fa25d14427b`  
		Last Modified: Wed, 14 Mar 2018 06:59:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-wheezy`

```console
$ docker pull mongo@sha256:0bd9a3fbdfdd53fa6097f684ec1981b40f4706e03c22404d7bcc9335238ea0d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.0-wheezy` - linux; amd64

```console
$ docker pull mongo@sha256:fa88237eca63229d290eda74b30622c48e679a54a143ba481485f9aa7876c9b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.5 MB (84531078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a11f85fc31a55b557af1effe287176a5f4af46f041c324cba7f06c6a74d301`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 22:32:45 GMT
ADD file:af758135c73a37131799a71b5785fc971129890495aa4436efe54486c2246efd in / 
# Tue, 13 Mar 2018 22:32:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:28:41 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:28:41 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 14 Mar 2018 06:28:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:28:54 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:28:54 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:29:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:29:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:29:06 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Wed, 14 Mar 2018 06:29:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:29:07 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 14 Mar 2018 06:29:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:29:08 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:29:08 GMT
ENV MONGO_MAJOR=3.0
# Wed, 14 Mar 2018 06:29:08 GMT
ENV MONGO_VERSION=3.0.15
# Wed, 14 Mar 2018 06:29:09 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 14 Mar 2018 06:29:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Mar 2018 06:29:19 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Mar 2018 06:29:20 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Mar 2018 06:29:20 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Wed, 14 Mar 2018 06:29:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Mar 2018 06:29:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:29:21 GMT
EXPOSE 27017/tcp
# Wed, 14 Mar 2018 06:29:22 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:8f8a1db549f78ffe921c86665d3fdc384ae8655886d2fb701441b2052779210f`  
		Last Modified: Tue, 13 Mar 2018 22:59:49 GMT  
		Size: 19.2 MB (19165436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94eed6686302d376873c9519603329d0642cb4ccdc0b7bf507b4d3a18cf53868`  
		Last Modified: Wed, 14 Mar 2018 06:59:52 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f399c81870138791b8c2f7078c80fd5fbe3fcb5fbccc244aa7a08de26093ab4`  
		Last Modified: Wed, 14 Mar 2018 06:59:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613a353510bbf320f0eca30961b7cb37c6d654c950b4b75c185c208159668360`  
		Last Modified: Wed, 14 Mar 2018 06:59:50 GMT  
		Size: 2.7 MB (2660579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e376f98174b0ac4bfabcc1a59887178658c9b505d87c5bb2e3e02498fb766d97`  
		Last Modified: Wed, 14 Mar 2018 06:59:50 GMT  
		Size: 810.6 KB (810598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e03a6a5e0a7cda127b27137d15dabc8d3173989a0f7a83017555459088fb155`  
		Last Modified: Wed, 14 Mar 2018 06:59:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef366f855280adcb3b894207e20df02d8e0862be654f0a47b48e25dcc0027c5`  
		Last Modified: Wed, 14 Mar 2018 06:59:50 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:306ec60a87038c4534aaebef0d10584263aa1c3c22501bc5f5057042c738a2cd`  
		Last Modified: Wed, 14 Mar 2018 06:59:47 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51205eacf9b72aaa6554e80adb3abc688dc5d4ad63782a117e6636030967fbf4`  
		Last Modified: Wed, 14 Mar 2018 07:00:00 GMT  
		Size: 61.9 MB (61886289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece00118fe48762c1fac93570e2c461358eadcc6a087fdedadcb0d3ae3dc5bbe`  
		Last Modified: Wed, 14 Mar 2018 06:59:47 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf4cc3298ce3d866f5fb87bd92fe4d597a6466aa9b2f2eeb09273b947b8645d`  
		Last Modified: Wed, 14 Mar 2018 06:59:46 GMT  
		Size: 3.6 KB (3568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b076d49d901ea11354f56b65e376fc8c03e606b9bc9ce7722f0a8fa25d14427b`  
		Last Modified: Wed, 14 Mar 2018 06:59:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:63d29df3b3f9763dffa6dcc41eafd62bb2cab5a1dd7f0819124a9c2955cdd770
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

```console
$ docker pull mongo@sha256:00789983a5e07a83576388bb89404deb0379408fc82b679dbf08fe18dccdc51b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104186801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ece83276ddb450fbf5207b0c635a1bcbbb4b7508980339fe45d6d878b7e38de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:29:43 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:30:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:30:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:30:05 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:30:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:30:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:30:32 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Wed, 14 Mar 2018 06:30:37 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:30:38 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 14 Mar 2018 06:30:38 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:30:38 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:30:38 GMT
ENV MONGO_MAJOR=3.2
# Wed, 14 Mar 2018 06:30:39 GMT
ENV MONGO_VERSION=3.2.19
# Wed, 14 Mar 2018 06:30:39 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 14 Mar 2018 06:31:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Mar 2018 06:31:04 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Mar 2018 06:31:04 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Mar 2018 06:31:05 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Wed, 14 Mar 2018 06:31:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Mar 2018 06:31:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:31:06 GMT
EXPOSE 27017/tcp
# Wed, 14 Mar 2018 06:31:06 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8b5b4e67a0c87e0946dcac28cc647a7e6c9331118dd0eef93747725d1dab7c`  
		Last Modified: Wed, 14 Mar 2018 07:02:24 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87b29dbb5532144cd840d9b72eab4321de933a252e86cc472b61546f202c14e`  
		Last Modified: Wed, 14 Mar 2018 07:02:25 GMT  
		Size: 2.4 MB (2397877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908c259a6a99e48c455f1d2bf92c7174f7b4d3067f922fdf908d106ccd0d091c`  
		Last Modified: Wed, 14 Mar 2018 07:02:23 GMT  
		Size: 816.7 KB (816677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdec16e62a33da762a06b5a7e10ce995a2eb745168ec87d54aa8f5e52482617`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d8cda9e71164fc8c54a16392806076a2d5592545941db52480bd2c56809254`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 3.6 KB (3596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a4a81b251e79cc00eb834f1458aaf8663a58fcf8979751a05ce795b3f204db`  
		Last Modified: Wed, 14 Mar 2018 07:02:20 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78cea6291772055c25701d15c7a4a986d321f9f0f8ccc08d776cbf12773fdf05`  
		Last Modified: Wed, 14 Mar 2018 07:02:34 GMT  
		Size: 70.8 MB (70839983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d2956a3415945290979ff905887ba8b155c2b422d9105664fbbc6fec8b08d6`  
		Last Modified: Wed, 14 Mar 2018 07:02:20 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef0c803907b9d116e56348959be3c3389391959640d2fe23022d4c3b4c9527f`  
		Last Modified: Wed, 14 Mar 2018 07:02:21 GMT  
		Size: 3.6 KB (3571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15e23e30571296cd49c853500d249f91d7d7f3709aa4841cb0c0c19c4a554b4`  
		Last Modified: Wed, 14 Mar 2018 07:02:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.19`

```console
$ docker pull mongo@sha256:63d29df3b3f9763dffa6dcc41eafd62bb2cab5a1dd7f0819124a9c2955cdd770
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2.19` - linux; amd64

```console
$ docker pull mongo@sha256:00789983a5e07a83576388bb89404deb0379408fc82b679dbf08fe18dccdc51b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104186801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ece83276ddb450fbf5207b0c635a1bcbbb4b7508980339fe45d6d878b7e38de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:29:43 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:30:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:30:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:30:05 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:30:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:30:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:30:32 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Wed, 14 Mar 2018 06:30:37 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:30:38 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 14 Mar 2018 06:30:38 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:30:38 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:30:38 GMT
ENV MONGO_MAJOR=3.2
# Wed, 14 Mar 2018 06:30:39 GMT
ENV MONGO_VERSION=3.2.19
# Wed, 14 Mar 2018 06:30:39 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 14 Mar 2018 06:31:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Mar 2018 06:31:04 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Mar 2018 06:31:04 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Mar 2018 06:31:05 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Wed, 14 Mar 2018 06:31:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Mar 2018 06:31:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:31:06 GMT
EXPOSE 27017/tcp
# Wed, 14 Mar 2018 06:31:06 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8b5b4e67a0c87e0946dcac28cc647a7e6c9331118dd0eef93747725d1dab7c`  
		Last Modified: Wed, 14 Mar 2018 07:02:24 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87b29dbb5532144cd840d9b72eab4321de933a252e86cc472b61546f202c14e`  
		Last Modified: Wed, 14 Mar 2018 07:02:25 GMT  
		Size: 2.4 MB (2397877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908c259a6a99e48c455f1d2bf92c7174f7b4d3067f922fdf908d106ccd0d091c`  
		Last Modified: Wed, 14 Mar 2018 07:02:23 GMT  
		Size: 816.7 KB (816677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdec16e62a33da762a06b5a7e10ce995a2eb745168ec87d54aa8f5e52482617`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d8cda9e71164fc8c54a16392806076a2d5592545941db52480bd2c56809254`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 3.6 KB (3596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a4a81b251e79cc00eb834f1458aaf8663a58fcf8979751a05ce795b3f204db`  
		Last Modified: Wed, 14 Mar 2018 07:02:20 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78cea6291772055c25701d15c7a4a986d321f9f0f8ccc08d776cbf12773fdf05`  
		Last Modified: Wed, 14 Mar 2018 07:02:34 GMT  
		Size: 70.8 MB (70839983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d2956a3415945290979ff905887ba8b155c2b422d9105664fbbc6fec8b08d6`  
		Last Modified: Wed, 14 Mar 2018 07:02:20 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef0c803907b9d116e56348959be3c3389391959640d2fe23022d4c3b4c9527f`  
		Last Modified: Wed, 14 Mar 2018 07:02:21 GMT  
		Size: 3.6 KB (3571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15e23e30571296cd49c853500d249f91d7d7f3709aa4841cb0c0c19c4a554b4`  
		Last Modified: Wed, 14 Mar 2018 07:02:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.19-jessie`

```console
$ docker pull mongo@sha256:63d29df3b3f9763dffa6dcc41eafd62bb2cab5a1dd7f0819124a9c2955cdd770
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2.19-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:00789983a5e07a83576388bb89404deb0379408fc82b679dbf08fe18dccdc51b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104186801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ece83276ddb450fbf5207b0c635a1bcbbb4b7508980339fe45d6d878b7e38de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:29:43 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:30:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:30:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:30:05 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:30:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:30:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:30:32 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Wed, 14 Mar 2018 06:30:37 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:30:38 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 14 Mar 2018 06:30:38 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:30:38 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:30:38 GMT
ENV MONGO_MAJOR=3.2
# Wed, 14 Mar 2018 06:30:39 GMT
ENV MONGO_VERSION=3.2.19
# Wed, 14 Mar 2018 06:30:39 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 14 Mar 2018 06:31:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Mar 2018 06:31:04 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Mar 2018 06:31:04 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Mar 2018 06:31:05 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Wed, 14 Mar 2018 06:31:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Mar 2018 06:31:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:31:06 GMT
EXPOSE 27017/tcp
# Wed, 14 Mar 2018 06:31:06 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8b5b4e67a0c87e0946dcac28cc647a7e6c9331118dd0eef93747725d1dab7c`  
		Last Modified: Wed, 14 Mar 2018 07:02:24 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87b29dbb5532144cd840d9b72eab4321de933a252e86cc472b61546f202c14e`  
		Last Modified: Wed, 14 Mar 2018 07:02:25 GMT  
		Size: 2.4 MB (2397877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908c259a6a99e48c455f1d2bf92c7174f7b4d3067f922fdf908d106ccd0d091c`  
		Last Modified: Wed, 14 Mar 2018 07:02:23 GMT  
		Size: 816.7 KB (816677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdec16e62a33da762a06b5a7e10ce995a2eb745168ec87d54aa8f5e52482617`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d8cda9e71164fc8c54a16392806076a2d5592545941db52480bd2c56809254`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 3.6 KB (3596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a4a81b251e79cc00eb834f1458aaf8663a58fcf8979751a05ce795b3f204db`  
		Last Modified: Wed, 14 Mar 2018 07:02:20 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78cea6291772055c25701d15c7a4a986d321f9f0f8ccc08d776cbf12773fdf05`  
		Last Modified: Wed, 14 Mar 2018 07:02:34 GMT  
		Size: 70.8 MB (70839983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d2956a3415945290979ff905887ba8b155c2b422d9105664fbbc6fec8b08d6`  
		Last Modified: Wed, 14 Mar 2018 07:02:20 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef0c803907b9d116e56348959be3c3389391959640d2fe23022d4c3b4c9527f`  
		Last Modified: Wed, 14 Mar 2018 07:02:21 GMT  
		Size: 3.6 KB (3571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15e23e30571296cd49c853500d249f91d7d7f3709aa4841cb0c0c19c4a554b4`  
		Last Modified: Wed, 14 Mar 2018 07:02:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-jessie`

```console
$ docker pull mongo@sha256:63d29df3b3f9763dffa6dcc41eafd62bb2cab5a1dd7f0819124a9c2955cdd770
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:00789983a5e07a83576388bb89404deb0379408fc82b679dbf08fe18dccdc51b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104186801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ece83276ddb450fbf5207b0c635a1bcbbb4b7508980339fe45d6d878b7e38de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:29:43 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:30:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:30:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:30:05 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:30:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:30:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:30:32 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Wed, 14 Mar 2018 06:30:37 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:30:38 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 14 Mar 2018 06:30:38 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:30:38 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:30:38 GMT
ENV MONGO_MAJOR=3.2
# Wed, 14 Mar 2018 06:30:39 GMT
ENV MONGO_VERSION=3.2.19
# Wed, 14 Mar 2018 06:30:39 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 14 Mar 2018 06:31:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Mar 2018 06:31:04 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Mar 2018 06:31:04 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Mar 2018 06:31:05 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Wed, 14 Mar 2018 06:31:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Mar 2018 06:31:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:31:06 GMT
EXPOSE 27017/tcp
# Wed, 14 Mar 2018 06:31:06 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8b5b4e67a0c87e0946dcac28cc647a7e6c9331118dd0eef93747725d1dab7c`  
		Last Modified: Wed, 14 Mar 2018 07:02:24 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87b29dbb5532144cd840d9b72eab4321de933a252e86cc472b61546f202c14e`  
		Last Modified: Wed, 14 Mar 2018 07:02:25 GMT  
		Size: 2.4 MB (2397877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908c259a6a99e48c455f1d2bf92c7174f7b4d3067f922fdf908d106ccd0d091c`  
		Last Modified: Wed, 14 Mar 2018 07:02:23 GMT  
		Size: 816.7 KB (816677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdec16e62a33da762a06b5a7e10ce995a2eb745168ec87d54aa8f5e52482617`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d8cda9e71164fc8c54a16392806076a2d5592545941db52480bd2c56809254`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 3.6 KB (3596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a4a81b251e79cc00eb834f1458aaf8663a58fcf8979751a05ce795b3f204db`  
		Last Modified: Wed, 14 Mar 2018 07:02:20 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78cea6291772055c25701d15c7a4a986d321f9f0f8ccc08d776cbf12773fdf05`  
		Last Modified: Wed, 14 Mar 2018 07:02:34 GMT  
		Size: 70.8 MB (70839983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d2956a3415945290979ff905887ba8b155c2b422d9105664fbbc6fec8b08d6`  
		Last Modified: Wed, 14 Mar 2018 07:02:20 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef0c803907b9d116e56348959be3c3389391959640d2fe23022d4c3b4c9527f`  
		Last Modified: Wed, 14 Mar 2018 07:02:21 GMT  
		Size: 3.6 KB (3571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15e23e30571296cd49c853500d249f91d7d7f3709aa4841cb0c0c19c4a554b4`  
		Last Modified: Wed, 14 Mar 2018 07:02:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:2e8726f66bc4a896598d28e99bc9b0916f1f8f7c402604d991c2f2e434aa06c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

```console
$ docker pull mongo@sha256:7e009c0acbd2ace15b2ca3a0c55d5b30fe246fdc6c9a67a7ce33bf395c799fe3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (131991715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f48f036a935c3f30e6e065227a600905f312c136545ae09133f772b5b7957b42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:29:43 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:30:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:30:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:30:05 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:30:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:30:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:31:33 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 14 Mar 2018 06:31:39 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:31:39 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 14 Mar 2018 06:31:40 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:31:40 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:31:40 GMT
ENV MONGO_MAJOR=3.4
# Wed, 14 Mar 2018 06:31:40 GMT
ENV MONGO_VERSION=3.4.13
# Wed, 14 Mar 2018 06:31:41 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 14 Mar 2018 06:32:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Mar 2018 06:32:06 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Mar 2018 06:32:06 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Mar 2018 06:32:07 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Wed, 14 Mar 2018 06:32:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Mar 2018 06:32:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:32:08 GMT
EXPOSE 27017/tcp
# Wed, 14 Mar 2018 06:32:08 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8b5b4e67a0c87e0946dcac28cc647a7e6c9331118dd0eef93747725d1dab7c`  
		Last Modified: Wed, 14 Mar 2018 07:02:24 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87b29dbb5532144cd840d9b72eab4321de933a252e86cc472b61546f202c14e`  
		Last Modified: Wed, 14 Mar 2018 07:02:25 GMT  
		Size: 2.4 MB (2397877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908c259a6a99e48c455f1d2bf92c7174f7b4d3067f922fdf908d106ccd0d091c`  
		Last Modified: Wed, 14 Mar 2018 07:02:23 GMT  
		Size: 816.7 KB (816677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdec16e62a33da762a06b5a7e10ce995a2eb745168ec87d54aa8f5e52482617`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4c21acc8304d39f58922687c0b2757534e9dea0b1f8ac954911daae7adf497`  
		Last Modified: Wed, 14 Mar 2018 07:03:14 GMT  
		Size: 2.0 KB (2006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639ba4ec2973cbc670b28849c45935ee7241b4dbdc4cd47786cd476a60242707`  
		Last Modified: Wed, 14 Mar 2018 07:03:13 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4d7b103aa8846397cb734a663bde4ae048c7d189a82bdd4060a5ae5e4afba3`  
		Last Modified: Wed, 14 Mar 2018 07:03:30 GMT  
		Size: 98.6 MB (98646487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8326365bb455fd230bcb921fa9e12ca7123663941eb87bbdbbd814fd98631e`  
		Last Modified: Wed, 14 Mar 2018 07:03:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5517c6bc6ff95854e3c7f60b1cf8eeecd1b9793ebac377aeed38636bbe7b6139`  
		Last Modified: Wed, 14 Mar 2018 07:03:12 GMT  
		Size: 3.6 KB (3569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1541b95badf27d9a7fdcb37f39c4d7544e8bb45ec6a61bc139907a37764f07c9`  
		Last Modified: Wed, 14 Mar 2018 07:03:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.13`

```console
$ docker pull mongo@sha256:2e8726f66bc4a896598d28e99bc9b0916f1f8f7c402604d991c2f2e434aa06c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4.13` - linux; amd64

```console
$ docker pull mongo@sha256:7e009c0acbd2ace15b2ca3a0c55d5b30fe246fdc6c9a67a7ce33bf395c799fe3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (131991715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f48f036a935c3f30e6e065227a600905f312c136545ae09133f772b5b7957b42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:29:43 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:30:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:30:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:30:05 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:30:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:30:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:31:33 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 14 Mar 2018 06:31:39 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:31:39 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 14 Mar 2018 06:31:40 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:31:40 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:31:40 GMT
ENV MONGO_MAJOR=3.4
# Wed, 14 Mar 2018 06:31:40 GMT
ENV MONGO_VERSION=3.4.13
# Wed, 14 Mar 2018 06:31:41 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 14 Mar 2018 06:32:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Mar 2018 06:32:06 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Mar 2018 06:32:06 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Mar 2018 06:32:07 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Wed, 14 Mar 2018 06:32:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Mar 2018 06:32:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:32:08 GMT
EXPOSE 27017/tcp
# Wed, 14 Mar 2018 06:32:08 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8b5b4e67a0c87e0946dcac28cc647a7e6c9331118dd0eef93747725d1dab7c`  
		Last Modified: Wed, 14 Mar 2018 07:02:24 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87b29dbb5532144cd840d9b72eab4321de933a252e86cc472b61546f202c14e`  
		Last Modified: Wed, 14 Mar 2018 07:02:25 GMT  
		Size: 2.4 MB (2397877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908c259a6a99e48c455f1d2bf92c7174f7b4d3067f922fdf908d106ccd0d091c`  
		Last Modified: Wed, 14 Mar 2018 07:02:23 GMT  
		Size: 816.7 KB (816677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdec16e62a33da762a06b5a7e10ce995a2eb745168ec87d54aa8f5e52482617`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4c21acc8304d39f58922687c0b2757534e9dea0b1f8ac954911daae7adf497`  
		Last Modified: Wed, 14 Mar 2018 07:03:14 GMT  
		Size: 2.0 KB (2006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639ba4ec2973cbc670b28849c45935ee7241b4dbdc4cd47786cd476a60242707`  
		Last Modified: Wed, 14 Mar 2018 07:03:13 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4d7b103aa8846397cb734a663bde4ae048c7d189a82bdd4060a5ae5e4afba3`  
		Last Modified: Wed, 14 Mar 2018 07:03:30 GMT  
		Size: 98.6 MB (98646487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8326365bb455fd230bcb921fa9e12ca7123663941eb87bbdbbd814fd98631e`  
		Last Modified: Wed, 14 Mar 2018 07:03:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5517c6bc6ff95854e3c7f60b1cf8eeecd1b9793ebac377aeed38636bbe7b6139`  
		Last Modified: Wed, 14 Mar 2018 07:03:12 GMT  
		Size: 3.6 KB (3569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1541b95badf27d9a7fdcb37f39c4d7544e8bb45ec6a61bc139907a37764f07c9`  
		Last Modified: Wed, 14 Mar 2018 07:03:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.13-jessie`

```console
$ docker pull mongo@sha256:2e8726f66bc4a896598d28e99bc9b0916f1f8f7c402604d991c2f2e434aa06c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4.13-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:7e009c0acbd2ace15b2ca3a0c55d5b30fe246fdc6c9a67a7ce33bf395c799fe3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (131991715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f48f036a935c3f30e6e065227a600905f312c136545ae09133f772b5b7957b42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:29:43 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:30:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:30:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:30:05 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:30:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:30:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:31:33 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 14 Mar 2018 06:31:39 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:31:39 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 14 Mar 2018 06:31:40 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:31:40 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:31:40 GMT
ENV MONGO_MAJOR=3.4
# Wed, 14 Mar 2018 06:31:40 GMT
ENV MONGO_VERSION=3.4.13
# Wed, 14 Mar 2018 06:31:41 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 14 Mar 2018 06:32:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Mar 2018 06:32:06 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Mar 2018 06:32:06 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Mar 2018 06:32:07 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Wed, 14 Mar 2018 06:32:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Mar 2018 06:32:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:32:08 GMT
EXPOSE 27017/tcp
# Wed, 14 Mar 2018 06:32:08 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8b5b4e67a0c87e0946dcac28cc647a7e6c9331118dd0eef93747725d1dab7c`  
		Last Modified: Wed, 14 Mar 2018 07:02:24 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87b29dbb5532144cd840d9b72eab4321de933a252e86cc472b61546f202c14e`  
		Last Modified: Wed, 14 Mar 2018 07:02:25 GMT  
		Size: 2.4 MB (2397877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908c259a6a99e48c455f1d2bf92c7174f7b4d3067f922fdf908d106ccd0d091c`  
		Last Modified: Wed, 14 Mar 2018 07:02:23 GMT  
		Size: 816.7 KB (816677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdec16e62a33da762a06b5a7e10ce995a2eb745168ec87d54aa8f5e52482617`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4c21acc8304d39f58922687c0b2757534e9dea0b1f8ac954911daae7adf497`  
		Last Modified: Wed, 14 Mar 2018 07:03:14 GMT  
		Size: 2.0 KB (2006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639ba4ec2973cbc670b28849c45935ee7241b4dbdc4cd47786cd476a60242707`  
		Last Modified: Wed, 14 Mar 2018 07:03:13 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4d7b103aa8846397cb734a663bde4ae048c7d189a82bdd4060a5ae5e4afba3`  
		Last Modified: Wed, 14 Mar 2018 07:03:30 GMT  
		Size: 98.6 MB (98646487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8326365bb455fd230bcb921fa9e12ca7123663941eb87bbdbbd814fd98631e`  
		Last Modified: Wed, 14 Mar 2018 07:03:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5517c6bc6ff95854e3c7f60b1cf8eeecd1b9793ebac377aeed38636bbe7b6139`  
		Last Modified: Wed, 14 Mar 2018 07:03:12 GMT  
		Size: 3.6 KB (3569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1541b95badf27d9a7fdcb37f39c4d7544e8bb45ec6a61bc139907a37764f07c9`  
		Last Modified: Wed, 14 Mar 2018 07:03:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-jessie`

```console
$ docker pull mongo@sha256:2e8726f66bc4a896598d28e99bc9b0916f1f8f7c402604d991c2f2e434aa06c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:7e009c0acbd2ace15b2ca3a0c55d5b30fe246fdc6c9a67a7ce33bf395c799fe3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (131991715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f48f036a935c3f30e6e065227a600905f312c136545ae09133f772b5b7957b42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:29:43 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:30:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:30:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:30:05 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:30:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:30:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:31:33 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Wed, 14 Mar 2018 06:31:39 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:31:39 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 14 Mar 2018 06:31:40 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:31:40 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:31:40 GMT
ENV MONGO_MAJOR=3.4
# Wed, 14 Mar 2018 06:31:40 GMT
ENV MONGO_VERSION=3.4.13
# Wed, 14 Mar 2018 06:31:41 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 14 Mar 2018 06:32:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Mar 2018 06:32:06 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Mar 2018 06:32:06 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Mar 2018 06:32:07 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Wed, 14 Mar 2018 06:32:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Mar 2018 06:32:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:32:08 GMT
EXPOSE 27017/tcp
# Wed, 14 Mar 2018 06:32:08 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8b5b4e67a0c87e0946dcac28cc647a7e6c9331118dd0eef93747725d1dab7c`  
		Last Modified: Wed, 14 Mar 2018 07:02:24 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87b29dbb5532144cd840d9b72eab4321de933a252e86cc472b61546f202c14e`  
		Last Modified: Wed, 14 Mar 2018 07:02:25 GMT  
		Size: 2.4 MB (2397877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908c259a6a99e48c455f1d2bf92c7174f7b4d3067f922fdf908d106ccd0d091c`  
		Last Modified: Wed, 14 Mar 2018 07:02:23 GMT  
		Size: 816.7 KB (816677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdec16e62a33da762a06b5a7e10ce995a2eb745168ec87d54aa8f5e52482617`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4c21acc8304d39f58922687c0b2757534e9dea0b1f8ac954911daae7adf497`  
		Last Modified: Wed, 14 Mar 2018 07:03:14 GMT  
		Size: 2.0 KB (2006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639ba4ec2973cbc670b28849c45935ee7241b4dbdc4cd47786cd476a60242707`  
		Last Modified: Wed, 14 Mar 2018 07:03:13 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4d7b103aa8846397cb734a663bde4ae048c7d189a82bdd4060a5ae5e4afba3`  
		Last Modified: Wed, 14 Mar 2018 07:03:30 GMT  
		Size: 98.6 MB (98646487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8326365bb455fd230bcb921fa9e12ca7123663941eb87bbdbbd814fd98631e`  
		Last Modified: Wed, 14 Mar 2018 07:03:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5517c6bc6ff95854e3c7f60b1cf8eeecd1b9793ebac377aeed38636bbe7b6139`  
		Last Modified: Wed, 14 Mar 2018 07:03:12 GMT  
		Size: 3.6 KB (3569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1541b95badf27d9a7fdcb37f39c4d7544e8bb45ec6a61bc139907a37764f07c9`  
		Last Modified: Wed, 14 Mar 2018 07:03:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6`

```console
$ docker pull mongo@sha256:d969194a7c4dcd817cae5dc726b1493547a3ad3f1b30f7f58857adc9ae6a4483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6` - linux; amd64

```console
$ docker pull mongo@sha256:fd85473bdcfad727d1d8d755a4879b7c7427a7fc84f50c92ab87508653469c6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130528818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b1317f8158fa35a66116d083d8c7e2c64720713b1ce90e2a1ec186e36a98984`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:29:43 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:30:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:30:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:30:05 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:30:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:30:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:32:28 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 14 Mar 2018 06:32:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:32:34 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 14 Mar 2018 06:32:34 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:32:34 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:32:35 GMT
ENV MONGO_MAJOR=3.6
# Wed, 14 Mar 2018 06:32:35 GMT
ENV MONGO_VERSION=3.6.3
# Wed, 14 Mar 2018 06:32:36 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 14 Mar 2018 06:33:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Mar 2018 06:33:03 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Mar 2018 06:33:03 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Mar 2018 06:33:04 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 14 Mar 2018 06:33:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:33:04 GMT
EXPOSE 27017/tcp
# Wed, 14 Mar 2018 06:33:05 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8b5b4e67a0c87e0946dcac28cc647a7e6c9331118dd0eef93747725d1dab7c`  
		Last Modified: Wed, 14 Mar 2018 07:02:24 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87b29dbb5532144cd840d9b72eab4321de933a252e86cc472b61546f202c14e`  
		Last Modified: Wed, 14 Mar 2018 07:02:25 GMT  
		Size: 2.4 MB (2397877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908c259a6a99e48c455f1d2bf92c7174f7b4d3067f922fdf908d106ccd0d091c`  
		Last Modified: Wed, 14 Mar 2018 07:02:23 GMT  
		Size: 816.7 KB (816677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdec16e62a33da762a06b5a7e10ce995a2eb745168ec87d54aa8f5e52482617`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e233c6c476cb9a3c3af96224851e2874771a736e19ef2c84b13c896e0d8044dc`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 1.4 KB (1443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671c302f3b4092b304b0bee534b3e911775ca626850456158211dddec06004d4`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207ff3c88601bd15065d069fa544f5b73b6dc7e6fe0f1222f6d20506ac2fba8a`  
		Last Modified: Wed, 14 Mar 2018 07:04:26 GMT  
		Size: 97.2 MB (97184127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a7998bea9fdf4dba81c93004e7641e5ef7ce64ec82aa24228152ba6f4ee2b3f`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d605d67f267c15bedbf7720cbe79065e26004d4600c2ed87799dcfdd1e5331`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.3`

```console
$ docker pull mongo@sha256:d969194a7c4dcd817cae5dc726b1493547a3ad3f1b30f7f58857adc9ae6a4483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6.3` - linux; amd64

```console
$ docker pull mongo@sha256:fd85473bdcfad727d1d8d755a4879b7c7427a7fc84f50c92ab87508653469c6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130528818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b1317f8158fa35a66116d083d8c7e2c64720713b1ce90e2a1ec186e36a98984`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:29:43 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:30:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:30:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:30:05 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:30:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:30:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:32:28 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 14 Mar 2018 06:32:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:32:34 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 14 Mar 2018 06:32:34 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:32:34 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:32:35 GMT
ENV MONGO_MAJOR=3.6
# Wed, 14 Mar 2018 06:32:35 GMT
ENV MONGO_VERSION=3.6.3
# Wed, 14 Mar 2018 06:32:36 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 14 Mar 2018 06:33:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Mar 2018 06:33:03 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Mar 2018 06:33:03 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Mar 2018 06:33:04 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 14 Mar 2018 06:33:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:33:04 GMT
EXPOSE 27017/tcp
# Wed, 14 Mar 2018 06:33:05 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8b5b4e67a0c87e0946dcac28cc647a7e6c9331118dd0eef93747725d1dab7c`  
		Last Modified: Wed, 14 Mar 2018 07:02:24 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87b29dbb5532144cd840d9b72eab4321de933a252e86cc472b61546f202c14e`  
		Last Modified: Wed, 14 Mar 2018 07:02:25 GMT  
		Size: 2.4 MB (2397877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908c259a6a99e48c455f1d2bf92c7174f7b4d3067f922fdf908d106ccd0d091c`  
		Last Modified: Wed, 14 Mar 2018 07:02:23 GMT  
		Size: 816.7 KB (816677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdec16e62a33da762a06b5a7e10ce995a2eb745168ec87d54aa8f5e52482617`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e233c6c476cb9a3c3af96224851e2874771a736e19ef2c84b13c896e0d8044dc`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 1.4 KB (1443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671c302f3b4092b304b0bee534b3e911775ca626850456158211dddec06004d4`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207ff3c88601bd15065d069fa544f5b73b6dc7e6fe0f1222f6d20506ac2fba8a`  
		Last Modified: Wed, 14 Mar 2018 07:04:26 GMT  
		Size: 97.2 MB (97184127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a7998bea9fdf4dba81c93004e7641e5ef7ce64ec82aa24228152ba6f4ee2b3f`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d605d67f267c15bedbf7720cbe79065e26004d4600c2ed87799dcfdd1e5331`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.3-jessie`

```console
$ docker pull mongo@sha256:d969194a7c4dcd817cae5dc726b1493547a3ad3f1b30f7f58857adc9ae6a4483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6.3-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:fd85473bdcfad727d1d8d755a4879b7c7427a7fc84f50c92ab87508653469c6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130528818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b1317f8158fa35a66116d083d8c7e2c64720713b1ce90e2a1ec186e36a98984`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:29:43 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:30:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:30:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:30:05 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:30:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:30:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:32:28 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 14 Mar 2018 06:32:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:32:34 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 14 Mar 2018 06:32:34 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:32:34 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:32:35 GMT
ENV MONGO_MAJOR=3.6
# Wed, 14 Mar 2018 06:32:35 GMT
ENV MONGO_VERSION=3.6.3
# Wed, 14 Mar 2018 06:32:36 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 14 Mar 2018 06:33:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Mar 2018 06:33:03 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Mar 2018 06:33:03 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Mar 2018 06:33:04 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 14 Mar 2018 06:33:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:33:04 GMT
EXPOSE 27017/tcp
# Wed, 14 Mar 2018 06:33:05 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8b5b4e67a0c87e0946dcac28cc647a7e6c9331118dd0eef93747725d1dab7c`  
		Last Modified: Wed, 14 Mar 2018 07:02:24 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87b29dbb5532144cd840d9b72eab4321de933a252e86cc472b61546f202c14e`  
		Last Modified: Wed, 14 Mar 2018 07:02:25 GMT  
		Size: 2.4 MB (2397877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908c259a6a99e48c455f1d2bf92c7174f7b4d3067f922fdf908d106ccd0d091c`  
		Last Modified: Wed, 14 Mar 2018 07:02:23 GMT  
		Size: 816.7 KB (816677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdec16e62a33da762a06b5a7e10ce995a2eb745168ec87d54aa8f5e52482617`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e233c6c476cb9a3c3af96224851e2874771a736e19ef2c84b13c896e0d8044dc`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 1.4 KB (1443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671c302f3b4092b304b0bee534b3e911775ca626850456158211dddec06004d4`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207ff3c88601bd15065d069fa544f5b73b6dc7e6fe0f1222f6d20506ac2fba8a`  
		Last Modified: Wed, 14 Mar 2018 07:04:26 GMT  
		Size: 97.2 MB (97184127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a7998bea9fdf4dba81c93004e7641e5ef7ce64ec82aa24228152ba6f4ee2b3f`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d605d67f267c15bedbf7720cbe79065e26004d4600c2ed87799dcfdd1e5331`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6-jessie`

```console
$ docker pull mongo@sha256:d969194a7c4dcd817cae5dc726b1493547a3ad3f1b30f7f58857adc9ae6a4483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:fd85473bdcfad727d1d8d755a4879b7c7427a7fc84f50c92ab87508653469c6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130528818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b1317f8158fa35a66116d083d8c7e2c64720713b1ce90e2a1ec186e36a98984`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:29:43 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:30:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:30:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:30:05 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:30:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:30:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:32:28 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 14 Mar 2018 06:32:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:32:34 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 14 Mar 2018 06:32:34 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:32:34 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:32:35 GMT
ENV MONGO_MAJOR=3.6
# Wed, 14 Mar 2018 06:32:35 GMT
ENV MONGO_VERSION=3.6.3
# Wed, 14 Mar 2018 06:32:36 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 14 Mar 2018 06:33:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Mar 2018 06:33:03 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Mar 2018 06:33:03 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Mar 2018 06:33:04 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 14 Mar 2018 06:33:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:33:04 GMT
EXPOSE 27017/tcp
# Wed, 14 Mar 2018 06:33:05 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8b5b4e67a0c87e0946dcac28cc647a7e6c9331118dd0eef93747725d1dab7c`  
		Last Modified: Wed, 14 Mar 2018 07:02:24 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87b29dbb5532144cd840d9b72eab4321de933a252e86cc472b61546f202c14e`  
		Last Modified: Wed, 14 Mar 2018 07:02:25 GMT  
		Size: 2.4 MB (2397877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908c259a6a99e48c455f1d2bf92c7174f7b4d3067f922fdf908d106ccd0d091c`  
		Last Modified: Wed, 14 Mar 2018 07:02:23 GMT  
		Size: 816.7 KB (816677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdec16e62a33da762a06b5a7e10ce995a2eb745168ec87d54aa8f5e52482617`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e233c6c476cb9a3c3af96224851e2874771a736e19ef2c84b13c896e0d8044dc`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 1.4 KB (1443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671c302f3b4092b304b0bee534b3e911775ca626850456158211dddec06004d4`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207ff3c88601bd15065d069fa544f5b73b6dc7e6fe0f1222f6d20506ac2fba8a`  
		Last Modified: Wed, 14 Mar 2018 07:04:26 GMT  
		Size: 97.2 MB (97184127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a7998bea9fdf4dba81c93004e7641e5ef7ce64ec82aa24228152ba6f4ee2b3f`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d605d67f267c15bedbf7720cbe79065e26004d4600c2ed87799dcfdd1e5331`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7`

```console
$ docker pull mongo@sha256:17513a301508b304372175a4e5d1ad00aa800383b74d1e89e1e23abc630cf1e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.7` - linux; amd64

```console
$ docker pull mongo@sha256:bf24e87f454c53e53f908ecb15312b8cc9216f824ca2530c4afc2e493ca986c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.4 MB (133409668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b42dafd89c8374b9aa9d2f7c3d1d322258546d08d0e89e37acd1acdffa48cbee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:29:43 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:30:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:30:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:30:05 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:30:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:30:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:41:22 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Wed, 14 Mar 2018 06:41:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:41:34 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 14 Mar 2018 06:41:35 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:41:35 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:41:35 GMT
ENV MONGO_MAJOR=3.7
# Fri, 16 Mar 2018 13:17:40 GMT
ENV MONGO_VERSION=3.7.3
# Fri, 16 Mar 2018 13:17:41 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 16 Mar 2018 13:18:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 16 Mar 2018 13:18:10 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 16 Mar 2018 13:18:11 GMT
VOLUME [/data/db /data/configdb]
# Fri, 16 Mar 2018 13:18:11 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Fri, 16 Mar 2018 13:18:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 13:18:12 GMT
EXPOSE 27017/tcp
# Fri, 16 Mar 2018 13:18:12 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8b5b4e67a0c87e0946dcac28cc647a7e6c9331118dd0eef93747725d1dab7c`  
		Last Modified: Wed, 14 Mar 2018 07:02:24 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87b29dbb5532144cd840d9b72eab4321de933a252e86cc472b61546f202c14e`  
		Last Modified: Wed, 14 Mar 2018 07:02:25 GMT  
		Size: 2.4 MB (2397877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908c259a6a99e48c455f1d2bf92c7174f7b4d3067f922fdf908d106ccd0d091c`  
		Last Modified: Wed, 14 Mar 2018 07:02:23 GMT  
		Size: 816.7 KB (816677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdec16e62a33da762a06b5a7e10ce995a2eb745168ec87d54aa8f5e52482617`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb50b2324f003b20bb59c13c70b53dd1b2ab9cc4b3f36fd1b004aa4d9a112f3`  
		Last Modified: Wed, 14 Mar 2018 07:08:02 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11cea85d02c1d0cd7aa326856e814e3e1db0e085bd77e267587838c203b31302`  
		Last Modified: Fri, 16 Mar 2018 13:25:56 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e65a0fdd30c2f96684b68a5735e1ac2ee909e1215065d86eb9778ab8cf5b18`  
		Last Modified: Fri, 16 Mar 2018 13:26:15 GMT  
		Size: 100.1 MB (100064976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bdba759557f9b10db1486af96713a5d5213cdc725c193f12eace1598d61d752`  
		Last Modified: Fri, 16 Mar 2018 13:25:56 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e712ef3a900519741f488e371cbcc4c491869e747d9b2980307e9759e3ef69`  
		Last Modified: Fri, 16 Mar 2018 13:25:56 GMT  
		Size: 3.7 KB (3716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7.3`

```console
$ docker pull mongo@sha256:17513a301508b304372175a4e5d1ad00aa800383b74d1e89e1e23abc630cf1e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.7.3` - linux; amd64

```console
$ docker pull mongo@sha256:bf24e87f454c53e53f908ecb15312b8cc9216f824ca2530c4afc2e493ca986c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.4 MB (133409668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b42dafd89c8374b9aa9d2f7c3d1d322258546d08d0e89e37acd1acdffa48cbee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:29:43 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:30:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:30:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:30:05 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:30:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:30:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:41:22 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Wed, 14 Mar 2018 06:41:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:41:34 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 14 Mar 2018 06:41:35 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:41:35 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:41:35 GMT
ENV MONGO_MAJOR=3.7
# Fri, 16 Mar 2018 13:17:40 GMT
ENV MONGO_VERSION=3.7.3
# Fri, 16 Mar 2018 13:17:41 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 16 Mar 2018 13:18:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 16 Mar 2018 13:18:10 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 16 Mar 2018 13:18:11 GMT
VOLUME [/data/db /data/configdb]
# Fri, 16 Mar 2018 13:18:11 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Fri, 16 Mar 2018 13:18:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 13:18:12 GMT
EXPOSE 27017/tcp
# Fri, 16 Mar 2018 13:18:12 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8b5b4e67a0c87e0946dcac28cc647a7e6c9331118dd0eef93747725d1dab7c`  
		Last Modified: Wed, 14 Mar 2018 07:02:24 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87b29dbb5532144cd840d9b72eab4321de933a252e86cc472b61546f202c14e`  
		Last Modified: Wed, 14 Mar 2018 07:02:25 GMT  
		Size: 2.4 MB (2397877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908c259a6a99e48c455f1d2bf92c7174f7b4d3067f922fdf908d106ccd0d091c`  
		Last Modified: Wed, 14 Mar 2018 07:02:23 GMT  
		Size: 816.7 KB (816677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdec16e62a33da762a06b5a7e10ce995a2eb745168ec87d54aa8f5e52482617`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb50b2324f003b20bb59c13c70b53dd1b2ab9cc4b3f36fd1b004aa4d9a112f3`  
		Last Modified: Wed, 14 Mar 2018 07:08:02 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11cea85d02c1d0cd7aa326856e814e3e1db0e085bd77e267587838c203b31302`  
		Last Modified: Fri, 16 Mar 2018 13:25:56 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e65a0fdd30c2f96684b68a5735e1ac2ee909e1215065d86eb9778ab8cf5b18`  
		Last Modified: Fri, 16 Mar 2018 13:26:15 GMT  
		Size: 100.1 MB (100064976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bdba759557f9b10db1486af96713a5d5213cdc725c193f12eace1598d61d752`  
		Last Modified: Fri, 16 Mar 2018 13:25:56 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e712ef3a900519741f488e371cbcc4c491869e747d9b2980307e9759e3ef69`  
		Last Modified: Fri, 16 Mar 2018 13:25:56 GMT  
		Size: 3.7 KB (3716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7.3-jessie`

```console
$ docker pull mongo@sha256:17513a301508b304372175a4e5d1ad00aa800383b74d1e89e1e23abc630cf1e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.7.3-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:bf24e87f454c53e53f908ecb15312b8cc9216f824ca2530c4afc2e493ca986c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.4 MB (133409668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b42dafd89c8374b9aa9d2f7c3d1d322258546d08d0e89e37acd1acdffa48cbee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:29:43 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:30:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:30:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:30:05 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:30:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:30:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:41:22 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Wed, 14 Mar 2018 06:41:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:41:34 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 14 Mar 2018 06:41:35 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:41:35 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:41:35 GMT
ENV MONGO_MAJOR=3.7
# Fri, 16 Mar 2018 13:17:40 GMT
ENV MONGO_VERSION=3.7.3
# Fri, 16 Mar 2018 13:17:41 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 16 Mar 2018 13:18:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 16 Mar 2018 13:18:10 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 16 Mar 2018 13:18:11 GMT
VOLUME [/data/db /data/configdb]
# Fri, 16 Mar 2018 13:18:11 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Fri, 16 Mar 2018 13:18:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 13:18:12 GMT
EXPOSE 27017/tcp
# Fri, 16 Mar 2018 13:18:12 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8b5b4e67a0c87e0946dcac28cc647a7e6c9331118dd0eef93747725d1dab7c`  
		Last Modified: Wed, 14 Mar 2018 07:02:24 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87b29dbb5532144cd840d9b72eab4321de933a252e86cc472b61546f202c14e`  
		Last Modified: Wed, 14 Mar 2018 07:02:25 GMT  
		Size: 2.4 MB (2397877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908c259a6a99e48c455f1d2bf92c7174f7b4d3067f922fdf908d106ccd0d091c`  
		Last Modified: Wed, 14 Mar 2018 07:02:23 GMT  
		Size: 816.7 KB (816677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdec16e62a33da762a06b5a7e10ce995a2eb745168ec87d54aa8f5e52482617`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb50b2324f003b20bb59c13c70b53dd1b2ab9cc4b3f36fd1b004aa4d9a112f3`  
		Last Modified: Wed, 14 Mar 2018 07:08:02 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11cea85d02c1d0cd7aa326856e814e3e1db0e085bd77e267587838c203b31302`  
		Last Modified: Fri, 16 Mar 2018 13:25:56 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e65a0fdd30c2f96684b68a5735e1ac2ee909e1215065d86eb9778ab8cf5b18`  
		Last Modified: Fri, 16 Mar 2018 13:26:15 GMT  
		Size: 100.1 MB (100064976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bdba759557f9b10db1486af96713a5d5213cdc725c193f12eace1598d61d752`  
		Last Modified: Fri, 16 Mar 2018 13:25:56 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e712ef3a900519741f488e371cbcc4c491869e747d9b2980307e9759e3ef69`  
		Last Modified: Fri, 16 Mar 2018 13:25:56 GMT  
		Size: 3.7 KB (3716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7-jessie`

```console
$ docker pull mongo@sha256:17513a301508b304372175a4e5d1ad00aa800383b74d1e89e1e23abc630cf1e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.7-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:bf24e87f454c53e53f908ecb15312b8cc9216f824ca2530c4afc2e493ca986c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.4 MB (133409668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b42dafd89c8374b9aa9d2f7c3d1d322258546d08d0e89e37acd1acdffa48cbee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:29:43 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:30:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:30:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:30:05 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:30:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:30:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:41:22 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Wed, 14 Mar 2018 06:41:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:41:34 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 14 Mar 2018 06:41:35 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:41:35 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:41:35 GMT
ENV MONGO_MAJOR=3.7
# Fri, 16 Mar 2018 13:17:40 GMT
ENV MONGO_VERSION=3.7.3
# Fri, 16 Mar 2018 13:17:41 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 16 Mar 2018 13:18:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 16 Mar 2018 13:18:10 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 16 Mar 2018 13:18:11 GMT
VOLUME [/data/db /data/configdb]
# Fri, 16 Mar 2018 13:18:11 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Fri, 16 Mar 2018 13:18:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 13:18:12 GMT
EXPOSE 27017/tcp
# Fri, 16 Mar 2018 13:18:12 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8b5b4e67a0c87e0946dcac28cc647a7e6c9331118dd0eef93747725d1dab7c`  
		Last Modified: Wed, 14 Mar 2018 07:02:24 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87b29dbb5532144cd840d9b72eab4321de933a252e86cc472b61546f202c14e`  
		Last Modified: Wed, 14 Mar 2018 07:02:25 GMT  
		Size: 2.4 MB (2397877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908c259a6a99e48c455f1d2bf92c7174f7b4d3067f922fdf908d106ccd0d091c`  
		Last Modified: Wed, 14 Mar 2018 07:02:23 GMT  
		Size: 816.7 KB (816677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdec16e62a33da762a06b5a7e10ce995a2eb745168ec87d54aa8f5e52482617`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb50b2324f003b20bb59c13c70b53dd1b2ab9cc4b3f36fd1b004aa4d9a112f3`  
		Last Modified: Wed, 14 Mar 2018 07:08:02 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11cea85d02c1d0cd7aa326856e814e3e1db0e085bd77e267587838c203b31302`  
		Last Modified: Fri, 16 Mar 2018 13:25:56 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e65a0fdd30c2f96684b68a5735e1ac2ee909e1215065d86eb9778ab8cf5b18`  
		Last Modified: Fri, 16 Mar 2018 13:26:15 GMT  
		Size: 100.1 MB (100064976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bdba759557f9b10db1486af96713a5d5213cdc725c193f12eace1598d61d752`  
		Last Modified: Fri, 16 Mar 2018 13:25:56 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e712ef3a900519741f488e371cbcc4c491869e747d9b2980307e9759e3ef69`  
		Last Modified: Fri, 16 Mar 2018 13:25:56 GMT  
		Size: 3.7 KB (3716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-jessie`

```console
$ docker pull mongo@sha256:d969194a7c4dcd817cae5dc726b1493547a3ad3f1b30f7f58857adc9ae6a4483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:fd85473bdcfad727d1d8d755a4879b7c7427a7fc84f50c92ab87508653469c6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130528818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b1317f8158fa35a66116d083d8c7e2c64720713b1ce90e2a1ec186e36a98984`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:29:43 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:30:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:30:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:30:05 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:30:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:30:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:32:28 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 14 Mar 2018 06:32:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:32:34 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 14 Mar 2018 06:32:34 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:32:34 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:32:35 GMT
ENV MONGO_MAJOR=3.6
# Wed, 14 Mar 2018 06:32:35 GMT
ENV MONGO_VERSION=3.6.3
# Wed, 14 Mar 2018 06:32:36 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 14 Mar 2018 06:33:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Mar 2018 06:33:03 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Mar 2018 06:33:03 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Mar 2018 06:33:04 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 14 Mar 2018 06:33:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:33:04 GMT
EXPOSE 27017/tcp
# Wed, 14 Mar 2018 06:33:05 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8b5b4e67a0c87e0946dcac28cc647a7e6c9331118dd0eef93747725d1dab7c`  
		Last Modified: Wed, 14 Mar 2018 07:02:24 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87b29dbb5532144cd840d9b72eab4321de933a252e86cc472b61546f202c14e`  
		Last Modified: Wed, 14 Mar 2018 07:02:25 GMT  
		Size: 2.4 MB (2397877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908c259a6a99e48c455f1d2bf92c7174f7b4d3067f922fdf908d106ccd0d091c`  
		Last Modified: Wed, 14 Mar 2018 07:02:23 GMT  
		Size: 816.7 KB (816677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdec16e62a33da762a06b5a7e10ce995a2eb745168ec87d54aa8f5e52482617`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e233c6c476cb9a3c3af96224851e2874771a736e19ef2c84b13c896e0d8044dc`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 1.4 KB (1443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671c302f3b4092b304b0bee534b3e911775ca626850456158211dddec06004d4`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207ff3c88601bd15065d069fa544f5b73b6dc7e6fe0f1222f6d20506ac2fba8a`  
		Last Modified: Wed, 14 Mar 2018 07:04:26 GMT  
		Size: 97.2 MB (97184127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a7998bea9fdf4dba81c93004e7641e5ef7ce64ec82aa24228152ba6f4ee2b3f`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d605d67f267c15bedbf7720cbe79065e26004d4600c2ed87799dcfdd1e5331`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:jessie`

```console
$ docker pull mongo@sha256:d969194a7c4dcd817cae5dc726b1493547a3ad3f1b30f7f58857adc9ae6a4483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:jessie` - linux; amd64

```console
$ docker pull mongo@sha256:fd85473bdcfad727d1d8d755a4879b7c7427a7fc84f50c92ab87508653469c6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130528818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b1317f8158fa35a66116d083d8c7e2c64720713b1ce90e2a1ec186e36a98984`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:29:43 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:30:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:30:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:30:05 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:30:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:30:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:32:28 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 14 Mar 2018 06:32:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:32:34 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 14 Mar 2018 06:32:34 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:32:34 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:32:35 GMT
ENV MONGO_MAJOR=3.6
# Wed, 14 Mar 2018 06:32:35 GMT
ENV MONGO_VERSION=3.6.3
# Wed, 14 Mar 2018 06:32:36 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 14 Mar 2018 06:33:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Mar 2018 06:33:03 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Mar 2018 06:33:03 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Mar 2018 06:33:04 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 14 Mar 2018 06:33:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:33:04 GMT
EXPOSE 27017/tcp
# Wed, 14 Mar 2018 06:33:05 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8b5b4e67a0c87e0946dcac28cc647a7e6c9331118dd0eef93747725d1dab7c`  
		Last Modified: Wed, 14 Mar 2018 07:02:24 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87b29dbb5532144cd840d9b72eab4321de933a252e86cc472b61546f202c14e`  
		Last Modified: Wed, 14 Mar 2018 07:02:25 GMT  
		Size: 2.4 MB (2397877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908c259a6a99e48c455f1d2bf92c7174f7b4d3067f922fdf908d106ccd0d091c`  
		Last Modified: Wed, 14 Mar 2018 07:02:23 GMT  
		Size: 816.7 KB (816677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdec16e62a33da762a06b5a7e10ce995a2eb745168ec87d54aa8f5e52482617`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e233c6c476cb9a3c3af96224851e2874771a736e19ef2c84b13c896e0d8044dc`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 1.4 KB (1443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671c302f3b4092b304b0bee534b3e911775ca626850456158211dddec06004d4`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207ff3c88601bd15065d069fa544f5b73b6dc7e6fe0f1222f6d20506ac2fba8a`  
		Last Modified: Wed, 14 Mar 2018 07:04:26 GMT  
		Size: 97.2 MB (97184127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a7998bea9fdf4dba81c93004e7641e5ef7ce64ec82aa24228152ba6f4ee2b3f`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d605d67f267c15bedbf7720cbe79065e26004d4600c2ed87799dcfdd1e5331`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:d969194a7c4dcd817cae5dc726b1493547a3ad3f1b30f7f58857adc9ae6a4483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:fd85473bdcfad727d1d8d755a4879b7c7427a7fc84f50c92ab87508653469c6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130528818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b1317f8158fa35a66116d083d8c7e2c64720713b1ce90e2a1ec186e36a98984`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:29:43 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:30:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:30:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:30:05 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:30:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:30:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:32:28 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Wed, 14 Mar 2018 06:32:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:32:34 GMT
ARG MONGO_PACKAGE=mongodb-org
# Wed, 14 Mar 2018 06:32:34 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:32:34 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:32:35 GMT
ENV MONGO_MAJOR=3.6
# Wed, 14 Mar 2018 06:32:35 GMT
ENV MONGO_VERSION=3.6.3
# Wed, 14 Mar 2018 06:32:36 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Wed, 14 Mar 2018 06:33:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Wed, 14 Mar 2018 06:33:03 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Wed, 14 Mar 2018 06:33:03 GMT
VOLUME [/data/db /data/configdb]
# Wed, 14 Mar 2018 06:33:04 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Wed, 14 Mar 2018 06:33:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:33:04 GMT
EXPOSE 27017/tcp
# Wed, 14 Mar 2018 06:33:05 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8b5b4e67a0c87e0946dcac28cc647a7e6c9331118dd0eef93747725d1dab7c`  
		Last Modified: Wed, 14 Mar 2018 07:02:24 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87b29dbb5532144cd840d9b72eab4321de933a252e86cc472b61546f202c14e`  
		Last Modified: Wed, 14 Mar 2018 07:02:25 GMT  
		Size: 2.4 MB (2397877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908c259a6a99e48c455f1d2bf92c7174f7b4d3067f922fdf908d106ccd0d091c`  
		Last Modified: Wed, 14 Mar 2018 07:02:23 GMT  
		Size: 816.7 KB (816677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdec16e62a33da762a06b5a7e10ce995a2eb745168ec87d54aa8f5e52482617`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e233c6c476cb9a3c3af96224851e2874771a736e19ef2c84b13c896e0d8044dc`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 1.4 KB (1443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671c302f3b4092b304b0bee534b3e911775ca626850456158211dddec06004d4`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207ff3c88601bd15065d069fa544f5b73b6dc7e6fe0f1222f6d20506ac2fba8a`  
		Last Modified: Wed, 14 Mar 2018 07:04:26 GMT  
		Size: 97.2 MB (97184127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a7998bea9fdf4dba81c93004e7641e5ef7ce64ec82aa24228152ba6f4ee2b3f`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d605d67f267c15bedbf7720cbe79065e26004d4600c2ed87799dcfdd1e5331`  
		Last Modified: Wed, 14 Mar 2018 07:04:08 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:17513a301508b304372175a4e5d1ad00aa800383b74d1e89e1e23abc630cf1e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:bf24e87f454c53e53f908ecb15312b8cc9216f824ca2530c4afc2e493ca986c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.4 MB (133409668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b42dafd89c8374b9aa9d2f7c3d1d322258546d08d0e89e37acd1acdffa48cbee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:29:43 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:30:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:30:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:30:05 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:30:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:30:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:41:22 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Wed, 14 Mar 2018 06:41:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:41:34 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 14 Mar 2018 06:41:35 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:41:35 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:41:35 GMT
ENV MONGO_MAJOR=3.7
# Fri, 16 Mar 2018 13:17:40 GMT
ENV MONGO_VERSION=3.7.3
# Fri, 16 Mar 2018 13:17:41 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 16 Mar 2018 13:18:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 16 Mar 2018 13:18:10 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 16 Mar 2018 13:18:11 GMT
VOLUME [/data/db /data/configdb]
# Fri, 16 Mar 2018 13:18:11 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Fri, 16 Mar 2018 13:18:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 13:18:12 GMT
EXPOSE 27017/tcp
# Fri, 16 Mar 2018 13:18:12 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8b5b4e67a0c87e0946dcac28cc647a7e6c9331118dd0eef93747725d1dab7c`  
		Last Modified: Wed, 14 Mar 2018 07:02:24 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87b29dbb5532144cd840d9b72eab4321de933a252e86cc472b61546f202c14e`  
		Last Modified: Wed, 14 Mar 2018 07:02:25 GMT  
		Size: 2.4 MB (2397877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908c259a6a99e48c455f1d2bf92c7174f7b4d3067f922fdf908d106ccd0d091c`  
		Last Modified: Wed, 14 Mar 2018 07:02:23 GMT  
		Size: 816.7 KB (816677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdec16e62a33da762a06b5a7e10ce995a2eb745168ec87d54aa8f5e52482617`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb50b2324f003b20bb59c13c70b53dd1b2ab9cc4b3f36fd1b004aa4d9a112f3`  
		Last Modified: Wed, 14 Mar 2018 07:08:02 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11cea85d02c1d0cd7aa326856e814e3e1db0e085bd77e267587838c203b31302`  
		Last Modified: Fri, 16 Mar 2018 13:25:56 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e65a0fdd30c2f96684b68a5735e1ac2ee909e1215065d86eb9778ab8cf5b18`  
		Last Modified: Fri, 16 Mar 2018 13:26:15 GMT  
		Size: 100.1 MB (100064976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bdba759557f9b10db1486af96713a5d5213cdc725c193f12eace1598d61d752`  
		Last Modified: Fri, 16 Mar 2018 13:25:56 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e712ef3a900519741f488e371cbcc4c491869e747d9b2980307e9759e3ef69`  
		Last Modified: Fri, 16 Mar 2018 13:25:56 GMT  
		Size: 3.7 KB (3716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-jessie`

```console
$ docker pull mongo@sha256:17513a301508b304372175a4e5d1ad00aa800383b74d1e89e1e23abc630cf1e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:unstable-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:bf24e87f454c53e53f908ecb15312b8cc9216f824ca2530c4afc2e493ca986c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.4 MB (133409668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b42dafd89c8374b9aa9d2f7c3d1d322258546d08d0e89e37acd1acdffa48cbee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:29:43 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Wed, 14 Mar 2018 06:30:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:30:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:30:05 GMT
ENV JSYAML_VERSION=3.10.0
# Wed, 14 Mar 2018 06:30:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Wed, 14 Mar 2018 06:30:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 06:41:22 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Wed, 14 Mar 2018 06:41:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:41:34 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Wed, 14 Mar 2018 06:41:35 GMT
ARG MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:41:35 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Wed, 14 Mar 2018 06:41:35 GMT
ENV MONGO_MAJOR=3.7
# Fri, 16 Mar 2018 13:17:40 GMT
ENV MONGO_VERSION=3.7.3
# Fri, 16 Mar 2018 13:17:41 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Fri, 16 Mar 2018 13:18:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Fri, 16 Mar 2018 13:18:10 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Fri, 16 Mar 2018 13:18:11 GMT
VOLUME [/data/db /data/configdb]
# Fri, 16 Mar 2018 13:18:11 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Fri, 16 Mar 2018 13:18:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 13:18:12 GMT
EXPOSE 27017/tcp
# Fri, 16 Mar 2018 13:18:12 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8b5b4e67a0c87e0946dcac28cc647a7e6c9331118dd0eef93747725d1dab7c`  
		Last Modified: Wed, 14 Mar 2018 07:02:24 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87b29dbb5532144cd840d9b72eab4321de933a252e86cc472b61546f202c14e`  
		Last Modified: Wed, 14 Mar 2018 07:02:25 GMT  
		Size: 2.4 MB (2397877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908c259a6a99e48c455f1d2bf92c7174f7b4d3067f922fdf908d106ccd0d091c`  
		Last Modified: Wed, 14 Mar 2018 07:02:23 GMT  
		Size: 816.7 KB (816677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdec16e62a33da762a06b5a7e10ce995a2eb745168ec87d54aa8f5e52482617`  
		Last Modified: Wed, 14 Mar 2018 07:02:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb50b2324f003b20bb59c13c70b53dd1b2ab9cc4b3f36fd1b004aa4d9a112f3`  
		Last Modified: Wed, 14 Mar 2018 07:08:02 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11cea85d02c1d0cd7aa326856e814e3e1db0e085bd77e267587838c203b31302`  
		Last Modified: Fri, 16 Mar 2018 13:25:56 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e65a0fdd30c2f96684b68a5735e1ac2ee909e1215065d86eb9778ab8cf5b18`  
		Last Modified: Fri, 16 Mar 2018 13:26:15 GMT  
		Size: 100.1 MB (100064976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bdba759557f9b10db1486af96713a5d5213cdc725c193f12eace1598d61d752`  
		Last Modified: Fri, 16 Mar 2018 13:25:56 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e712ef3a900519741f488e371cbcc4c491869e747d9b2980307e9759e3ef69`  
		Last Modified: Fri, 16 Mar 2018 13:25:56 GMT  
		Size: 3.7 KB (3716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
-	[`mongo:3.4.14`](#mongo3414)
-	[`mongo:3.4.14-jessie`](#mongo3414-jessie)
-	[`mongo:3.4-jessie`](#mongo34-jessie)
-	[`mongo:3.6`](#mongo36)
-	[`mongo:3.6.4`](#mongo364)
-	[`mongo:3.6.4-jessie`](#mongo364-jessie)
-	[`mongo:3.6-jessie`](#mongo36-jessie)
-	[`mongo:3.7`](#mongo37)
-	[`mongo:3.7.7`](#mongo377)
-	[`mongo:3.7.7-jessie`](#mongo377-jessie)
-	[`mongo:3.7-jessie`](#mongo37-jessie)
-	[`mongo:3-jessie`](#mongo3-jessie)
-	[`mongo:jessie`](#mongojessie)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:unstable`](#mongounstable)
-	[`mongo:unstable-jessie`](#mongounstable-jessie)

## `mongo:3`

```console
$ docker pull mongo@sha256:670f9ea4f85f7e188cb0f572261feb1f2e170ee593ff3981474395e145a0c062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

```console
$ docker pull mongo@sha256:3fa8bcfe216a3ca46f3198ff4436fa428f038c17b4400e1f9a4b83648cb7c7aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130635053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f922b3f0a1200bdc7e8510a524a12ea4c0ae6949c15bea9e26d4db282fa48b`
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
# Thu, 19 Apr 2018 21:48:01 GMT
ENV MONGO_VERSION=3.6.4
# Thu, 19 Apr 2018 21:48:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 19 Apr 2018 21:48:28 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 19 Apr 2018 21:48:29 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 19 Apr 2018 21:48:29 GMT
VOLUME [/data/db /data/configdb]
# Thu, 19 Apr 2018 21:48:30 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Thu, 19 Apr 2018 21:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Apr 2018 21:48:30 GMT
EXPOSE 27017/tcp
# Thu, 19 Apr 2018 21:48:30 GMT
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
	-	`sha256:d2e7b81405e88c6b1bacbf798cb908c9c062e2b244f571894b4e8e0cea32430d`  
		Last Modified: Thu, 19 Apr 2018 21:55:56 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6c29dc63578b8e7d2f832f691e12242a9807e8d95e3a21f3b057088e8908b8`  
		Last Modified: Thu, 19 Apr 2018 21:56:11 GMT  
		Size: 97.3 MB (97290363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1fcd9ef2a237f88bce9cd31c78461c8c1ab9fd0aa31677c78d84a75a31519eb`  
		Last Modified: Thu, 19 Apr 2018 21:55:56 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f357d20f3147ed77ceba1fe316656e57db2874dd33da1d2dd21c69cdabf9e592`  
		Last Modified: Thu, 19 Apr 2018 21:55:56 GMT  
		Size: 3.7 KB (3715 bytes)  
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
$ docker pull mongo@sha256:cb4bc171143d4ad8eda5032ccb04a55f1cb48b5cb71833b455d5dd5a382b6b2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

```console
$ docker pull mongo@sha256:3773bb6bc060b6702c46a7b186930d09229cb6d7e69e98cdd70592de106fbd32
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132115524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad59b0c062484e862a887575350df830827f5e23d30f88db3a78971d800dbc8`
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
# Tue, 20 Mar 2018 21:25:11 GMT
ENV MONGO_VERSION=3.4.14
# Tue, 20 Mar 2018 21:25:12 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 20 Mar 2018 21:25:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 20 Mar 2018 21:25:42 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 20 Mar 2018 21:25:42 GMT
VOLUME [/data/db /data/configdb]
# Tue, 20 Mar 2018 21:25:42 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Tue, 20 Mar 2018 21:25:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 20 Mar 2018 21:25:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Mar 2018 21:25:44 GMT
EXPOSE 27017/tcp
# Tue, 20 Mar 2018 21:25:44 GMT
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
	-	`sha256:30a90340f2cf62edee0239f717c004fea7c51469451e9264462ce282850dfea8`  
		Last Modified: Tue, 20 Mar 2018 21:42:23 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150ca94d5485e787f1ceec7084fe45ea21bc08fa19395f5f2d86cfade84a9230`  
		Last Modified: Tue, 20 Mar 2018 21:42:42 GMT  
		Size: 98.8 MB (98770288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8d25332c7468fd7360808631f1439ca22cecb5036cdecc9ec70808c18878bd`  
		Last Modified: Tue, 20 Mar 2018 21:42:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ed39e82c808fa6920269e61f07a468ba24e9ef6ca359071dcf149c94d69d9a`  
		Last Modified: Tue, 20 Mar 2018 21:42:23 GMT  
		Size: 3.6 KB (3571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787db5ed25d89009735fa2d8eef2798a3c250661154bc3e7da1671cd625b872e`  
		Last Modified: Tue, 20 Mar 2018 21:42:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.14`

```console
$ docker pull mongo@sha256:cb4bc171143d4ad8eda5032ccb04a55f1cb48b5cb71833b455d5dd5a382b6b2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4.14` - linux; amd64

```console
$ docker pull mongo@sha256:3773bb6bc060b6702c46a7b186930d09229cb6d7e69e98cdd70592de106fbd32
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132115524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad59b0c062484e862a887575350df830827f5e23d30f88db3a78971d800dbc8`
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
# Tue, 20 Mar 2018 21:25:11 GMT
ENV MONGO_VERSION=3.4.14
# Tue, 20 Mar 2018 21:25:12 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 20 Mar 2018 21:25:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 20 Mar 2018 21:25:42 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 20 Mar 2018 21:25:42 GMT
VOLUME [/data/db /data/configdb]
# Tue, 20 Mar 2018 21:25:42 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Tue, 20 Mar 2018 21:25:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 20 Mar 2018 21:25:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Mar 2018 21:25:44 GMT
EXPOSE 27017/tcp
# Tue, 20 Mar 2018 21:25:44 GMT
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
	-	`sha256:30a90340f2cf62edee0239f717c004fea7c51469451e9264462ce282850dfea8`  
		Last Modified: Tue, 20 Mar 2018 21:42:23 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150ca94d5485e787f1ceec7084fe45ea21bc08fa19395f5f2d86cfade84a9230`  
		Last Modified: Tue, 20 Mar 2018 21:42:42 GMT  
		Size: 98.8 MB (98770288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8d25332c7468fd7360808631f1439ca22cecb5036cdecc9ec70808c18878bd`  
		Last Modified: Tue, 20 Mar 2018 21:42:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ed39e82c808fa6920269e61f07a468ba24e9ef6ca359071dcf149c94d69d9a`  
		Last Modified: Tue, 20 Mar 2018 21:42:23 GMT  
		Size: 3.6 KB (3571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787db5ed25d89009735fa2d8eef2798a3c250661154bc3e7da1671cd625b872e`  
		Last Modified: Tue, 20 Mar 2018 21:42:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.14-jessie`

```console
$ docker pull mongo@sha256:cb4bc171143d4ad8eda5032ccb04a55f1cb48b5cb71833b455d5dd5a382b6b2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4.14-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:3773bb6bc060b6702c46a7b186930d09229cb6d7e69e98cdd70592de106fbd32
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132115524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad59b0c062484e862a887575350df830827f5e23d30f88db3a78971d800dbc8`
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
# Tue, 20 Mar 2018 21:25:11 GMT
ENV MONGO_VERSION=3.4.14
# Tue, 20 Mar 2018 21:25:12 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 20 Mar 2018 21:25:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 20 Mar 2018 21:25:42 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 20 Mar 2018 21:25:42 GMT
VOLUME [/data/db /data/configdb]
# Tue, 20 Mar 2018 21:25:42 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Tue, 20 Mar 2018 21:25:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 20 Mar 2018 21:25:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Mar 2018 21:25:44 GMT
EXPOSE 27017/tcp
# Tue, 20 Mar 2018 21:25:44 GMT
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
	-	`sha256:30a90340f2cf62edee0239f717c004fea7c51469451e9264462ce282850dfea8`  
		Last Modified: Tue, 20 Mar 2018 21:42:23 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150ca94d5485e787f1ceec7084fe45ea21bc08fa19395f5f2d86cfade84a9230`  
		Last Modified: Tue, 20 Mar 2018 21:42:42 GMT  
		Size: 98.8 MB (98770288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8d25332c7468fd7360808631f1439ca22cecb5036cdecc9ec70808c18878bd`  
		Last Modified: Tue, 20 Mar 2018 21:42:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ed39e82c808fa6920269e61f07a468ba24e9ef6ca359071dcf149c94d69d9a`  
		Last Modified: Tue, 20 Mar 2018 21:42:23 GMT  
		Size: 3.6 KB (3571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787db5ed25d89009735fa2d8eef2798a3c250661154bc3e7da1671cd625b872e`  
		Last Modified: Tue, 20 Mar 2018 21:42:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-jessie`

```console
$ docker pull mongo@sha256:cb4bc171143d4ad8eda5032ccb04a55f1cb48b5cb71833b455d5dd5a382b6b2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:3773bb6bc060b6702c46a7b186930d09229cb6d7e69e98cdd70592de106fbd32
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132115524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad59b0c062484e862a887575350df830827f5e23d30f88db3a78971d800dbc8`
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
# Tue, 20 Mar 2018 21:25:11 GMT
ENV MONGO_VERSION=3.4.14
# Tue, 20 Mar 2018 21:25:12 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 20 Mar 2018 21:25:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 20 Mar 2018 21:25:42 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 20 Mar 2018 21:25:42 GMT
VOLUME [/data/db /data/configdb]
# Tue, 20 Mar 2018 21:25:42 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Tue, 20 Mar 2018 21:25:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 20 Mar 2018 21:25:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Mar 2018 21:25:44 GMT
EXPOSE 27017/tcp
# Tue, 20 Mar 2018 21:25:44 GMT
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
	-	`sha256:30a90340f2cf62edee0239f717c004fea7c51469451e9264462ce282850dfea8`  
		Last Modified: Tue, 20 Mar 2018 21:42:23 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150ca94d5485e787f1ceec7084fe45ea21bc08fa19395f5f2d86cfade84a9230`  
		Last Modified: Tue, 20 Mar 2018 21:42:42 GMT  
		Size: 98.8 MB (98770288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8d25332c7468fd7360808631f1439ca22cecb5036cdecc9ec70808c18878bd`  
		Last Modified: Tue, 20 Mar 2018 21:42:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ed39e82c808fa6920269e61f07a468ba24e9ef6ca359071dcf149c94d69d9a`  
		Last Modified: Tue, 20 Mar 2018 21:42:23 GMT  
		Size: 3.6 KB (3571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787db5ed25d89009735fa2d8eef2798a3c250661154bc3e7da1671cd625b872e`  
		Last Modified: Tue, 20 Mar 2018 21:42:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6`

```console
$ docker pull mongo@sha256:670f9ea4f85f7e188cb0f572261feb1f2e170ee593ff3981474395e145a0c062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6` - linux; amd64

```console
$ docker pull mongo@sha256:3fa8bcfe216a3ca46f3198ff4436fa428f038c17b4400e1f9a4b83648cb7c7aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130635053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f922b3f0a1200bdc7e8510a524a12ea4c0ae6949c15bea9e26d4db282fa48b`
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
# Thu, 19 Apr 2018 21:48:01 GMT
ENV MONGO_VERSION=3.6.4
# Thu, 19 Apr 2018 21:48:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 19 Apr 2018 21:48:28 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 19 Apr 2018 21:48:29 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 19 Apr 2018 21:48:29 GMT
VOLUME [/data/db /data/configdb]
# Thu, 19 Apr 2018 21:48:30 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Thu, 19 Apr 2018 21:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Apr 2018 21:48:30 GMT
EXPOSE 27017/tcp
# Thu, 19 Apr 2018 21:48:30 GMT
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
	-	`sha256:d2e7b81405e88c6b1bacbf798cb908c9c062e2b244f571894b4e8e0cea32430d`  
		Last Modified: Thu, 19 Apr 2018 21:55:56 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6c29dc63578b8e7d2f832f691e12242a9807e8d95e3a21f3b057088e8908b8`  
		Last Modified: Thu, 19 Apr 2018 21:56:11 GMT  
		Size: 97.3 MB (97290363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1fcd9ef2a237f88bce9cd31c78461c8c1ab9fd0aa31677c78d84a75a31519eb`  
		Last Modified: Thu, 19 Apr 2018 21:55:56 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f357d20f3147ed77ceba1fe316656e57db2874dd33da1d2dd21c69cdabf9e592`  
		Last Modified: Thu, 19 Apr 2018 21:55:56 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.4`

```console
$ docker pull mongo@sha256:670f9ea4f85f7e188cb0f572261feb1f2e170ee593ff3981474395e145a0c062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6.4` - linux; amd64

```console
$ docker pull mongo@sha256:3fa8bcfe216a3ca46f3198ff4436fa428f038c17b4400e1f9a4b83648cb7c7aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130635053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f922b3f0a1200bdc7e8510a524a12ea4c0ae6949c15bea9e26d4db282fa48b`
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
# Thu, 19 Apr 2018 21:48:01 GMT
ENV MONGO_VERSION=3.6.4
# Thu, 19 Apr 2018 21:48:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 19 Apr 2018 21:48:28 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 19 Apr 2018 21:48:29 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 19 Apr 2018 21:48:29 GMT
VOLUME [/data/db /data/configdb]
# Thu, 19 Apr 2018 21:48:30 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Thu, 19 Apr 2018 21:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Apr 2018 21:48:30 GMT
EXPOSE 27017/tcp
# Thu, 19 Apr 2018 21:48:30 GMT
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
	-	`sha256:d2e7b81405e88c6b1bacbf798cb908c9c062e2b244f571894b4e8e0cea32430d`  
		Last Modified: Thu, 19 Apr 2018 21:55:56 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6c29dc63578b8e7d2f832f691e12242a9807e8d95e3a21f3b057088e8908b8`  
		Last Modified: Thu, 19 Apr 2018 21:56:11 GMT  
		Size: 97.3 MB (97290363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1fcd9ef2a237f88bce9cd31c78461c8c1ab9fd0aa31677c78d84a75a31519eb`  
		Last Modified: Thu, 19 Apr 2018 21:55:56 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f357d20f3147ed77ceba1fe316656e57db2874dd33da1d2dd21c69cdabf9e592`  
		Last Modified: Thu, 19 Apr 2018 21:55:56 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.4-jessie`

```console
$ docker pull mongo@sha256:670f9ea4f85f7e188cb0f572261feb1f2e170ee593ff3981474395e145a0c062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6.4-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:3fa8bcfe216a3ca46f3198ff4436fa428f038c17b4400e1f9a4b83648cb7c7aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130635053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f922b3f0a1200bdc7e8510a524a12ea4c0ae6949c15bea9e26d4db282fa48b`
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
# Thu, 19 Apr 2018 21:48:01 GMT
ENV MONGO_VERSION=3.6.4
# Thu, 19 Apr 2018 21:48:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 19 Apr 2018 21:48:28 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 19 Apr 2018 21:48:29 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 19 Apr 2018 21:48:29 GMT
VOLUME [/data/db /data/configdb]
# Thu, 19 Apr 2018 21:48:30 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Thu, 19 Apr 2018 21:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Apr 2018 21:48:30 GMT
EXPOSE 27017/tcp
# Thu, 19 Apr 2018 21:48:30 GMT
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
	-	`sha256:d2e7b81405e88c6b1bacbf798cb908c9c062e2b244f571894b4e8e0cea32430d`  
		Last Modified: Thu, 19 Apr 2018 21:55:56 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6c29dc63578b8e7d2f832f691e12242a9807e8d95e3a21f3b057088e8908b8`  
		Last Modified: Thu, 19 Apr 2018 21:56:11 GMT  
		Size: 97.3 MB (97290363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1fcd9ef2a237f88bce9cd31c78461c8c1ab9fd0aa31677c78d84a75a31519eb`  
		Last Modified: Thu, 19 Apr 2018 21:55:56 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f357d20f3147ed77ceba1fe316656e57db2874dd33da1d2dd21c69cdabf9e592`  
		Last Modified: Thu, 19 Apr 2018 21:55:56 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6-jessie`

```console
$ docker pull mongo@sha256:670f9ea4f85f7e188cb0f572261feb1f2e170ee593ff3981474395e145a0c062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:3fa8bcfe216a3ca46f3198ff4436fa428f038c17b4400e1f9a4b83648cb7c7aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130635053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f922b3f0a1200bdc7e8510a524a12ea4c0ae6949c15bea9e26d4db282fa48b`
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
# Thu, 19 Apr 2018 21:48:01 GMT
ENV MONGO_VERSION=3.6.4
# Thu, 19 Apr 2018 21:48:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 19 Apr 2018 21:48:28 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 19 Apr 2018 21:48:29 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 19 Apr 2018 21:48:29 GMT
VOLUME [/data/db /data/configdb]
# Thu, 19 Apr 2018 21:48:30 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Thu, 19 Apr 2018 21:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Apr 2018 21:48:30 GMT
EXPOSE 27017/tcp
# Thu, 19 Apr 2018 21:48:30 GMT
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
	-	`sha256:d2e7b81405e88c6b1bacbf798cb908c9c062e2b244f571894b4e8e0cea32430d`  
		Last Modified: Thu, 19 Apr 2018 21:55:56 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6c29dc63578b8e7d2f832f691e12242a9807e8d95e3a21f3b057088e8908b8`  
		Last Modified: Thu, 19 Apr 2018 21:56:11 GMT  
		Size: 97.3 MB (97290363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1fcd9ef2a237f88bce9cd31c78461c8c1ab9fd0aa31677c78d84a75a31519eb`  
		Last Modified: Thu, 19 Apr 2018 21:55:56 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f357d20f3147ed77ceba1fe316656e57db2874dd33da1d2dd21c69cdabf9e592`  
		Last Modified: Thu, 19 Apr 2018 21:55:56 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7`

```console
$ docker pull mongo@sha256:3fdf8406832f08b32b78518c72d0f639fe40f7a9afa07327eae31c1b30f72b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.7` - linux; amd64

```console
$ docker pull mongo@sha256:d53a2132efecbb8298e57f721f8a8199b55666bb204b526b8cf80dde3c5449f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.2 MB (113230140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80387dfe28a8c9ebe2d7c0737f6a9896dee896f88502b19cae305846d748849`
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
# Thu, 19 Apr 2018 21:53:50 GMT
ENV MONGO_VERSION=3.7.5
# Thu, 19 Apr 2018 21:53:51 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 19 Apr 2018 21:54:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 19 Apr 2018 21:54:20 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 19 Apr 2018 21:54:20 GMT
VOLUME [/data/db /data/configdb]
# Thu, 19 Apr 2018 21:54:21 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Thu, 19 Apr 2018 21:54:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Apr 2018 21:54:21 GMT
EXPOSE 27017/tcp
# Thu, 19 Apr 2018 21:54:21 GMT
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
	-	`sha256:eb0e2b801d47f3b67b520262050461e59427b03f086530d7cc8415ef900a3978`  
		Last Modified: Thu, 19 Apr 2018 22:06:11 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620b05745b99e5c85168cb042046e8d17ae46dcd2003b235172a9a302d60f1b3`  
		Last Modified: Thu, 19 Apr 2018 22:06:23 GMT  
		Size: 79.9 MB (79885446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c642824f7d029b5405bf691a3ee879e8ccdceaf3d68d70e93ce991a6ac0e47`  
		Last Modified: Thu, 19 Apr 2018 22:06:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ce581c897fb8893a1250ac83df685d6a962ca46ca958a1eec71957706d8b55`  
		Last Modified: Thu, 19 Apr 2018 22:06:11 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7.7`

**does not exist** (yet?)

## `mongo:3.7.7-jessie`

**does not exist** (yet?)

## `mongo:3.7-jessie`

```console
$ docker pull mongo@sha256:3fdf8406832f08b32b78518c72d0f639fe40f7a9afa07327eae31c1b30f72b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.7-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:d53a2132efecbb8298e57f721f8a8199b55666bb204b526b8cf80dde3c5449f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.2 MB (113230140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80387dfe28a8c9ebe2d7c0737f6a9896dee896f88502b19cae305846d748849`
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
# Thu, 19 Apr 2018 21:53:50 GMT
ENV MONGO_VERSION=3.7.5
# Thu, 19 Apr 2018 21:53:51 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 19 Apr 2018 21:54:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 19 Apr 2018 21:54:20 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 19 Apr 2018 21:54:20 GMT
VOLUME [/data/db /data/configdb]
# Thu, 19 Apr 2018 21:54:21 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Thu, 19 Apr 2018 21:54:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Apr 2018 21:54:21 GMT
EXPOSE 27017/tcp
# Thu, 19 Apr 2018 21:54:21 GMT
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
	-	`sha256:eb0e2b801d47f3b67b520262050461e59427b03f086530d7cc8415ef900a3978`  
		Last Modified: Thu, 19 Apr 2018 22:06:11 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620b05745b99e5c85168cb042046e8d17ae46dcd2003b235172a9a302d60f1b3`  
		Last Modified: Thu, 19 Apr 2018 22:06:23 GMT  
		Size: 79.9 MB (79885446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c642824f7d029b5405bf691a3ee879e8ccdceaf3d68d70e93ce991a6ac0e47`  
		Last Modified: Thu, 19 Apr 2018 22:06:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ce581c897fb8893a1250ac83df685d6a962ca46ca958a1eec71957706d8b55`  
		Last Modified: Thu, 19 Apr 2018 22:06:11 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-jessie`

```console
$ docker pull mongo@sha256:670f9ea4f85f7e188cb0f572261feb1f2e170ee593ff3981474395e145a0c062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:3fa8bcfe216a3ca46f3198ff4436fa428f038c17b4400e1f9a4b83648cb7c7aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130635053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f922b3f0a1200bdc7e8510a524a12ea4c0ae6949c15bea9e26d4db282fa48b`
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
# Thu, 19 Apr 2018 21:48:01 GMT
ENV MONGO_VERSION=3.6.4
# Thu, 19 Apr 2018 21:48:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 19 Apr 2018 21:48:28 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 19 Apr 2018 21:48:29 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 19 Apr 2018 21:48:29 GMT
VOLUME [/data/db /data/configdb]
# Thu, 19 Apr 2018 21:48:30 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Thu, 19 Apr 2018 21:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Apr 2018 21:48:30 GMT
EXPOSE 27017/tcp
# Thu, 19 Apr 2018 21:48:30 GMT
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
	-	`sha256:d2e7b81405e88c6b1bacbf798cb908c9c062e2b244f571894b4e8e0cea32430d`  
		Last Modified: Thu, 19 Apr 2018 21:55:56 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6c29dc63578b8e7d2f832f691e12242a9807e8d95e3a21f3b057088e8908b8`  
		Last Modified: Thu, 19 Apr 2018 21:56:11 GMT  
		Size: 97.3 MB (97290363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1fcd9ef2a237f88bce9cd31c78461c8c1ab9fd0aa31677c78d84a75a31519eb`  
		Last Modified: Thu, 19 Apr 2018 21:55:56 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f357d20f3147ed77ceba1fe316656e57db2874dd33da1d2dd21c69cdabf9e592`  
		Last Modified: Thu, 19 Apr 2018 21:55:56 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:jessie`

```console
$ docker pull mongo@sha256:670f9ea4f85f7e188cb0f572261feb1f2e170ee593ff3981474395e145a0c062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:jessie` - linux; amd64

```console
$ docker pull mongo@sha256:3fa8bcfe216a3ca46f3198ff4436fa428f038c17b4400e1f9a4b83648cb7c7aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130635053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f922b3f0a1200bdc7e8510a524a12ea4c0ae6949c15bea9e26d4db282fa48b`
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
# Thu, 19 Apr 2018 21:48:01 GMT
ENV MONGO_VERSION=3.6.4
# Thu, 19 Apr 2018 21:48:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 19 Apr 2018 21:48:28 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 19 Apr 2018 21:48:29 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 19 Apr 2018 21:48:29 GMT
VOLUME [/data/db /data/configdb]
# Thu, 19 Apr 2018 21:48:30 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Thu, 19 Apr 2018 21:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Apr 2018 21:48:30 GMT
EXPOSE 27017/tcp
# Thu, 19 Apr 2018 21:48:30 GMT
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
	-	`sha256:d2e7b81405e88c6b1bacbf798cb908c9c062e2b244f571894b4e8e0cea32430d`  
		Last Modified: Thu, 19 Apr 2018 21:55:56 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6c29dc63578b8e7d2f832f691e12242a9807e8d95e3a21f3b057088e8908b8`  
		Last Modified: Thu, 19 Apr 2018 21:56:11 GMT  
		Size: 97.3 MB (97290363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1fcd9ef2a237f88bce9cd31c78461c8c1ab9fd0aa31677c78d84a75a31519eb`  
		Last Modified: Thu, 19 Apr 2018 21:55:56 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f357d20f3147ed77ceba1fe316656e57db2874dd33da1d2dd21c69cdabf9e592`  
		Last Modified: Thu, 19 Apr 2018 21:55:56 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:670f9ea4f85f7e188cb0f572261feb1f2e170ee593ff3981474395e145a0c062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:3fa8bcfe216a3ca46f3198ff4436fa428f038c17b4400e1f9a4b83648cb7c7aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130635053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f922b3f0a1200bdc7e8510a524a12ea4c0ae6949c15bea9e26d4db282fa48b`
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
# Thu, 19 Apr 2018 21:48:01 GMT
ENV MONGO_VERSION=3.6.4
# Thu, 19 Apr 2018 21:48:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 19 Apr 2018 21:48:28 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 19 Apr 2018 21:48:29 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 19 Apr 2018 21:48:29 GMT
VOLUME [/data/db /data/configdb]
# Thu, 19 Apr 2018 21:48:30 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Thu, 19 Apr 2018 21:48:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Apr 2018 21:48:30 GMT
EXPOSE 27017/tcp
# Thu, 19 Apr 2018 21:48:30 GMT
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
	-	`sha256:d2e7b81405e88c6b1bacbf798cb908c9c062e2b244f571894b4e8e0cea32430d`  
		Last Modified: Thu, 19 Apr 2018 21:55:56 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6c29dc63578b8e7d2f832f691e12242a9807e8d95e3a21f3b057088e8908b8`  
		Last Modified: Thu, 19 Apr 2018 21:56:11 GMT  
		Size: 97.3 MB (97290363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1fcd9ef2a237f88bce9cd31c78461c8c1ab9fd0aa31677c78d84a75a31519eb`  
		Last Modified: Thu, 19 Apr 2018 21:55:56 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f357d20f3147ed77ceba1fe316656e57db2874dd33da1d2dd21c69cdabf9e592`  
		Last Modified: Thu, 19 Apr 2018 21:55:56 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:3fdf8406832f08b32b78518c72d0f639fe40f7a9afa07327eae31c1b30f72b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:d53a2132efecbb8298e57f721f8a8199b55666bb204b526b8cf80dde3c5449f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.2 MB (113230140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80387dfe28a8c9ebe2d7c0737f6a9896dee896f88502b19cae305846d748849`
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
# Thu, 19 Apr 2018 21:53:50 GMT
ENV MONGO_VERSION=3.7.5
# Thu, 19 Apr 2018 21:53:51 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 19 Apr 2018 21:54:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 19 Apr 2018 21:54:20 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 19 Apr 2018 21:54:20 GMT
VOLUME [/data/db /data/configdb]
# Thu, 19 Apr 2018 21:54:21 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Thu, 19 Apr 2018 21:54:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Apr 2018 21:54:21 GMT
EXPOSE 27017/tcp
# Thu, 19 Apr 2018 21:54:21 GMT
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
	-	`sha256:eb0e2b801d47f3b67b520262050461e59427b03f086530d7cc8415ef900a3978`  
		Last Modified: Thu, 19 Apr 2018 22:06:11 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620b05745b99e5c85168cb042046e8d17ae46dcd2003b235172a9a302d60f1b3`  
		Last Modified: Thu, 19 Apr 2018 22:06:23 GMT  
		Size: 79.9 MB (79885446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c642824f7d029b5405bf691a3ee879e8ccdceaf3d68d70e93ce991a6ac0e47`  
		Last Modified: Thu, 19 Apr 2018 22:06:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ce581c897fb8893a1250ac83df685d6a962ca46ca958a1eec71957706d8b55`  
		Last Modified: Thu, 19 Apr 2018 22:06:11 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-jessie`

```console
$ docker pull mongo@sha256:3fdf8406832f08b32b78518c72d0f639fe40f7a9afa07327eae31c1b30f72b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:unstable-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:d53a2132efecbb8298e57f721f8a8199b55666bb204b526b8cf80dde3c5449f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.2 MB (113230140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80387dfe28a8c9ebe2d7c0737f6a9896dee896f88502b19cae305846d748849`
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
# Thu, 19 Apr 2018 21:53:50 GMT
ENV MONGO_VERSION=3.7.5
# Thu, 19 Apr 2018 21:53:51 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 19 Apr 2018 21:54:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 19 Apr 2018 21:54:20 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 19 Apr 2018 21:54:20 GMT
VOLUME [/data/db /data/configdb]
# Thu, 19 Apr 2018 21:54:21 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Thu, 19 Apr 2018 21:54:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Apr 2018 21:54:21 GMT
EXPOSE 27017/tcp
# Thu, 19 Apr 2018 21:54:21 GMT
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
	-	`sha256:eb0e2b801d47f3b67b520262050461e59427b03f086530d7cc8415ef900a3978`  
		Last Modified: Thu, 19 Apr 2018 22:06:11 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620b05745b99e5c85168cb042046e8d17ae46dcd2003b235172a9a302d60f1b3`  
		Last Modified: Thu, 19 Apr 2018 22:06:23 GMT  
		Size: 79.9 MB (79885446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c642824f7d029b5405bf691a3ee879e8ccdceaf3d68d70e93ce991a6ac0e47`  
		Last Modified: Thu, 19 Apr 2018 22:06:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ce581c897fb8893a1250ac83df685d6a962ca46ca958a1eec71957706d8b55`  
		Last Modified: Thu, 19 Apr 2018 22:06:11 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

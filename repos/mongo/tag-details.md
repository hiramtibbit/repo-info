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
-	[`mongo:3.7.2`](#mongo372)
-	[`mongo:3.7.2-jessie`](#mongo372-jessie)
-	[`mongo:3.7-jessie`](#mongo37-jessie)
-	[`mongo:3-jessie`](#mongo3-jessie)
-	[`mongo:jessie`](#mongojessie)
-	[`mongo:latest`](#mongolatest)
-	[`mongo:unstable`](#mongounstable)
-	[`mongo:unstable-jessie`](#mongounstable-jessie)

## `mongo:3`

```console
$ docker pull mongo@sha256:05fd4fd3710a84dcf12e5880a5fc225a245792d2d9b6156722c5f4c0fab74d86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3` - linux; amd64

```console
$ docker pull mongo@sha256:b79128c6f4f10e717ad23a8c88bf60606c1d0cf89847a87c9381445b75a30b13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130528704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43099507792a5214bd452a0eba3482e8da488b0008525578f309f040c2f7704e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:40:16 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:40:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:40:39 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:40:39 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:40:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:40:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:58:16 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Thu, 15 Feb 2018 04:58:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:58:30 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 15 Feb 2018 04:58:30 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:58:31 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:58:31 GMT
ENV MONGO_MAJOR=3.6
# Mon, 26 Feb 2018 23:58:42 GMT
ENV MONGO_VERSION=3.6.3
# Mon, 26 Feb 2018 23:58:43 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 26 Feb 2018 23:59:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 26 Feb 2018 23:59:13 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 26 Feb 2018 23:59:14 GMT
VOLUME [/data/db /data/configdb]
# Mon, 26 Feb 2018 23:59:14 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 26 Feb 2018 23:59:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Feb 2018 23:59:14 GMT
EXPOSE 27017/tcp
# Mon, 26 Feb 2018 23:59:15 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb958661291ed53c5b30e758d596c775498893c1269803254b5664e6a6c3bdf`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfa71d101a9723669f0a8b39eba83f6bf5ef357d02d3a4fbf42be5ad1b27040`  
		Last Modified: Thu, 15 Feb 2018 05:16:03 GMT  
		Size: 2.4 MB (2397830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a286579fc2d57ec8df877bf657b1b69b11e9c3aa456e5e72d1363c037a76c5`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 816.6 KB (816644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9441b8e1ae369520d560c7d47299705f2520b8736c5f8959ce6248a8e6a0618d`  
		Last Modified: Thu, 15 Feb 2018 05:16:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6fe40bb4bd24bd8f021f7bac8a759da57e233c16d2c9ae2fb7715746e33a05`  
		Last Modified: Thu, 15 Feb 2018 05:31:41 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca9be9954ebf01cdf383cb6a75dd0deea93ee6dbdedbea8061c15fc3fec1f43`  
		Last Modified: Mon, 26 Feb 2018 23:59:41 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3de1a5bb8230accdab79d4f6e17ca2527f54058abfb044db2943bebc877db7`  
		Last Modified: Mon, 26 Feb 2018 23:59:55 GMT  
		Size: 97.2 MB (97184121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e423513a19e1d24f5e9b69273d006c92d74ddce7034785a79b89bef7eb2732c`  
		Last Modified: Mon, 26 Feb 2018 23:59:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fcd12f78f7c18b6753243d85d0478c61180ca71b88f9f7eed977eaaa246a31b`  
		Last Modified: Mon, 26 Feb 2018 23:59:40 GMT  
		Size: 3.7 KB (3714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0`

```console
$ docker pull mongo@sha256:2635bb0bad8ddcbea0f47bdfc5e0552f7ea6f1bbfecdd345a6f86a2e93e8da0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.0` - linux; amd64

```console
$ docker pull mongo@sha256:12298fbea13af7ac3ca52a65cc0e19c6a150962a910b0fad3e3b3ac2cf533021
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.5 MB (84529707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:facfe31b994b47adbe9c2babcc400482ffb5ab95a808a66192fd2e1f6ceab599`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 02:07:14 GMT
ADD file:e77f78c6890071f305ee5c7fa09a694e0d1903b363d5052924ebc265ccb0a181 in / 
# Thu, 15 Feb 2018 02:07:14 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:28:39 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:28:40 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 15 Feb 2018 04:28:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:29:04 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:29:04 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:29:16 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:29:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:29:17 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Thu, 15 Feb 2018 04:29:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:29:19 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 15 Feb 2018 04:29:19 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:29:19 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:29:20 GMT
ENV MONGO_MAJOR=3.0
# Thu, 15 Feb 2018 04:29:20 GMT
ENV MONGO_VERSION=3.0.15
# Thu, 15 Feb 2018 04:29:21 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 15 Feb 2018 04:29:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 15 Feb 2018 04:29:33 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 15 Feb 2018 04:29:33 GMT
VOLUME [/data/db /data/configdb]
# Thu, 15 Feb 2018 04:29:33 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Thu, 15 Feb 2018 04:29:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 04:29:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 04:29:35 GMT
EXPOSE 27017/tcp
# Thu, 15 Feb 2018 04:29:35 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a5a533fc62cc39eeb93db7be474d8e8ee901dcfea4b15785ae304026bfd356f0`  
		Last Modified: Thu, 15 Feb 2018 02:33:30 GMT  
		Size: 19.2 MB (19164709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8999eb72ff1e73077e6a21f5152d7acd1b3dd08b336ded3f29b5d7911abf7cd8`  
		Last Modified: Thu, 15 Feb 2018 05:15:04 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad29ed50ebfbafa2ca3ca2ed358d313187f83bf21b12ee66416b0e5006895a8`  
		Last Modified: Thu, 15 Feb 2018 05:15:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9892e015416f7a9c7abe742d9b5f83f88ae6514390e7c95a5159dc55cfc59c9`  
		Last Modified: Thu, 15 Feb 2018 05:15:03 GMT  
		Size: 2.7 MB (2660240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:298de1a84905bc90c8e9c4a4ff679173de34d1172b007069bb6eaee6cd2d2c2c`  
		Last Modified: Thu, 15 Feb 2018 05:15:03 GMT  
		Size: 810.4 KB (810423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c28829bb961c3a981b66cb0ef3bb0178b86829a06bfd006ed0ddc2c8e289b8d`  
		Last Modified: Thu, 15 Feb 2018 05:15:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443f89a8d271afe0eff7e441c26b8513e0d27d995e2ce044d1287719f279eb95`  
		Last Modified: Thu, 15 Feb 2018 05:15:01 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a3613b6f10a58cb0886c42e5eeb1af11d03dca51475ec7f6940ab91f9c83aa5`  
		Last Modified: Thu, 15 Feb 2018 05:14:59 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d530947681324c8fec1f70084b68033da1e42aa657426d2f85c16a77002a4bfb`  
		Last Modified: Thu, 15 Feb 2018 05:15:17 GMT  
		Size: 61.9 MB (61886152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb478e12289729734d6d8a88e3721fcbe791eacbe45b8c7a725845f087a94c3`  
		Last Modified: Thu, 15 Feb 2018 05:15:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4ae95d86e03f21e5466ca60fe333222724fe5303c53e19a996f0544f2189ad`  
		Last Modified: Thu, 15 Feb 2018 05:14:59 GMT  
		Size: 3.6 KB (3568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e66e9027248b8a2d87ff1810804b1df5cc0743579a9580f17232799322d67c`  
		Last Modified: Thu, 15 Feb 2018 05:14:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.15`

```console
$ docker pull mongo@sha256:2635bb0bad8ddcbea0f47bdfc5e0552f7ea6f1bbfecdd345a6f86a2e93e8da0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.0.15` - linux; amd64

```console
$ docker pull mongo@sha256:12298fbea13af7ac3ca52a65cc0e19c6a150962a910b0fad3e3b3ac2cf533021
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.5 MB (84529707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:facfe31b994b47adbe9c2babcc400482ffb5ab95a808a66192fd2e1f6ceab599`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 02:07:14 GMT
ADD file:e77f78c6890071f305ee5c7fa09a694e0d1903b363d5052924ebc265ccb0a181 in / 
# Thu, 15 Feb 2018 02:07:14 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:28:39 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:28:40 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 15 Feb 2018 04:28:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:29:04 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:29:04 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:29:16 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:29:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:29:17 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Thu, 15 Feb 2018 04:29:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:29:19 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 15 Feb 2018 04:29:19 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:29:19 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:29:20 GMT
ENV MONGO_MAJOR=3.0
# Thu, 15 Feb 2018 04:29:20 GMT
ENV MONGO_VERSION=3.0.15
# Thu, 15 Feb 2018 04:29:21 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 15 Feb 2018 04:29:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 15 Feb 2018 04:29:33 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 15 Feb 2018 04:29:33 GMT
VOLUME [/data/db /data/configdb]
# Thu, 15 Feb 2018 04:29:33 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Thu, 15 Feb 2018 04:29:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 04:29:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 04:29:35 GMT
EXPOSE 27017/tcp
# Thu, 15 Feb 2018 04:29:35 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a5a533fc62cc39eeb93db7be474d8e8ee901dcfea4b15785ae304026bfd356f0`  
		Last Modified: Thu, 15 Feb 2018 02:33:30 GMT  
		Size: 19.2 MB (19164709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8999eb72ff1e73077e6a21f5152d7acd1b3dd08b336ded3f29b5d7911abf7cd8`  
		Last Modified: Thu, 15 Feb 2018 05:15:04 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad29ed50ebfbafa2ca3ca2ed358d313187f83bf21b12ee66416b0e5006895a8`  
		Last Modified: Thu, 15 Feb 2018 05:15:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9892e015416f7a9c7abe742d9b5f83f88ae6514390e7c95a5159dc55cfc59c9`  
		Last Modified: Thu, 15 Feb 2018 05:15:03 GMT  
		Size: 2.7 MB (2660240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:298de1a84905bc90c8e9c4a4ff679173de34d1172b007069bb6eaee6cd2d2c2c`  
		Last Modified: Thu, 15 Feb 2018 05:15:03 GMT  
		Size: 810.4 KB (810423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c28829bb961c3a981b66cb0ef3bb0178b86829a06bfd006ed0ddc2c8e289b8d`  
		Last Modified: Thu, 15 Feb 2018 05:15:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443f89a8d271afe0eff7e441c26b8513e0d27d995e2ce044d1287719f279eb95`  
		Last Modified: Thu, 15 Feb 2018 05:15:01 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a3613b6f10a58cb0886c42e5eeb1af11d03dca51475ec7f6940ab91f9c83aa5`  
		Last Modified: Thu, 15 Feb 2018 05:14:59 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d530947681324c8fec1f70084b68033da1e42aa657426d2f85c16a77002a4bfb`  
		Last Modified: Thu, 15 Feb 2018 05:15:17 GMT  
		Size: 61.9 MB (61886152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb478e12289729734d6d8a88e3721fcbe791eacbe45b8c7a725845f087a94c3`  
		Last Modified: Thu, 15 Feb 2018 05:15:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4ae95d86e03f21e5466ca60fe333222724fe5303c53e19a996f0544f2189ad`  
		Last Modified: Thu, 15 Feb 2018 05:14:59 GMT  
		Size: 3.6 KB (3568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e66e9027248b8a2d87ff1810804b1df5cc0743579a9580f17232799322d67c`  
		Last Modified: Thu, 15 Feb 2018 05:14:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0.15-wheezy`

```console
$ docker pull mongo@sha256:2635bb0bad8ddcbea0f47bdfc5e0552f7ea6f1bbfecdd345a6f86a2e93e8da0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.0.15-wheezy` - linux; amd64

```console
$ docker pull mongo@sha256:12298fbea13af7ac3ca52a65cc0e19c6a150962a910b0fad3e3b3ac2cf533021
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.5 MB (84529707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:facfe31b994b47adbe9c2babcc400482ffb5ab95a808a66192fd2e1f6ceab599`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 02:07:14 GMT
ADD file:e77f78c6890071f305ee5c7fa09a694e0d1903b363d5052924ebc265ccb0a181 in / 
# Thu, 15 Feb 2018 02:07:14 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:28:39 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:28:40 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 15 Feb 2018 04:28:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:29:04 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:29:04 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:29:16 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:29:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:29:17 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Thu, 15 Feb 2018 04:29:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:29:19 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 15 Feb 2018 04:29:19 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:29:19 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:29:20 GMT
ENV MONGO_MAJOR=3.0
# Thu, 15 Feb 2018 04:29:20 GMT
ENV MONGO_VERSION=3.0.15
# Thu, 15 Feb 2018 04:29:21 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 15 Feb 2018 04:29:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 15 Feb 2018 04:29:33 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 15 Feb 2018 04:29:33 GMT
VOLUME [/data/db /data/configdb]
# Thu, 15 Feb 2018 04:29:33 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Thu, 15 Feb 2018 04:29:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 04:29:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 04:29:35 GMT
EXPOSE 27017/tcp
# Thu, 15 Feb 2018 04:29:35 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a5a533fc62cc39eeb93db7be474d8e8ee901dcfea4b15785ae304026bfd356f0`  
		Last Modified: Thu, 15 Feb 2018 02:33:30 GMT  
		Size: 19.2 MB (19164709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8999eb72ff1e73077e6a21f5152d7acd1b3dd08b336ded3f29b5d7911abf7cd8`  
		Last Modified: Thu, 15 Feb 2018 05:15:04 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad29ed50ebfbafa2ca3ca2ed358d313187f83bf21b12ee66416b0e5006895a8`  
		Last Modified: Thu, 15 Feb 2018 05:15:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9892e015416f7a9c7abe742d9b5f83f88ae6514390e7c95a5159dc55cfc59c9`  
		Last Modified: Thu, 15 Feb 2018 05:15:03 GMT  
		Size: 2.7 MB (2660240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:298de1a84905bc90c8e9c4a4ff679173de34d1172b007069bb6eaee6cd2d2c2c`  
		Last Modified: Thu, 15 Feb 2018 05:15:03 GMT  
		Size: 810.4 KB (810423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c28829bb961c3a981b66cb0ef3bb0178b86829a06bfd006ed0ddc2c8e289b8d`  
		Last Modified: Thu, 15 Feb 2018 05:15:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443f89a8d271afe0eff7e441c26b8513e0d27d995e2ce044d1287719f279eb95`  
		Last Modified: Thu, 15 Feb 2018 05:15:01 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a3613b6f10a58cb0886c42e5eeb1af11d03dca51475ec7f6940ab91f9c83aa5`  
		Last Modified: Thu, 15 Feb 2018 05:14:59 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d530947681324c8fec1f70084b68033da1e42aa657426d2f85c16a77002a4bfb`  
		Last Modified: Thu, 15 Feb 2018 05:15:17 GMT  
		Size: 61.9 MB (61886152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb478e12289729734d6d8a88e3721fcbe791eacbe45b8c7a725845f087a94c3`  
		Last Modified: Thu, 15 Feb 2018 05:15:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4ae95d86e03f21e5466ca60fe333222724fe5303c53e19a996f0544f2189ad`  
		Last Modified: Thu, 15 Feb 2018 05:14:59 GMT  
		Size: 3.6 KB (3568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e66e9027248b8a2d87ff1810804b1df5cc0743579a9580f17232799322d67c`  
		Last Modified: Thu, 15 Feb 2018 05:14:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.0-wheezy`

```console
$ docker pull mongo@sha256:2635bb0bad8ddcbea0f47bdfc5e0552f7ea6f1bbfecdd345a6f86a2e93e8da0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.0-wheezy` - linux; amd64

```console
$ docker pull mongo@sha256:12298fbea13af7ac3ca52a65cc0e19c6a150962a910b0fad3e3b3ac2cf533021
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.5 MB (84529707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:facfe31b994b47adbe9c2babcc400482ffb5ab95a808a66192fd2e1f6ceab599`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 02:07:14 GMT
ADD file:e77f78c6890071f305ee5c7fa09a694e0d1903b363d5052924ebc265ccb0a181 in / 
# Thu, 15 Feb 2018 02:07:14 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:28:39 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:28:40 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
# Thu, 15 Feb 2018 04:28:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 		procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:29:04 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:29:04 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:29:16 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:29:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:29:17 GMT
ENV GPG_KEYS=492EAFE8CD016A07919F1D2B9ECBEC467F0CEB10
# Thu, 15 Feb 2018 04:29:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:29:19 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 15 Feb 2018 04:29:19 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:29:19 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:29:20 GMT
ENV MONGO_MAJOR=3.0
# Thu, 15 Feb 2018 04:29:20 GMT
ENV MONGO_VERSION=3.0.15
# Thu, 15 Feb 2018 04:29:21 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian wheezy/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 15 Feb 2018 04:29:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 15 Feb 2018 04:29:33 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 15 Feb 2018 04:29:33 GMT
VOLUME [/data/db /data/configdb]
# Thu, 15 Feb 2018 04:29:33 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Thu, 15 Feb 2018 04:29:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 04:29:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 04:29:35 GMT
EXPOSE 27017/tcp
# Thu, 15 Feb 2018 04:29:35 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a5a533fc62cc39eeb93db7be474d8e8ee901dcfea4b15785ae304026bfd356f0`  
		Last Modified: Thu, 15 Feb 2018 02:33:30 GMT  
		Size: 19.2 MB (19164709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8999eb72ff1e73077e6a21f5152d7acd1b3dd08b336ded3f29b5d7911abf7cd8`  
		Last Modified: Thu, 15 Feb 2018 05:15:04 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad29ed50ebfbafa2ca3ca2ed358d313187f83bf21b12ee66416b0e5006895a8`  
		Last Modified: Thu, 15 Feb 2018 05:15:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9892e015416f7a9c7abe742d9b5f83f88ae6514390e7c95a5159dc55cfc59c9`  
		Last Modified: Thu, 15 Feb 2018 05:15:03 GMT  
		Size: 2.7 MB (2660240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:298de1a84905bc90c8e9c4a4ff679173de34d1172b007069bb6eaee6cd2d2c2c`  
		Last Modified: Thu, 15 Feb 2018 05:15:03 GMT  
		Size: 810.4 KB (810423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c28829bb961c3a981b66cb0ef3bb0178b86829a06bfd006ed0ddc2c8e289b8d`  
		Last Modified: Thu, 15 Feb 2018 05:15:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443f89a8d271afe0eff7e441c26b8513e0d27d995e2ce044d1287719f279eb95`  
		Last Modified: Thu, 15 Feb 2018 05:15:01 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a3613b6f10a58cb0886c42e5eeb1af11d03dca51475ec7f6940ab91f9c83aa5`  
		Last Modified: Thu, 15 Feb 2018 05:14:59 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d530947681324c8fec1f70084b68033da1e42aa657426d2f85c16a77002a4bfb`  
		Last Modified: Thu, 15 Feb 2018 05:15:17 GMT  
		Size: 61.9 MB (61886152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb478e12289729734d6d8a88e3721fcbe791eacbe45b8c7a725845f087a94c3`  
		Last Modified: Thu, 15 Feb 2018 05:15:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4ae95d86e03f21e5466ca60fe333222724fe5303c53e19a996f0544f2189ad`  
		Last Modified: Thu, 15 Feb 2018 05:14:59 GMT  
		Size: 3.6 KB (3568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e66e9027248b8a2d87ff1810804b1df5cc0743579a9580f17232799322d67c`  
		Last Modified: Thu, 15 Feb 2018 05:14:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2`

```console
$ docker pull mongo@sha256:b0ffb38cf6d9479a2b099b159926d72ebfec94dc206b6d5647a034f46f212de2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2` - linux; amd64

```console
$ docker pull mongo@sha256:eb46c95ca2434d193552144bffc83a09154b1a0548e0e530f720e4a8ae2154db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104186640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56d7fa068c3de91b61d66263bc74eb3fa1511fa9b275da59ee946d7534f3323e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:40:16 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:40:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:40:39 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:40:39 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:40:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:40:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:40:57 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Thu, 15 Feb 2018 04:41:00 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:41:00 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 15 Feb 2018 04:41:00 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:41:01 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:41:01 GMT
ENV MONGO_MAJOR=3.2
# Thu, 15 Feb 2018 04:41:01 GMT
ENV MONGO_VERSION=3.2.19
# Thu, 15 Feb 2018 04:41:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 15 Feb 2018 04:41:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 15 Feb 2018 04:41:31 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 15 Feb 2018 04:41:31 GMT
VOLUME [/data/db /data/configdb]
# Thu, 15 Feb 2018 04:41:32 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Thu, 15 Feb 2018 04:41:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 04:41:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 04:41:44 GMT
EXPOSE 27017/tcp
# Thu, 15 Feb 2018 04:41:44 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb958661291ed53c5b30e758d596c775498893c1269803254b5664e6a6c3bdf`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfa71d101a9723669f0a8b39eba83f6bf5ef357d02d3a4fbf42be5ad1b27040`  
		Last Modified: Thu, 15 Feb 2018 05:16:03 GMT  
		Size: 2.4 MB (2397830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a286579fc2d57ec8df877bf657b1b69b11e9c3aa456e5e72d1363c037a76c5`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 816.6 KB (816644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9441b8e1ae369520d560c7d47299705f2520b8736c5f8959ce6248a8e6a0618d`  
		Last Modified: Thu, 15 Feb 2018 05:16:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8adae038825a92ec535527e88a37d75ef27e60c33891c19e4fccc4f10eb9f7d0`  
		Last Modified: Thu, 15 Feb 2018 05:16:02 GMT  
		Size: 3.6 KB (3594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bbc577c5405d2819c8e91ba70e1d97ff1235998f0f59d6f3543404b5736aae9`  
		Last Modified: Thu, 15 Feb 2018 05:16:00 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3262164c5f4244554fe4e5696f9a68fb925cec8b9f1d6c206364af44d5ddbf`  
		Last Modified: Thu, 15 Feb 2018 05:16:16 GMT  
		Size: 70.8 MB (70839929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9530d43fd8587df2ba139f4e8ae8811f953214ef5ecbeb9f102bf0e5155020d6`  
		Last Modified: Thu, 15 Feb 2018 05:15:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38188f693fe6e40e133d97bb3f0a01cfe0c633370b9b87b7b52e8f150242208d`  
		Last Modified: Thu, 15 Feb 2018 05:15:59 GMT  
		Size: 3.6 KB (3572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ffa75d6632f1baa162fa24fd53c27fd63d7741f30173521f5072bf8f81f3b0`  
		Last Modified: Thu, 15 Feb 2018 05:15:59 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.19`

```console
$ docker pull mongo@sha256:b0ffb38cf6d9479a2b099b159926d72ebfec94dc206b6d5647a034f46f212de2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2.19` - linux; amd64

```console
$ docker pull mongo@sha256:eb46c95ca2434d193552144bffc83a09154b1a0548e0e530f720e4a8ae2154db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104186640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56d7fa068c3de91b61d66263bc74eb3fa1511fa9b275da59ee946d7534f3323e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:40:16 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:40:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:40:39 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:40:39 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:40:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:40:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:40:57 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Thu, 15 Feb 2018 04:41:00 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:41:00 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 15 Feb 2018 04:41:00 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:41:01 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:41:01 GMT
ENV MONGO_MAJOR=3.2
# Thu, 15 Feb 2018 04:41:01 GMT
ENV MONGO_VERSION=3.2.19
# Thu, 15 Feb 2018 04:41:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 15 Feb 2018 04:41:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 15 Feb 2018 04:41:31 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 15 Feb 2018 04:41:31 GMT
VOLUME [/data/db /data/configdb]
# Thu, 15 Feb 2018 04:41:32 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Thu, 15 Feb 2018 04:41:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 04:41:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 04:41:44 GMT
EXPOSE 27017/tcp
# Thu, 15 Feb 2018 04:41:44 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb958661291ed53c5b30e758d596c775498893c1269803254b5664e6a6c3bdf`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfa71d101a9723669f0a8b39eba83f6bf5ef357d02d3a4fbf42be5ad1b27040`  
		Last Modified: Thu, 15 Feb 2018 05:16:03 GMT  
		Size: 2.4 MB (2397830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a286579fc2d57ec8df877bf657b1b69b11e9c3aa456e5e72d1363c037a76c5`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 816.6 KB (816644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9441b8e1ae369520d560c7d47299705f2520b8736c5f8959ce6248a8e6a0618d`  
		Last Modified: Thu, 15 Feb 2018 05:16:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8adae038825a92ec535527e88a37d75ef27e60c33891c19e4fccc4f10eb9f7d0`  
		Last Modified: Thu, 15 Feb 2018 05:16:02 GMT  
		Size: 3.6 KB (3594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bbc577c5405d2819c8e91ba70e1d97ff1235998f0f59d6f3543404b5736aae9`  
		Last Modified: Thu, 15 Feb 2018 05:16:00 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3262164c5f4244554fe4e5696f9a68fb925cec8b9f1d6c206364af44d5ddbf`  
		Last Modified: Thu, 15 Feb 2018 05:16:16 GMT  
		Size: 70.8 MB (70839929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9530d43fd8587df2ba139f4e8ae8811f953214ef5ecbeb9f102bf0e5155020d6`  
		Last Modified: Thu, 15 Feb 2018 05:15:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38188f693fe6e40e133d97bb3f0a01cfe0c633370b9b87b7b52e8f150242208d`  
		Last Modified: Thu, 15 Feb 2018 05:15:59 GMT  
		Size: 3.6 KB (3572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ffa75d6632f1baa162fa24fd53c27fd63d7741f30173521f5072bf8f81f3b0`  
		Last Modified: Thu, 15 Feb 2018 05:15:59 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2.19-jessie`

```console
$ docker pull mongo@sha256:b0ffb38cf6d9479a2b099b159926d72ebfec94dc206b6d5647a034f46f212de2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2.19-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:eb46c95ca2434d193552144bffc83a09154b1a0548e0e530f720e4a8ae2154db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104186640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56d7fa068c3de91b61d66263bc74eb3fa1511fa9b275da59ee946d7534f3323e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:40:16 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:40:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:40:39 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:40:39 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:40:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:40:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:40:57 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Thu, 15 Feb 2018 04:41:00 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:41:00 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 15 Feb 2018 04:41:00 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:41:01 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:41:01 GMT
ENV MONGO_MAJOR=3.2
# Thu, 15 Feb 2018 04:41:01 GMT
ENV MONGO_VERSION=3.2.19
# Thu, 15 Feb 2018 04:41:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 15 Feb 2018 04:41:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 15 Feb 2018 04:41:31 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 15 Feb 2018 04:41:31 GMT
VOLUME [/data/db /data/configdb]
# Thu, 15 Feb 2018 04:41:32 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Thu, 15 Feb 2018 04:41:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 04:41:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 04:41:44 GMT
EXPOSE 27017/tcp
# Thu, 15 Feb 2018 04:41:44 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb958661291ed53c5b30e758d596c775498893c1269803254b5664e6a6c3bdf`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfa71d101a9723669f0a8b39eba83f6bf5ef357d02d3a4fbf42be5ad1b27040`  
		Last Modified: Thu, 15 Feb 2018 05:16:03 GMT  
		Size: 2.4 MB (2397830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a286579fc2d57ec8df877bf657b1b69b11e9c3aa456e5e72d1363c037a76c5`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 816.6 KB (816644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9441b8e1ae369520d560c7d47299705f2520b8736c5f8959ce6248a8e6a0618d`  
		Last Modified: Thu, 15 Feb 2018 05:16:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8adae038825a92ec535527e88a37d75ef27e60c33891c19e4fccc4f10eb9f7d0`  
		Last Modified: Thu, 15 Feb 2018 05:16:02 GMT  
		Size: 3.6 KB (3594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bbc577c5405d2819c8e91ba70e1d97ff1235998f0f59d6f3543404b5736aae9`  
		Last Modified: Thu, 15 Feb 2018 05:16:00 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3262164c5f4244554fe4e5696f9a68fb925cec8b9f1d6c206364af44d5ddbf`  
		Last Modified: Thu, 15 Feb 2018 05:16:16 GMT  
		Size: 70.8 MB (70839929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9530d43fd8587df2ba139f4e8ae8811f953214ef5ecbeb9f102bf0e5155020d6`  
		Last Modified: Thu, 15 Feb 2018 05:15:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38188f693fe6e40e133d97bb3f0a01cfe0c633370b9b87b7b52e8f150242208d`  
		Last Modified: Thu, 15 Feb 2018 05:15:59 GMT  
		Size: 3.6 KB (3572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ffa75d6632f1baa162fa24fd53c27fd63d7741f30173521f5072bf8f81f3b0`  
		Last Modified: Thu, 15 Feb 2018 05:15:59 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.2-jessie`

```console
$ docker pull mongo@sha256:b0ffb38cf6d9479a2b099b159926d72ebfec94dc206b6d5647a034f46f212de2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.2-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:eb46c95ca2434d193552144bffc83a09154b1a0548e0e530f720e4a8ae2154db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104186640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56d7fa068c3de91b61d66263bc74eb3fa1511fa9b275da59ee946d7534f3323e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:40:16 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:40:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:40:39 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:40:39 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:40:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:40:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:40:57 GMT
ENV GPG_KEYS=DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 	42F3E95A2C4F08279C4960ADD68FA50FEA312927
# Thu, 15 Feb 2018 04:41:00 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:41:00 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 15 Feb 2018 04:41:00 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:41:01 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:41:01 GMT
ENV MONGO_MAJOR=3.2
# Thu, 15 Feb 2018 04:41:01 GMT
ENV MONGO_VERSION=3.2.19
# Thu, 15 Feb 2018 04:41:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 15 Feb 2018 04:41:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 15 Feb 2018 04:41:31 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 15 Feb 2018 04:41:31 GMT
VOLUME [/data/db /data/configdb]
# Thu, 15 Feb 2018 04:41:32 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Thu, 15 Feb 2018 04:41:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 04:41:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 04:41:44 GMT
EXPOSE 27017/tcp
# Thu, 15 Feb 2018 04:41:44 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb958661291ed53c5b30e758d596c775498893c1269803254b5664e6a6c3bdf`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfa71d101a9723669f0a8b39eba83f6bf5ef357d02d3a4fbf42be5ad1b27040`  
		Last Modified: Thu, 15 Feb 2018 05:16:03 GMT  
		Size: 2.4 MB (2397830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a286579fc2d57ec8df877bf657b1b69b11e9c3aa456e5e72d1363c037a76c5`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 816.6 KB (816644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9441b8e1ae369520d560c7d47299705f2520b8736c5f8959ce6248a8e6a0618d`  
		Last Modified: Thu, 15 Feb 2018 05:16:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8adae038825a92ec535527e88a37d75ef27e60c33891c19e4fccc4f10eb9f7d0`  
		Last Modified: Thu, 15 Feb 2018 05:16:02 GMT  
		Size: 3.6 KB (3594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bbc577c5405d2819c8e91ba70e1d97ff1235998f0f59d6f3543404b5736aae9`  
		Last Modified: Thu, 15 Feb 2018 05:16:00 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3262164c5f4244554fe4e5696f9a68fb925cec8b9f1d6c206364af44d5ddbf`  
		Last Modified: Thu, 15 Feb 2018 05:16:16 GMT  
		Size: 70.8 MB (70839929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9530d43fd8587df2ba139f4e8ae8811f953214ef5ecbeb9f102bf0e5155020d6`  
		Last Modified: Thu, 15 Feb 2018 05:15:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38188f693fe6e40e133d97bb3f0a01cfe0c633370b9b87b7b52e8f150242208d`  
		Last Modified: Thu, 15 Feb 2018 05:15:59 GMT  
		Size: 3.6 KB (3572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ffa75d6632f1baa162fa24fd53c27fd63d7741f30173521f5072bf8f81f3b0`  
		Last Modified: Thu, 15 Feb 2018 05:15:59 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4`

```console
$ docker pull mongo@sha256:6ad127cf55bc0016434655e4bca594677bf14b3e98dff34f1e3edb80e4692052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4` - linux; amd64

```console
$ docker pull mongo@sha256:28b18f7904a0b59c7ffac5100da3c978797c88fa648f6603e6d208837d03258c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (131991540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baea457313ee63ac5882cc39a14ddd71fd52f6652af2be4f47140ea82365dccd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:40:16 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:40:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:40:39 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:40:39 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:40:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:40:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:42:03 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Thu, 15 Feb 2018 04:42:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:42:06 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 15 Feb 2018 04:42:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:42:07 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:42:07 GMT
ENV MONGO_MAJOR=3.4
# Thu, 15 Feb 2018 04:42:07 GMT
ENV MONGO_VERSION=3.4.13
# Thu, 15 Feb 2018 04:42:08 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 15 Feb 2018 04:42:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 15 Feb 2018 04:42:28 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 15 Feb 2018 04:42:28 GMT
VOLUME [/data/db /data/configdb]
# Thu, 15 Feb 2018 04:42:29 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Thu, 15 Feb 2018 04:42:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 04:42:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 04:42:30 GMT
EXPOSE 27017/tcp
# Thu, 15 Feb 2018 04:42:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb958661291ed53c5b30e758d596c775498893c1269803254b5664e6a6c3bdf`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfa71d101a9723669f0a8b39eba83f6bf5ef357d02d3a4fbf42be5ad1b27040`  
		Last Modified: Thu, 15 Feb 2018 05:16:03 GMT  
		Size: 2.4 MB (2397830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a286579fc2d57ec8df877bf657b1b69b11e9c3aa456e5e72d1363c037a76c5`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 816.6 KB (816644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9441b8e1ae369520d560c7d47299705f2520b8736c5f8959ce6248a8e6a0618d`  
		Last Modified: Thu, 15 Feb 2018 05:16:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65d1c1d016eb5fb3897291b59f601c79c3eb51be2a075dbad902ed3bb537a9f`  
		Last Modified: Thu, 15 Feb 2018 05:17:08 GMT  
		Size: 2.0 KB (2005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4505ff4eb3af3af4207e04557734b8900064013e87b78d485be984f86d25ce24`  
		Last Modified: Thu, 15 Feb 2018 05:17:05 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e2705f88f3ee18132417e5e691a0b5dd2dfff43dcb04c8048bc862df292cb6`  
		Last Modified: Thu, 15 Feb 2018 05:17:26 GMT  
		Size: 98.6 MB (98646419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e71d53588235022a1b9ac0c21b540d035283637fef9c7206eedf82c5768b3c`  
		Last Modified: Thu, 15 Feb 2018 05:17:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a3bb85ae26082c18344808bb38febb5cc79e5fd2c543190b58f5e45ff47ebc`  
		Last Modified: Thu, 15 Feb 2018 05:17:05 GMT  
		Size: 3.6 KB (3570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a596b263d1654180cbbc4127eb34f1683244ed14a508151adeb09e25760cb189`  
		Last Modified: Thu, 15 Feb 2018 05:17:05 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.13`

```console
$ docker pull mongo@sha256:6ad127cf55bc0016434655e4bca594677bf14b3e98dff34f1e3edb80e4692052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4.13` - linux; amd64

```console
$ docker pull mongo@sha256:28b18f7904a0b59c7ffac5100da3c978797c88fa648f6603e6d208837d03258c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (131991540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baea457313ee63ac5882cc39a14ddd71fd52f6652af2be4f47140ea82365dccd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:40:16 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:40:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:40:39 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:40:39 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:40:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:40:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:42:03 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Thu, 15 Feb 2018 04:42:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:42:06 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 15 Feb 2018 04:42:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:42:07 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:42:07 GMT
ENV MONGO_MAJOR=3.4
# Thu, 15 Feb 2018 04:42:07 GMT
ENV MONGO_VERSION=3.4.13
# Thu, 15 Feb 2018 04:42:08 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 15 Feb 2018 04:42:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 15 Feb 2018 04:42:28 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 15 Feb 2018 04:42:28 GMT
VOLUME [/data/db /data/configdb]
# Thu, 15 Feb 2018 04:42:29 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Thu, 15 Feb 2018 04:42:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 04:42:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 04:42:30 GMT
EXPOSE 27017/tcp
# Thu, 15 Feb 2018 04:42:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb958661291ed53c5b30e758d596c775498893c1269803254b5664e6a6c3bdf`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfa71d101a9723669f0a8b39eba83f6bf5ef357d02d3a4fbf42be5ad1b27040`  
		Last Modified: Thu, 15 Feb 2018 05:16:03 GMT  
		Size: 2.4 MB (2397830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a286579fc2d57ec8df877bf657b1b69b11e9c3aa456e5e72d1363c037a76c5`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 816.6 KB (816644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9441b8e1ae369520d560c7d47299705f2520b8736c5f8959ce6248a8e6a0618d`  
		Last Modified: Thu, 15 Feb 2018 05:16:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65d1c1d016eb5fb3897291b59f601c79c3eb51be2a075dbad902ed3bb537a9f`  
		Last Modified: Thu, 15 Feb 2018 05:17:08 GMT  
		Size: 2.0 KB (2005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4505ff4eb3af3af4207e04557734b8900064013e87b78d485be984f86d25ce24`  
		Last Modified: Thu, 15 Feb 2018 05:17:05 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e2705f88f3ee18132417e5e691a0b5dd2dfff43dcb04c8048bc862df292cb6`  
		Last Modified: Thu, 15 Feb 2018 05:17:26 GMT  
		Size: 98.6 MB (98646419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e71d53588235022a1b9ac0c21b540d035283637fef9c7206eedf82c5768b3c`  
		Last Modified: Thu, 15 Feb 2018 05:17:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a3bb85ae26082c18344808bb38febb5cc79e5fd2c543190b58f5e45ff47ebc`  
		Last Modified: Thu, 15 Feb 2018 05:17:05 GMT  
		Size: 3.6 KB (3570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a596b263d1654180cbbc4127eb34f1683244ed14a508151adeb09e25760cb189`  
		Last Modified: Thu, 15 Feb 2018 05:17:05 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4.13-jessie`

```console
$ docker pull mongo@sha256:6ad127cf55bc0016434655e4bca594677bf14b3e98dff34f1e3edb80e4692052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4.13-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:28b18f7904a0b59c7ffac5100da3c978797c88fa648f6603e6d208837d03258c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (131991540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baea457313ee63ac5882cc39a14ddd71fd52f6652af2be4f47140ea82365dccd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:40:16 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:40:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:40:39 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:40:39 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:40:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:40:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:42:03 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Thu, 15 Feb 2018 04:42:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:42:06 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 15 Feb 2018 04:42:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:42:07 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:42:07 GMT
ENV MONGO_MAJOR=3.4
# Thu, 15 Feb 2018 04:42:07 GMT
ENV MONGO_VERSION=3.4.13
# Thu, 15 Feb 2018 04:42:08 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 15 Feb 2018 04:42:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 15 Feb 2018 04:42:28 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 15 Feb 2018 04:42:28 GMT
VOLUME [/data/db /data/configdb]
# Thu, 15 Feb 2018 04:42:29 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Thu, 15 Feb 2018 04:42:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 04:42:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 04:42:30 GMT
EXPOSE 27017/tcp
# Thu, 15 Feb 2018 04:42:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb958661291ed53c5b30e758d596c775498893c1269803254b5664e6a6c3bdf`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfa71d101a9723669f0a8b39eba83f6bf5ef357d02d3a4fbf42be5ad1b27040`  
		Last Modified: Thu, 15 Feb 2018 05:16:03 GMT  
		Size: 2.4 MB (2397830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a286579fc2d57ec8df877bf657b1b69b11e9c3aa456e5e72d1363c037a76c5`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 816.6 KB (816644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9441b8e1ae369520d560c7d47299705f2520b8736c5f8959ce6248a8e6a0618d`  
		Last Modified: Thu, 15 Feb 2018 05:16:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65d1c1d016eb5fb3897291b59f601c79c3eb51be2a075dbad902ed3bb537a9f`  
		Last Modified: Thu, 15 Feb 2018 05:17:08 GMT  
		Size: 2.0 KB (2005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4505ff4eb3af3af4207e04557734b8900064013e87b78d485be984f86d25ce24`  
		Last Modified: Thu, 15 Feb 2018 05:17:05 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e2705f88f3ee18132417e5e691a0b5dd2dfff43dcb04c8048bc862df292cb6`  
		Last Modified: Thu, 15 Feb 2018 05:17:26 GMT  
		Size: 98.6 MB (98646419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e71d53588235022a1b9ac0c21b540d035283637fef9c7206eedf82c5768b3c`  
		Last Modified: Thu, 15 Feb 2018 05:17:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a3bb85ae26082c18344808bb38febb5cc79e5fd2c543190b58f5e45ff47ebc`  
		Last Modified: Thu, 15 Feb 2018 05:17:05 GMT  
		Size: 3.6 KB (3570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a596b263d1654180cbbc4127eb34f1683244ed14a508151adeb09e25760cb189`  
		Last Modified: Thu, 15 Feb 2018 05:17:05 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.4-jessie`

```console
$ docker pull mongo@sha256:6ad127cf55bc0016434655e4bca594677bf14b3e98dff34f1e3edb80e4692052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.4-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:28b18f7904a0b59c7ffac5100da3c978797c88fa648f6603e6d208837d03258c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (131991540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baea457313ee63ac5882cc39a14ddd71fd52f6652af2be4f47140ea82365dccd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:40:16 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:40:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:40:39 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:40:39 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:40:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:40:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:42:03 GMT
ENV GPG_KEYS=0C49F3730359A14518585931BC711F9BA15703C6
# Thu, 15 Feb 2018 04:42:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:42:06 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 15 Feb 2018 04:42:07 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:42:07 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:42:07 GMT
ENV MONGO_MAJOR=3.4
# Thu, 15 Feb 2018 04:42:07 GMT
ENV MONGO_VERSION=3.4.13
# Thu, 15 Feb 2018 04:42:08 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Thu, 15 Feb 2018 04:42:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Thu, 15 Feb 2018 04:42:28 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Thu, 15 Feb 2018 04:42:28 GMT
VOLUME [/data/db /data/configdb]
# Thu, 15 Feb 2018 04:42:29 GMT
COPY file:536cddf4d6e1f87efc5d647e6253f8eefcd6e23caf8860574fbd37e620e4683f in /usr/local/bin/ 
# Thu, 15 Feb 2018 04:42:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 15 Feb 2018 04:42:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 04:42:30 GMT
EXPOSE 27017/tcp
# Thu, 15 Feb 2018 04:42:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb958661291ed53c5b30e758d596c775498893c1269803254b5664e6a6c3bdf`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfa71d101a9723669f0a8b39eba83f6bf5ef357d02d3a4fbf42be5ad1b27040`  
		Last Modified: Thu, 15 Feb 2018 05:16:03 GMT  
		Size: 2.4 MB (2397830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a286579fc2d57ec8df877bf657b1b69b11e9c3aa456e5e72d1363c037a76c5`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 816.6 KB (816644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9441b8e1ae369520d560c7d47299705f2520b8736c5f8959ce6248a8e6a0618d`  
		Last Modified: Thu, 15 Feb 2018 05:16:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65d1c1d016eb5fb3897291b59f601c79c3eb51be2a075dbad902ed3bb537a9f`  
		Last Modified: Thu, 15 Feb 2018 05:17:08 GMT  
		Size: 2.0 KB (2005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4505ff4eb3af3af4207e04557734b8900064013e87b78d485be984f86d25ce24`  
		Last Modified: Thu, 15 Feb 2018 05:17:05 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e2705f88f3ee18132417e5e691a0b5dd2dfff43dcb04c8048bc862df292cb6`  
		Last Modified: Thu, 15 Feb 2018 05:17:26 GMT  
		Size: 98.6 MB (98646419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e71d53588235022a1b9ac0c21b540d035283637fef9c7206eedf82c5768b3c`  
		Last Modified: Thu, 15 Feb 2018 05:17:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a3bb85ae26082c18344808bb38febb5cc79e5fd2c543190b58f5e45ff47ebc`  
		Last Modified: Thu, 15 Feb 2018 05:17:05 GMT  
		Size: 3.6 KB (3570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a596b263d1654180cbbc4127eb34f1683244ed14a508151adeb09e25760cb189`  
		Last Modified: Thu, 15 Feb 2018 05:17:05 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6`

```console
$ docker pull mongo@sha256:05fd4fd3710a84dcf12e5880a5fc225a245792d2d9b6156722c5f4c0fab74d86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6` - linux; amd64

```console
$ docker pull mongo@sha256:b79128c6f4f10e717ad23a8c88bf60606c1d0cf89847a87c9381445b75a30b13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130528704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43099507792a5214bd452a0eba3482e8da488b0008525578f309f040c2f7704e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:40:16 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:40:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:40:39 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:40:39 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:40:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:40:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:58:16 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Thu, 15 Feb 2018 04:58:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:58:30 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 15 Feb 2018 04:58:30 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:58:31 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:58:31 GMT
ENV MONGO_MAJOR=3.6
# Mon, 26 Feb 2018 23:58:42 GMT
ENV MONGO_VERSION=3.6.3
# Mon, 26 Feb 2018 23:58:43 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 26 Feb 2018 23:59:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 26 Feb 2018 23:59:13 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 26 Feb 2018 23:59:14 GMT
VOLUME [/data/db /data/configdb]
# Mon, 26 Feb 2018 23:59:14 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 26 Feb 2018 23:59:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Feb 2018 23:59:14 GMT
EXPOSE 27017/tcp
# Mon, 26 Feb 2018 23:59:15 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb958661291ed53c5b30e758d596c775498893c1269803254b5664e6a6c3bdf`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfa71d101a9723669f0a8b39eba83f6bf5ef357d02d3a4fbf42be5ad1b27040`  
		Last Modified: Thu, 15 Feb 2018 05:16:03 GMT  
		Size: 2.4 MB (2397830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a286579fc2d57ec8df877bf657b1b69b11e9c3aa456e5e72d1363c037a76c5`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 816.6 KB (816644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9441b8e1ae369520d560c7d47299705f2520b8736c5f8959ce6248a8e6a0618d`  
		Last Modified: Thu, 15 Feb 2018 05:16:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6fe40bb4bd24bd8f021f7bac8a759da57e233c16d2c9ae2fb7715746e33a05`  
		Last Modified: Thu, 15 Feb 2018 05:31:41 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca9be9954ebf01cdf383cb6a75dd0deea93ee6dbdedbea8061c15fc3fec1f43`  
		Last Modified: Mon, 26 Feb 2018 23:59:41 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3de1a5bb8230accdab79d4f6e17ca2527f54058abfb044db2943bebc877db7`  
		Last Modified: Mon, 26 Feb 2018 23:59:55 GMT  
		Size: 97.2 MB (97184121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e423513a19e1d24f5e9b69273d006c92d74ddce7034785a79b89bef7eb2732c`  
		Last Modified: Mon, 26 Feb 2018 23:59:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fcd12f78f7c18b6753243d85d0478c61180ca71b88f9f7eed977eaaa246a31b`  
		Last Modified: Mon, 26 Feb 2018 23:59:40 GMT  
		Size: 3.7 KB (3714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.3`

```console
$ docker pull mongo@sha256:05fd4fd3710a84dcf12e5880a5fc225a245792d2d9b6156722c5f4c0fab74d86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6.3` - linux; amd64

```console
$ docker pull mongo@sha256:b79128c6f4f10e717ad23a8c88bf60606c1d0cf89847a87c9381445b75a30b13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130528704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43099507792a5214bd452a0eba3482e8da488b0008525578f309f040c2f7704e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:40:16 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:40:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:40:39 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:40:39 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:40:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:40:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:58:16 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Thu, 15 Feb 2018 04:58:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:58:30 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 15 Feb 2018 04:58:30 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:58:31 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:58:31 GMT
ENV MONGO_MAJOR=3.6
# Mon, 26 Feb 2018 23:58:42 GMT
ENV MONGO_VERSION=3.6.3
# Mon, 26 Feb 2018 23:58:43 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 26 Feb 2018 23:59:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 26 Feb 2018 23:59:13 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 26 Feb 2018 23:59:14 GMT
VOLUME [/data/db /data/configdb]
# Mon, 26 Feb 2018 23:59:14 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 26 Feb 2018 23:59:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Feb 2018 23:59:14 GMT
EXPOSE 27017/tcp
# Mon, 26 Feb 2018 23:59:15 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb958661291ed53c5b30e758d596c775498893c1269803254b5664e6a6c3bdf`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfa71d101a9723669f0a8b39eba83f6bf5ef357d02d3a4fbf42be5ad1b27040`  
		Last Modified: Thu, 15 Feb 2018 05:16:03 GMT  
		Size: 2.4 MB (2397830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a286579fc2d57ec8df877bf657b1b69b11e9c3aa456e5e72d1363c037a76c5`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 816.6 KB (816644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9441b8e1ae369520d560c7d47299705f2520b8736c5f8959ce6248a8e6a0618d`  
		Last Modified: Thu, 15 Feb 2018 05:16:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6fe40bb4bd24bd8f021f7bac8a759da57e233c16d2c9ae2fb7715746e33a05`  
		Last Modified: Thu, 15 Feb 2018 05:31:41 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca9be9954ebf01cdf383cb6a75dd0deea93ee6dbdedbea8061c15fc3fec1f43`  
		Last Modified: Mon, 26 Feb 2018 23:59:41 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3de1a5bb8230accdab79d4f6e17ca2527f54058abfb044db2943bebc877db7`  
		Last Modified: Mon, 26 Feb 2018 23:59:55 GMT  
		Size: 97.2 MB (97184121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e423513a19e1d24f5e9b69273d006c92d74ddce7034785a79b89bef7eb2732c`  
		Last Modified: Mon, 26 Feb 2018 23:59:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fcd12f78f7c18b6753243d85d0478c61180ca71b88f9f7eed977eaaa246a31b`  
		Last Modified: Mon, 26 Feb 2018 23:59:40 GMT  
		Size: 3.7 KB (3714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6.3-jessie`

```console
$ docker pull mongo@sha256:05fd4fd3710a84dcf12e5880a5fc225a245792d2d9b6156722c5f4c0fab74d86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6.3-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:b79128c6f4f10e717ad23a8c88bf60606c1d0cf89847a87c9381445b75a30b13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130528704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43099507792a5214bd452a0eba3482e8da488b0008525578f309f040c2f7704e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:40:16 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:40:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:40:39 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:40:39 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:40:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:40:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:58:16 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Thu, 15 Feb 2018 04:58:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:58:30 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 15 Feb 2018 04:58:30 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:58:31 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:58:31 GMT
ENV MONGO_MAJOR=3.6
# Mon, 26 Feb 2018 23:58:42 GMT
ENV MONGO_VERSION=3.6.3
# Mon, 26 Feb 2018 23:58:43 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 26 Feb 2018 23:59:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 26 Feb 2018 23:59:13 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 26 Feb 2018 23:59:14 GMT
VOLUME [/data/db /data/configdb]
# Mon, 26 Feb 2018 23:59:14 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 26 Feb 2018 23:59:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Feb 2018 23:59:14 GMT
EXPOSE 27017/tcp
# Mon, 26 Feb 2018 23:59:15 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb958661291ed53c5b30e758d596c775498893c1269803254b5664e6a6c3bdf`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfa71d101a9723669f0a8b39eba83f6bf5ef357d02d3a4fbf42be5ad1b27040`  
		Last Modified: Thu, 15 Feb 2018 05:16:03 GMT  
		Size: 2.4 MB (2397830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a286579fc2d57ec8df877bf657b1b69b11e9c3aa456e5e72d1363c037a76c5`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 816.6 KB (816644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9441b8e1ae369520d560c7d47299705f2520b8736c5f8959ce6248a8e6a0618d`  
		Last Modified: Thu, 15 Feb 2018 05:16:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6fe40bb4bd24bd8f021f7bac8a759da57e233c16d2c9ae2fb7715746e33a05`  
		Last Modified: Thu, 15 Feb 2018 05:31:41 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca9be9954ebf01cdf383cb6a75dd0deea93ee6dbdedbea8061c15fc3fec1f43`  
		Last Modified: Mon, 26 Feb 2018 23:59:41 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3de1a5bb8230accdab79d4f6e17ca2527f54058abfb044db2943bebc877db7`  
		Last Modified: Mon, 26 Feb 2018 23:59:55 GMT  
		Size: 97.2 MB (97184121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e423513a19e1d24f5e9b69273d006c92d74ddce7034785a79b89bef7eb2732c`  
		Last Modified: Mon, 26 Feb 2018 23:59:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fcd12f78f7c18b6753243d85d0478c61180ca71b88f9f7eed977eaaa246a31b`  
		Last Modified: Mon, 26 Feb 2018 23:59:40 GMT  
		Size: 3.7 KB (3714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.6-jessie`

```console
$ docker pull mongo@sha256:05fd4fd3710a84dcf12e5880a5fc225a245792d2d9b6156722c5f4c0fab74d86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.6-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:b79128c6f4f10e717ad23a8c88bf60606c1d0cf89847a87c9381445b75a30b13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130528704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43099507792a5214bd452a0eba3482e8da488b0008525578f309f040c2f7704e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:40:16 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:40:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:40:39 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:40:39 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:40:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:40:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:58:16 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Thu, 15 Feb 2018 04:58:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:58:30 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 15 Feb 2018 04:58:30 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:58:31 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:58:31 GMT
ENV MONGO_MAJOR=3.6
# Mon, 26 Feb 2018 23:58:42 GMT
ENV MONGO_VERSION=3.6.3
# Mon, 26 Feb 2018 23:58:43 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 26 Feb 2018 23:59:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 26 Feb 2018 23:59:13 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 26 Feb 2018 23:59:14 GMT
VOLUME [/data/db /data/configdb]
# Mon, 26 Feb 2018 23:59:14 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 26 Feb 2018 23:59:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Feb 2018 23:59:14 GMT
EXPOSE 27017/tcp
# Mon, 26 Feb 2018 23:59:15 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb958661291ed53c5b30e758d596c775498893c1269803254b5664e6a6c3bdf`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfa71d101a9723669f0a8b39eba83f6bf5ef357d02d3a4fbf42be5ad1b27040`  
		Last Modified: Thu, 15 Feb 2018 05:16:03 GMT  
		Size: 2.4 MB (2397830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a286579fc2d57ec8df877bf657b1b69b11e9c3aa456e5e72d1363c037a76c5`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 816.6 KB (816644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9441b8e1ae369520d560c7d47299705f2520b8736c5f8959ce6248a8e6a0618d`  
		Last Modified: Thu, 15 Feb 2018 05:16:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6fe40bb4bd24bd8f021f7bac8a759da57e233c16d2c9ae2fb7715746e33a05`  
		Last Modified: Thu, 15 Feb 2018 05:31:41 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca9be9954ebf01cdf383cb6a75dd0deea93ee6dbdedbea8061c15fc3fec1f43`  
		Last Modified: Mon, 26 Feb 2018 23:59:41 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3de1a5bb8230accdab79d4f6e17ca2527f54058abfb044db2943bebc877db7`  
		Last Modified: Mon, 26 Feb 2018 23:59:55 GMT  
		Size: 97.2 MB (97184121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e423513a19e1d24f5e9b69273d006c92d74ddce7034785a79b89bef7eb2732c`  
		Last Modified: Mon, 26 Feb 2018 23:59:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fcd12f78f7c18b6753243d85d0478c61180ca71b88f9f7eed977eaaa246a31b`  
		Last Modified: Mon, 26 Feb 2018 23:59:40 GMT  
		Size: 3.7 KB (3714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7`

```console
$ docker pull mongo@sha256:c5bd08d974cbb1a43b03885b0a679032f3259e1a5c3607a094f7c5fc63a553c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.7` - linux; amd64

```console
$ docker pull mongo@sha256:82420e5a93ae7cc9ad22646388a01cfd58c230f0ba015a36d02dd3ed7c0324ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133087413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc56d61ab89b0df50f44d7a301bf22511cf02dfe462d37738357e61450227af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:40:16 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:40:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:40:39 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:40:39 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:40:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:40:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:59:09 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Thu, 15 Feb 2018 04:59:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:59:12 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Thu, 15 Feb 2018 04:59:12 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:59:12 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:59:13 GMT
ENV MONGO_MAJOR=3.7
# Sun, 18 Feb 2018 02:37:00 GMT
ENV MONGO_VERSION=3.7.2
# Sun, 18 Feb 2018 02:37:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sun, 18 Feb 2018 02:37:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sun, 18 Feb 2018 02:37:22 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sun, 18 Feb 2018 02:37:22 GMT
VOLUME [/data/db /data/configdb]
# Sun, 18 Feb 2018 02:37:23 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Sun, 18 Feb 2018 02:37:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 02:37:23 GMT
EXPOSE 27017/tcp
# Sun, 18 Feb 2018 02:37:23 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb958661291ed53c5b30e758d596c775498893c1269803254b5664e6a6c3bdf`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfa71d101a9723669f0a8b39eba83f6bf5ef357d02d3a4fbf42be5ad1b27040`  
		Last Modified: Thu, 15 Feb 2018 05:16:03 GMT  
		Size: 2.4 MB (2397830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a286579fc2d57ec8df877bf657b1b69b11e9c3aa456e5e72d1363c037a76c5`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 816.6 KB (816644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9441b8e1ae369520d560c7d47299705f2520b8736c5f8959ce6248a8e6a0618d`  
		Last Modified: Thu, 15 Feb 2018 05:16:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21bf5abd94633c72a5644a41584767637e3fa08b72379839a1636b577c6b39e`  
		Last Modified: Thu, 15 Feb 2018 05:48:46 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15398b1cd5123cb0cde936ef656e9c3edde0aff258bf8c797dc53b97cb941885`  
		Last Modified: Sun, 18 Feb 2018 02:50:01 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06c575b2440be0c987fad034fd2d5464737fe356152e7f590842d278b571d07`  
		Last Modified: Sun, 18 Feb 2018 02:50:17 GMT  
		Size: 99.7 MB (99742822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14222049ad8553ccd8cc6db77a7a95a7be28fc970c20970e462c45e8f5a7bd89`  
		Last Modified: Sun, 18 Feb 2018 02:50:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ffdda4c82572583140566e0c06c36e8e5b59617f798a63aa52985a573759cd6`  
		Last Modified: Sun, 18 Feb 2018 02:50:01 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7.2`

```console
$ docker pull mongo@sha256:c5bd08d974cbb1a43b03885b0a679032f3259e1a5c3607a094f7c5fc63a553c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.7.2` - linux; amd64

```console
$ docker pull mongo@sha256:82420e5a93ae7cc9ad22646388a01cfd58c230f0ba015a36d02dd3ed7c0324ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133087413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc56d61ab89b0df50f44d7a301bf22511cf02dfe462d37738357e61450227af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:40:16 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:40:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:40:39 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:40:39 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:40:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:40:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:59:09 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Thu, 15 Feb 2018 04:59:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:59:12 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Thu, 15 Feb 2018 04:59:12 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:59:12 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:59:13 GMT
ENV MONGO_MAJOR=3.7
# Sun, 18 Feb 2018 02:37:00 GMT
ENV MONGO_VERSION=3.7.2
# Sun, 18 Feb 2018 02:37:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sun, 18 Feb 2018 02:37:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sun, 18 Feb 2018 02:37:22 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sun, 18 Feb 2018 02:37:22 GMT
VOLUME [/data/db /data/configdb]
# Sun, 18 Feb 2018 02:37:23 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Sun, 18 Feb 2018 02:37:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 02:37:23 GMT
EXPOSE 27017/tcp
# Sun, 18 Feb 2018 02:37:23 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb958661291ed53c5b30e758d596c775498893c1269803254b5664e6a6c3bdf`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfa71d101a9723669f0a8b39eba83f6bf5ef357d02d3a4fbf42be5ad1b27040`  
		Last Modified: Thu, 15 Feb 2018 05:16:03 GMT  
		Size: 2.4 MB (2397830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a286579fc2d57ec8df877bf657b1b69b11e9c3aa456e5e72d1363c037a76c5`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 816.6 KB (816644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9441b8e1ae369520d560c7d47299705f2520b8736c5f8959ce6248a8e6a0618d`  
		Last Modified: Thu, 15 Feb 2018 05:16:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21bf5abd94633c72a5644a41584767637e3fa08b72379839a1636b577c6b39e`  
		Last Modified: Thu, 15 Feb 2018 05:48:46 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15398b1cd5123cb0cde936ef656e9c3edde0aff258bf8c797dc53b97cb941885`  
		Last Modified: Sun, 18 Feb 2018 02:50:01 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06c575b2440be0c987fad034fd2d5464737fe356152e7f590842d278b571d07`  
		Last Modified: Sun, 18 Feb 2018 02:50:17 GMT  
		Size: 99.7 MB (99742822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14222049ad8553ccd8cc6db77a7a95a7be28fc970c20970e462c45e8f5a7bd89`  
		Last Modified: Sun, 18 Feb 2018 02:50:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ffdda4c82572583140566e0c06c36e8e5b59617f798a63aa52985a573759cd6`  
		Last Modified: Sun, 18 Feb 2018 02:50:01 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7.2-jessie`

```console
$ docker pull mongo@sha256:c5bd08d974cbb1a43b03885b0a679032f3259e1a5c3607a094f7c5fc63a553c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.7.2-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:82420e5a93ae7cc9ad22646388a01cfd58c230f0ba015a36d02dd3ed7c0324ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133087413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc56d61ab89b0df50f44d7a301bf22511cf02dfe462d37738357e61450227af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:40:16 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:40:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:40:39 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:40:39 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:40:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:40:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:59:09 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Thu, 15 Feb 2018 04:59:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:59:12 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Thu, 15 Feb 2018 04:59:12 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:59:12 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:59:13 GMT
ENV MONGO_MAJOR=3.7
# Sun, 18 Feb 2018 02:37:00 GMT
ENV MONGO_VERSION=3.7.2
# Sun, 18 Feb 2018 02:37:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sun, 18 Feb 2018 02:37:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sun, 18 Feb 2018 02:37:22 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sun, 18 Feb 2018 02:37:22 GMT
VOLUME [/data/db /data/configdb]
# Sun, 18 Feb 2018 02:37:23 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Sun, 18 Feb 2018 02:37:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 02:37:23 GMT
EXPOSE 27017/tcp
# Sun, 18 Feb 2018 02:37:23 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb958661291ed53c5b30e758d596c775498893c1269803254b5664e6a6c3bdf`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfa71d101a9723669f0a8b39eba83f6bf5ef357d02d3a4fbf42be5ad1b27040`  
		Last Modified: Thu, 15 Feb 2018 05:16:03 GMT  
		Size: 2.4 MB (2397830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a286579fc2d57ec8df877bf657b1b69b11e9c3aa456e5e72d1363c037a76c5`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 816.6 KB (816644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9441b8e1ae369520d560c7d47299705f2520b8736c5f8959ce6248a8e6a0618d`  
		Last Modified: Thu, 15 Feb 2018 05:16:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21bf5abd94633c72a5644a41584767637e3fa08b72379839a1636b577c6b39e`  
		Last Modified: Thu, 15 Feb 2018 05:48:46 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15398b1cd5123cb0cde936ef656e9c3edde0aff258bf8c797dc53b97cb941885`  
		Last Modified: Sun, 18 Feb 2018 02:50:01 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06c575b2440be0c987fad034fd2d5464737fe356152e7f590842d278b571d07`  
		Last Modified: Sun, 18 Feb 2018 02:50:17 GMT  
		Size: 99.7 MB (99742822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14222049ad8553ccd8cc6db77a7a95a7be28fc970c20970e462c45e8f5a7bd89`  
		Last Modified: Sun, 18 Feb 2018 02:50:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ffdda4c82572583140566e0c06c36e8e5b59617f798a63aa52985a573759cd6`  
		Last Modified: Sun, 18 Feb 2018 02:50:01 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3.7-jessie`

```console
$ docker pull mongo@sha256:c5bd08d974cbb1a43b03885b0a679032f3259e1a5c3607a094f7c5fc63a553c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3.7-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:82420e5a93ae7cc9ad22646388a01cfd58c230f0ba015a36d02dd3ed7c0324ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133087413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc56d61ab89b0df50f44d7a301bf22511cf02dfe462d37738357e61450227af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:40:16 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:40:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:40:39 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:40:39 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:40:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:40:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:59:09 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Thu, 15 Feb 2018 04:59:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:59:12 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Thu, 15 Feb 2018 04:59:12 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:59:12 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:59:13 GMT
ENV MONGO_MAJOR=3.7
# Sun, 18 Feb 2018 02:37:00 GMT
ENV MONGO_VERSION=3.7.2
# Sun, 18 Feb 2018 02:37:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sun, 18 Feb 2018 02:37:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sun, 18 Feb 2018 02:37:22 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sun, 18 Feb 2018 02:37:22 GMT
VOLUME [/data/db /data/configdb]
# Sun, 18 Feb 2018 02:37:23 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Sun, 18 Feb 2018 02:37:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 02:37:23 GMT
EXPOSE 27017/tcp
# Sun, 18 Feb 2018 02:37:23 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb958661291ed53c5b30e758d596c775498893c1269803254b5664e6a6c3bdf`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfa71d101a9723669f0a8b39eba83f6bf5ef357d02d3a4fbf42be5ad1b27040`  
		Last Modified: Thu, 15 Feb 2018 05:16:03 GMT  
		Size: 2.4 MB (2397830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a286579fc2d57ec8df877bf657b1b69b11e9c3aa456e5e72d1363c037a76c5`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 816.6 KB (816644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9441b8e1ae369520d560c7d47299705f2520b8736c5f8959ce6248a8e6a0618d`  
		Last Modified: Thu, 15 Feb 2018 05:16:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21bf5abd94633c72a5644a41584767637e3fa08b72379839a1636b577c6b39e`  
		Last Modified: Thu, 15 Feb 2018 05:48:46 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15398b1cd5123cb0cde936ef656e9c3edde0aff258bf8c797dc53b97cb941885`  
		Last Modified: Sun, 18 Feb 2018 02:50:01 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06c575b2440be0c987fad034fd2d5464737fe356152e7f590842d278b571d07`  
		Last Modified: Sun, 18 Feb 2018 02:50:17 GMT  
		Size: 99.7 MB (99742822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14222049ad8553ccd8cc6db77a7a95a7be28fc970c20970e462c45e8f5a7bd89`  
		Last Modified: Sun, 18 Feb 2018 02:50:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ffdda4c82572583140566e0c06c36e8e5b59617f798a63aa52985a573759cd6`  
		Last Modified: Sun, 18 Feb 2018 02:50:01 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:3-jessie`

```console
$ docker pull mongo@sha256:05fd4fd3710a84dcf12e5880a5fc225a245792d2d9b6156722c5f4c0fab74d86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:b79128c6f4f10e717ad23a8c88bf60606c1d0cf89847a87c9381445b75a30b13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130528704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43099507792a5214bd452a0eba3482e8da488b0008525578f309f040c2f7704e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:40:16 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:40:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:40:39 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:40:39 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:40:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:40:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:58:16 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Thu, 15 Feb 2018 04:58:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:58:30 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 15 Feb 2018 04:58:30 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:58:31 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:58:31 GMT
ENV MONGO_MAJOR=3.6
# Mon, 26 Feb 2018 23:58:42 GMT
ENV MONGO_VERSION=3.6.3
# Mon, 26 Feb 2018 23:58:43 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 26 Feb 2018 23:59:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 26 Feb 2018 23:59:13 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 26 Feb 2018 23:59:14 GMT
VOLUME [/data/db /data/configdb]
# Mon, 26 Feb 2018 23:59:14 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 26 Feb 2018 23:59:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Feb 2018 23:59:14 GMT
EXPOSE 27017/tcp
# Mon, 26 Feb 2018 23:59:15 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb958661291ed53c5b30e758d596c775498893c1269803254b5664e6a6c3bdf`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfa71d101a9723669f0a8b39eba83f6bf5ef357d02d3a4fbf42be5ad1b27040`  
		Last Modified: Thu, 15 Feb 2018 05:16:03 GMT  
		Size: 2.4 MB (2397830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a286579fc2d57ec8df877bf657b1b69b11e9c3aa456e5e72d1363c037a76c5`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 816.6 KB (816644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9441b8e1ae369520d560c7d47299705f2520b8736c5f8959ce6248a8e6a0618d`  
		Last Modified: Thu, 15 Feb 2018 05:16:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6fe40bb4bd24bd8f021f7bac8a759da57e233c16d2c9ae2fb7715746e33a05`  
		Last Modified: Thu, 15 Feb 2018 05:31:41 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca9be9954ebf01cdf383cb6a75dd0deea93ee6dbdedbea8061c15fc3fec1f43`  
		Last Modified: Mon, 26 Feb 2018 23:59:41 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3de1a5bb8230accdab79d4f6e17ca2527f54058abfb044db2943bebc877db7`  
		Last Modified: Mon, 26 Feb 2018 23:59:55 GMT  
		Size: 97.2 MB (97184121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e423513a19e1d24f5e9b69273d006c92d74ddce7034785a79b89bef7eb2732c`  
		Last Modified: Mon, 26 Feb 2018 23:59:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fcd12f78f7c18b6753243d85d0478c61180ca71b88f9f7eed977eaaa246a31b`  
		Last Modified: Mon, 26 Feb 2018 23:59:40 GMT  
		Size: 3.7 KB (3714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:jessie`

```console
$ docker pull mongo@sha256:05fd4fd3710a84dcf12e5880a5fc225a245792d2d9b6156722c5f4c0fab74d86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:jessie` - linux; amd64

```console
$ docker pull mongo@sha256:b79128c6f4f10e717ad23a8c88bf60606c1d0cf89847a87c9381445b75a30b13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130528704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43099507792a5214bd452a0eba3482e8da488b0008525578f309f040c2f7704e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:40:16 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:40:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:40:39 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:40:39 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:40:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:40:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:58:16 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Thu, 15 Feb 2018 04:58:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:58:30 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 15 Feb 2018 04:58:30 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:58:31 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:58:31 GMT
ENV MONGO_MAJOR=3.6
# Mon, 26 Feb 2018 23:58:42 GMT
ENV MONGO_VERSION=3.6.3
# Mon, 26 Feb 2018 23:58:43 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 26 Feb 2018 23:59:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 26 Feb 2018 23:59:13 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 26 Feb 2018 23:59:14 GMT
VOLUME [/data/db /data/configdb]
# Mon, 26 Feb 2018 23:59:14 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 26 Feb 2018 23:59:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Feb 2018 23:59:14 GMT
EXPOSE 27017/tcp
# Mon, 26 Feb 2018 23:59:15 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb958661291ed53c5b30e758d596c775498893c1269803254b5664e6a6c3bdf`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfa71d101a9723669f0a8b39eba83f6bf5ef357d02d3a4fbf42be5ad1b27040`  
		Last Modified: Thu, 15 Feb 2018 05:16:03 GMT  
		Size: 2.4 MB (2397830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a286579fc2d57ec8df877bf657b1b69b11e9c3aa456e5e72d1363c037a76c5`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 816.6 KB (816644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9441b8e1ae369520d560c7d47299705f2520b8736c5f8959ce6248a8e6a0618d`  
		Last Modified: Thu, 15 Feb 2018 05:16:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6fe40bb4bd24bd8f021f7bac8a759da57e233c16d2c9ae2fb7715746e33a05`  
		Last Modified: Thu, 15 Feb 2018 05:31:41 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca9be9954ebf01cdf383cb6a75dd0deea93ee6dbdedbea8061c15fc3fec1f43`  
		Last Modified: Mon, 26 Feb 2018 23:59:41 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3de1a5bb8230accdab79d4f6e17ca2527f54058abfb044db2943bebc877db7`  
		Last Modified: Mon, 26 Feb 2018 23:59:55 GMT  
		Size: 97.2 MB (97184121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e423513a19e1d24f5e9b69273d006c92d74ddce7034785a79b89bef7eb2732c`  
		Last Modified: Mon, 26 Feb 2018 23:59:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fcd12f78f7c18b6753243d85d0478c61180ca71b88f9f7eed977eaaa246a31b`  
		Last Modified: Mon, 26 Feb 2018 23:59:40 GMT  
		Size: 3.7 KB (3714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:latest`

```console
$ docker pull mongo@sha256:05fd4fd3710a84dcf12e5880a5fc225a245792d2d9b6156722c5f4c0fab74d86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:latest` - linux; amd64

```console
$ docker pull mongo@sha256:b79128c6f4f10e717ad23a8c88bf60606c1d0cf89847a87c9381445b75a30b13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130528704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43099507792a5214bd452a0eba3482e8da488b0008525578f309f040c2f7704e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:40:16 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:40:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:40:39 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:40:39 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:40:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:40:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:58:16 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Thu, 15 Feb 2018 04:58:20 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:58:30 GMT
ARG MONGO_PACKAGE=mongodb-org
# Thu, 15 Feb 2018 04:58:30 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:58:31 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:58:31 GMT
ENV MONGO_MAJOR=3.6
# Mon, 26 Feb 2018 23:58:42 GMT
ENV MONGO_VERSION=3.6.3
# Mon, 26 Feb 2018 23:58:43 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 26 Feb 2018 23:59:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 26 Feb 2018 23:59:13 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 26 Feb 2018 23:59:14 GMT
VOLUME [/data/db /data/configdb]
# Mon, 26 Feb 2018 23:59:14 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 26 Feb 2018 23:59:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Feb 2018 23:59:14 GMT
EXPOSE 27017/tcp
# Mon, 26 Feb 2018 23:59:15 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb958661291ed53c5b30e758d596c775498893c1269803254b5664e6a6c3bdf`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfa71d101a9723669f0a8b39eba83f6bf5ef357d02d3a4fbf42be5ad1b27040`  
		Last Modified: Thu, 15 Feb 2018 05:16:03 GMT  
		Size: 2.4 MB (2397830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a286579fc2d57ec8df877bf657b1b69b11e9c3aa456e5e72d1363c037a76c5`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 816.6 KB (816644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9441b8e1ae369520d560c7d47299705f2520b8736c5f8959ce6248a8e6a0618d`  
		Last Modified: Thu, 15 Feb 2018 05:16:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6fe40bb4bd24bd8f021f7bac8a759da57e233c16d2c9ae2fb7715746e33a05`  
		Last Modified: Thu, 15 Feb 2018 05:31:41 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca9be9954ebf01cdf383cb6a75dd0deea93ee6dbdedbea8061c15fc3fec1f43`  
		Last Modified: Mon, 26 Feb 2018 23:59:41 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3de1a5bb8230accdab79d4f6e17ca2527f54058abfb044db2943bebc877db7`  
		Last Modified: Mon, 26 Feb 2018 23:59:55 GMT  
		Size: 97.2 MB (97184121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e423513a19e1d24f5e9b69273d006c92d74ddce7034785a79b89bef7eb2732c`  
		Last Modified: Mon, 26 Feb 2018 23:59:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fcd12f78f7c18b6753243d85d0478c61180ca71b88f9f7eed977eaaa246a31b`  
		Last Modified: Mon, 26 Feb 2018 23:59:40 GMT  
		Size: 3.7 KB (3714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable`

```console
$ docker pull mongo@sha256:c5bd08d974cbb1a43b03885b0a679032f3259e1a5c3607a094f7c5fc63a553c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:82420e5a93ae7cc9ad22646388a01cfd58c230f0ba015a36d02dd3ed7c0324ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133087413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc56d61ab89b0df50f44d7a301bf22511cf02dfe462d37738357e61450227af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:40:16 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:40:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:40:39 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:40:39 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:40:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:40:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:59:09 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Thu, 15 Feb 2018 04:59:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:59:12 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Thu, 15 Feb 2018 04:59:12 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:59:12 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:59:13 GMT
ENV MONGO_MAJOR=3.7
# Sun, 18 Feb 2018 02:37:00 GMT
ENV MONGO_VERSION=3.7.2
# Sun, 18 Feb 2018 02:37:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sun, 18 Feb 2018 02:37:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sun, 18 Feb 2018 02:37:22 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sun, 18 Feb 2018 02:37:22 GMT
VOLUME [/data/db /data/configdb]
# Sun, 18 Feb 2018 02:37:23 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Sun, 18 Feb 2018 02:37:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 02:37:23 GMT
EXPOSE 27017/tcp
# Sun, 18 Feb 2018 02:37:23 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb958661291ed53c5b30e758d596c775498893c1269803254b5664e6a6c3bdf`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfa71d101a9723669f0a8b39eba83f6bf5ef357d02d3a4fbf42be5ad1b27040`  
		Last Modified: Thu, 15 Feb 2018 05:16:03 GMT  
		Size: 2.4 MB (2397830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a286579fc2d57ec8df877bf657b1b69b11e9c3aa456e5e72d1363c037a76c5`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 816.6 KB (816644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9441b8e1ae369520d560c7d47299705f2520b8736c5f8959ce6248a8e6a0618d`  
		Last Modified: Thu, 15 Feb 2018 05:16:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21bf5abd94633c72a5644a41584767637e3fa08b72379839a1636b577c6b39e`  
		Last Modified: Thu, 15 Feb 2018 05:48:46 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15398b1cd5123cb0cde936ef656e9c3edde0aff258bf8c797dc53b97cb941885`  
		Last Modified: Sun, 18 Feb 2018 02:50:01 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06c575b2440be0c987fad034fd2d5464737fe356152e7f590842d278b571d07`  
		Last Modified: Sun, 18 Feb 2018 02:50:17 GMT  
		Size: 99.7 MB (99742822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14222049ad8553ccd8cc6db77a7a95a7be28fc970c20970e462c45e8f5a7bd89`  
		Last Modified: Sun, 18 Feb 2018 02:50:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ffdda4c82572583140566e0c06c36e8e5b59617f798a63aa52985a573759cd6`  
		Last Modified: Sun, 18 Feb 2018 02:50:01 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mongo:unstable-jessie`

```console
$ docker pull mongo@sha256:c5bd08d974cbb1a43b03885b0a679032f3259e1a5c3607a094f7c5fc63a553c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:unstable-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:82420e5a93ae7cc9ad22646388a01cfd58c230f0ba015a36d02dd3ed7c0324ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133087413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc56d61ab89b0df50f44d7a301bf22511cf02dfe462d37738357e61450227af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 04:40:16 GMT
RUN groupadd -r mongodb && useradd -r -g mongodb mongodb
# Thu, 15 Feb 2018 04:40:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		ca-certificates 		jq 		numactl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 04:40:39 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 04:40:39 GMT
ENV JSYAML_VERSION=3.10.0
# Thu, 15 Feb 2018 04:40:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Thu, 15 Feb 2018 04:40:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 04:59:09 GMT
ENV GPG_KEYS=BD8C80D9C729D00524E068E03DAB71713396F72B
# Thu, 15 Feb 2018 04:59:11 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 04:59:12 GMT
ARG MONGO_PACKAGE=mongodb-org-unstable
# Thu, 15 Feb 2018 04:59:12 GMT
ARG MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:59:12 GMT
ENV MONGO_PACKAGE=mongodb-org-unstable MONGO_REPO=repo.mongodb.org
# Thu, 15 Feb 2018 04:59:13 GMT
ENV MONGO_MAJOR=3.7
# Sun, 18 Feb 2018 02:37:00 GMT
ENV MONGO_VERSION=3.7.2
# Sun, 18 Feb 2018 02:37:02 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Sun, 18 Feb 2018 02:37:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Sun, 18 Feb 2018 02:37:22 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Sun, 18 Feb 2018 02:37:22 GMT
VOLUME [/data/db /data/configdb]
# Sun, 18 Feb 2018 02:37:23 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Sun, 18 Feb 2018 02:37:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 02:37:23 GMT
EXPOSE 27017/tcp
# Sun, 18 Feb 2018 02:37:23 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb958661291ed53c5b30e758d596c775498893c1269803254b5664e6a6c3bdf`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfa71d101a9723669f0a8b39eba83f6bf5ef357d02d3a4fbf42be5ad1b27040`  
		Last Modified: Thu, 15 Feb 2018 05:16:03 GMT  
		Size: 2.4 MB (2397830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a286579fc2d57ec8df877bf657b1b69b11e9c3aa456e5e72d1363c037a76c5`  
		Last Modified: Thu, 15 Feb 2018 05:16:04 GMT  
		Size: 816.6 KB (816644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9441b8e1ae369520d560c7d47299705f2520b8736c5f8959ce6248a8e6a0618d`  
		Last Modified: Thu, 15 Feb 2018 05:16:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21bf5abd94633c72a5644a41584767637e3fa08b72379839a1636b577c6b39e`  
		Last Modified: Thu, 15 Feb 2018 05:48:46 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15398b1cd5123cb0cde936ef656e9c3edde0aff258bf8c797dc53b97cb941885`  
		Last Modified: Sun, 18 Feb 2018 02:50:01 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06c575b2440be0c987fad034fd2d5464737fe356152e7f590842d278b571d07`  
		Last Modified: Sun, 18 Feb 2018 02:50:17 GMT  
		Size: 99.7 MB (99742822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14222049ad8553ccd8cc6db77a7a95a7be28fc970c20970e462c45e8f5a7bd89`  
		Last Modified: Sun, 18 Feb 2018 02:50:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ffdda4c82572583140566e0c06c36e8e5b59617f798a63aa52985a573759cd6`  
		Last Modified: Sun, 18 Feb 2018 02:50:01 GMT  
		Size: 3.7 KB (3715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

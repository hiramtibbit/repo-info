## `mongo:3-jessie`

```console
$ docker pull mongo@sha256:216495c2f462687677db16ea7f857c79fc194c9418c58b1707db08d0f4064f84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:3-jessie` - linux; amd64

```console
$ docker pull mongo@sha256:4127193fd035b4318ffa9b5f1e8ff8d90c5c9eb440d4935454c340eff1a49d3c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132156314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c798900c23213f244687dd18db022abd665d8de2c358acce91c1c3e94e11782`
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
# Tue, 31 Jul 2018 16:51:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		wget -O /js-yaml.js "https://github.com/nodeca/js-yaml/raw/${JSYAML_VERSION}/dist/js-yaml.js"; 		apt-get purge -y --auto-remove wget
# Tue, 31 Jul 2018 16:51:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 31 Jul 2018 16:54:20 GMT
ENV GPG_KEYS=2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
# Tue, 31 Jul 2018 16:54:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mongodb.gpg; 	command -v gpgconf && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 31 Jul 2018 16:54:29 GMT
ARG MONGO_PACKAGE=mongodb-org
# Tue, 31 Jul 2018 16:54:29 GMT
ARG MONGO_REPO=repo.mongodb.org
# Tue, 31 Jul 2018 16:54:30 GMT
ENV MONGO_PACKAGE=mongodb-org MONGO_REPO=repo.mongodb.org
# Tue, 31 Jul 2018 16:54:30 GMT
ENV MONGO_MAJOR=3.6
# Tue, 31 Jul 2018 16:54:30 GMT
ENV MONGO_VERSION=3.6.6
# Tue, 31 Jul 2018 16:54:31 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Tue, 31 Jul 2018 16:55:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Tue, 31 Jul 2018 16:55:31 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Tue, 31 Jul 2018 16:55:31 GMT
VOLUME [/data/db /data/configdb]
# Tue, 31 Jul 2018 16:55:31 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Tue, 31 Jul 2018 16:55:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 16:55:32 GMT
EXPOSE 27017/tcp
# Tue, 31 Jul 2018 16:55:32 GMT
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
	-	`sha256:1d7273ca6586c94f633591c4cea8ae8f70a5d231eaf02fea319c3b53b7c947c4`  
		Last Modified: Tue, 31 Jul 2018 16:59:14 GMT  
		Size: 816.5 KB (816526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995a5e99ca0fb514ba4656d11093bf984a05387a1ff1e0eaaa26f674b847a804`  
		Last Modified: Tue, 31 Jul 2018 16:59:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c160d1e2f5abf7e466a9ecfb1dd61cdf9daf14047ffa19297570c0940ab733c`  
		Last Modified: Tue, 31 Jul 2018 17:01:44 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cec2f49d44b430b70ad05b6b1c3ee4efcc032a2c4e8ce807885dfef5afd5dcc`  
		Last Modified: Tue, 31 Jul 2018 17:01:43 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636dff54d1d223d3b4c48a5f27d5449fdd65a4ec527890cbe37406063f8842b3`  
		Last Modified: Tue, 31 Jul 2018 17:02:19 GMT  
		Size: 98.9 MB (98860996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417470035472c232f9b092c88f1cf00ea29a95baf2a28e8e81b66dfa8e2ec4e0`  
		Last Modified: Tue, 31 Jul 2018 17:01:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4950bb6ea81564f1b61f376869300b72b9e5c3fbc25710f2ee47563ca6362dcc`  
		Last Modified: Tue, 31 Jul 2018 17:01:45 GMT  
		Size: 3.7 KB (3714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

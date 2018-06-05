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

## `mongo:unstable`

```console
$ docker pull mongo@sha256:50674e3e315d680beaeab904f7a24c87d2ba6ffe5132897cef664baf0d56cc26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mongo:unstable` - linux; amd64

```console
$ docker pull mongo@sha256:d0a063b308c65e6699d68f4b53b7518e14858d033ef642f9f853c5daaa0a8d4f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.3 MB (113314971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ad60d3cbbfaf41560eed34c1aca728238bf83d26c33d5c2b58b1ae18a82fa5`
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
# Mon, 30 Apr 2018 19:32:58 GMT
ENV MONGO_VERSION=3.7.7
# Mon, 30 Apr 2018 19:32:59 GMT
RUN echo "deb http://$MONGO_REPO/apt/debian jessie/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"
# Mon, 30 Apr 2018 19:33:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		${MONGO_PACKAGE}=$MONGO_VERSION 		${MONGO_PACKAGE}-server=$MONGO_VERSION 		${MONGO_PACKAGE}-shell=$MONGO_VERSION 		${MONGO_PACKAGE}-mongos=$MONGO_VERSION 		${MONGO_PACKAGE}-tools=$MONGO_VERSION 	&& rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mongodb 	&& mv /etc/mongod.conf /etc/mongod.conf.orig
# Mon, 30 Apr 2018 19:33:39 GMT
RUN mkdir -p /data/db /data/configdb 	&& chown -R mongodb:mongodb /data/db /data/configdb
# Mon, 30 Apr 2018 19:33:39 GMT
VOLUME [/data/db /data/configdb]
# Mon, 30 Apr 2018 19:33:40 GMT
COPY file:18c5d9b642a89adf49e037d95a9e7de6b60557c77e049c9652605cf9cba57df9 in /usr/local/bin/ 
# Mon, 30 Apr 2018 19:33:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 19:33:40 GMT
EXPOSE 27017/tcp
# Mon, 30 Apr 2018 19:33:40 GMT
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
	-	`sha256:65d99e7e24fe7bf5d27b173bc06b00848ad47476e14e23bcd0836ceeb73f4bbe`  
		Last Modified: Mon, 30 Apr 2018 20:22:03 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adbac933a9ffde9a1c164ee0a9af3a2b6bf5c8b8c6138b8c4ff2931310898d9`  
		Last Modified: Mon, 30 Apr 2018 20:22:19 GMT  
		Size: 80.0 MB (79965222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc12cd92ceacbcca3f4b00c10f1aebeaa6e988e4379fb4e7a2b0cdac91a300e`  
		Last Modified: Mon, 30 Apr 2018 20:22:03 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef879cf2c750cebf310f072d7a43a357bd97b47af36941d483846a6e4fe227c3`  
		Last Modified: Mon, 30 Apr 2018 20:22:03 GMT  
		Size: 3.7 KB (3716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
